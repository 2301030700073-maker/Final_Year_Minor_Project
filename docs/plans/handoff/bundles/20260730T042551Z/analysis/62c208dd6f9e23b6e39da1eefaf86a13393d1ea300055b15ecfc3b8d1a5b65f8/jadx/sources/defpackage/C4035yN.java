package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: yN, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4035yN {

    /* renamed from: do, reason: not valid java name */
    public static final C2690eO f16736do = new C2690eO("PhoneskyVerificationUtils");

    /* renamed from: do, reason: not valid java name */
    public static int m8716do(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.android.vending", 64);
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo != null && applicationInfo.enabled && m8717if(packageInfo.signatures)) {
                return packageInfo.versionCode;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m8717if(Signature[] signatureArr) {
        String str;
        C2690eO c2690eO = f16736do;
        if (signatureArr == null || (signatureArr.length) == 0) {
            c2690eO.m6562for("Play Store package is not signed -- possibly self-built package. Could not verify.", new Object[0]);
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            byte[] byteArray = signature.toByteArray();
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(byteArray);
                str = Base64.encodeToString(messageDigest.digest(), 11);
            } catch (NoSuchAlgorithmException unused) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            arrayList.add(str);
            if ("8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M".equals(str) || ((Build.TAGS.contains("dev-keys") || Build.TAGS.contains("test-keys")) && "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA".equals(str))) {
                return true;
            }
        }
        Object[] objArr = new Object[1];
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append((CharSequence) ", ");
            }
        }
        objArr[0] = sb.toString();
        c2690eO.m6562for(String.format("Play Store package certs are not valid. Found these sha256 certs: [%s].", objArr), new Object[0]);
        return false;
    }
}
