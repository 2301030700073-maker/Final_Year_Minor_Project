package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.Choreographer;
import androidx.transition.Transition;
import androidx.transition.TransitionSet;
import coil3.memory.MemoryCacheService;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SpringAnimation {
    public final MemoryCacheService mProperty;
    public float mVelocity = 0.0f;
    public float mValue = Float.MAX_VALUE;
    public boolean mStartValueIsSet = false;
    public boolean mRunning = false;
    public float mMaxValue = Float.MAX_VALUE;
    public float mMinValue = -3.4028235E38f;
    public long mLastFrameTime = 0;
    public final ArrayList mEndListeners = new ArrayList();
    public final ArrayList mUpdateListeners = new ArrayList();
    public float mMinVisibleChange = 1.0f;
    public SpringForce mSpring = null;
    public float mPendingPosition = Float.MAX_VALUE;

    public SpringAnimation(FloatValueHolder floatValueHolder) {
        this.mProperty = new MemoryCacheService(floatValueHolder);
    }

    public final void animateToFinalPosition(float f) {
        if (this.mRunning) {
            this.mPendingPosition = f;
            return;
        }
        if (this.mSpring == null) {
            this.mSpring = new SpringForce(f);
        }
        SpringForce springForce = this.mSpring;
        double d = f;
        springForce.mFinalPosition = d;
        double d2 = (float) d;
        if (d2 > this.mMaxValue) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Final position of the spring cannot be greater than the max value.");
            return;
        }
        if (d2 < this.mMinValue) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Final position of the spring cannot be less than the min value.");
            return;
        }
        double abs = Math.abs(this.mMinVisibleChange * 0.75f);
        springForce.mValueThreshold = abs;
        springForce.mVelocityThreshold = abs * 62.5d;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        boolean z = this.mRunning;
        if (z || z) {
            return;
        }
        this.mRunning = true;
        if (!this.mStartValueIsSet) {
            this.mValue = ((FloatValueHolder) this.mProperty.imageLoader).mValue;
        }
        float f2 = this.mValue;
        if (f2 > this.mMaxValue || f2 < this.mMinValue) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Starting value need to be in between min value and max value");
            return;
        }
        ThreadLocal threadLocal = AnimationHandler.sAnimatorHandler;
        if (threadLocal.get() == null) {
            threadLocal.set(new AnimationHandler());
        }
        AnimationHandler animationHandler = (AnimationHandler) threadLocal.get();
        ArrayList arrayList = animationHandler.mAnimationCallbacks;
        if (arrayList.size() == 0) {
            if (animationHandler.mProvider == null) {
                animationHandler.mProvider = new ProcessFinisher(animationHandler.mCallbackDispatcher);
            }
            ProcessFinisher processFinisher = animationHandler.mProvider;
            ((Choreographer) processFinisher.config).postFrameCallback((AnimationHandler$FrameCallbackProvider16$1) processFinisher.lastActivityManager);
        }
        if (arrayList.contains(this)) {
            return;
        }
        arrayList.add(this);
    }

    public final void setPropertyValue(float f) {
        ArrayList arrayList;
        ((FloatValueHolder) this.mProperty.imageLoader).mValue = f;
        int i = 0;
        while (true) {
            arrayList = this.mUpdateListeners;
            if (i >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i) != null) {
                Transition.SeekController seekController = (Transition.SeekController) arrayList.get(i);
                float f2 = this.mValue;
                TransitionSet transitionSet = seekController.this$0;
                long max = Math.max(-1L, Math.min(transitionSet.mTotalDuration + 1, Math.round(f2)));
                transitionSet.setCurrentPlayTimeMillis(max, seekController.mCurrentPlayTime);
                seekController.mCurrentPlayTime = max;
            }
            i++;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }
}
