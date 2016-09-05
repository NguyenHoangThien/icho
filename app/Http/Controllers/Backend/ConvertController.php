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
use App\Models\SpThuocTinh;
use App\Models\Backend\LoaiThuocTinh;
use App\Models\Backend\ThuocTinh;
use App\Models\IchoCu\WpTerms;
use App\Models\IchoCu\WpPosts;
use App\Models\IchoCu\WpPostMeta;
use App\Models\IchoCu\WpTermRelationships;
use App\Models\IchoCu\WpTermTaxonomy;
use App\Models\IchoCu\WpAlaptopdigital;
use App\Models\IchoCu\WpAphonedigital;
use App\Models\IchoCu\WpAlcddigital;


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
        /*set_time_limit(10000);
        $tmp = SpThuocTinh::all();
        $arr = [];
        foreach ($tmp as $key => $value) {
            $arr[$value->sp_id][$value->thuoctinh_id] = $value->value;
        }
        foreach ($arr as $sp_id => $arrValue) {
            $model = new SanPhamThuocTinh;
            $model->sp_id = $sp_id;
            $model->thuoc_tinh = json_encode($arrValue);
            $model->save();
        }
        */
        set_time_limit(10000);
        $arr = WpAlcddigital::whereRaw('1')->get()->toArray();
        //var_dump($arr);die;
        $arrData = [];
        foreach($arr as $value){
            $external_id = $value['id_product'];
            var_dump($external_id);die;
            $rs = SanPham::where('external_id', $external_id)->get()->toArray();
            if(!empty($rs)){
                $id = $rs[0]['id'];
                                
                $arrData[$id] = [
                    86 => $value['kich_thuoc_man_hinh'],
                    87 => $value['do_phan_giai'],
                    88 => $value['ho_tro_mau_sac'],
                    89 => $value['ty_le_tuong_phan'],
                    90 => $value['do_sang'],
                    91 => $value['thoi_gian_dap_ung'],
                    92 => $value['goc_nhin'],
                    93 => $value['ket_noi']
                ];      
                var_dump($arrData);die;                     
                
            }      
        }  
        var_dump("<pre>", $arrData);die; 
        foreach ($arrData as $sp_id => $arrValue) {
            $model = new SanPhamThuocTinh;
            $model->sp_id = $sp_id;
            $model->thuoc_tinh = json_encode($arrValue);
            $model->save();
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

    public function mapProduct(){
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
    }

    public function mapThuocTinhLaptop(){
         set_time_limit(10000);
        $arr = WpAlaptopdigital::whereRaw('1')->get()->toArray();
        foreach($arr as $value){
            $external_id = $value['id_product'];
            //var_dump($external_id);die;
            $rs = SanPham::where('external_id', $external_id)->get()->toArray();
            if(!empty($rs)){
                $id = $rs[0]['id'];
                // bo_xu_ly
                $bo_xu_ly = $value['bo_xu_ly'];
                $tmpBXL = explode('\_/', $bo_xu_ly);
                if( !empty($tmpBXL) ){
                    for($i = 46; $i <= 51; $i++ ){
                        $pos = $i-46;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpBXL[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                //bo_mach
                $bo_mach = $value['bo_mach'];
                $tmpBoMach= explode('\_/', $bo_mach);
                if( !empty($tmpBoMach) ){
                    for($i = 81; $i <= 83; $i++ ){
                        $pos = $i-81;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpBoMach[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                //bo_nho
                $bo_nho = $value['bo_nho'];
                $tmpbo_nho= explode('\_/', $bo_nho);
                if( !empty($tmpbo_nho) ){
                    for($i = 52; $i <= 54; $i++ ){
                        $pos = $i-52;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpbo_nho[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                //dia_cung
                $dia_cung = $value['dia_cung'];
                $tmpdia_cung= explode('\_/', $dia_cung);
                if( !empty($tmpdia_cung) ){
                    for($i = 55; $i <= 56; $i++ ){
                        $pos = $i-55;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpdia_cung[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                //man_hinh
                $man_hinh = $value['man_hinh'];
                $tmpman_hinh= explode('\_/', $man_hinh);
                if( !empty($tmpman_hinh) ){
                    for($i = 57; $i <= 60; $i++ ){
                        $pos = $i-57;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpman_hinh[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                //man_hinh
                $do_hoa = $value['do_hoa'];
                $tmpdo_hoa= explode('\_/', $do_hoa);
                if( !empty($tmpdo_hoa) ){
                    for($i = 61; $i <= 63; $i++ ){
                        $pos = $i-61;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpdo_hoa[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                 //am_thanh
                $am_thanh = $value['am_thanh'];
                $tmpam_thanh= explode('\_/', $am_thanh);
                if( !empty($tmpam_thanh) ){
                    for($i = 84; $i <= 85; $i++ ){
                        $pos = $i-84;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpam_thanh[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                 //dia_quang
                $dia_quang = $value['dia_quang'];
                $tmpdia_quang= explode('\_/', $dia_quang);
                if( !empty($tmpdia_quang) ){
                    for($i = 64; $i <= 65; $i++ ){
                        $pos = $i-64;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpdia_quang[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                 //network
                $network = $value['network'];
                $tmpnetwork= explode('\_/', $network);
                if( !empty($tmpnetwork) ){
                    for($i = 66; $i <= 67; $i++ ){
                        $pos = $i-66;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpnetwork[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                 //giao_tiep_mang
                $giao_tiep_mang = $value['giao_tiep_mang'];
                $tmpgiao_tiep_mang= explode('\_/', $giao_tiep_mang);
                if( !empty($tmpgiao_tiep_mang) ){
                    for($i = 68; $i <= 70; $i++ ){
                        $pos = $i-68;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpgiao_tiep_mang[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                //card_reader
                $card_reader = $value['card_reader'];
                $tmpcard_reader= explode('\_/', $card_reader);
                if( !empty($tmpcard_reader) ){
                    for($i = 71; $i <= 72; $i++ ){
                        $pos = $i-71;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpcard_reader[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                //webcam
                $webcam = $value['webcam'];
                $tmpwebcam= explode('\_/', $webcam);
                if( !empty($tmpwebcam) ){
                    for($i = 73; $i <= 74; $i++ ){
                        $pos = $i-73;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpwebcam[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                //pin
                $pin = $value['pin'];
                $tmppin= explode('\_/', $pin);
                if( !empty($tmppin) ){
                    for($i = 75; $i <= 75; $i++ ){
                        $pos = $i-75;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmppin[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                //ios
                $ios = $value['ios'];
                $tmpios= explode('\_/', $ios);
                if( !empty($tmpios) ){
                    for($i = 76; $i <= 77; $i++ ){
                        $pos = $i-76;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpios[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }

                 //kich_thuoc
                $kich_thuoc = $value['kich_thuoc'];
                $tmpkich_thuoc= explode('\_/', $kich_thuoc);
                if( !empty($tmpkich_thuoc) ){
                    for($i = 78; $i <= 80; $i++ ){
                        $pos = $i-78;
                        $data['sp_id'] = $id;
                        $data['thuoctinh_id'] = $i;
                        $data['value'] = $tmpkich_thuoc[$pos];
                        SpThuocTinh::create($data);
                        $data = [];
                    }                    
                }
            }      
        } 
    }
}
