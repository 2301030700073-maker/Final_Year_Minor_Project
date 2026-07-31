package androidx.camera.core.impl;

import android.os.SystemClock;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.InitializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraProviderExecutionState {
    public final Throwable mCause;
    public final int mStatus;
    public final long mTaskExecutedTimeInMillis;

    public CameraProviderExecutionState(long j, Exception exc) {
        this.mTaskExecutedTimeInMillis = SystemClock.elapsedRealtime() - j;
        if (exc instanceof CameraValidator$CameraIdListIncorrectException) {
            this.mStatus = 2;
            this.mCause = exc;
            return;
        }
        if (!(exc instanceof InitializationException)) {
            this.mStatus = 0;
            this.mCause = exc;
            return;
        }
        Throwable cause = exc.getCause();
        exc = cause != null ? cause : exc;
        this.mCause = exc;
        if (exc instanceof CameraUnavailableException) {
            this.mStatus = 2;
        } else if (exc instanceof IllegalArgumentException) {
            this.mStatus = 1;
        } else {
            this.mStatus = 0;
        }
    }
}
