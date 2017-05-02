package com.tutecentral.navigationdrawer;

import com.android.pc_chat.R;
import com.tutecentral.navigationdrawer.add_frd.myWebClient;

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
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class Chat extends Fragment {
	WebView web; 

	public static final String IMAGE_RESOURCE_ID = "iconResourceID";
	public static final String ITEM_NAME = "itemName";
	private final static int FILECHOOSER_RESULTCODE=1;  
	private final static int RESULT_OK=-1;  
	private ValueCallback<Uri> mUploadMessage;
	
	public Chat() {
		
	}

	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {

		View view = inflater.inflate(R.layout.chat, container,
				false);
		
		web= (WebView) view.findViewById(R.id.chat_webView1);
		web.getSettings().setJavaScriptEnabled(true);
	    web.setWebViewClient(new myWebClient());
	    web.loadUrl("http://synopsis.nevemtech.com/MList.aspx");
		
    	return view;
	}

	
	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent intent) { 
	    if (requestCode == FILECHOOSER_RESULTCODE) { 
	        if (null == mUploadMessage) 
	            return; 
	        Uri result = intent == null || resultCode != RESULT_OK ? null : intent.getData(); 
	        mUploadMessage.onReceiveValue(result); 
	        mUploadMessage = null; 
	 
	    } 
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
	        if (url.endsWith(".pdf")||url.endsWith(".jpg")||url.endsWith(".png")||url.endsWith(".jpeg")) {
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
    	
    	public void openFileChooser(ValueCallback<Uri> uploadMsg) {
    		 
            mUploadMessage = uploadMsg;
            Intent i = new Intent(Intent.ACTION_GET_CONTENT);
            i.addCategory(Intent.CATEGORY_OPENABLE);
            i.setType("image/*");
            Chat.this.startActivityForResult(Intent.createChooser(i, "Image Browser"), FILECHOOSER_RESULTCODE); 
        } 
    }
	
	
}

