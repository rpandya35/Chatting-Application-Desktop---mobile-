package com.tutecentral.navigationdrawer;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.android.pc_chat.R;

public class MainActivity extends Activity implements OnClickListener {

	TextView e1,e2;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		e1= (TextView) findViewById(R.id.main_textView1);
		e2= (TextView) findViewById(R.id.main_textView2);
		
		e1.setOnClickListener(this);
		e2.setOnClickListener(this);
		
		
		ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
    	NetworkInfo netInfo = cm.getActiveNetworkInfo();
    	if (netInfo != null && netInfo.isConnectedOrConnecting()) {
    	        
    	}
    	else
    	{
    	    Intent i = new Intent(this,No_Net.class);
    	    startActivity(i);
    	}
    	
	
	}
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		if(v==e1)
		{
			ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
	    	NetworkInfo netInfo = cm.getActiveNetworkInfo();
	    	if (netInfo != null && netInfo.isConnectedOrConnecting()) {
	    		Intent i = new Intent(this,download.class);
	    		startActivity(i);
	    	}
	    	else
	    	{
	    	    Intent i = new Intent(this,No_Net.class);
	    	    startActivity(i);
	    	}
		}
		else
		{
			ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
	    	NetworkInfo netInfo = cm.getActiveNetworkInfo();
	    	if (netInfo != null && netInfo.isConnectedOrConnecting()) {
	    		Intent i = new Intent(this,Credits.class);
				startActivity(i);
			}
	    	else
	    	{
	    	    Intent i = new Intent(this,No_Net.class);
	    	    startActivity(i);
	    	}
		}
	}
}