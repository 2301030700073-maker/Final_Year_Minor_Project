package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Base64;
import com.facebook.internal.ServerProtocol;
import defpackage.C2690eO;
import defpackage.C3850vF;
import defpackage.C3917wN;
import defpackage.C4035yN;
import defpackage.FG;
import defpackage.GG;
import defpackage.LG;
import defpackage.QN;
import java.util.ArrayList;

/* loaded from: classes3.dex */
final class aj {
    final C3917wN a;
    private final C2690eO b;
    private final String c;
    private final Context d;
    private final at e;
    private final k f;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public aj(android.content.Context r7, defpackage.C2690eO r8, com.google.android.play.core.integrity.at r9, com.google.android.play.core.integrity.k r10) {
        /*
            r6 = this;
            r6.<init>()
            java.lang.String r0 = r7.getPackageName()
            r6.c = r0
            r6.b = r8
            r6.e = r9
            r6.f = r10
            r6.d = r7
            java.lang.String r9 = "Play Store package is not found."
            java.lang.String r10 = "com.android.vending"
            eO r0 = defpackage.C4035yN.f16736do
            r1 = 0
            android.content.pm.PackageManager r2 = r7.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L46
            android.content.pm.ApplicationInfo r2 = r2.getApplicationInfo(r10, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L46
            boolean r2 = r2.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L46
            if (r2 != 0) goto L2c
            java.lang.Object[] r9 = new java.lang.Object[r1]
            java.lang.String r10 = "Play Store package is disabled."
            r0.m6562for(r10, r9)
            goto L4b
        L2c:
            android.content.pm.PackageManager r2 = r7.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L40
            r3 = 64
            android.content.pm.PackageInfo r10 = r2.getPackageInfo(r10, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L40
            android.content.pm.Signature[] r9 = r10.signatures     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L40
            boolean r9 = defpackage.C4035yN.m8717if(r9)
            if (r9 == 0) goto L4b
            r9 = 1
            goto L4c
        L40:
            java.lang.Object[] r10 = new java.lang.Object[r1]
            r0.m6562for(r9, r10)
            goto L4b
        L46:
            java.lang.Object[] r10 = new java.lang.Object[r1]
            r0.m6562for(r9, r10)
        L4b:
            r9 = 0
        L4c:
            if (r9 != 0) goto L68
            java.lang.Object[] r7 = new java.lang.Object[r1]
            r9 = 6
            java.lang.String r10 = "PlayCore"
            boolean r9 = android.util.Log.isLoggable(r10, r9)
            if (r9 == 0) goto L61
            java.lang.String r8 = r8.f12673do
            java.lang.String r9 = "Phonesky is not installed."
            defpackage.C2690eO.m6560new(r8, r9, r7)
            goto L64
        L61:
            r8.getClass()
        L64:
            r7 = 0
            r6.a = r7
            return
        L68:
            wN r9 = new wN
            android.content.Intent r4 = com.google.android.play.core.integrity.ak.a
            com.google.android.play.core.integrity.ae r5 = new com.google.android.play.core.integrity.ae
            r5.<init>()
            java.lang.String r3 = "IntegrityService"
            r0 = r9
            r1 = r7
            r2 = r8
            r0.<init>(r1, r2, r3, r4, r5)
            r6.a = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.integrity.aj.<init>(android.content.Context, eO, com.google.android.play.core.integrity.at, com.google.android.play.core.integrity.k):void");
    }

    public static Bundle a(aj ajVar, byte[] bArr, Long l, Parcelable parcelable) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", ajVar.c);
        bundle.putByteArray(ServerProtocol.DIALOG_PARAM_NONCE, bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 4);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l != null) {
            bundle.putLong("cloud.prj", l.longValue());
        }
        if (parcelable != null) {
            bundle.putParcelable("network", parcelable);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new QN(3, System.currentTimeMillis()));
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(C3850vF.m8453if(arrayList)));
        return bundle;
    }

    public final FG b(Activity activity, Bundle bundle) {
        if (this.a == null) {
            return LG.m1319new(new IntegrityServiceException(-2, null));
        }
        int i = bundle.getInt("dialog.intent.type");
        this.b.m6563if("requestAndShowDialog(%s, %s)", this.c, Integer.valueOf(i));
        GG gg = new GG();
        this.a.m8571for(new ag(this, gg, bundle, activity, gg, i), gg);
        return gg.f1160do;
    }

    public final FG c(IntegrityTokenRequest integrityTokenRequest) {
        if (this.a == null) {
            return LG.m1319new(new IntegrityServiceException(-2, null));
        }
        if (C4035yN.m8716do(this.d) < 82380000) {
            return LG.m1319new(new IntegrityServiceException(-14, null));
        }
        try {
            byte[] decode = Base64.decode(integrityTokenRequest.nonce(), 10);
            Long cloudProjectNumber = integrityTokenRequest.cloudProjectNumber();
            if (Build.VERSION.SDK_INT >= 23 && (integrityTokenRequest instanceof ao)) {
            }
            this.b.m6563if("requestIntegrityToken(%s)", integrityTokenRequest);
            GG gg = new GG();
            this.a.m8571for(new af(this, gg, decode, cloudProjectNumber, null, gg, integrityTokenRequest), gg);
            return gg.f1160do;
        } catch (IllegalArgumentException e) {
            return LG.m1319new(new IntegrityServiceException(-13, e));
        }
    }
}
