<?php namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Model;


class LoaiSp extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'loai_sp';	

	 /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = true;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name', 'slug', 'alias', 'bg_color', 'is_hot', 'status', 'icon_url', 'display_order', 'description', 'home_style', 'meta_title', 'meta_description', 'meta_keywords', 'custom_text'];

    public function cates()
    {
        return $this->hasMany('App\Models\Backend\Cate', 'loai_id');
    }
}
