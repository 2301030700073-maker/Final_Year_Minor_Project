package defpackage;

/* renamed from: Ic, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0271Ic {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0706ai f1538do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Boolean f1539do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1541do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f1540do = new Object();

    /* renamed from: do, reason: not valid java name */
    public final GG<Void> f1537do = new GG<>();

    /* renamed from: if, reason: not valid java name */
    public final GG<Void> f1542if = new GG<>();

    /* JADX WARN: Removed duplicated region for block: B:17:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0271Ic(defpackage.C0706ai r7) {
        /*
            r6 = this;
            r6.<init>()
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r6.f1540do = r0
            GG r0 = new GG
            r0.<init>()
            r6.f1537do = r0
            r0 = 0
            r6.f1541do = r0
            GG r1 = new GG
            r1.<init>()
            r6.f1542if = r1
            r7.m3147do()
            android.content.Context r1 = r7.f4985do
            r6.f1538do = r7
            java.lang.String r7 = "com.google.firebase.crashlytics"
            android.content.SharedPreferences r7 = r1.getSharedPreferences(r7, r0)
            java.lang.String r2 = "firebase_crashlytics_collection_enabled"
            boolean r3 = r7.contains(r2)
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L3d
            r6.f1541do = r0
            boolean r7 = r7.getBoolean(r2, r4)
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)
            goto L3e
        L3d:
            r7 = r5
        L3e:
            if (r7 != 0) goto L7d
            java.lang.String r7 = "firebase_crashlytics_collection_enabled"
            android.content.pm.PackageManager r2 = r1.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            if (r2 == 0) goto L6a
            java.lang.String r1 = r1.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            r3 = 128(0x80, float:1.8E-43)
            android.content.pm.ApplicationInfo r1 = r2.getApplicationInfo(r1, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            if (r1 == 0) goto L6a
            android.os.Bundle r2 = r1.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            if (r2 == 0) goto L6a
            boolean r2 = r2.containsKey(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            if (r2 == 0) goto L6a
            android.os.Bundle r1 = r1.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            boolean r7 = r1.getBoolean(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            goto L6b
        L69:
        L6a:
            r7 = r5
        L6b:
            if (r7 != 0) goto L71
            r6.f1541do = r0
            r7 = r5
            goto L7d
        L71:
            r6.f1541do = r4
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            boolean r7 = r0.equals(r7)
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)
        L7d:
            r6.f1539do = r7
            java.lang.Object r7 = r6.f1540do
            monitor-enter(r7)
            boolean r0 = r6.m958do()     // Catch: java.lang.Throwable -> L8f
            if (r0 == 0) goto L8d
            GG<java.lang.Void> r0 = r6.f1537do     // Catch: java.lang.Throwable -> L8f
            r0.m722new(r5)     // Catch: java.lang.Throwable -> L8f
        L8d:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L8f
            return
        L8f:
            r0 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L8f
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0271Ic.<init>(ai):void");
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized boolean m958do() {
        boolean z;
        Boolean bool = this.f1539do;
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            try {
                z = this.f1538do.m3148else();
            } catch (IllegalStateException unused) {
                z = false;
            }
        }
        String.format("Crashlytics automatic data collection %s by %s.", z ? "ENABLED" : "DISABLED", this.f1539do == null ? "global Firebase setting" : this.f1541do ? "firebase_crashlytics_collection_enabled manifest flag" : "API");
        return z;
    }
}
