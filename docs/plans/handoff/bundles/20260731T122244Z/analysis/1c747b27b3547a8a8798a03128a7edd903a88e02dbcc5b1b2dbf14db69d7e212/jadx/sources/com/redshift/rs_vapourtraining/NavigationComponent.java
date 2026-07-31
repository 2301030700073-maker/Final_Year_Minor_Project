package com.redshift.rs_vapourtraining;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.snackbar.Snackbar;
import com.redshift.rs_vapourtraining.databinding.ActivityNavigationComponentBinding;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

/* loaded from: classes5.dex */
public class NavigationComponent extends AppCompatActivity {
    private ActivityNavigationComponentBinding binding;
    private DBHandler dbHandler;
    private AppBarConfiguration mAppBarConfiguration;
    int userCreds = 0;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityNavigationComponentBinding inflate = ActivityNavigationComponentBinding.inflate(getLayoutInflater());
        this.binding = inflate;
        setContentView(inflate.getRoot());
        setSupportActionBar(this.binding.appBarNavigationComponent.toolbar);
        this.binding.appBarNavigationComponent.fab.setOnClickListener(new View.OnClickListener() { // from class: com.redshift.rs_vapourtraining.NavigationComponent.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Snackbar.make(view, "Hello", 0).setAction("Action", (View.OnClickListener) null).show();
            }
        });
        DrawerLayout drawer = this.binding.drawerLayout;
        NavigationView navigationView = this.binding.navView;
        this.mAppBarConfiguration = new AppBarConfiguration.Builder(R.id.nav_home, R.id.nav_buy_creds, R.id.nav_add_cards).setOpenableLayout(drawer).build();
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment_content_navigation_component);
        NavigationUI.setupActionBarWithNavController(this, navController, this.mAppBarConfiguration);
        NavigationUI.setupWithNavController(navigationView, navController);
        this.dbHandler = new DBHandler(this);
        String IPaddress = getLocalIpAddress();
        getServer(IPaddress);
        String username = getIntent().getStringExtra("username");
        if (username == null) {
            SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
            SharedPreferences.Editor editor = prefs.edit();
            editor.putString("userRS", "1");
            editor.commit();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.navigation_component, menu);
        String username = getIntent().getStringExtra("username");
        if (username == null) {
            username = "admin";
        }
        TextView actionName = (TextView) findViewById(R.id.Actionname);
        actionName.setText(username);
        String userID = this.dbHandler.getUserID(username);
        this.userCreds = this.dbHandler.getCreds(userID);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment_content_navigation_component);
        return NavigationUI.navigateUp(navController, this.mAppBarConfiguration) || super.onSupportNavigateUp();
    }

    public static String getLocalIpAddress() {
        try {
            Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces();
            while (en.hasMoreElements()) {
                NetworkInterface intf = en.nextElement();
                Enumeration<InetAddress> enumIpAddr = intf.getInetAddresses();
                while (enumIpAddr.hasMoreElements()) {
                    InetAddress inetAddress = enumIpAddr.nextElement();
                    if (!inetAddress.isLoopbackAddress() && (inetAddress instanceof Inet4Address)) {
                        return inetAddress.getHostAddress();
                    }
                }
            }
            return null;
        } catch (SocketException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public void getServer(String ipAddress) {
        RequestQueue ExampleRequestQueue = Volley.newRequestQueue(this);
        StringRequest ExampleStringRequest = new StringRequest(0, "http://192.168.1.193:5000/", new Response.Listener<String>() { // from class: com.redshift.rs_vapourtraining.NavigationComponent.2
            @Override // com.android.volley.Response.Listener
            public void onResponse(String response) {
            }
        }, new Response.ErrorListener() { // from class: com.redshift.rs_vapourtraining.NavigationComponent.3
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
            }
        });
        ExampleRequestQueue.add(ExampleStringRequest);
    }
}
