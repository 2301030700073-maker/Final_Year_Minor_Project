package androidx.work.impl.utils;

import androidx.work.Logger$LogcatLogger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PackageManagerHelper {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("PackageManagerHelper");

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
    
        androidx.work.Logger$LogcatLogger.get().debug(r2, "Skipping component enablement for ".concat(r8.getName()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0032, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setComponentEnabled(android.content.Context r7, java.lang.Class r8, boolean r9) {
        /*
            java.lang.String r0 = "disabled"
            java.lang.String r1 = "enabled"
            java.lang.String r2 = androidx.work.impl.utils.PackageManagerHelper.TAG
            java.lang.String r3 = "Skipping component enablement for "
            java.lang.String r4 = r8.getName()     // Catch: java.lang.Exception -> L33
            android.content.pm.PackageManager r5 = r7.getPackageManager()     // Catch: java.lang.Exception -> L33
            android.content.ComponentName r6 = new android.content.ComponentName     // Catch: java.lang.Exception -> L33
            r6.<init>(r7, r4)     // Catch: java.lang.Exception -> L33
            int r4 = r5.getComponentEnabledSetting(r6)     // Catch: java.lang.Exception -> L33
            r5 = 0
            r6 = 1
            if (r4 != 0) goto L1e
            goto L21
        L1e:
            if (r4 != r6) goto L21
            r5 = r6
        L21:
            if (r9 != r5) goto L35
            androidx.work.Logger$LogcatLogger r7 = androidx.work.Logger$LogcatLogger.get()     // Catch: java.lang.Exception -> L33
            java.lang.String r4 = r8.getName()     // Catch: java.lang.Exception -> L33
            java.lang.String r3 = r3.concat(r4)     // Catch: java.lang.Exception -> L33
            r7.debug(r2, r3)     // Catch: java.lang.Exception -> L33
            return
        L33:
            r7 = move-exception
            goto L6f
        L35:
            android.content.pm.PackageManager r3 = r7.getPackageManager()     // Catch: java.lang.Exception -> L33
            android.content.ComponentName r4 = new android.content.ComponentName     // Catch: java.lang.Exception -> L33
            java.lang.String r5 = r8.getName()     // Catch: java.lang.Exception -> L33
            r4.<init>(r7, r5)     // Catch: java.lang.Exception -> L33
            if (r9 == 0) goto L46
            r7 = r6
            goto L47
        L46:
            r7 = 2
        L47:
            r3.setComponentEnabledSetting(r4, r7, r6)     // Catch: java.lang.Exception -> L33
            androidx.work.Logger$LogcatLogger r7 = androidx.work.Logger$LogcatLogger.get()     // Catch: java.lang.Exception -> L33
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L33
            r3.<init>()     // Catch: java.lang.Exception -> L33
            java.lang.String r4 = r8.getName()     // Catch: java.lang.Exception -> L33
            r3.append(r4)     // Catch: java.lang.Exception -> L33
            java.lang.String r4 = " "
            r3.append(r4)     // Catch: java.lang.Exception -> L33
            if (r9 == 0) goto L63
            r4 = r1
            goto L64
        L63:
            r4 = r0
        L64:
            r3.append(r4)     // Catch: java.lang.Exception -> L33
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L33
            r7.debug(r2, r3)     // Catch: java.lang.Exception -> L33
            return
        L6f:
            androidx.work.Logger$LogcatLogger r3 = androidx.work.Logger$LogcatLogger.get()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r8 = r8.getName()
            r4.append(r8)
            java.lang.String r8 = "could not be "
            r4.append(r8)
            if (r9 == 0) goto L87
            r0 = r1
        L87:
            r4.append(r0)
            java.lang.String r8 = r4.toString()
            r3.debug(r2, r8, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.PackageManagerHelper.setComponentEnabled(android.content.Context, java.lang.Class, boolean):void");
    }
}
