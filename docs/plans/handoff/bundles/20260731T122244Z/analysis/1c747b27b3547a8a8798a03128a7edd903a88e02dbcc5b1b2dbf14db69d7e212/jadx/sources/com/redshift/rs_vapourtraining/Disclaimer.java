package com.redshift.rs_vapourtraining;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public class Disclaimer extends AppCompatActivity {
    boolean isConnected = false;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_disclaimer);
        EditText editIP = (EditText) findViewById(R.id.ipAddress);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
        String value = prefs.getString("RS_IP", null);
        if (value != null) {
            editIP.setText(value);
        }
    }

    public void launchLogin(View v) {
        EditText editIP = (EditText) findViewById(R.id.ipAddress);
        String ipAddress = editIP.getText().toString();
        if (isValidIPAddress(ipAddress)) {
            Intent intent = new Intent(this, (Class<?>) Login.class);
            SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
            String value = prefs.getString("RS_IP", null);
            if (value != null) {
                editIP.setText(value);
            }
            if (ipAddress.isEmpty()) {
                ipAddress = value;
            }
            SharedPreferences.Editor editor = prefs.edit();
            editor.putString("RS_IP", ipAddress);
            editor.commit();
            startActivity(intent);
            return;
        }
        Toast.makeText(this, "Please enter valid IP!", 0).show();
    }

    public void connectionTest(View v) {
        EditText editIP = (EditText) findViewById(R.id.ipAddress);
        String ipAddress = editIP.getText().toString();
        if (!getServer(ipAddress)) {
            Toast.makeText(this, "Wait a second.", 0).show();
        }
    }

    public static boolean isValidIPAddress(String ip) {
        String regex = "(\\d{1,2}|(0|1)\\d{2}|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|(0|1)\\d{2}|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|(0|1)\\d{2}|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|(0|1)\\d{2}|2[0-4]\\d|25[0-5])";
        Pattern p = Pattern.compile(regex);
        if (ip == null) {
            return false;
        }
        Matcher m = p.matcher(ip);
        return m.matches();
    }

    public boolean getServer(String ipAddress) {
        RequestQueue ExampleRequestQueue = Volley.newRequestQueue(this);
        String url = "http://" + ipAddress + ":5000/";
        StringRequest ExampleStringRequest = new StringRequest(0, url, new Response.Listener<String>() { // from class: com.redshift.rs_vapourtraining.Disclaimer.1
            @Override // com.android.volley.Response.Listener
            public void onResponse(String response) {
                Toast.makeText(Disclaimer.this, "Connected to server.", 0).show();
                Disclaimer.this.isConnected = true;
            }
        }, new Response.ErrorListener() { // from class: com.redshift.rs_vapourtraining.Disclaimer.2
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(Disclaimer.this, "Server error.", 0).show();
            }
        });
        ExampleRequestQueue.add(ExampleStringRequest);
        if (!this.isConnected) {
            return false;
        }
        this.isConnected = false;
        return true;
    }
}
