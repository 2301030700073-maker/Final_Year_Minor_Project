package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.Intrinsics;
import net.openid.appauth.internal.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraGraph$Flags {
    public final boolean abortCapturesOnStop;
    public final Logger awaitRepeatingRequestBeforeCapture;
    public final boolean closeCameraDeviceOnClose;
    public final boolean closeCaptureSessionOnDisconnect;
    public final boolean enableRestartDelays;
    public final int finalizeSessionOnCloseBehavior;

    /* JADX WARN: Code restructure failed: missing block: B:26:0x006b, code lost:
    
        if (r0.contains(r3) == true) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CameraGraph$Flags(boolean r6, net.openid.appauth.internal.Logger r7, int r8, boolean r9, int r10) {
        /*
            r5 = this;
            r0 = r10 & 2
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lf
            int r6 = android.os.Build.VERSION.SDK_INT
            r0 = 30
            if (r6 < r0) goto Le
            r6 = r1
            goto Lf
        Le:
            r6 = r2
        Lf:
            r0 = r10 & 4
            if (r0 == 0) goto L1a
            net.openid.appauth.internal.Logger r7 = new net.openid.appauth.internal.Logger
            androidx.camera.camera2.pipe.CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior r0 = androidx.camera.camera2.pipe.CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior.AT_LEAST
            r7.<init>(r2, r0)
        L1a:
            r0 = r10 & 16
            if (r0 == 0) goto L1f
            r8 = r2
        L1f:
            r0 = r10 & 32
            if (r0 == 0) goto L70
            java.util.Map r0 = androidx.camera.camera2.pipe.compat.Camera2Quirks.SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = 27
            if (r0 > r3) goto L2c
            goto L70
        L2c:
            java.lang.String r3 = android.os.Build.HARDWARE
            java.lang.String r4 = "samsungexynos7870"
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r4 == 0) goto L37
            goto L70
        L37:
            java.lang.String r4 = "qcom"
            boolean r3 = kotlin.text.StringsKt__StringsJVMKt.equals(r3, r4, r1)
            if (r3 == 0) goto L43
            r3 = 31
            if (r0 <= r3) goto L70
        L43:
            java.util.Map r0 = androidx.camera.camera2.pipe.compat.Camera2Quirks.SM8150_DEVICES
            java.lang.String r3 = android.os.Build.BRAND
            r3.getClass()
            java.util.Locale r4 = java.util.Locale.ROOT
            java.lang.String r3 = r3.toLowerCase(r4)
            r3.getClass()
            java.lang.Object r0 = r0.get(r3)
            java.util.Set r0 = (java.util.Set) r0
            if (r0 == 0) goto L6e
            java.lang.String r3 = android.os.Build.MODEL
            r3.getClass()
            java.lang.String r3 = r3.toLowerCase(r4)
            r3.getClass()
            boolean r0 = r0.contains(r3)
            if (r0 != r1) goto L6e
            goto L70
        L6e:
            r0 = r2
            goto L71
        L70:
            r0 = r1
        L71:
            r3 = r10 & 64
            if (r3 == 0) goto L76
            r9 = r2
        L76:
            r10 = r10 & 128(0x80, float:1.8E-43)
            if (r10 == 0) goto L7b
            r1 = r2
        L7b:
            r5.<init>()
            r5.abortCapturesOnStop = r6
            r5.awaitRepeatingRequestBeforeCapture = r7
            r5.finalizeSessionOnCloseBehavior = r8
            r5.closeCaptureSessionOnDisconnect = r0
            r5.closeCameraDeviceOnClose = r9
            r5.enableRestartDelays = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.CameraGraph$Flags.<init>(boolean, net.openid.appauth.internal.Logger, int, boolean, int):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraGraph$Flags)) {
            return false;
        }
        CameraGraph$Flags cameraGraph$Flags = (CameraGraph$Flags) obj;
        return this.abortCapturesOnStop == cameraGraph$Flags.abortCapturesOnStop && Intrinsics.areEqual(this.awaitRepeatingRequestBeforeCapture, cameraGraph$Flags.awaitRepeatingRequestBeforeCapture) && this.finalizeSessionOnCloseBehavior == cameraGraph$Flags.finalizeSessionOnCloseBehavior && this.closeCaptureSessionOnDisconnect == cameraGraph$Flags.closeCaptureSessionOnDisconnect && this.closeCameraDeviceOnClose == cameraGraph$Flags.closeCameraDeviceOnClose && this.enableRestartDelays == cameraGraph$Flags.enableRestartDelays;
    }

    public final int hashCode() {
        return ((((((((this.awaitRepeatingRequestBeforeCapture.hashCode() + ((38347 + (this.abortCapturesOnStop ? 1231 : 1237)) * 31)) * 961) + this.finalizeSessionOnCloseBehavior) * 31) + (this.closeCaptureSessionOnDisconnect ? 1231 : 1237)) * 31) + (this.closeCameraDeviceOnClose ? 1231 : 1237)) * 31) + (this.enableRestartDelays ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Flags(configureBlankSessionOnStop=false, abortCapturesOnStop=");
        sb.append(this.abortCapturesOnStop);
        sb.append(", awaitRepeatingRequestBeforeCapture=");
        sb.append(this.awaitRepeatingRequestBeforeCapture);
        sb.append(", awaitRepeatingRequestOnDisconnect=null, finalizeSessionOnCloseBehavior=");
        sb.append((Object) ("FinalizeSessionOnCloseBehavior(value=" + this.finalizeSessionOnCloseBehavior + ')'));
        sb.append(", closeCaptureSessionOnDisconnect=");
        sb.append(this.closeCaptureSessionOnDisconnect);
        sb.append(", closeCameraDeviceOnClose=");
        sb.append(this.closeCameraDeviceOnClose);
        sb.append(", enableRestartDelays=");
        return CameraDevices$CC.m(sb, this.enableRestartDelays, ')');
    }
}
