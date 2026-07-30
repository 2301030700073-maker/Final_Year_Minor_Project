package defpackage;

/* renamed from: ty, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3773ty {
    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m8354do(final android.content.Context r4) {
        /*
            android.content.SharedPreferences r0 = defpackage.C3891vy.m8491do(r4)
            java.lang.String r1 = "proxy_notification_initialized"
            r2 = 0
            boolean r0 = r0.getBoolean(r1, r2)
            if (r0 == 0) goto Le
            return
        Le:
            java.lang.String r0 = "firebase_messaging_notification_delegation_enabled"
            android.content.Context r1 = r4.getApplicationContext()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L37
            android.content.pm.PackageManager r2 = r1.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L37
            if (r2 == 0) goto L37
            java.lang.String r1 = r1.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L37
            r3 = 128(0x80, float:1.8E-43)
            android.content.pm.ApplicationInfo r1 = r2.getApplicationInfo(r1, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L37
            if (r1 == 0) goto L37
            android.os.Bundle r2 = r1.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L37
            if (r2 == 0) goto L37
            boolean r2 = r2.containsKey(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L37
            if (r2 == 0) goto L37
            android.os.Bundle r1 = r1.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L37
            boolean r0 = r1.getBoolean(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L37
            goto L38
        L37:
            r0 = 1
        L38:
            boolean r1 = com.google.android.gms.common.util.PlatformVersion.isAtLeastQ()
            if (r1 != 0) goto L43
            r4 = 0
            defpackage.LG.m1320try(r4)
            goto L50
        L43:
            GG r1 = new GG
            r1.<init>()
            sy r2 = new sy
            r2.<init>()
            r2.run()
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3773ty.m8354do(android.content.Context):void");
    }
}
