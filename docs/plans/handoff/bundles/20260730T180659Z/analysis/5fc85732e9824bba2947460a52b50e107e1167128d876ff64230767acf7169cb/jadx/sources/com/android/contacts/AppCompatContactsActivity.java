package com.android.contacts;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.AppCompatTransactionSafeActivity;
import com.android.contacts.testing.InjectedServices;

/* loaded from: classes.dex */
public abstract class AppCompatContactsActivity extends AppCompatTransactionSafeActivity implements ContactSaveService.Listener {
    private ContentResolver mContentResolver;

    @Override // android.content.ContextWrapper, android.content.Context
    public ContentResolver getContentResolver() {
        if (this.mContentResolver == null) {
            InjectedServices injectedServices = ContactsApplication.getInjectedServices();
            if (injectedServices != null) {
                this.mContentResolver = injectedServices.getContentResolver();
            }
            if (this.mContentResolver == null) {
                this.mContentResolver = super.getContentResolver();
            }
        }
        return this.mContentResolver;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        SharedPreferences sharedPreferences;
        InjectedServices injectedServices = ContactsApplication.getInjectedServices();
        return (injectedServices == null || (sharedPreferences = injectedServices.getSharedPreferences()) == null) ? super.getSharedPreferences(str, i) : sharedPreferences;
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        Object systemService = super.getSystemService(str);
        return systemService != null ? systemService : getApplicationContext().getSystemService(str);
    }

    @Override // com.android.contacts.activities.AppCompatTransactionSafeActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        ContactSaveService.registerListener(this);
        super.onCreate(bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        ContactSaveService.unregisterListener(this);
        super.onDestroy();
    }

    @Override // com.android.contacts.ContactSaveService.Listener
    public void onServiceCompleted(Intent intent) {
        onNewIntent(intent);
    }

    public <T extends View> T getView(int i) {
        T t = (T) findViewById(i);
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException("view 0x" + Integer.toHexString(i) + " doesn't exist");
    }
}
