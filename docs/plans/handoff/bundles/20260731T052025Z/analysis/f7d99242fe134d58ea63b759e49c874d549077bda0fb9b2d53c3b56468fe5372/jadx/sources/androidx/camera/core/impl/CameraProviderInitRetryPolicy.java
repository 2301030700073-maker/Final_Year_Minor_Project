package androidx.camera.core.impl;

import androidx.camera.core.RetryPolicy;
import androidx.datastore.preferences.protobuf.Utf8;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraProviderInitRetryPolicy implements RetryPolicy {
    public final /* synthetic */ int $r8$classId;
    public final RetryPolicy mDelegatePolicy;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.core.impl.CameraProviderInitRetryPolicy$1, reason: invalid class name */
    public final class AnonymousClass1 implements RetryPolicy {
        public final /* synthetic */ long val$timeoutInMillis;

        public AnonymousClass1(long j) {
            this.val$timeoutInMillis = j;
        }

        @Override // androidx.camera.core.RetryPolicy
        public final long getTimeoutInMillis() {
            return this.val$timeoutInMillis;
        }

        @Override // androidx.camera.core.RetryPolicy
        public final RetryPolicy.RetryConfig onRetryDecisionRequested(CameraProviderExecutionState cameraProviderExecutionState) {
            return cameraProviderExecutionState.mStatus == 1 ? RetryPolicy.RetryConfig.NOT_RETRY : RetryPolicy.RetryConfig.DEFAULT_DELAY_RETRY;
        }
    }

    public CameraProviderInitRetryPolicy(int i, long j) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.mDelegatePolicy = new CameraProviderInitRetryPolicy(0, j);
                break;
            default:
                this.mDelegatePolicy = new TimeoutRetryPolicy(j, new AnonymousClass1(j));
                break;
        }
    }

    @Override // androidx.camera.core.RetryPolicy
    public final long getTimeoutInMillis() {
        switch (this.$r8$classId) {
            case 0:
                return ((TimeoutRetryPolicy) this.mDelegatePolicy).mTimeoutInMillis;
            default:
                return ((TimeoutRetryPolicy) ((CameraProviderInitRetryPolicy) this.mDelegatePolicy).mDelegatePolicy).mTimeoutInMillis;
        }
    }

    @Override // androidx.camera.core.RetryPolicy
    public final RetryPolicy.RetryConfig onRetryDecisionRequested(CameraProviderExecutionState cameraProviderExecutionState) {
        int i = this.$r8$classId;
        RetryPolicy retryPolicy = this.mDelegatePolicy;
        switch (i) {
            case 0:
                return ((TimeoutRetryPolicy) retryPolicy).onRetryDecisionRequested(cameraProviderExecutionState);
            default:
                if (((TimeoutRetryPolicy) ((CameraProviderInitRetryPolicy) retryPolicy).mDelegatePolicy).onRetryDecisionRequested(cameraProviderExecutionState).mShouldRetry) {
                    return RetryPolicy.RetryConfig.DEFAULT_DELAY_RETRY;
                }
                Throwable th = cameraProviderExecutionState.mCause;
                if (th instanceof CameraValidator$CameraIdListIncorrectException) {
                    Utf8.SafeProcessor.e("CameraX", "The device might underreport the amount of the cameras. Finish the initialize task since we are already reaching the maximum number of retries.");
                    if (((CameraValidator$CameraIdListIncorrectException) th).availableCameraCount > 0) {
                        return RetryPolicy.RetryConfig.COMPLETE_WITHOUT_FAILURE;
                    }
                }
                return RetryPolicy.RetryConfig.NOT_RETRY;
        }
    }
}
