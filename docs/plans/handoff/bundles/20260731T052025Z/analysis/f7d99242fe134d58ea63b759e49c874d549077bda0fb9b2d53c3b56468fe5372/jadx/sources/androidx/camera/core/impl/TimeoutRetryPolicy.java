package androidx.camera.core.impl;

import androidx.camera.core.RetryPolicy;
import androidx.room.util.RelationUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TimeoutRetryPolicy implements RetryPolicy {
    public final RetryPolicy mDelegatePolicy;
    public final long mTimeoutInMillis;

    public TimeoutRetryPolicy(long j, RetryPolicy retryPolicy) {
        RelationUtil.checkArgument("Timeout must be non-negative.", j >= 0);
        this.mTimeoutInMillis = j;
        this.mDelegatePolicy = retryPolicy;
    }

    @Override // androidx.camera.core.RetryPolicy
    public final long getTimeoutInMillis() {
        return this.mTimeoutInMillis;
    }

    @Override // androidx.camera.core.RetryPolicy
    public final RetryPolicy.RetryConfig onRetryDecisionRequested(CameraProviderExecutionState cameraProviderExecutionState) {
        RetryPolicy.RetryConfig onRetryDecisionRequested = this.mDelegatePolicy.onRetryDecisionRequested(cameraProviderExecutionState);
        long j = this.mTimeoutInMillis;
        return (j <= 0 || cameraProviderExecutionState.mTaskExecutedTimeInMillis < j - onRetryDecisionRequested.mDelayInMillis) ? onRetryDecisionRequested : RetryPolicy.RetryConfig.NOT_RETRY;
    }
}
