package com.android.quickstep.util;

import android.animation.Animator;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.RectF;
import b.h.a.C;
import b.h.a.D;
import b.h.a.E;
import b.h.a.v;
import b.h.a.y;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.FlingSpringAnim;
import com.android.launcher3.util.DynamicResource;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.systemui.plugins.ResourceProvider;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class RectFSpringAnim extends RemoteAnimationTargets.ReleaseCheck {
    public boolean mAnimsStarted;
    public float mCurrentCenterX;
    public float mCurrentScaleProgress;
    public float mCurrentY;
    public float mMinVisChange;
    public D mRectScaleAnim;
    public boolean mRectScaleAnimEnded;
    public FlingSpringAnim mRectXAnim;
    public boolean mRectXAnimEnded;
    public FlingSpringAnim mRectYAnim;
    public boolean mRectYAnimEnded;
    public final RectF mStartRect;
    public final RectF mTargetRect;
    public boolean mTrackingBottomY;
    public float mYOvershoot;
    public static final C RECT_CENTER_X = new C("rectCenterXSpring") { // from class: com.android.quickstep.util.RectFSpringAnim.1
        @Override // b.h.a.C
        public float getValue(RectFSpringAnim rectFSpringAnim) {
            return rectFSpringAnim.mCurrentCenterX;
        }

        @Override // b.h.a.C
        public void setValue(RectFSpringAnim rectFSpringAnim, float f) {
            rectFSpringAnim.mCurrentCenterX = f;
            rectFSpringAnim.onUpdate();
        }
    };
    public static final C RECT_Y = new C("rectYSpring") { // from class: com.android.quickstep.util.RectFSpringAnim.2
        @Override // b.h.a.C
        public float getValue(RectFSpringAnim rectFSpringAnim) {
            return rectFSpringAnim.mCurrentY;
        }

        @Override // b.h.a.C
        public void setValue(RectFSpringAnim rectFSpringAnim, float f) {
            rectFSpringAnim.mCurrentY = f;
            rectFSpringAnim.onUpdate();
        }
    };
    public static final C RECT_SCALE_PROGRESS = new C("rectScaleProgress") { // from class: com.android.quickstep.util.RectFSpringAnim.3
        @Override // b.h.a.C
        public float getValue(RectFSpringAnim rectFSpringAnim) {
            return rectFSpringAnim.mCurrentScaleProgress;
        }

        @Override // b.h.a.C
        public void setValue(RectFSpringAnim rectFSpringAnim, float f) {
            rectFSpringAnim.mCurrentScaleProgress = f;
            rectFSpringAnim.onUpdate();
        }
    };
    public final RectF mCurrentRect = new RectF();
    public final List mOnUpdateListeners = new ArrayList();
    public final List mAnimatorListeners = new ArrayList();

    public interface OnUpdateListener {
        default void onCancel() {
        }

        void onUpdate(RectF rectF, float f);
    }

    public RectFSpringAnim(RectF rectF, RectF rectF2, Context context) {
        this.mStartRect = rectF;
        this.mTargetRect = rectF2;
        this.mCurrentCenterX = rectF.centerX();
        boolean z = rectF.bottom < rectF2.bottom;
        this.mTrackingBottomY = z;
        this.mCurrentY = z ? this.mStartRect.bottom : this.mStartRect.top;
        ResourceProvider provider = DynamicResource.provider(context);
        this.mMinVisChange = provider.getDimension(R.dimen.swipe_up_fling_min_visible_change);
        this.mYOvershoot = provider.getDimension(R.dimen.swipe_up_y_overshoot);
        setCanRelease(true);
    }

    private boolean isEnded() {
        return this.mRectXAnimEnded && this.mRectYAnimEnded && this.mRectScaleAnimEnded;
    }

    private void maybeOnEnd() {
        if (this.mAnimsStarted && isEnded()) {
            this.mAnimsStarted = false;
            setCanRelease(true);
            Iterator it = this.mAnimatorListeners.iterator();
            while (it.hasNext()) {
                ((Animator.AnimatorListener) it.next()).onAnimationEnd(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpdate() {
        if (isEnded() || this.mOnUpdateListeners.isEmpty()) {
            return;
        }
        float mapRange = Utilities.mapRange(this.mCurrentScaleProgress, this.mStartRect.width(), this.mTargetRect.width());
        float mapRange2 = Utilities.mapRange(this.mCurrentScaleProgress, this.mStartRect.height(), this.mTargetRect.height());
        if (this.mTrackingBottomY) {
            RectF rectF = this.mCurrentRect;
            float f = this.mCurrentCenterX;
            float f2 = mapRange / 2.0f;
            float f3 = this.mCurrentY;
            rectF.set(f - f2, f3 - mapRange2, f + f2, f3);
        } else {
            RectF rectF2 = this.mCurrentRect;
            float f4 = this.mCurrentCenterX;
            float f5 = mapRange / 2.0f;
            float f6 = this.mCurrentY;
            rectF2.set(f4 - f5, f6, f4 + f5, mapRange2 + f6);
        }
        Iterator it = this.mOnUpdateListeners.iterator();
        while (it.hasNext()) {
            ((OnUpdateListener) it.next()).onUpdate(this.mCurrentRect, this.mCurrentScaleProgress);
        }
    }

    public /* synthetic */ void a(y yVar, boolean z, float f, float f2) {
        this.mRectXAnimEnded = true;
        maybeOnEnd();
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.mAnimatorListeners.add(animatorListener);
    }

    public void addOnUpdateListener(OnUpdateListener onUpdateListener) {
        this.mOnUpdateListeners.add(onUpdateListener);
    }

    public /* synthetic */ void b(y yVar, boolean z, float f, float f2) {
        this.mRectYAnimEnded = true;
        maybeOnEnd();
    }

    public /* synthetic */ void c(y yVar, boolean z, float f, float f2) {
        this.mRectScaleAnimEnded = true;
        maybeOnEnd();
    }

    public void cancel() {
        if (this.mAnimsStarted) {
            Iterator it = this.mOnUpdateListeners.iterator();
            while (it.hasNext()) {
                ((OnUpdateListener) it.next()).onCancel();
            }
        }
        end();
    }

    public void end() {
        if (this.mAnimsStarted) {
            FlingSpringAnim flingSpringAnim = this.mRectXAnim;
            flingSpringAnim.mFlingAnim.c();
            if (flingSpringAnim.mSpringAnim.l()) {
                flingSpringAnim.mSpringAnim.m();
            }
            FlingSpringAnim flingSpringAnim2 = this.mRectYAnim;
            flingSpringAnim2.mFlingAnim.c();
            if (flingSpringAnim2.mSpringAnim.l()) {
                flingSpringAnim2.mSpringAnim.m();
            }
            if (this.mRectScaleAnim.l()) {
                this.mRectScaleAnim.m();
            }
        }
        this.mRectXAnimEnded = true;
        this.mRectYAnimEnded = true;
        this.mRectScaleAnimEnded = true;
        maybeOnEnd();
    }

    public void onTargetPositionChanged() {
        FlingSpringAnim flingSpringAnim = this.mRectXAnim;
        if (flingSpringAnim != null && flingSpringAnim.mTargetPosition != this.mTargetRect.centerX()) {
            this.mRectXAnim.updatePosition(this.mCurrentCenterX, this.mTargetRect.centerX());
        }
        FlingSpringAnim flingSpringAnim2 = this.mRectYAnim;
        if (flingSpringAnim2 != null) {
            if (this.mTrackingBottomY) {
                float f = flingSpringAnim2.mTargetPosition;
                float f2 = this.mTargetRect.bottom;
                if (f != f2) {
                    flingSpringAnim2.updatePosition(this.mCurrentY, f2);
                    return;
                }
            }
            if (this.mTrackingBottomY) {
                return;
            }
            FlingSpringAnim flingSpringAnim3 = this.mRectYAnim;
            float f3 = flingSpringAnim3.mTargetPosition;
            float f4 = this.mTargetRect.top;
            if (f3 != f4) {
                flingSpringAnim3.updatePosition(this.mCurrentY, f4);
            }
        }
    }

    public void start(Context context, PointF pointF) {
        v vVar = new v() { // from class: c.a.b.c2.h
            @Override // b.h.a.v
            public final void onAnimationEnd(y yVar, boolean z, float f, float f2) {
                RectFSpringAnim.this.a(yVar, z, f, f2);
            }
        };
        v vVar2 = new v() { // from class: c.a.b.c2.i
            @Override // b.h.a.v
            public final void onAnimationEnd(y yVar, boolean z, float f, float f2) {
                RectFSpringAnim.this.b(yVar, z, f, f2);
            }
        };
        float f = this.mCurrentCenterX;
        float centerX = this.mTargetRect.centerX();
        this.mRectXAnim = new FlingSpringAnim(this, context, RECT_CENTER_X, f, centerX, pointF.x * 1000.0f, this.mMinVisChange, Math.min(f, centerX), Math.max(f, centerX), 1.0f, vVar);
        float f2 = pointF.y * 1000.0f;
        float abs = ((Math.abs(f2) * 0.9f) / 20000.0f) + 0.1f;
        float f3 = this.mCurrentY;
        float f4 = this.mTrackingBottomY ? this.mTargetRect.bottom : this.mTargetRect.top;
        this.mRectYAnim = new FlingSpringAnim(this, context, RECT_Y, f3, f4, f2, this.mMinVisChange, Math.min(f3, f4 - this.mYOvershoot), Math.max(f3, f4), abs, vVar2);
        float abs2 = Math.abs(1.0f / this.mStartRect.height());
        ResourceProvider provider = DynamicResource.provider(context);
        float f5 = provider.getFloat(R.dimen.swipe_up_rect_scale_damping_ratio);
        float f6 = provider.getFloat(R.dimen.swipe_up_rect_scale_stiffness);
        D d2 = new D(this, RECT_SCALE_PROGRESS);
        E e = new E(1.0f);
        e.a(f5);
        e.b(f6);
        d2.s = e;
        d2.f820a = pointF.y * abs2;
        d2.g = 1.0f;
        d2.f(abs2);
        v vVar3 = new v() { // from class: c.a.b.c2.g
            @Override // b.h.a.v
            public final void onAnimationEnd(y yVar, boolean z, float f7, float f8) {
                RectFSpringAnim.this.c(yVar, z, f7, f8);
            }
        };
        if (!d2.k.contains(vVar3)) {
            d2.k.add(vVar3);
        }
        this.mRectScaleAnim = d2;
        setCanRelease(false);
        this.mAnimsStarted = true;
        FlingSpringAnim flingSpringAnim = this.mRectXAnim;
        flingSpringAnim.mFlingAnim.i();
        if (flingSpringAnim.mSkipFlingAnim) {
            flingSpringAnim.mFlingAnim.c();
        }
        FlingSpringAnim flingSpringAnim2 = this.mRectYAnim;
        flingSpringAnim2.mFlingAnim.i();
        if (flingSpringAnim2.mSkipFlingAnim) {
            flingSpringAnim2.mFlingAnim.c();
        }
        this.mRectScaleAnim.i();
        Iterator it = this.mAnimatorListeners.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationStart(null);
        }
    }
}
