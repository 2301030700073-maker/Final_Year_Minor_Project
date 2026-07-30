package com.facebook.internal.security;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public final class CertificateUtil {
    public static final String DELIMITER = ":";
    public static final CertificateUtil INSTANCE = new CertificateUtil();

    private CertificateUtil() {
    }

    public static final String getCertificateHash(Context context) {
        C0173Do.m401try(context, "ctx");
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            StringBuilder sb = new StringBuilder();
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            C0173Do.m399new(signatureArr, "signatures");
            int length = signatureArr.length;
            int i = 0;
            while (i < length) {
                Signature signature = signatureArr[i];
                i++;
                messageDigest.update(signature.toByteArray());
                sb.append(Base64.encodeToString(messageDigest.digest(), 0));
                sb.append(DELIMITER);
            }
            if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            String sb2 = sb.toString();
            C0173Do.m399new(sb2, "sb.toString()");
            return sb2;
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    public static /* synthetic */ void getDELIMITER$facebook_core_release$annotations() {
    }
}
