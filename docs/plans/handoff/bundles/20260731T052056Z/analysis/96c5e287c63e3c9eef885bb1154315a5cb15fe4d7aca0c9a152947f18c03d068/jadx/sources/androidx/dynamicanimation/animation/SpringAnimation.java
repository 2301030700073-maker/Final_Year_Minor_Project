package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import kotlin.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SpringAnimation {
    public static final DynamicAnimation$4 ALPHA;
    public static final DynamicAnimation$4 ROTATION;
    public static final DynamicAnimation$4 ROTATION_X;
    public static final DynamicAnimation$4 ROTATION_Y;
    public static final DynamicAnimation$4 SCALE_X;
    public static final DynamicAnimation$4 SCALE_Y;
    public boolean mEndRequested;
    public float mMinVisibleChange;
    public float mPendingPosition;
    public final TuplesKt mProperty;
    public SpringForce mSpring;
    public final Object mTarget;
    public float mVelocity = RecyclerView.DECELERATION_RATE;
    public float mValue = Float.MAX_VALUE;
    public boolean mStartValueIsSet = false;
    public boolean mRunning = false;
    public final float mMaxValue = Float.MAX_VALUE;
    public final float mMinValue = -3.4028235E38f;
    public long mLastFrameTime = 0;
    public final ArrayList mEndListeners = new ArrayList();
    public final ArrayList mUpdateListeners = new ArrayList();

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.dynamicanimation.animation.DynamicAnimation$4] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.dynamicanimation.animation.DynamicAnimation$4] */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.dynamicanimation.animation.DynamicAnimation$4] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.dynamicanimation.animation.DynamicAnimation$4] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.dynamicanimation.animation.DynamicAnimation$4] */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.dynamicanimation.animation.DynamicAnimation$4] */
    static {
        final int i = 0;
        SCALE_X = new TuplesKt() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            @Override // kotlin.TuplesKt
            public final float getValue(Object obj) {
                switch (i) {
                    case 0:
                        return ((View) obj).getScaleX();
                    case 1:
                        return ((View) obj).getAlpha();
                    case 2:
                        return ((View) obj).getScaleY();
                    case 3:
                        return ((View) obj).getRotation();
                    case 4:
                        return ((View) obj).getRotationX();
                    default:
                        return ((View) obj).getRotationY();
                }
            }

            @Override // kotlin.TuplesKt
            public final void setValue(Object obj, float f) {
                switch (i) {
                    case 0:
                        ((View) obj).setScaleX(f);
                        break;
                    case 1:
                        ((View) obj).setAlpha(f);
                        break;
                    case 2:
                        ((View) obj).setScaleY(f);
                        break;
                    case 3:
                        ((View) obj).setRotation(f);
                        break;
                    case 4:
                        ((View) obj).setRotationX(f);
                        break;
                    default:
                        ((View) obj).setRotationY(f);
                        break;
                }
            }
        };
        final int i2 = 2;
        SCALE_Y = new TuplesKt() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            @Override // kotlin.TuplesKt
            public final float getValue(Object obj) {
                switch (i2) {
                    case 0:
                        return ((View) obj).getScaleX();
                    case 1:
                        return ((View) obj).getAlpha();
                    case 2:
                        return ((View) obj).getScaleY();
                    case 3:
                        return ((View) obj).getRotation();
                    case 4:
                        return ((View) obj).getRotationX();
                    default:
                        return ((View) obj).getRotationY();
                }
            }

            @Override // kotlin.TuplesKt
            public final void setValue(Object obj, float f) {
                switch (i2) {
                    case 0:
                        ((View) obj).setScaleX(f);
                        break;
                    case 1:
                        ((View) obj).setAlpha(f);
                        break;
                    case 2:
                        ((View) obj).setScaleY(f);
                        break;
                    case 3:
                        ((View) obj).setRotation(f);
                        break;
                    case 4:
                        ((View) obj).setRotationX(f);
                        break;
                    default:
                        ((View) obj).setRotationY(f);
                        break;
                }
            }
        };
        final int i3 = 3;
        ROTATION = new TuplesKt() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            @Override // kotlin.TuplesKt
            public final float getValue(Object obj) {
                switch (i3) {
                    case 0:
                        return ((View) obj).getScaleX();
                    case 1:
                        return ((View) obj).getAlpha();
                    case 2:
                        return ((View) obj).getScaleY();
                    case 3:
                        return ((View) obj).getRotation();
                    case 4:
                        return ((View) obj).getRotationX();
                    default:
                        return ((View) obj).getRotationY();
                }
            }

            @Override // kotlin.TuplesKt
            public final void setValue(Object obj, float f) {
                switch (i3) {
                    case 0:
                        ((View) obj).setScaleX(f);
                        break;
                    case 1:
                        ((View) obj).setAlpha(f);
                        break;
                    case 2:
                        ((View) obj).setScaleY(f);
                        break;
                    case 3:
                        ((View) obj).setRotation(f);
                        break;
                    case 4:
                        ((View) obj).setRotationX(f);
                        break;
                    default:
                        ((View) obj).setRotationY(f);
                        break;
                }
            }
        };
        final int i4 = 4;
        ROTATION_X = new TuplesKt() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            @Override // kotlin.TuplesKt
            public final float getValue(Object obj) {
                switch (i4) {
                    case 0:
                        return ((View) obj).getScaleX();
                    case 1:
                        return ((View) obj).getAlpha();
                    case 2:
                        return ((View) obj).getScaleY();
                    case 3:
                        return ((View) obj).getRotation();
                    case 4:
                        return ((View) obj).getRotationX();
                    default:
                        return ((View) obj).getRotationY();
                }
            }

            @Override // kotlin.TuplesKt
            public final void setValue(Object obj, float f) {
                switch (i4) {
                    case 0:
                        ((View) obj).setScaleX(f);
                        break;
                    case 1:
                        ((View) obj).setAlpha(f);
                        break;
                    case 2:
                        ((View) obj).setScaleY(f);
                        break;
                    case 3:
                        ((View) obj).setRotation(f);
                        break;
                    case 4:
                        ((View) obj).setRotationX(f);
                        break;
                    default:
                        ((View) obj).setRotationY(f);
                        break;
                }
            }
        };
        final int i5 = 5;
        ROTATION_Y = new TuplesKt() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            @Override // kotlin.TuplesKt
            public final float getValue(Object obj) {
                switch (i5) {
                    case 0:
                        return ((View) obj).getScaleX();
                    case 1:
                        return ((View) obj).getAlpha();
                    case 2:
                        return ((View) obj).getScaleY();
                    case 3:
                        return ((View) obj).getRotation();
                    case 4:
                        return ((View) obj).getRotationX();
                    default:
                        return ((View) obj).getRotationY();
                }
            }

            @Override // kotlin.TuplesKt
            public final void setValue(Object obj, float f) {
                switch (i5) {
                    case 0:
                        ((View) obj).setScaleX(f);
                        break;
                    case 1:
                        ((View) obj).setAlpha(f);
                        break;
                    case 2:
                        ((View) obj).setScaleY(f);
                        break;
                    case 3:
                        ((View) obj).setRotation(f);
                        break;
                    case 4:
                        ((View) obj).setRotationX(f);
                        break;
                    default:
                        ((View) obj).setRotationY(f);
                        break;
                }
            }
        };
        final int i6 = 1;
        ALPHA = new TuplesKt() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            @Override // kotlin.TuplesKt
            public final float getValue(Object obj) {
                switch (i6) {
                    case 0:
                        return ((View) obj).getScaleX();
                    case 1:
                        return ((View) obj).getAlpha();
                    case 2:
                        return ((View) obj).getScaleY();
                    case 3:
                        return ((View) obj).getRotation();
                    case 4:
                        return ((View) obj).getRotationX();
                    default:
                        return ((View) obj).getRotationY();
                }
            }

            @Override // kotlin.TuplesKt
            public final void setValue(Object obj, float f) {
                switch (i6) {
                    case 0:
                        ((View) obj).setScaleX(f);
                        break;
                    case 1:
                        ((View) obj).setAlpha(f);
                        break;
                    case 2:
                        ((View) obj).setScaleY(f);
                        break;
                    case 3:
                        ((View) obj).setRotation(f);
                        break;
                    case 4:
                        ((View) obj).setRotationX(f);
                        break;
                    default:
                        ((View) obj).setRotationY(f);
                        break;
                }
            }
        };
    }

    public SpringAnimation(Object obj, TuplesKt tuplesKt) {
        this.mTarget = obj;
        this.mProperty = tuplesKt;
        if (tuplesKt == ROTATION || tuplesKt == ROTATION_X || tuplesKt == ROTATION_Y) {
            this.mMinVisibleChange = 0.1f;
        } else if (tuplesKt == ALPHA) {
            this.mMinVisibleChange = 0.00390625f;
        } else if (tuplesKt == SCALE_X || tuplesKt == SCALE_Y) {
            this.mMinVisibleChange = 0.002f;
        } else {
            this.mMinVisibleChange = 1.0f;
        }
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
    }

    public static AnimationHandler getAnimationHandler() {
        ThreadLocal threadLocal = AnimationHandler.sAnimatorHandler;
        if (threadLocal.get() == null) {
            threadLocal.set(new AnimationHandler(new CardView.AnonymousClass1(27)));
        }
        return (AnimationHandler) threadLocal.get();
    }

    public final void animateToFinalPosition(float f) {
        if (this.mRunning) {
            this.mPendingPosition = f;
            return;
        }
        SpringForce springForce = this.mSpring;
        if (springForce == null) {
            springForce = new SpringForce(f);
            this.mSpring = springForce;
        }
        double d = f;
        springForce.mFinalPosition = d;
        double d2 = (float) d;
        float f2 = this.mMaxValue;
        if (d2 > f2) {
            Gson$$ExternalSyntheticBUOutline0.m("Final position of the spring cannot be greater than the max value.");
            return;
        }
        float f3 = this.mMinValue;
        if (d2 < f3) {
            Gson$$ExternalSyntheticBUOutline0.m("Final position of the spring cannot be less than the min value.");
            return;
        }
        double abs = Math.abs(this.mMinVisibleChange * 0.75f);
        springForce.mValueThreshold = abs;
        springForce.mVelocityThreshold = abs * 62.5d;
        if (Thread.currentThread() != ((Looper) getAnimationHandler().mScheduler.this$0).getThread()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        boolean z = this.mRunning;
        if (z || z) {
            return;
        }
        this.mRunning = true;
        if (!this.mStartValueIsSet) {
            this.mValue = this.mProperty.getValue(this.mTarget);
        }
        float f4 = this.mValue;
        if (f4 > f2 || f4 < f3) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Starting value need to be in between min value and max value");
        } else {
            getAnimationHandler().addAnimationFrameCallback(this);
        }
    }

    public final void setMinimumVisibleChange(float f) {
        if (f > RecyclerView.DECELERATION_RATE) {
            this.mMinVisibleChange = f;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Minimum visible change must be positive.");
        }
    }

    public final void setPropertyValue(float f) {
        this.mProperty.setValue(this.mTarget, f);
        int i = 0;
        while (true) {
            ArrayList arrayList = this.mUpdateListeners;
            if (i >= arrayList.size()) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (arrayList.get(size) == null) {
                        arrayList.remove(size);
                    }
                }
                return;
            }
            if (arrayList.get(i) != null) {
                ((Transition.SeekController) arrayList.get(i)).getClass();
                throw null;
            }
            i++;
        }
    }

    public final void skipToEnd() {
        if (this.mSpring.mDampingRatio <= 0.0d) {
            Gson$$ExternalSyntheticBUOutline0.m("Spring animations can only come to an end when there is damping");
            return;
        }
        if (Thread.currentThread() != ((Looper) getAnimationHandler().mScheduler.this$0).getThread()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        if (this.mRunning) {
            this.mEndRequested = true;
        }
    }
}
