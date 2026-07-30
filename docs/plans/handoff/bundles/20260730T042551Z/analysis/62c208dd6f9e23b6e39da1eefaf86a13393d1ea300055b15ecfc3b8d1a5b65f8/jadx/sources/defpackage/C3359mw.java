package defpackage;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;

/* renamed from: mw, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3359mw {
    /* renamed from: do, reason: not valid java name */
    public static Signature[] m7481do(SigningInfo signingInfo) {
        Signature[] apkContentsSigners;
        apkContentsSigners = signingInfo.getApkContentsSigners();
        return apkContentsSigners;
    }

    /* renamed from: for, reason: not valid java name */
    public static Signature[] m7482for(SigningInfo signingInfo) {
        Signature[] signingCertificateHistory;
        signingCertificateHistory = signingInfo.getSigningCertificateHistory();
        return signingCertificateHistory;
    }

    /* renamed from: if, reason: not valid java name */
    public static long m7483if(PackageInfo packageInfo) {
        long longVersionCode;
        longVersionCode = packageInfo.getLongVersionCode();
        return longVersionCode;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m7484new(SigningInfo signingInfo) {
        boolean hasMultipleSigners;
        hasMultipleSigners = signingInfo.hasMultipleSigners();
        return hasMultipleSigners;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m7485try(PackageManager packageManager, String str, byte[] bArr, int i) {
        boolean hasSigningCertificate;
        hasSigningCertificate = packageManager.hasSigningCertificate(str, bArr, i);
        return hasSigningCertificate;
    }
}
