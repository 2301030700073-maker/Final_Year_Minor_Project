package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.impl.Quirk;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CloseCameraDeviceOnCameraGraphCloseQuirk implements Quirk {
    public static final boolean isSamsungExynos7570Device;
    public static final boolean isSamsungExynos7870Device;
    public static final boolean isSamsungProblematicDevice;
    public static final boolean isSonyProblematicDevice;
    public static final boolean isXiaomiProblematicDevice;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00ae, code lost:
    
        if (r0.equalsIgnoreCase("Samsung") != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x002a, code lost:
    
        if (r2.equalsIgnoreCase("Xiaomi") != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0061, code lost:
    
        if (r0.equalsIgnoreCase("Sony") != false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0058  */
    static {
        /*
            java.lang.String r0 = android.os.Build.HARDWARE
            java.lang.String r1 = "samsungexynos7570"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            androidx.camera.camera2.compat.quirk.CloseCameraDeviceOnCameraGraphCloseQuirk.isSamsungExynos7570Device = r1
            java.lang.String r1 = "samsungexynos7870"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            androidx.camera.camera2.compat.quirk.CloseCameraDeviceOnCameraGraphCloseQuirk.isSamsungExynos7870Device = r0
            java.lang.String r0 = android.os.Build.MANUFACTURER
            r0.getClass()
            java.lang.String r1 = "Xiaomi"
            boolean r2 = r0.equalsIgnoreCase(r1)
            r3 = 0
            r4 = 1
            if (r2 != 0) goto L2c
            java.lang.String r2 = android.os.Build.BRAND
            r2.getClass()
            boolean r1 = r2.equalsIgnoreCase(r1)
            if (r1 == 0) goto L4a
        L2c:
            java.lang.String r1 = "aurora"
            java.lang.String r2 = "houji"
            java.lang.String[] r1 = new java.lang.String[]{r1, r2}
            java.lang.String r2 = android.os.Build.DEVICE
            r2.getClass()
            java.util.Locale r5 = java.util.Locale.ROOT
            java.lang.String r2 = r2.toLowerCase(r5)
            r2.getClass()
            boolean r1 = kotlin.collections.ArraysKt___ArraysKt.contains(r1, r2)
            if (r1 == 0) goto L4a
            r1 = r4
            goto L4b
        L4a:
            r1 = r3
        L4b:
            androidx.camera.camera2.compat.quirk.CloseCameraDeviceOnCameraGraphCloseQuirk.isXiaomiProblematicDevice = r1
            r0.getClass()
            java.lang.String r1 = "Sony"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L63
            java.lang.String r0 = android.os.Build.BRAND
            r0.getClass()
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L95
        L63:
            java.lang.String r0 = "SO"
            java.lang.String r1 = "A301SO"
            java.lang.String r2 = "XQ-DQ"
            java.lang.String[] r0 = new java.lang.String[]{r2, r0, r1}
            java.util.List r0 = androidx.compose.ui.unit.IntOffsetKt.listOf(r0)
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L78
            goto L95
        L78:
            java.util.Iterator r0 = r0.iterator()
        L7c:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L95
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.String r2 = android.os.Build.DEVICE
            r2.getClass()
            boolean r1 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r2, r1, r4)
            if (r1 == 0) goto L7c
            r0 = r4
            goto L96
        L95:
            r0 = r3
        L96:
            androidx.camera.camera2.compat.quirk.CloseCameraDeviceOnCameraGraphCloseQuirk.isSonyProblematicDevice = r0
            java.lang.String r0 = android.os.Build.MANUFACTURER
            r0.getClass()
            java.lang.String r1 = "Samsung"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto Lb0
            java.lang.String r0 = android.os.Build.BRAND
            r0.getClass()
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto Lbb
        Lb0:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 31
            if (r0 < r1) goto Lbb
            r1 = 34
            if (r0 > r1) goto Lbb
            r3 = r4
        Lbb:
            androidx.camera.camera2.compat.quirk.CloseCameraDeviceOnCameraGraphCloseQuirk.isSamsungProblematicDevice = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.compat.quirk.CloseCameraDeviceOnCameraGraphCloseQuirk.<clinit>():void");
    }
}
