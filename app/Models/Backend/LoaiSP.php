<?php namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Model;
use App\Presenters\DatePresenter;

class LoaiSp extends Model  {

	use DatePresenter;

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'loai_sp';	

}
