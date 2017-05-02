package com.tutecentral.navigationdrawer;

import com.android.pc_chat.R;
import com.tutecentral.navigationdrawer.Contact.myWebClient;

import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class add_frd extends Fragment {

	WebView web; 

	public static final String IMAGE_RESOURCE_ID = "iconResourceID";
	public static final String ITEM_NAME = "itemName";

	public add_frd() {

    }

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
			View view = inflater.inflate(R.layout.add_frd, container,false);
			
			web= (WebView) view.findViewById(R.id.add_webView1);
		    web.getSettings().setJavaScriptEnabled(true);
		    web.setWebViewClient(new myWebClient());
		    web.loadUrl("http://synopsis.nevemtech.com/MAdd.aspx");
        
    	return view;
	}

	public class myWebClient extends WebViewClient
    {
    	@Override
    	public void onPageStarted(WebView view, String url, Bitmap favicon) {
    		// TODO Auto-generated method stub
    		super.onPageStarted(view, url, favicon);
    	}
    	
    	@Override
    	
    	public boolean shouldOverrideUrlLoading (WebView view, String url) {
	        if (url.endsWith(".pdf")) {
	            startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
	            return true;
	        }
	        else
	        {
	        	view.loadUrl(url);
	    		return true;
	        }
	    }
    	
    	public void onDownloadStart(String url, String userAgent,
                String contentDisposition, String mimetype,
                long contentLength) {
    		startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
        }
    }
}

