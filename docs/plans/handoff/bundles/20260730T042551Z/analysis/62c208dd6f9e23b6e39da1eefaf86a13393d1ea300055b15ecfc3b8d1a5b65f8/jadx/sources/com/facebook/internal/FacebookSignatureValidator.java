package com.facebook.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.E8;
import defpackage.O4;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class FacebookSignatureValidator {
    public static final FacebookSignatureValidator INSTANCE = new FacebookSignatureValidator();
    private static final String FBR_HASH = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9";
    private static final String FBR2_HASH = "cc2751449a350f668590264ed76692694a80308a";
    private static final String FBI_HASH = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc";
    private static final String FBL_HASH = "df6b721c8b4d3b6eb44c861d4415007e5a35fc95";
    private static final String MSR_HASH = "9b8f518b086098de3d77736f9458a3d2f6f95a37";
    private static final String FBF_HASH = "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3";
    private static final String IGR_HASH = "c56fb7d591ba6704df047fd98f535372fea00211";
    private static final HashSet<String> validAppSignatureHashes = O4.m1625switch(FBR_HASH, FBR2_HASH, FBI_HASH, FBL_HASH, MSR_HASH, FBF_HASH, IGR_HASH);

    private FacebookSignatureValidator() {
    }

    public static final boolean validateSignature(Context context, String str) {
        C0173Do.m401try(context, "context");
        C0173Do.m401try(str, "packageName");
        String str2 = Build.BRAND;
        int i = context.getApplicationInfo().flags;
        C0173Do.m399new(str2, "brand");
        if (BF.j(str2, "generic") && (i & 2) != 0) {
            return true;
        }
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
            if (signatureArr != null) {
                if (!(signatureArr.length == 0)) {
                    C0173Do.m399new(signatureArr, "packageInfo.signatures");
                    for (Signature signature : signatureArr) {
                        HashSet<String> hashSet = validAppSignatureHashes;
                        Utility utility = Utility.INSTANCE;
                        byte[] byteArray = signature.toByteArray();
                        C0173Do.m399new(byteArray, "it.toByteArray()");
                        if (E8.d(hashSet, Utility.sha1hash(byteArray))) {
                        }
                    }
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }
}
