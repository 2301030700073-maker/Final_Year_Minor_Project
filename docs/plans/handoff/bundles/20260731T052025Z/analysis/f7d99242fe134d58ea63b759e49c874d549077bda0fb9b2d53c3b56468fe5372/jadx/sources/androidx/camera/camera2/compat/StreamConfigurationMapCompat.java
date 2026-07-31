package androidx.camera.camera2.compat;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StreamConfigurationMapCompat {
    public final LinkedHashMap cachedFormatOutputSizes;
    public final BiometricPrompt impl;
    public final OutputSizesCorrector outputSizesCorrector;

    public StreamConfigurationMapCompat(StreamConfigurationMap streamConfigurationMap, OutputSizesCorrector outputSizesCorrector) {
        outputSizesCorrector.getClass();
        this.outputSizesCorrector = outputSizesCorrector;
        this.cachedFormatOutputSizes = new LinkedHashMap();
        new LinkedHashMap();
        new LinkedHashMap();
        this.impl = Build.VERSION.SDK_INT >= 34 ? new StreamConfigurationMapCompatApi34Impl(12, streamConfigurationMap) : new BiometricPrompt(12, streamConfigurationMap);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0081, code lost:
    
        if (r3.equalsIgnoreCase("Motorola") != false) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Size[] getOutputSizes(int r26) {
        /*
            Method dump skipped, instructions count: 1234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.compat.StreamConfigurationMapCompat.getOutputSizes(int):android.util.Size[]");
    }
}
