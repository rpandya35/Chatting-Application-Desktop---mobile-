package com.tutecentral.navigationdrawer;

import java.util.ArrayList;
import java.util.List;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.app.ActionBarDrawerToggle;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.android.pc_chat.R;

public class download extends Activity {
	
	private DrawerLayout mDrawerLayout;
	private ListView mDrawerList;
	private ActionBarDrawerToggle mDrawerToggle;
	private CharSequence mDrawerTitle;
	private CharSequence mTitle;
	CustomDrawerAdapter adapter;

	List<DrawerItem> dataList;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.download_lay);
		
		// Initializing
		dataList = new ArrayList<DrawerItem>();
		mTitle = mDrawerTitle = getTitle();
		mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
		mDrawerList = (ListView) findViewById(R.id.left_drawer);

		mDrawerLayout.setDrawerShadow(R.drawable.drawer_shadow,
				GravityCompat.START);
		
		// Add Drawer Item to dataList
		dataList.add(new DrawerItem("Chats", R.drawable.chat));
		dataList.add(new DrawerItem("View Contacts", R.drawable.contact));
		dataList.add(new DrawerItem("Add Contacts", R.drawable.add));
		dataList.add(new DrawerItem("Logout", R.drawable.logout));
		
		adapter = new CustomDrawerAdapter(this, R.layout.custom_drawer_item,dataList);
		mDrawerList.setAdapter(adapter);
		mDrawerList.setOnItemClickListener(new DrawerItemClickListener());

		getActionBar().setDisplayHomeAsUpEnabled(true);
		getActionBar().setHomeButtonEnabled(true);
		mDrawerToggle = new ActionBarDrawerToggle(this, mDrawerLayout,
		R.drawable.ic_drawer, R.string.drawer_open,
		R.string.drawer_close) {
		public void onDrawerClosed(View view) {
				getActionBar().setTitle(mTitle);
				invalidateOptionsMenu(); // creates call to
											// onPrepareOptionsMenu()
			}

			public void onDrawerOpened(View drawerView) {
				getActionBar().setTitle(mDrawerTitle);
				invalidateOptionsMenu(); // creates call to
											// onPrepareOptionsMenu()
			}
		};

		mDrawerLayout.setDrawerListener(mDrawerToggle);

		if (savedInstanceState == null) {
			SelectItem(0);
		}

	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	public void SelectItem(int possition) {

		ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
    	NetworkInfo netInfo = cm.getActiveNetworkInfo();
    	if (netInfo != null && netInfo.isConnectedOrConnecting()) {
    		Fragment fragment = null;
    		Bundle args = new Bundle();
    		switch (possition) {
    		case 0:
    			fragment = new Chat();
    			break;
    		case 1:
    			fragment = new Contact();
    			break;
    		case 2:
    			fragment = new add_frd();
    			break;
    		case 3:
    			fragment = new logout();
    			break;
    		default:
    			break;
    		}

    		fragment.setArguments(args);
    		FragmentManager frgManager = getFragmentManager();
    		frgManager.beginTransaction().replace(R.id.content_frame, fragment)
    				.commit();

    		mDrawerList.setItemChecked(possition, true);
    		setTitle(dataList.get(possition).getItemName());
    		mDrawerLayout.closeDrawer(mDrawerList);
    	}
    	else
    	{
    	    Intent i = new Intent(this,No_Net.class);
    	    startActivity(i);
    	}
	}

	@Override
	public void setTitle(CharSequence title) {
		mTitle = title;
		getActionBar().setTitle(mTitle);
	}

	@Override
	protected void onPostCreate(Bundle savedInstanceState) {
		super.onPostCreate(savedInstanceState);
		// Sync the toggle state after onRestoreInstanceState has occurred.
		mDrawerToggle.syncState();
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		super.onConfigurationChanged(newConfig);
		// Pass any configuration change to the drawer toggles
		mDrawerToggle.onConfigurationChanged(newConfig);
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// The action bar home/up action should open or close the drawer.
		// ActionBarDrawerToggle will take care of this.
		if (mDrawerToggle.onOptionsItemSelected(item)) {
			return true;
		}

		return false;
	}

	private class DrawerItemClickListener implements
			ListView.OnItemClickListener {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position,
				long id) {
			SelectItem(position);

		}
	}
}