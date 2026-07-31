package androidx.core.widget;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import androidx.appcompat.widget.DropDownListView;
import androidx.lifecycle.LiveData$1;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ListViewAutoScrollHelper implements View.OnTouchListener {
    public static final int DEFAULT_ACTIVATION_DELAY = ViewConfiguration.getTapTimeout();
    public final int mActivationDelay;
    public boolean mAlreadyDelayed;
    public boolean mAnimating;
    public final AccelerateInterpolator mEdgeInterpolator;
    public boolean mEnabled;
    public final float[] mMaximumEdges;
    public final float[] mMaximumVelocity;
    public final float[] mMinimumVelocity;
    public boolean mNeedsCancel;
    public boolean mNeedsReset;
    public final float[] mRelativeEdges;
    public final float[] mRelativeVelocity;
    public LiveData$1 mRunnable;
    public final AutoScrollHelper$ClampedScroller mScroller;
    public final DropDownListView mTarget;
    public final DropDownListView mTarget$1;

    public ListViewAutoScrollHelper(DropDownListView dropDownListView) {
        AutoScrollHelper$ClampedScroller autoScrollHelper$ClampedScroller = new AutoScrollHelper$ClampedScroller();
        autoScrollHelper$ClampedScroller.mStartTime = Long.MIN_VALUE;
        autoScrollHelper$ClampedScroller.mStopTime = -1L;
        autoScrollHelper$ClampedScroller.mDeltaTime = 0L;
        this.mScroller = autoScrollHelper$ClampedScroller;
        this.mEdgeInterpolator = new AccelerateInterpolator();
        float[] fArr = {RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE};
        this.mRelativeEdges = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.mMaximumEdges = fArr2;
        float[] fArr3 = {RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE};
        this.mRelativeVelocity = fArr3;
        float[] fArr4 = {RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE};
        this.mMinimumVelocity = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.mMaximumVelocity = fArr5;
        this.mTarget$1 = dropDownListView;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f2;
        fArr5[1] = f2;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f3;
        fArr4[1] = f3;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.mActivationDelay = DEFAULT_ACTIVATION_DELAY;
        autoScrollHelper$ClampedScroller.mRampUpDuration = 500;
        autoScrollHelper$ClampedScroller.mRampDownDuration = 500;
        this.mTarget = dropDownListView;
    }

    public static float constrain(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float computeTargetVelocity(int r4, float r5, float r6, float r7) {
        /*
            r3 = this;
            float[] r0 = r3.mRelativeEdges
            r0 = r0[r4]
            float[] r1 = r3.mMaximumEdges
            r1 = r1[r4]
            float r0 = r0 * r6
            r2 = 0
            float r0 = constrain(r0, r2, r1)
            float r1 = r3.constrainEdgeValue(r5, r0)
            float r6 = r6 - r5
            float r5 = r3.constrainEdgeValue(r6, r0)
            float r5 = r5 - r1
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            android.view.animation.AccelerateInterpolator r0 = r3.mEdgeInterpolator
            if (r6 >= 0) goto L25
            float r5 = -r5
            float r5 = r0.getInterpolation(r5)
            float r5 = -r5
            goto L2d
        L25:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 <= 0) goto L36
            float r5 = r0.getInterpolation(r5)
        L2d:
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r5 = constrain(r5, r6, r0)
            goto L37
        L36:
            r5 = r2
        L37:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 != 0) goto L3c
            return r2
        L3c:
            float[] r0 = r3.mRelativeVelocity
            r0 = r0[r4]
            float[] r1 = r3.mMinimumVelocity
            r1 = r1[r4]
            float[] r3 = r3.mMaximumVelocity
            r3 = r3[r4]
            float r0 = r0 * r7
            if (r6 <= 0) goto L51
            float r5 = r5 * r0
            float r3 = constrain(r5, r1, r3)
            return r3
        L51:
            float r4 = -r5
            float r4 = r4 * r0
            float r3 = constrain(r4, r1, r3)
            float r3 = -r3
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.ListViewAutoScrollHelper.computeTargetVelocity(int, float, float, float):float");
    }

    public final float constrainEdgeValue(float f, float f2) {
        if (f2 != RecyclerView.DECELERATION_RATE && f < f2) {
            if (f >= RecyclerView.DECELERATION_RATE) {
                return 1.0f - (f / f2);
            }
            if (this.mAnimating) {
                return 1.0f;
            }
        }
        return RecyclerView.DECELERATION_RATE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        if (r0 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.mEnabled
            r1 = 0
            if (r0 != 0) goto L7
            goto L79
        L7:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            r3 = 2
            if (r0 == r3) goto L1f
            r8 = 3
            if (r0 == r8) goto L17
            goto L79
        L17:
            r7.requestStop()
            return r1
        L1b:
            r7.mNeedsCancel = r2
            r7.mAlreadyDelayed = r1
        L1f:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            androidx.appcompat.widget.DropDownListView r4 = r7.mTarget$1
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.computeTargetVelocity(r1, r0, r3, r5)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.computeTargetVelocity(r2, r9, r8, r3)
            androidx.core.widget.AutoScrollHelper$ClampedScroller r9 = r7.mScroller
            r9.mTargetVelocityX = r0
            r9.mTargetVelocityY = r8
            boolean r8 = r7.mAnimating
            if (r8 != 0) goto L79
            boolean r8 = r7.shouldAnimate()
            if (r8 == 0) goto L79
            androidx.lifecycle.LiveData$1 r8 = r7.mRunnable
            if (r8 != 0) goto L61
            androidx.lifecycle.LiveData$1 r8 = new androidx.lifecycle.LiveData$1
            r9 = 7
            r8.<init>(r9, r7)
            r7.mRunnable = r8
        L61:
            r7.mAnimating = r2
            r7.mNeedsReset = r2
            boolean r9 = r7.mAlreadyDelayed
            if (r9 != 0) goto L74
            int r9 = r7.mActivationDelay
            if (r9 <= 0) goto L74
            long r5 = (long) r9
            java.util.WeakHashMap r9 = androidx.core.view.ViewCompat.sViewPropertyAnimatorMap
            r4.postOnAnimationDelayed(r8, r5)
            goto L77
        L74:
            r8.run()
        L77:
            r7.mAlreadyDelayed = r2
        L79:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.ListViewAutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public final void requestStop() {
        int i = 0;
        if (this.mNeedsReset) {
            this.mAnimating = false;
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        AutoScrollHelper$ClampedScroller autoScrollHelper$ClampedScroller = this.mScroller;
        int i2 = (int) (currentAnimationTimeMillis - autoScrollHelper$ClampedScroller.mStartTime);
        int i3 = autoScrollHelper$ClampedScroller.mRampDownDuration;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        autoScrollHelper$ClampedScroller.mEffectiveRampDown = i;
        autoScrollHelper$ClampedScroller.mStopValue = autoScrollHelper$ClampedScroller.getValueAt(currentAnimationTimeMillis);
        autoScrollHelper$ClampedScroller.mStopTime = currentAnimationTimeMillis;
    }

    public final boolean shouldAnimate() {
        DropDownListView dropDownListView;
        int count;
        AutoScrollHelper$ClampedScroller autoScrollHelper$ClampedScroller = this.mScroller;
        float f = autoScrollHelper$ClampedScroller.mTargetVelocityY;
        int abs = (int) (f / Math.abs(f));
        Math.abs(autoScrollHelper$ClampedScroller.mTargetVelocityX);
        if (abs != 0 && (count = (dropDownListView = this.mTarget).getCount()) != 0) {
            int childCount = dropDownListView.getChildCount();
            int firstVisiblePosition = dropDownListView.getFirstVisiblePosition();
            int i = firstVisiblePosition + childCount;
            if (abs <= 0 ? !(abs >= 0 || (firstVisiblePosition <= 0 && dropDownListView.getChildAt(0).getTop() >= 0)) : !(i >= count && dropDownListView.getChildAt(childCount - 1).getBottom() <= dropDownListView.getHeight())) {
                return true;
            }
        }
        return false;
    }
}
