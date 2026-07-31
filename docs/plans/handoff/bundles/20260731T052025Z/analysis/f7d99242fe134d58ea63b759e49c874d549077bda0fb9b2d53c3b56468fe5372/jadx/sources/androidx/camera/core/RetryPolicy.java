package androidx.camera.core;

import androidx.camera.core.impl.CameraProviderExecutionState;
import androidx.camera.core.impl.CameraProviderInitRetryPolicy;
import androidx.camera.core.impl.TimeoutRetryPolicy;
import androidx.room.util.RelationUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface RetryPolicy {
    public static final CameraProviderInitRetryPolicy DEFAULT;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.core.RetryPolicy$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static final /* synthetic */ int $r8$clinit = 0;

        static {
            CameraProviderInitRetryPolicy cameraProviderInitRetryPolicy = RetryPolicy.DEFAULT;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RetryConfig {
        public static final RetryConfig COMPLETE_WITHOUT_FAILURE;
        public final boolean mCompleteWithoutFailure;
        public final long mDelayInMillis;
        public final boolean mShouldRetry;
        public static final RetryConfig NOT_RETRY = new RetryConfig(0, false, false);
        public static final RetryConfig DEFAULT_DELAY_RETRY = new RetryConfig(500, true, false);

        static {
            new RetryConfig(100L, true, false);
            COMPLETE_WITHOUT_FAILURE = new RetryConfig(0L, false, true);
        }

        public RetryConfig(long j, boolean z, boolean z2) {
            this.mShouldRetry = z;
            this.mDelayInMillis = j;
            if (z2) {
                RelationUtil.checkArgument("shouldRetry must be false when completeWithoutFailure is set to true", !z);
            }
            this.mCompleteWithoutFailure = z2;
        }
    }

    static {
        int i = CC.$r8$clinit;
        DEFAULT = new CameraProviderInitRetryPolicy(1, 6000L);
        new TimeoutRetryPolicy(6000L, new CameraProviderInitRetryPolicy.AnonymousClass1(6000L));
    }

    long getTimeoutInMillis();

    RetryConfig onRetryDecisionRequested(CameraProviderExecutionState cameraProviderExecutionState);
}
