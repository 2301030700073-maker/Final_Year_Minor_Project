package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;

/* renamed from: Jc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0293Jc {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3950wy f1652do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f1653do;

    public C0293Jc(Context context, String str, InterfaceC3950wy interfaceC3950wy) {
        boolean z;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        context = Build.VERSION.SDK_INT >= 24 ? C0466Ra.createDeviceProtectedStorageContext(context) : context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f1652do = interfaceC3950wy;
        boolean z2 = true;
        if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
            z = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
        } else {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                    z2 = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            z = z2;
        }
        this.f1653do = z;
    }
}
