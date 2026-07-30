package c.b.a.c.d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Log;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static f f2877a;

    public f(Context context) {
        context.getApplicationContext();
    }

    public static q a(PackageInfo packageInfo, q... qVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        r rVar = new r(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < qVarArr.length; i++) {
            if (qVarArr[i].equals(rVar)) {
                return qVarArr[i];
            }
        }
        return null;
    }

    public static boolean b(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? a(packageInfo, t.f2998a) : a(packageInfo, t.f2998a[0])) != null) {
                return true;
            }
        }
        return false;
    }
}
