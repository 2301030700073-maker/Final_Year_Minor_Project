package com.redshift.rs_vapourtraining;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.webkit.JavascriptInterface;
import android.widget.Toast;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

/* loaded from: classes5.dex */
public class WebAppInterface {
    private DBHandler dbHandler;
    Context mContext;

    WebAppInterface(Context c) {
        this.mContext = c;
    }

    @JavascriptInterface
    public void showToast(String toast) {
        Toast.makeText(this.mContext, "Bought: " + toast, 0).show();
    }

    @JavascriptInterface
    public void getCredits(int numCredits) {
        RequestQueue ExampleRequestQueue = Volley.newRequestQueue(this.mContext);
        this.dbHandler = new DBHandler(this.mContext);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        final String userID = prefs.getString("userRS", com.android.volley.BuildConfig.FLAVOR);
        String RS_IP = prefs.getString("RS_IP", com.android.volley.BuildConfig.FLAVOR);
        String url = "http://" + RS_IP + ":5000/requestcredits/" + String.valueOf(numCredits);
        final String userName = this.dbHandler.checkUser(userID);
        final SharedPreferences.Editor editor = prefs.edit();
        StringRequest ExampleStringRequest = new StringRequest(0, url, new Response.Listener<String>() { // from class: com.redshift.rs_vapourtraining.WebAppInterface.1
            @Override // com.android.volley.Response.Listener
            public void onResponse(String response) {
                editor.putString("userbuyCredits", response);
                editor.commit();
                Intent intent = new Intent(WebAppInterface.this.mContext, (Class<?>) NavigationComponent.class);
                intent.putExtra("username", userName);
                WebAppInterface.this.mContext.startActivity(intent);
            }
        }, new Response.ErrorListener() { // from class: com.redshift.rs_vapourtraining.WebAppInterface.2
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                Intent intent = new Intent(WebAppInterface.this.mContext, (Class<?>) NavigationComponent.class);
                intent.putExtra("username", WebAppInterface.this.dbHandler.checkUser(userID));
                Toast.makeText(WebAppInterface.this.mContext, "An error has occured. ", 0).show();
                WebAppInterface.this.mContext.startActivity(intent);
            }
        });
        ExampleRequestQueue.add(ExampleStringRequest);
    }

    @JavascriptInterface
    public void getBack() {
        this.dbHandler = new DBHandler(this.mContext);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        String userID = prefs.getString("userRS", com.android.volley.BuildConfig.FLAVOR);
        Intent intent = new Intent(this.mContext, (Class<?>) NavigationComponent.class);
        intent.putExtra("username", this.dbHandler.checkUser(userID));
        this.mContext.startActivity(intent);
    }
}
