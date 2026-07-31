package androidx.camera.core.streamsharing;

import androidx.camera.core.impl.CameraCaptureMetaData$AeState;
import androidx.camera.core.impl.CameraCaptureMetaData$AfState;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbState;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VirtualCameraCaptureResult implements CameraCaptureResult {
    public final Object mBaseCameraCaptureResult;
    public final Object mTagBundle;
    public long mTimestamp;

    public VirtualCameraCaptureResult() {
        this.mBaseCameraCaptureResult = new VelocityTracker1D();
        this.mTagBundle = new VelocityTracker1D();
    }

    /* renamed from: addPosition-Uv8p0NA, reason: not valid java name */
    public void m95addPositionUv8p0NA(long j, long j2) {
        ((VelocityTracker1D) this.mBaseCameraCaptureResult).addDataPoint(Float.intBitsToFloat((int) (j2 >> 32)), j);
        ((VelocityTracker1D) this.mTagBundle).addDataPoint(Float.intBitsToFloat((int) (j2 & 4294967295L)), j);
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AeState getAeState() {
        CameraCaptureResult cameraCaptureResult = (CameraCaptureResult) this.mBaseCameraCaptureResult;
        return cameraCaptureResult != null ? cameraCaptureResult.getAeState() : CameraCaptureMetaData$AeState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AfState getAfState() {
        CameraCaptureResult cameraCaptureResult = (CameraCaptureResult) this.mBaseCameraCaptureResult;
        return cameraCaptureResult != null ? cameraCaptureResult.getAfState() : CameraCaptureMetaData$AfState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AwbState getAwbState() {
        CameraCaptureResult cameraCaptureResult = (CameraCaptureResult) this.mBaseCameraCaptureResult;
        return cameraCaptureResult != null ? cameraCaptureResult.getAwbState() : CameraCaptureMetaData$AwbState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public int getFlashState() {
        CameraCaptureResult cameraCaptureResult = (CameraCaptureResult) this.mBaseCameraCaptureResult;
        if (cameraCaptureResult != null) {
            return cameraCaptureResult.getFlashState();
        }
        return 1;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public TagBundle getTagBundle() {
        return (TagBundle) this.mTagBundle;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public long getTimestamp() {
        CameraCaptureResult cameraCaptureResult = (CameraCaptureResult) this.mBaseCameraCaptureResult;
        if (cameraCaptureResult != null) {
            return cameraCaptureResult.getTimestamp();
        }
        long j = this.mTimestamp;
        if (j != -1) {
            return j;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No timestamp is available.");
        return 0L;
    }

    public VirtualCameraCaptureResult(CameraCaptureResult cameraCaptureResult, TagBundle tagBundle, long j) {
        this.mBaseCameraCaptureResult = cameraCaptureResult;
        this.mTagBundle = tagBundle;
        this.mTimestamp = j;
    }
}
