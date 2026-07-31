package net.openid.appauth.internal;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;
import androidx.camera.core.impl.Config;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec;
import androidx.viewpager2.widget.ViewPager2;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlinx.datetime.internal.format.parser.NumberConsumptionError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Logger implements VectorizedDurationBasedAnimationSpec, ViewPager2.PageTransformer, NumberConsumptionError {
    public static Logger sInstance;
    public final /* synthetic */ int $r8$classId;
    public final int mLogLevel;

    public Logger() {
        this.$r8$classId = 0;
        int i = 7;
        while (i >= 2 && Log.isLoggable("AppAuth", i)) {
            i--;
        }
        this.mLogLevel = i + 1;
    }

    public static void debug(String str, Object... objArr) {
        getInstance().log(3, null, str, objArr);
    }

    public static synchronized Logger getInstance() {
        Logger logger;
        synchronized (Logger.class) {
            try {
                if (sInstance == null) {
                    sInstance = new Logger();
                }
                logger = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return logger;
    }

    @Override // kotlinx.datetime.internal.format.parser.NumberConsumptionError
    public String errorMessage() {
        switch (this.$r8$classId) {
            case 5:
                return CameraDevices$CC.m(new StringBuilder("expected at least "), this.mLogLevel, " digits");
            default:
                return CameraDevices$CC.m(new StringBuilder("expected at most "), this.mLogLevel, " digits");
        }
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int getDelayMillis() {
        return this.mLogLevel;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int getDurationMillis() {
        return 0;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return getDelayMillis() * 1000000;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return j < ((long) this.mLogLevel) * 1000000 ? animationVector : animationVector2;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public /* synthetic */ boolean isInfinite() {
        return false;
    }

    public void log(int i, Exception exc, String str, Object... objArr) {
        if (this.mLogLevel > i) {
            return;
        }
        if (objArr.length >= 1) {
            str = String.format(str, objArr);
        }
        if (exc != null) {
            StringBuilder m = Config.CC.m(str, "\n");
            m.append(Log.getStackTraceString(exc));
            str = m.toString();
        }
        Log.println(i, "AppAuth", str);
    }

    public Logger(int i, CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior cameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior) {
        this.$r8$classId = 1;
        cameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior.getClass();
        this.mLogLevel = i;
    }

    public Logger(int i) {
        this.$r8$classId = 4;
        if (i >= 0) {
            this.mLogLevel = i;
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Margin must be non-negative");
            throw null;
        }
    }

    public /* synthetic */ Logger(int i, int i2) {
        this.$r8$classId = i2;
        this.mLogLevel = i;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return animationVector3;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return animationVector3;
    }
}
