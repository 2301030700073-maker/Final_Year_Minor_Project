package com.android.contacts;

import android.app.Application;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.StrictMode;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.testing.InjectedServices;
import com.android.contactsbind.analytics.AnalyticsUtil;

/* loaded from: classes.dex */
public class ContactsApplication extends Application {
    private static final boolean ENABLE_FRAGMENT_LOG = false;
    private static final boolean ENABLE_LOADER_LOG = false;
    public static final String STRICT_MODE_TAG = "ContactsStrictMode";
    private static InjectedServices sInjectedServices;

    public static void injectServices(InjectedServices injectedServices) {
        sInjectedServices = injectedServices;
    }

    public static InjectedServices getInjectedServices() {
        return sInjectedServices;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ContentResolver getContentResolver() {
        ContentResolver contentResolver;
        InjectedServices injectedServices = sInjectedServices;
        return (injectedServices == null || (contentResolver = injectedServices.getContentResolver()) == null) ? super.getContentResolver() : contentResolver;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        SharedPreferences sharedPreferences;
        InjectedServices injectedServices = sInjectedServices;
        return (injectedServices == null || (sharedPreferences = injectedServices.getSharedPreferences()) == null) ? super.getSharedPreferences(str, i) : sharedPreferences;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        Object systemService;
        InjectedServices injectedServices = sInjectedServices;
        return (injectedServices == null || (systemService = injectedServices.getSystemService(str)) == null) ? super.getSystemService(str) : systemService;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        if (Log.isLoggable("ContactsPerf", 3)) {
            Log.d("ContactsPerf", "ContactsApplication.onCreate start");
        }
        if (Log.isLoggable(STRICT_MODE_TAG, 3)) {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build());
        }
        new DelayedInitializer().execute();
        if (Log.isLoggable("ContactsPerf", 3)) {
            Log.d("ContactsPerf", "ContactsApplication.onCreate finish");
        }
        AnalyticsUtil.initialize(this);
    }

    private class DelayedInitializer extends AsyncTask<Void, Void, Void> {
        private DelayedInitializer() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            PreferenceManager.getDefaultSharedPreferences(ContactsApplication.this);
            ContactsApplication.this.getContentResolver().getType(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, 1L));
            return null;
        }

        public void execute() {
            executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        }
    }
}
