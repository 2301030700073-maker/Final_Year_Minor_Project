package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.impl.Quirk;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisableAbortCapturesOnStopQuirk implements Quirk {
    public static final boolean isPocoX3ProDevice;
    public static final boolean isSamsungNote10PlusDevice;

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0018, code lost:
    
        if (r2.equalsIgnoreCase("Samsung") != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003d, code lost:
    
        if (r0.equalsIgnoreCase("Poco") != false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0034  */
    static {
        /*
            java.lang.String r0 = android.os.Build.MANUFACTURER
            r0.getClass()
            java.lang.String r1 = "Samsung"
            boolean r2 = r0.equalsIgnoreCase(r1)
            r3 = 0
            r4 = 1
            if (r2 != 0) goto L1a
            java.lang.String r2 = android.os.Build.BRAND
            r2.getClass()
            boolean r1 = r2.equalsIgnoreCase(r1)
            if (r1 == 0) goto L26
        L1a:
            java.lang.String r1 = "d2q"
            java.lang.String r2 = android.os.Build.DEVICE
            boolean r1 = r1.equalsIgnoreCase(r2)
            if (r1 == 0) goto L26
            r1 = r4
            goto L27
        L26:
            r1 = r3
        L27:
            androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopQuirk.isSamsungNote10PlusDevice = r1
            r0.getClass()
            java.lang.String r1 = "Poco"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L3f
            java.lang.String r0 = android.os.Build.BRAND
            r0.getClass()
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L4a
        L3f:
            java.lang.String r0 = "M2102J20SG"
            java.lang.String r1 = android.os.Build.MODEL
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L4a
            r3 = r4
        L4a:
            androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopQuirk.isPocoX3ProDevice = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopQuirk.<clinit>():void");
    }
}
