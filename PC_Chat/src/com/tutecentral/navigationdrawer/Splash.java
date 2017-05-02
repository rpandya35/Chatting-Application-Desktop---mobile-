package com.tutecentral.navigationdrawer;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.android.pc_chat.R;

public class Splash extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.splash_lay);
		
		Thread background = new Thread() {
            public void run() {
                 
                try {
                    // Thread will sleep for 5 seconds
                    sleep(5*1000);
                        
                    // After 5 seconds redirect to another intent
                    Intent i=new Intent(getBaseContext(),MainActivity.class);
                    startActivity(i);
                     
                    //Remove activity
                    finish();
                     
                } catch (Exception e) {
                 
                }
            }
        };
         
        // start thread
        background.start();
		
		
	}

}
