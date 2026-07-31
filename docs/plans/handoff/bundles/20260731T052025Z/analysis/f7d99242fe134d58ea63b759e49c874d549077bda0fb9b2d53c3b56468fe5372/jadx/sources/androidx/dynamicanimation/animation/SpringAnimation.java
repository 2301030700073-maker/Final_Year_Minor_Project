package androidx.dynamicanimation.animation;

import android.view.View;
import androidx.compose.ui.platform.WeakCache;
import androidx.transition.Transition;
import androidx.work.Data;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpringAnimation {
    public static final DynamicAnimation$4 ALPHA;
    public static final DynamicAnimation$4 ROTATION;
    public static final DynamicAnimation$4 ROTATION_X;
    public static final DynamicAnimation$4 ROTATION_Y;
    public static final DynamicAnimation$4 SCALE_X;
    public static final DynamicAnimation$4 SCALE_Y;
    public boolean mEndRequested;
    public final float mMinVisibleChange;
    public float mPendingPosition;
    public final Data.Companion mProperty;
    public SpringForce mSpring;
    public final MaterialShapeDrawable mTarget;
    public float mVelocity = 0.0f;
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
        SCALE_X = new Data.Companion() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.work.Data.Companion
            public final float getValue(MaterialShapeDrawable materialShapeDrawable) {
                switch (i) {
                    case 0:
                        return ((View) materialShapeDrawable).getScaleX();
                    case 1:
                        return ((View) materialShapeDrawable).getAlpha();
                    case 2:
                        return ((View) materialShapeDrawable).getScaleY();
                    case 3:
                        return ((View) materialShapeDrawable).getRotation();
                    case 4:
                        return ((View) materialShapeDrawable).getRotationX();
                    default:
                        return ((View) materialShapeDrawable).getRotationY();
                }
            }

            @Override // androidx.work.Data.Companion
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
        SCALE_Y = new Data.Companion() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.work.Data.Companion
            public final float getValue(MaterialShapeDrawable materialShapeDrawable) {
                switch (i2) {
                    case 0:
                        return ((View) materialShapeDrawable).getScaleX();
                    case 1:
                        return ((View) materialShapeDrawable).getAlpha();
                    case 2:
                        return ((View) materialShapeDrawable).getScaleY();
                    case 3:
                        return ((View) materialShapeDrawable).getRotation();
                    case 4:
                        return ((View) materialShapeDrawable).getRotationX();
                    default:
                        return ((View) materialShapeDrawable).getRotationY();
                }
            }

            @Override // androidx.work.Data.Companion
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
        ROTATION = new Data.Companion() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.work.Data.Companion
            public final float getValue(MaterialShapeDrawable materialShapeDrawable) {
                switch (i3) {
                    case 0:
                        return ((View) materialShapeDrawable).getScaleX();
                    case 1:
                        return ((View) materialShapeDrawable).getAlpha();
                    case 2:
                        return ((View) materialShapeDrawable).getScaleY();
                    case 3:
                        return ((View) materialShapeDrawable).getRotation();
                    case 4:
                        return ((View) materialShapeDrawable).getRotationX();
                    default:
                        return ((View) materialShapeDrawable).getRotationY();
                }
            }

            @Override // androidx.work.Data.Companion
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
        ROTATION_X = new Data.Companion() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.work.Data.Companion
            public final float getValue(MaterialShapeDrawable materialShapeDrawable) {
                switch (i4) {
                    case 0:
                        return ((View) materialShapeDrawable).getScaleX();
                    case 1:
                        return ((View) materialShapeDrawable).getAlpha();
                    case 2:
                        return ((View) materialShapeDrawable).getScaleY();
                    case 3:
                        return ((View) materialShapeDrawable).getRotation();
                    case 4:
                        return ((View) materialShapeDrawable).getRotationX();
                    default:
                        return ((View) materialShapeDrawable).getRotationY();
                }
            }

            @Override // androidx.work.Data.Companion
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
        ROTATION_Y = new Data.Companion() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.work.Data.Companion
            public final float getValue(MaterialShapeDrawable materialShapeDrawable) {
                switch (i5) {
                    case 0:
                        return ((View) materialShapeDrawable).getScaleX();
                    case 1:
                        return ((View) materialShapeDrawable).getAlpha();
                    case 2:
                        return ((View) materialShapeDrawable).getScaleY();
                    case 3:
                        return ((View) materialShapeDrawable).getRotation();
                    case 4:
                        return ((View) materialShapeDrawable).getRotationX();
                    default:
                        return ((View) materialShapeDrawable).getRotationY();
                }
            }

            @Override // androidx.work.Data.Companion
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
        ALPHA = new Data.Companion() { // from class: androidx.dynamicanimation.animation.DynamicAnimation$4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.work.Data.Companion
            public final float getValue(MaterialShapeDrawable materialShapeDrawable) {
                switch (i6) {
                    case 0:
                        return ((View) materialShapeDrawable).getScaleX();
                    case 1:
                        return ((View) materialShapeDrawable).getAlpha();
                    case 2:
                        return ((View) materialShapeDrawable).getScaleY();
                    case 3:
                        return ((View) materialShapeDrawable).getRotation();
                    case 4:
                        return ((View) materialShapeDrawable).getRotationX();
                    default:
                        return ((View) materialShapeDrawable).getRotationY();
                }
            }

            @Override // androidx.work.Data.Companion
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

    public SpringAnimation(MaterialShapeDrawable materialShapeDrawable, Data.Companion companion) {
        this.mTarget = materialShapeDrawable;
        this.mProperty = companion;
        if (companion == ROTATION || companion == ROTATION_X || companion == ROTATION_Y) {
            this.mMinVisibleChange = 0.1f;
        } else if (companion == ALPHA) {
            this.mMinVisibleChange = 0.00390625f;
        } else if (companion == SCALE_X || companion == SCALE_Y) {
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
            threadLocal.set(new AnimationHandler(new WeakCache(17)));
        }
        return (AnimationHandler) threadLocal.get();
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
}
