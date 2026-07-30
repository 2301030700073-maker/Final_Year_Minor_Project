package defpackage;

/* renamed from: ut, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3827ut {
    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Intent m8397do(android.app.Activity r4, int r5) {
        /*
            java.lang.String r0 = "card_pressed"
            java.lang.String r1 = "item_name"
            r2 = 1
            if (r5 != r2) goto L41
            com.google.firebase.analytics.FirebaseAnalytics r5 = defpackage.C0583Wh.f4395do
            java.lang.String r3 = "MT-AAR"
            if (r5 != 0) goto Le
            goto L1b
        Le:
            android.os.Bundle r5 = new android.os.Bundle     // Catch: java.lang.Exception -> L1b
            r5.<init>()     // Catch: java.lang.Exception -> L1b
            r5.putString(r1, r3)     // Catch: java.lang.Exception -> L1b
            com.google.firebase.analytics.FirebaseAnalytics r1 = defpackage.C0583Wh.f4395do     // Catch: java.lang.Exception -> L1b
            r1.m6073do(r0, r5)     // Catch: java.lang.Exception -> L1b
        L1b:
            defpackage.C4012y0.m8692for(r3)
            r5 = 0
            android.content.pm.PackageManager r0 = r4.getPackageManager()     // Catch: java.lang.Exception -> L2a
            java.lang.String r1 = "com.android.vending"
            r0.getInstallerPackageName(r1)     // Catch: java.lang.Exception -> L2a
            r0 = 1
            goto L2c
        L2a:
            r0 = 0
        L2c:
            if (r0 == 0) goto L30
        L2e:
            r2 = 0
            goto L39
        L30:
            android.content.pm.PackageManager r4 = r4.getPackageManager()
            java.lang.String r0 = "com.amazon.venezia"
            r4.getInstallerPackageName(r0)     // Catch: java.lang.Exception -> L2e
        L39:
            if (r2 == 0) goto L3e
            java.lang.String r4 = "http://www.amazon.com/gp/mas/dl/android?p=com.joeykrim.allaboutroot&referrer=utm_source%3Drootcheckp%26utm_content%3Dmore-tools"
            goto L9a
        L3e:
            java.lang.String r4 = "https://play.google.com/store/apps/details?id=com.joeykrim.allaboutroot&referrer=utm_source%3Drootcheckp%26utm_content%3Dmore-tools"
            goto L9a
        L41:
            r4 = 2
            if (r5 != r4) goto L5e
            com.google.firebase.analytics.FirebaseAnalytics r4 = defpackage.C0583Wh.f4395do
            java.lang.String r5 = "MT-BPE"
            if (r4 != 0) goto L4b
            goto L58
        L4b:
            android.os.Bundle r4 = new android.os.Bundle     // Catch: java.lang.Exception -> L58
            r4.<init>()     // Catch: java.lang.Exception -> L58
            r4.putString(r1, r5)     // Catch: java.lang.Exception -> L58
            com.google.firebase.analytics.FirebaseAnalytics r1 = defpackage.C0583Wh.f4395do     // Catch: java.lang.Exception -> L58
            r1.m6073do(r0, r4)     // Catch: java.lang.Exception -> L58
        L58:
            defpackage.C4012y0.m8692for(r5)
            java.lang.String r4 = "https://play.google.com/store/apps/details?id=com.joeykrim.buildpropeditor&referrer=utm_source%3Drootcheckp%26utm_content%3Dmore-tools"
            goto L9a
        L5e:
            r4 = 3
            if (r5 != r4) goto L7b
            com.google.firebase.analytics.FirebaseAnalytics r4 = defpackage.C0583Wh.f4395do
            java.lang.String r5 = "MT-RQL"
            if (r4 != 0) goto L68
            goto L75
        L68:
            android.os.Bundle r4 = new android.os.Bundle     // Catch: java.lang.Exception -> L75
            r4.<init>()     // Catch: java.lang.Exception -> L75
            r4.putString(r1, r5)     // Catch: java.lang.Exception -> L75
            com.google.firebase.analytics.FirebaseAnalytics r1 = defpackage.C0583Wh.f4395do     // Catch: java.lang.Exception -> L75
            r1.m6073do(r0, r4)     // Catch: java.lang.Exception -> L75
        L75:
            defpackage.C4012y0.m8692for(r5)
            java.lang.String r4 = "https://play.google.com/store/apps/details?id=com.joeykrim.rootquizl&referrer=utm_source%3Drootcheckp%26utm_content%3Dmore-tools"
            goto L9a
        L7b:
            r4 = 4
            if (r5 != r4) goto L98
            com.google.firebase.analytics.FirebaseAnalytics r4 = defpackage.C0583Wh.f4395do
            java.lang.String r5 = "MT-FIG"
            if (r4 != 0) goto L85
            goto L92
        L85:
            android.os.Bundle r4 = new android.os.Bundle     // Catch: java.lang.Exception -> L92
            r4.<init>()     // Catch: java.lang.Exception -> L92
            r4.putString(r1, r5)     // Catch: java.lang.Exception -> L92
            com.google.firebase.analytics.FirebaseAnalytics r1 = defpackage.C0583Wh.f4395do     // Catch: java.lang.Exception -> L92
            r1.m6073do(r0, r4)     // Catch: java.lang.Exception -> L92
        L92:
            defpackage.C4012y0.m8692for(r5)
            java.lang.String r4 = "https://play.google.com/store/apps/details?id=com.joeykrim.flashimagegui&referrer=utm_source%3Drootcheckp%26utm_content%3Dmore-tools"
            goto L9a
        L98:
            java.lang.String r4 = ""
        L9a:
            android.content.Intent r5 = new android.content.Intent
            java.lang.String r0 = "android.intent.action.VIEW"
            android.net.Uri r4 = android.net.Uri.parse(r4)
            r5.<init>(r0, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3827ut.m8397do(android.app.Activity, int):android.content.Intent");
    }
}
