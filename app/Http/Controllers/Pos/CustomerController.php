<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
// use Auth;
use Illuminate\Support\Carbon;
use Image;

class CustomerController extends Controller
{

    public function CustomerAll(){

        $customers = Customer::latest()->get();
        return view('backend.customer.customer_all',compact('customers'));
    } //End Method

    public function CustomerAdd(){
        return view('backend.customer.customer_add');
    } //End Method

    public function CustomerStore(Request $request){

        Customer::insert([
            'name' => $request->name,
            'mobile_no' => $request->mobile_no,
            'email' => $request->email,
            'address' => $request->address,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),
        ]);

         $notification = array(
            'message' => 'Client inséré avec succès', 
            'alert-type' => 'success'
        );

        return redirect()->route('customer.all')->with($notification);

    } //End Method 

    public function CustomerEdit($id){

        $customer = Customer::findOrFail($id);
        return view('backend.customer.customer_edit',compact('customer'));
        
    } // End Method

    public function CustomerUpdate(Request $request){

        $customer_id = $request->id;
    
        Customer::findOrFail($customer_id)->update([
            'name' => $request->name,
            'mobile_no' => $request->mobile_no,
            'email' => $request->email,
            'address' => $request->address,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),

        ]);
    
             $notification = array(
                'message' => 'client mis à jour avec succès avec image', 
                'alert-type' => 'success'
            );
    
            return redirect()->route('customer.all')->with($notification);
        }

    public function CustomerDelete($id){

        Customer::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Le Client a été supprimé avec succès', 
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method
}
