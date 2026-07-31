package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.DurationNs;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraStateClosed extends CameraState {
    public final DurationNs cameraActiveDurationNs;
    public final ClosedReason cameraClosedReason;
    public final DurationNs cameraClosingDurationNs;
    public final CameraError cameraErrorCode;
    public final Throwable cameraException;
    public final String cameraId;
    public final DurationNs cameraOpenDurationNs;
    public final Integer cameraRetryCount;
    public final DurationNs cameraRetryDurationNs;

    public CameraStateClosed(String str, ClosedReason closedReason, Integer num, DurationNs durationNs, Throwable th, DurationNs durationNs2, DurationNs durationNs3, DurationNs durationNs4, CameraError cameraError) {
        str.getClass();
        closedReason.getClass();
        this.cameraId = str;
        this.cameraClosedReason = closedReason;
        this.cameraRetryCount = num;
        this.cameraRetryDurationNs = durationNs;
        this.cameraException = th;
        this.cameraOpenDurationNs = durationNs2;
        this.cameraActiveDurationNs = durationNs3;
        this.cameraClosingDurationNs = durationNs4;
        this.cameraErrorCode = cameraError;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraStateClosed)) {
            return false;
        }
        CameraStateClosed cameraStateClosed = (CameraStateClosed) obj;
        return Intrinsics.areEqual(this.cameraId, cameraStateClosed.cameraId) && this.cameraClosedReason == cameraStateClosed.cameraClosedReason && Intrinsics.areEqual(this.cameraRetryCount, cameraStateClosed.cameraRetryCount) && Intrinsics.areEqual(this.cameraRetryDurationNs, cameraStateClosed.cameraRetryDurationNs) && Intrinsics.areEqual(this.cameraException, cameraStateClosed.cameraException) && Intrinsics.areEqual(this.cameraOpenDurationNs, cameraStateClosed.cameraOpenDurationNs) && Intrinsics.areEqual(this.cameraActiveDurationNs, cameraStateClosed.cameraActiveDurationNs) && Intrinsics.areEqual(this.cameraClosingDurationNs, cameraStateClosed.cameraClosingDurationNs) && Intrinsics.areEqual(this.cameraErrorCode, cameraStateClosed.cameraErrorCode);
    }

    public final int hashCode() {
        int hashCode = (this.cameraClosedReason.hashCode() + (this.cameraId.hashCode() * 31)) * 31;
        Integer num = this.cameraRetryCount;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        DurationNs durationNs = this.cameraRetryDurationNs;
        int m76hashCodeimpl = (hashCode2 + (durationNs == null ? 0 : DurationNs.m76hashCodeimpl(durationNs.value))) * 31;
        Throwable th = this.cameraException;
        int hashCode3 = (m76hashCodeimpl + (th == null ? 0 : th.hashCode())) * 31;
        DurationNs durationNs2 = this.cameraOpenDurationNs;
        int m76hashCodeimpl2 = (hashCode3 + (durationNs2 == null ? 0 : DurationNs.m76hashCodeimpl(durationNs2.value))) * 31;
        DurationNs durationNs3 = this.cameraActiveDurationNs;
        int m76hashCodeimpl3 = (m76hashCodeimpl2 + (durationNs3 == null ? 0 : DurationNs.m76hashCodeimpl(durationNs3.value))) * 31;
        DurationNs durationNs4 = this.cameraClosingDurationNs;
        int m76hashCodeimpl4 = (m76hashCodeimpl3 + (durationNs4 == null ? 0 : DurationNs.m76hashCodeimpl(durationNs4.value))) * 31;
        CameraError cameraError = this.cameraErrorCode;
        return m76hashCodeimpl4 + (cameraError != null ? cameraError.value : 0);
    }

    public final String toString() {
        return "CameraStateClosed(cameraId=" + ((Object) CameraId.m35toStringimpl(this.cameraId)) + ", cameraClosedReason=" + this.cameraClosedReason + ", cameraRetryCount=" + this.cameraRetryCount + ", cameraRetryDurationNs=" + this.cameraRetryDurationNs + ", cameraException=" + this.cameraException + ", cameraOpenDurationNs=" + this.cameraOpenDurationNs + ", cameraActiveDurationNs=" + this.cameraActiveDurationNs + ", cameraClosingDurationNs=" + this.cameraClosingDurationNs + ", cameraErrorCode=" + this.cameraErrorCode + ')';
    }
}
