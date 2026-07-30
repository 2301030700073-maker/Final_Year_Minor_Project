package com.android.quickstep.util;

import android.os.Binder;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;

/* loaded from: classes.dex */
public class BinderTracker {
    public static final String TAG = "BinderTracker";

    public class Tracker implements Binder.ProxyTransactListener {
        public Tracker() {
        }

        public void onTransactEnded(Object obj) {
        }

        public Object onTransactStarted(IBinder iBinder, int i) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                return null;
            }
            Log.e(BinderTracker.TAG, "Binder call on ui thread", new Exception());
            return null;
        }
    }

    public static void start() {
        Log.wtf(TAG, "Accessing tracker in released code.", new Exception());
    }

    public static void stop() {
        Log.wtf(TAG, "Accessing tracker in released code.", new Exception());
    }
}
