package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.datastore.preferences.protobuf.Utf8;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VideoUsageControl implements UseCaseCameraControl {
    public final AtomicInt videoUsage = AtomicFU.atomic(0);

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void reset() {
        this.videoUsage.value = 0;
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "reset: videoUsage = 0");
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
    }
}
