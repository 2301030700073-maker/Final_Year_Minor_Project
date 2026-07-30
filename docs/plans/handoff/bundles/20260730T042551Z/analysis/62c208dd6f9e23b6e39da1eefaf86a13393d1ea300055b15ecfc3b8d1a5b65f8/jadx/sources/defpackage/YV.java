package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.List;

/* loaded from: classes.dex */
public final class YV {

    /* renamed from: do, reason: not valid java name */
    public int f4742do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f4743do;

    /* renamed from: if, reason: not valid java name */
    public int f4744if = 0;

    public YV(Context context) {
        this.f4743do = context;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized int m2939do() {
        PackageInfo packageInfo;
        if (this.f4742do == 0) {
            try {
                packageInfo = Wrappers.packageManager(this.f4743do).getPackageInfo("com.google.android.gms", 0);
            } catch (PackageManager.NameNotFoundException e) {
                "Failed to find package ".concat(e.toString());
                packageInfo = null;
            }
            if (packageInfo != null) {
                this.f4742do = packageInfo.versionCode;
            }
        }
        return this.f4742do;
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized int m2940if() {
        int i = this.f4744if;
        if (i != 0) {
            return i;
        }
        Context context = this.f4743do;
        PackageManager packageManager = context.getPackageManager();
        if (Wrappers.packageManager(context).checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            return 0;
        }
        int i2 = 1;
        if (!PlatformVersion.isAtLeastO()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                this.f4744if = i2;
                return i2;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (queryBroadcastReceivers != null && !queryBroadcastReceivers.isEmpty()) {
            i2 = 2;
            this.f4744if = i2;
            return i2;
        }
        if (true == PlatformVersion.isAtLeastO()) {
            i2 = 2;
        }
        this.f4744if = i2;
        return i2;
    }
}
