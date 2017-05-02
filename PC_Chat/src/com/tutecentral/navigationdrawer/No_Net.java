package com.tutecentral.navigationdrawer;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Toast;
import com.android.pc_chat.R;

public class No_Net extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.net_lay);
		Toast.makeText(this, "Please Check Your Internet Connection !!!",Toast.LENGTH_LONG).show();
		
	}

}
