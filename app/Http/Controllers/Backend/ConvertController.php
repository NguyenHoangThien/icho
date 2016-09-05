<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Backend\Cate;
use App\Models\Backend\LoaiSp;
use App\Models\SanPham;
use App\Models\SpHinh;
use App\Models\Backend\SpLinhKien;
use App\Models\Backend\SpThuocTinh;
use App\Models\Backend\LoaiThuocTinh;
use App\Models\Backend\ThuocTinh;
use App\Models\IchoCu\WpTerms;
use App\Models\IchoCu\WpPosts;
use App\Models\IchoCu\WpPostMeta;
use App\Models\IchoCu\WpTermRelationships;
use App\Models\IchoCu\WpTermTaxonomy;
use App\Models\IchoCu\WpAlaptopdigital;
use App\Models\IchoCu\WpAphonedigital;


use Helper, File, Session;

class ConvertController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {
        $tmp = WpPosts::where('post_type', '=', 'product')->where('wp_term_taxonomy.parent', '>', 0)
                 ->join('wp_term_relationships', 'wp_posts.id', '=', 'wp_term_relationships.object_id')
                 //->join('wp_postmeta', 'wp_postmeta.post_id', '=', 'wp_posts.ID')
                 ->leftJoin('wp_term_taxonomy', 'wp_term_taxonomy.term_taxonomy_id', '=', 'wp_term_relationships.term_taxonomy_id')
                 ->leftJoin('wp_terms', 'wp_term_taxonomy.term_id', '=', 'wp_terms.term_id')
                 ->select('wp_term_taxonomy.*', 'wp_terms.name as term_name', 'wp_posts.*')
                 ->get()->toArray();
                 $arrParent= [];
               //  var_dump("<pre>", $tmp);die;
        foreach ($tmp as $key => $value) {
           //echo "<pre>";
         //  print_r($value);die;
            $id = $value['ID'];
          
            $data = $this->processPostMeta( $id ); 
            $data['external_id'] = $id;   
            $data['cate_id'] = $this->chuyenCate( $value['term_id']);
            $data['loai_id'] = $this->chuyenLoaiSp( $value['parent']);
            $data['created_at'] = $value['post_date'];
            $data['updated_at'] = $value['post_modified'];
            $data['name'] = $value['post_title'];
            $data['slug'] = $value['post_name'];
            $data['mota_1'] = $value['post_excerpt'];
            $data['alias'] = Helper::stripUnicode($data['name']);
            $data['alias_extend'] = Helper::stripUnicode($data['name_extend']);
            $data['slug_extend'] = str_slug($data['name_extend']);
            $data['chi_tiet'] = $value['post_content'];
           
            $rs = SanPham::create($data);            
            
            $id = $rs->id;
            
            $this->processImg( $id, $data);

        }            

        die;
        
    }
    public function processPostMeta( $post_id ){
        echo $post_id;
        echo "<hr>";
        $arrReturn = [];
        $tmp = WpPostMeta::where('post_id', $post_id)->get();
        foreach ($tmp as $k => $v){
            
            if( $v['meta_key'] == '_thumbnail_id'){                
                $arrReturn['thumbnail_id'] = $v['meta_value'];
            }
            if( $v['meta_key'] == '_price'){
                $arrReturn['price'] = $v['meta_value'];
            }
            if( $v['meta_key'] == 'wps_subtitle'){
                $arrReturn['name_extend'] = $v['meta_value'];
            }
            if( $v['meta_key'] == '_product_image_gallery' && $v['meta_value'] != ''){
                $tmp1 = explode(',', $v['meta_value']);

                if( !empty($tmp1) ){
                    foreach ($tmp1 as $p_id) {

                        $wpPost = WpPosts::where('ID', $p_id)->get()->toArray();
                        if(isset($wpPost[0])){
                            $guid = str_replace("http://www.icho.vn/wp-content/uploads/", "", $wpPost[0]['guid']);
                            $arrReturn['img']['id'][]= $p_id;
                            $arrReturn['img']['url'][] = $guid;                     
                        }
                        
                        
                    }                
                }
            }
        }
        return $arrReturn;
    }
    public function processCate( $id ){

    }

    public function processImg( $id, $data){
        
        $thumbnail_id = isset($data['thumbnail_id']) ? $data['thumbnail_id'] : 0;

        if( $thumbnail_id > 0){
            if( isset( $data['img']) && !empty($data['img'])){
                $imgArr = $data['img'];

                foreach ($imgArr['url'] as $key => $value) {
                    
                    $dataHinh['sp_id'] = $id;
                    $dataHinh['image_url'] = $value;
                    $dataHinh['display_order'] = 1;
                    $rs = SpHinh::create($dataHinh);
                    $id_hinh = $rs->id;
                    if( $imgArr['id'][$key] == $thumbnail_id ){
                        $model = SanPham::find($id);
                        $model->thumbnail_id = $id_hinh;
                        $model->save();
                    }
                }
            }
        }

    }

    public function processThuocTinh( $id ){

    }
    
    public function chuyenLoaiSp($loai_id){
        $arrLoai = 
        [
            6 => 2,            
            30 => 8,
            33 => 10,
            58 => 1,
            62 => 4,
            67 => 5,
            69 => 3,
            76 => 6,
            116 => 7,
            //117 => 9,
            //17 => 9,
            //118 => 9,
        ];
        return isset($arrLoai[$loai_id]) ? $arrLoai[$loai_id] : 0;
       
        
    }
    public function chuyenCate( $cate_id ){
        
        $arrCate = [
            8 => 5,
            10 => 8,
            12 => 7,
            13 => 9,
            97 => 6,
            111 => 10,
            88 => 31,
            89 => 32,
            90 => 35,
            91 => 34,
            125 => 33,
            77 => 30,
            79 => 28,
            80 => 29,
            81 => 27,
            82 => 26,
            83 => 24,
            112 => 25,
            70 => 14,
            71 => 65,
            72 => 13,
            73 => 16,
            75 => 15,
            100 => 11,
            121 => 12,
            68 => 20,
            84 => 22,
            85 => 19,
            86 => 23,
            63 => 17,
            64 => 18,
            59 => 4,
            60 => 3,
            61 => 1,
            124 => 2,
            31 => 37,
            32 => 38,
            35 => 39,
            37 => 40,
            38 => 41,
            39 => 42,
            40 => 43,
            41 => 44,
            43 => 45,
            44 => 46,
            45 => 47,
            46 => 48,
            47 => 49,
            49 => 50,
            50 => 51,
            51 => 52,
            57 => 53,
            101 => 54,
            122 => 55,
            34 => 56,
            36 => 57,
            42 => 58,
            48 => 59,
            53 => 60,
            54 => 61,
            55 => 62,
            56 => 63,
            99 => 64,
            /* 
            
            [22 => Tai nghe
            [65 => Thẻ nhớ
            [66 => Pin sạc dự phòng
            [87 => Miếng dán màn hình
            [106 => Điều khiển
            [108 => Giá treo tai nghe
            [110 => Đầu đọc thẻ nhớ */
        ];
        return isset($arrCate[$cate_id]) ? $arrCate[$cate_id] : 0;
    }

    public function tmpProcessCate(){
        $tmp = WpTermTaxonomy::whereRaw('1')->where('taxonomy', 'product_cat')
                 ->join('wp_terms', 'wp_term_taxonomy.term_id', '=', 'wp_terms.term_id')                 
             //    ->join('wp_terms', 'wp_term_taxonomy.term_id', '=', 'wp_terms.term_id')
                 ->select('wp_term_taxonomy.*', 'wp_terms.name')
                 ->get()->toArray();
                 $arrParent= [];
        foreach ($tmp as $key => $value) {
            
            $parent_id = $value['parent'];
            if( $parent_id == 17 ){
                $detailParent = WpTerms::where('term_id', $parent_id)->get()->toArray();
                echo $detailParent[0]['name'];
                $arrParent[$value['term_id']] = $value['name'];
            }
           
        }            

        die;
    }
}
