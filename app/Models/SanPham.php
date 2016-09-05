<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class SanPham extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'san_pham';	

	 /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
   // public $timestamps = true;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['ma_sp', 'name', 'name_extend', 'alias', 'alias_extend', 'slug', 'slug_extend', 'thumbnail_id', 'is_hot', 'is_sale', 'price', 'price_sale', 'loai_id', 'cate_id', 'mota_1', 'mota_2', 'xuat_xu', 'khuyen_mai', 'chi_tiet', 'bao_hanh', 'so_luong_ton', 'sale_percent', 'so_luong_ban', 'status', 'created_user', 'updated_user', 'created_at', 'updated_at', 'external_id'];
    
}
