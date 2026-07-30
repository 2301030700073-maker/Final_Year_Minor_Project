package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.List;

/* renamed from: Zs, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0660Zs {

    /* renamed from: do, reason: not valid java name */
    public int f4911do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f4912do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f4913do;

    /* renamed from: if, reason: not valid java name */
    public int f4914if = 0;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f4915if;

    public C0660Zs(Context context) {
        this.f4912do = context;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m3074for(C0706ai c0706ai) {
        c0706ai.m3147do();
        String str = c0706ai.f4989do.f14830try;
        if (str != null) {
            return str;
        }
        c0706ai.m3147do();
        String str2 = c0706ai.f4989do.f14828if;
        if (!str2.startsWith("1:")) {
            return str2;
        }
        String[] split = str2.split(CertificateUtil.DELIMITER);
        if (split.length < 2) {
            return null;
        }
        String str3 = split[1];
        if (str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized String m3075do() {
        if (this.f4913do == null) {
            m3078try();
        }
        return this.f4913do;
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized String m3076if() {
        if (this.f4915if == null) {
            m3078try();
        }
        return this.f4915if;
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m3077new() {
        int i;
        synchronized (this) {
            i = this.f4914if;
            if (i == 0) {
                PackageManager packageManager = this.f4912do.getPackageManager();
                if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                    i = 0;
                } else {
                    if (!PlatformVersion.isAtLeastO()) {
                        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                        intent.setPackage("com.google.android.gms");
                        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                        if (queryIntentServices != null && queryIntentServices.size() > 0) {
                            this.f4914if = 1;
                            i = 1;
                        }
                    }
                    Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
                    intent2.setPackage("com.google.android.gms");
                    List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
                    if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
                        if (PlatformVersion.isAtLeastO()) {
                            this.f4914if = 2;
                        } else {
                            this.f4914if = 1;
                        }
                        i = this.f4914if;
                    } else {
                        this.f4914if = 2;
                        i = 2;
                    }
                }
            }
        }
        return i != 0;
    }

    /* renamed from: try, reason: not valid java name */
    public final synchronized void m3078try() {
        PackageInfo packageInfo;
        try {
            packageInfo = this.f4912do.getPackageManager().getPackageInfo(this.f4912do.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.toString();
            packageInfo = null;
        }
        if (packageInfo != null) {
            this.f4913do = Integer.toString(packageInfo.versionCode);
            this.f4915if = packageInfo.versionName;
        }
    }
}
