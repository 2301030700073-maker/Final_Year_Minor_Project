package com.facebook.internal;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Looper;
import defpackage.C0173Do;
import defpackage.C3344mh;
import defpackage.C3756th;
import defpackage.C3815uh;
import defpackage.Cif;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class Validate {
    private static final String CONTENT_PROVIDER_BASE = "com.facebook.app.FacebookContentProvider";
    private static final String CONTENT_PROVIDER_NOT_FOUND_REASON = "A ContentProvider for this app was not set up in the AndroidManifest.xml, please add %s as a provider to your AndroidManifest.xml file. See https://developers.facebook.com/docs/sharing/android for more info.";
    public static final String CUSTOM_TAB_REDIRECT_URI_PREFIX = "fbconnect://cct.";
    private static final String FACEBOOK_ACTIVITY_NOT_FOUND_REASON = "FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.";
    private static final String NO_INTERNET_PERMISSION_REASON = "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.";
    public static final Validate INSTANCE = new Validate();
    private static final String TAG = Validate.class.getName();

    private Validate() {
    }

    public static final void containsNoNullOrEmpty(Collection<String> collection, String str) {
        C0173Do.m401try(collection, "container");
        C0173Do.m401try(str, FacebookRequestErrorClassification.KEY_NAME);
        for (String str2 : collection) {
            if (str2 == null) {
                throw new NullPointerException(Cif.m6908case("Container '", str, "' cannot contain null values"));
            }
            if (!(str2.length() > 0)) {
                throw new IllegalArgumentException(Cif.m6908case("Container '", str, "' cannot contain empty values").toString());
            }
        }
    }

    public static final <T> void containsNoNulls(Collection<? extends T> collection, String str) {
        C0173Do.m401try(collection, "container");
        C0173Do.m401try(str, FacebookRequestErrorClassification.KEY_NAME);
        Iterator<? extends T> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException(Cif.m6908case("Container '", str, "' cannot contain null values"));
            }
        }
    }

    public static final String hasAppID() {
        return C3756th.m8303if();
    }

    public static final boolean hasBluetoothPermission(Context context) {
        C0173Do.m401try(context, "context");
        return hasPermission(context, "android.permission.BLUETOOTH") && hasPermission(context, "android.permission.BLUETOOTH_ADMIN");
    }

    public static final boolean hasChangeWifiStatePermission(Context context) {
        C0173Do.m401try(context, "context");
        return hasPermission(context, "android.permission.CHANGE_WIFI_STATE");
    }

    public static final String hasClientToken() {
        return C3756th.m8301for();
    }

    public static final void hasContentProvider(Context context) {
        C0173Do.m401try(context, "context");
        String hasAppID = hasAppID();
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            String m397goto = C0173Do.m397goto(hasAppID, CONTENT_PROVIDER_BASE);
            if (packageManager.resolveContentProvider(m397goto, 0) == null) {
                throw new IllegalStateException(Cif.m6913else(new Object[]{m397goto}, 1, CONTENT_PROVIDER_NOT_FOUND_REASON, "java.lang.String.format(format, *args)").toString());
            }
        }
    }

    public static final boolean hasCustomTabRedirectActivity(Context context, String str) {
        List<ResolveInfo> list;
        C0173Do.m401try(context, "context");
        C0173Do.m401try(str, "redirectURI");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(Uri.parse(str));
            list = packageManager.queryIntentActivities(intent, 64);
        } else {
            list = null;
        }
        if (list == null) {
            return false;
        }
        Iterator<ResolveInfo> it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if (!C0173Do.m394do(activityInfo.name, "com.facebook.CustomTabActivity") || !C0173Do.m394do(activityInfo.packageName, context.getPackageName())) {
                return false;
            }
            z = true;
        }
        return z;
    }

    public static final void hasFacebookActivity(Context context) {
        C0173Do.m401try(context, "context");
        hasFacebookActivity(context, true);
    }

    public static final void hasInternetPermissions(Context context) {
        C0173Do.m401try(context, "context");
        hasInternetPermissions(context, true);
    }

    public static final boolean hasLocationPermission(Context context) {
        C0173Do.m401try(context, "context");
        return hasPermission(context, "android.permission.ACCESS_COARSE_LOCATION") || hasPermission(context, "android.permission.ACCESS_FINE_LOCATION");
    }

    public static final boolean hasPermission(Context context, String str) {
        C0173Do.m401try(context, "context");
        C0173Do.m401try(str, "permission");
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static final boolean hasWiFiPermission(Context context) {
        C0173Do.m401try(context, "context");
        return hasPermission(context, "android.permission.ACCESS_WIFI_STATE");
    }

    public static final <T> void notEmpty(Collection<? extends T> collection, String str) {
        C0173Do.m401try(collection, "container");
        C0173Do.m401try(str, FacebookRequestErrorClassification.KEY_NAME);
        if (!(!collection.isEmpty())) {
            throw new IllegalArgumentException(Cif.m6908case("Container '", str, "' cannot be empty").toString());
        }
    }

    public static final <T> void notEmptyAndContainsNoNulls(Collection<? extends T> collection, String str) {
        C0173Do.m401try(collection, "container");
        C0173Do.m401try(str, FacebookRequestErrorClassification.KEY_NAME);
        containsNoNulls(collection, str);
        notEmpty(collection, str);
    }

    public static final void notNull(Object obj, String str) {
        C0173Do.m401try(str, FacebookRequestErrorClassification.KEY_NAME);
        if (obj == null) {
            throw new NullPointerException(Cif.m6908case("Argument '", str, "' cannot be null"));
        }
    }

    public static final String notNullOrEmpty(String str, String str2) {
        C0173Do.m401try(str2, FacebookRequestErrorClassification.KEY_NAME);
        boolean z = false;
        if (str != null) {
            if (str.length() > 0) {
                z = true;
            }
        }
        if (z) {
            return str;
        }
        throw new IllegalArgumentException(Cif.m6908case("Argument '", str2, "' cannot be null or empty").toString());
    }

    public static final void oneOf(Object obj, String str, Object... objArr) {
        C0173Do.m401try(str, FacebookRequestErrorClassification.KEY_NAME);
        C0173Do.m401try(objArr, "values");
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj2 = objArr[i];
            i++;
            if (C0173Do.m394do(obj2, obj)) {
                return;
            }
        }
        throw new IllegalArgumentException(Cif.m6908case("Argument '", str, "' was not one of the allowed values"));
    }

    public static final void runningOnUiThread() {
        if (!C0173Do.m394do(Looper.getMainLooper(), Looper.myLooper())) {
            throw new C3344mh("This method should be called from the UI thread");
        }
    }

    public static final void sdkInitialized() {
        if (!C3756th.m8305this()) {
            throw new C3815uh("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
        }
    }

    @SuppressLint({"WrongConstant"})
    public static final void hasFacebookActivity(Context context, boolean z) {
        ActivityInfo activityInfo;
        C0173Do.m401try(context, "context");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                activityInfo = packageManager.getActivityInfo(new ComponentName(context, "com.facebook.FacebookActivity"), 1);
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (activityInfo != null && !(!z)) {
                throw new IllegalStateException(FACEBOOK_ACTIVITY_NOT_FOUND_REASON.toString());
            }
        }
        activityInfo = null;
        if (activityInfo != null) {
        }
    }

    public static final void hasInternetPermissions(Context context, boolean z) {
        C0173Do.m401try(context, "context");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1 && !(!z)) {
            throw new IllegalStateException(NO_INTERNET_PERMISSION_REASON.toString());
        }
    }

    public static final void notEmpty(String str, String str2) {
        C0173Do.m401try(str, "arg");
        C0173Do.m401try(str2, FacebookRequestErrorClassification.KEY_NAME);
        if (!(str.length() > 0)) {
            throw new IllegalArgumentException(Cif.m6908case("Argument '", str2, "' cannot be empty").toString());
        }
    }
}
