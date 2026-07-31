package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.StateSet;
import androidx.collection.ArraySetKt;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.fragment.app.Fragment;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.work.Data;
import com.skydoves.landscapist.DrawablePainter$callback$2$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnimatedStateListDrawableCompat extends Drawable implements Drawable.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Fragment.AnonymousClass1 mAnimationRunnable;
    public DrawablePainter$callback$2$1 mBlockInvalidateCallback;
    public Drawable mCurrDrawable;
    public AnimatedStateListState mDrawableContainerState;
    public long mEnterAnimationEnd;
    public long mExitAnimationEnd;
    public boolean mHasAlpha;
    public Rect mHotspotBounds;
    public Drawable mLastDrawable;
    public boolean mMutated;
    public boolean mMutated$1;
    public boolean mMutated$2;
    public AnimatedStateListState mState;
    public AnimatedStateListState mStateListState;
    public Data.Companion mTransition;
    public int mAlpha = 255;
    public int mCurIndex = -1;
    public int mTransitionToIndex = -1;
    public int mTransitionFromIndex = -1;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AnimatableTransition extends Data.Companion {
        public final /* synthetic */ int $r8$classId;
        public final Animatable mA;

        public /* synthetic */ AnimatableTransition(Animatable animatable, int i) {
            this.$r8$classId = i;
            this.mA = animatable;
        }

        @Override // androidx.work.Data.Companion
        public final void start() {
            switch (this.$r8$classId) {
                case 0:
                    this.mA.start();
                    break;
                default:
                    ((AnimatedVectorDrawableCompat) this.mA).start();
                    break;
            }
        }

        @Override // androidx.work.Data.Companion
        public final void stop() {
            switch (this.$r8$classId) {
                case 0:
                    this.mA.stop();
                    break;
                default:
                    ((AnimatedVectorDrawableCompat) this.mA).stop();
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AnimationDrawableTransition extends Data.Companion {
        public final ObjectAnimator mAnim;
        public final boolean mHasReversibleFlag;

        public AnimationDrawableTransition(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            FrameInterpolator frameInterpolator = new FrameInterpolator();
            int numberOfFrames2 = animationDrawable.getNumberOfFrames();
            frameInterpolator.mFrames = numberOfFrames2;
            int[] iArr = frameInterpolator.mFrameTimes;
            if (iArr == null || iArr.length < numberOfFrames2) {
                frameInterpolator.mFrameTimes = new int[numberOfFrames2];
            }
            int[] iArr2 = frameInterpolator.mFrameTimes;
            int i3 = 0;
            for (int i4 = 0; i4 < numberOfFrames2; i4++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames2 - i4) - 1 : i4);
                iArr2[i4] = duration;
                i3 += duration;
            }
            frameInterpolator.mTotalDuration = i3;
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            ofInt.setAutoCancel(true);
            ofInt.setDuration(frameInterpolator.mTotalDuration);
            ofInt.setInterpolator(frameInterpolator);
            this.mHasReversibleFlag = z2;
            this.mAnim = ofInt;
        }

        @Override // androidx.work.Data.Companion
        public final boolean canReverse() {
            return this.mHasReversibleFlag;
        }

        @Override // androidx.work.Data.Companion
        public final void reverse() {
            this.mAnim.reverse();
        }

        @Override // androidx.work.Data.Companion
        public final void start() {
            this.mAnim.start();
        }

        @Override // androidx.work.Data.Companion
        public final void stop() {
            this.mAnim.cancel();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FrameInterpolator implements TimeInterpolator {
        public int[] mFrameTimes;
        public int mFrames;
        public int mTotalDuration;

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            int i = (int) ((f * this.mTotalDuration) + 0.5f);
            int i2 = this.mFrames;
            int[] iArr = this.mFrameTimes;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i3];
                if (i < i4) {
                    break;
                }
                i -= i4;
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.mTotalDuration : 0.0f);
        }
    }

    public AnimatedStateListDrawableCompat(AnimatedStateListState animatedStateListState, Resources resources) {
        setConstantState(new AnimatedStateListState(animatedStateListState, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0273, code lost:
    
        r5.onStateChange(r5.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x027a, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat createFromXmlInner(android.content.Context r24, android.content.res.Resources r25, android.content.res.XmlResourceParser r26, android.util.AttributeSet r27, android.content.res.Resources.Theme r28) {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.createFromXmlInner(android.content.Context, android.content.res.Resources, android.content.res.XmlResourceParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void animate(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.mHasAlpha = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.mCurrDrawable
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r8 = 0
            if (r3 == 0) goto L36
            long r9 = r13.mEnterAnimationEnd
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 == 0) goto L38
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.mAlpha
            r3.setAlpha(r9)
            r13.mEnterAnimationEnd = r6
            goto L38
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r9 = (int) r9
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState r10 = r13.mDrawableContainerState
            int r10 = r10.mEnterFadeDuration
            int r9 = r9 / r10
            int r9 = 255 - r9
            int r10 = r13.mAlpha
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = r0
            goto L39
        L36:
            r13.mEnterAnimationEnd = r6
        L38:
            r3 = r8
        L39:
            android.graphics.drawable.Drawable r9 = r13.mLastDrawable
            if (r9 == 0) goto L61
            long r10 = r13.mExitAnimationEnd
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r12 == 0) goto L63
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L50
            r9.setVisible(r8, r8)
            r0 = 0
            r13.mLastDrawable = r0
            r13.mExitAnimationEnd = r6
            goto L63
        L50:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState r4 = r13.mDrawableContainerState
            int r4 = r4.mExitFadeDuration
            int r3 = r3 / r4
            int r4 = r13.mAlpha
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L64
        L61:
            r13.mExitAnimationEnd = r6
        L63:
            r0 = r3
        L64:
            if (r14 == 0) goto L70
            if (r0 == 0) goto L70
            androidx.fragment.app.Fragment$1 r14 = r13.mAnimationRunnable
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.animate(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        applyTheme$androidx$appcompat$graphics$drawable$DrawableContainerCompat(theme);
        onStateChange(getState());
    }

    public final void applyTheme$androidx$appcompat$graphics$drawable$DrawableContainerCompat(Resources.Theme theme) {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        if (theme == null) {
            animatedStateListState.getClass();
            return;
        }
        animatedStateListState.createAllFutures();
        int i = animatedStateListState.mNumChildren;
        Drawable[] drawableArr = animatedStateListState.mDrawables;
        for (int i2 = 0; i2 < i; i2++) {
            Drawable drawable = drawableArr[i2];
            if (drawable != null && drawable.canApplyTheme()) {
                drawableArr[i2].applyTheme(theme);
                animatedStateListState.mChildrenChangingConfigurations |= drawableArr[i2].getChangingConfigurations();
            }
        }
        Resources resources = theme.getResources();
        if (resources != null) {
            animatedStateListState.mSourceRes = resources;
            int i3 = resources.getDisplayMetrics().densityDpi;
            if (i3 == 0) {
                i3 = 160;
            }
            int i4 = animatedStateListState.mDensity;
            animatedStateListState.mDensity = i3;
            if (i4 != i3) {
                animatedStateListState.mCheckedConstantSize = false;
                animatedStateListState.mCheckedPadding = false;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return this.mDrawableContainerState.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.mLastDrawable;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return this.mDrawableContainerState.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        boolean z;
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        if (!animatedStateListState.mCheckedConstantState) {
            animatedStateListState.createAllFutures();
            animatedStateListState.mCheckedConstantState = true;
            int i = animatedStateListState.mNumChildren;
            Drawable[] drawableArr = animatedStateListState.mDrawables;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    animatedStateListState.mCanConstantState = true;
                    z = true;
                    break;
                }
                if (drawableArr[i2].getConstantState() == null) {
                    animatedStateListState.mCanConstantState = false;
                    z = false;
                    break;
                }
                i2++;
            }
        } else {
            z = animatedStateListState.mCanConstantState;
        }
        if (!z) {
            return null;
        }
        this.mDrawableContainerState.mChangingConfigurations = getChangingConfigurations();
        return this.mDrawableContainerState;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.mCurrDrawable;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getHotspotBounds(Rect rect) {
        Rect rect2 = this.mHotspotBounds;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        if (animatedStateListState.mConstantSize) {
            if (!animatedStateListState.mCheckedConstantSize) {
                animatedStateListState.computeConstantSize();
            }
            return animatedStateListState.mConstantHeight;
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        if (animatedStateListState.mConstantSize) {
            if (!animatedStateListState.mCheckedConstantSize) {
                animatedStateListState.computeConstantSize();
            }
            return animatedStateListState.mConstantWidth;
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        if (animatedStateListState.mConstantSize) {
            if (!animatedStateListState.mCheckedConstantSize) {
                animatedStateListState.computeConstantSize();
            }
            return animatedStateListState.mConstantMinimumHeight;
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        if (animatedStateListState.mConstantSize) {
            if (!animatedStateListState.mCheckedConstantSize) {
                animatedStateListState.computeConstantSize();
            }
            return animatedStateListState.mConstantMinimumWidth;
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null && drawable.isVisible()) {
            AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
            if (animatedStateListState.mCheckedOpacity) {
                return animatedStateListState.mOpacity;
            }
            animatedStateListState.createAllFutures();
            int i = animatedStateListState.mNumChildren;
            Drawable[] drawableArr = animatedStateListState.mDrawables;
            r1 = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                r1 = Drawable.resolveOpacity(r1, drawableArr[i2].getOpacity());
            }
            animatedStateListState.mOpacity = r1;
            animatedStateListState.mCheckedOpacity = true;
        }
        return r1;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        Rect rect2 = null;
        boolean z = false;
        if (!animatedStateListState.mVariablePadding) {
            Rect rect3 = animatedStateListState.mConstantPadding;
            if (rect3 != null || animatedStateListState.mCheckedPadding) {
                rect2 = rect3;
            } else {
                animatedStateListState.createAllFutures();
                Rect rect4 = new Rect();
                int i = animatedStateListState.mNumChildren;
                Drawable[] drawableArr = animatedStateListState.mDrawables;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getPadding(rect4)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i3 = rect4.left;
                        if (i3 > rect2.left) {
                            rect2.left = i3;
                        }
                        int i4 = rect4.top;
                        if (i4 > rect2.top) {
                            rect2.top = i4;
                        }
                        int i5 = rect4.right;
                        if (i5 > rect2.right) {
                            rect2.right = i5;
                        }
                        int i6 = rect4.bottom;
                        if (i6 > rect2.bottom) {
                            rect2.bottom = i6;
                        }
                    }
                }
                animatedStateListState.mCheckedPadding = true;
                animatedStateListState.mConstantPadding = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            if ((rect2.left | rect2.top | rect2.bottom | rect2.right) != 0) {
                z = true;
            }
        } else {
            Drawable drawable = this.mCurrDrawable;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (this.mDrawableContainerState.mAutoMirrored && getLayoutDirection() == 1) {
            int i7 = rect.left;
            rect.left = rect.right;
            rect.right = i7;
        }
        return z;
    }

    public final void initializeDrawableForDisplay(Drawable drawable) {
        if (this.mBlockInvalidateCallback == null) {
            this.mBlockInvalidateCallback = new DrawablePainter$callback$2$1();
        }
        DrawablePainter$callback$2$1 drawablePainter$callback$2$1 = this.mBlockInvalidateCallback;
        drawablePainter$callback$2$1.this$0 = drawable.getCallback();
        drawable.setCallback(drawablePainter$callback$2$1);
        try {
            if (this.mDrawableContainerState.mEnterFadeDuration <= 0 && this.mHasAlpha) {
                drawable.setAlpha(this.mAlpha);
            }
            AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
            if (animatedStateListState.mHasColorFilter) {
                drawable.setColorFilter(animatedStateListState.mColorFilter);
            } else {
                if (animatedStateListState.mHasTintList) {
                    drawable.setTintList(animatedStateListState.mTintList);
                }
                AnimatedStateListState animatedStateListState2 = this.mDrawableContainerState;
                if (animatedStateListState2.mHasTintMode) {
                    drawable.setTintMode(animatedStateListState2.mTintMode);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.mDrawableContainerState.mDither);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            drawable.setLayoutDirection(getLayoutDirection());
            drawable.setAutoMirrored(this.mDrawableContainerState.mAutoMirrored);
            Rect rect = this.mHotspotBounds;
            if (rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
            DrawablePainter$callback$2$1 drawablePainter$callback$2$12 = this.mBlockInvalidateCallback;
            Drawable.Callback callback = (Drawable.Callback) drawablePainter$callback$2$12.this$0;
            drawablePainter$callback$2$12.this$0 = null;
            drawable.setCallback(callback);
        } catch (Throwable th) {
            DrawablePainter$callback$2$1 drawablePainter$callback$2$13 = this.mBlockInvalidateCallback;
            Drawable.Callback callback2 = (Drawable.Callback) drawablePainter$callback$2$13.this$0;
            drawablePainter$callback$2$13.this$0 = null;
            drawable.setCallback(callback2);
            throw th;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        if (animatedStateListState != null) {
            animatedStateListState.mCheckedOpacity = false;
            animatedStateListState.mCheckedStateful = false;
        }
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.mDrawableContainerState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        jumpToCurrentState$androidx$appcompat$graphics$drawable$DrawableContainerCompat();
        Data.Companion companion = this.mTransition;
        if (companion != null) {
            companion.stop();
            this.mTransition = null;
            selectDrawable(this.mTransitionToIndex);
            this.mTransitionToIndex = -1;
            this.mTransitionFromIndex = -1;
        }
    }

    public final void jumpToCurrentState$androidx$appcompat$graphics$drawable$DrawableContainerCompat() {
        boolean z;
        Drawable drawable = this.mLastDrawable;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.mLastDrawable = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.mHasAlpha) {
                this.mCurrDrawable.setAlpha(this.mAlpha);
            }
        }
        if (this.mExitAnimationEnd != 0) {
            this.mExitAnimationEnd = 0L;
            z = true;
        }
        if (this.mEnterAnimationEnd != 0) {
            this.mEnterAnimationEnd = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.mMutated) {
            mutate$androidx$appcompat$graphics$drawable$StateListDrawableCompat();
            AnimatedStateListState animatedStateListState = this.mState;
            animatedStateListState.mTransitions = animatedStateListState.mTransitions.m106clone();
            animatedStateListState.mStateIds = animatedStateListState.mStateIds.m107clone();
            this.mMutated = true;
        }
        return this;
    }

    public final Drawable mutate$androidx$appcompat$graphics$drawable$DrawableContainerCompat() {
        if (!this.mMutated$2 && super.mutate() == this) {
            AnimatedStateListState animatedStateListState = new AnimatedStateListState(this.mState, this, null);
            animatedStateListState.mTransitions = animatedStateListState.mTransitions.m106clone();
            animatedStateListState.mStateIds = animatedStateListState.mStateIds.m107clone();
            setConstantState(animatedStateListState);
            this.mMutated$2 = true;
        }
        return this;
    }

    public final Drawable mutate$androidx$appcompat$graphics$drawable$StateListDrawableCompat() {
        if (!this.mMutated$1) {
            mutate$androidx$appcompat$graphics$drawable$DrawableContainerCompat();
            AnimatedStateListState animatedStateListState = this.mStateListState;
            animatedStateListState.mTransitions = animatedStateListState.mTransitions.m106clone();
            animatedStateListState.mStateIds = animatedStateListState.mStateIds.m107clone();
            this.mMutated$1 = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        int i2 = this.mCurIndex;
        int i3 = animatedStateListState.mNumChildren;
        Drawable[] drawableArr = animatedStateListState.mDrawables;
        boolean z = false;
        for (int i4 = 0; i4 < i3; i4++) {
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                boolean layoutDirection = drawable.setLayoutDirection(i);
                if (i4 == i2) {
                    z = layoutDirection;
                }
            }
        }
        animatedStateListState.mLayoutDirection = i;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d2, code lost:
    
        if (selectDrawable(r1) != false) goto L46;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onStateChange(int[] r15) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.onStateChange(int[]):boolean");
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean selectDrawable(int r10) {
        /*
            r9 = this;
            int r0 = r9.mCurIndex
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState r0 = r9.mDrawableContainerState
            int r0 = r0.mExitFadeDuration
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.mLastDrawable
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.mCurrDrawable
            if (r0 == 0) goto L29
            r9.mLastDrawable = r0
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState r0 = r9.mDrawableContainerState
            int r0 = r0.mExitFadeDuration
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.mExitAnimationEnd = r0
            goto L35
        L29:
            r9.mLastDrawable = r4
            r9.mExitAnimationEnd = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.mCurrDrawable
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState r0 = r9.mDrawableContainerState
            int r1 = r0.mNumChildren
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.getChild(r10)
            r9.mCurrDrawable = r0
            r9.mCurIndex = r10
            if (r0 == 0) goto L5a
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState r10 = r9.mDrawableContainerState
            int r10 = r10.mEnterFadeDuration
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.mEnterAnimationEnd = r2
        L51:
            r9.initializeDrawableForDisplay(r0)
            goto L5a
        L55:
            r9.mCurrDrawable = r4
            r10 = -1
            r9.mCurIndex = r10
        L5a:
            long r0 = r9.mEnterAnimationEnd
            int r10 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            r0 = 1
            if (r10 != 0) goto L67
            long r1 = r9.mExitAnimationEnd
            int r10 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r10 == 0) goto L7a
        L67:
            androidx.fragment.app.Fragment$1 r10 = r9.mAnimationRunnable
            if (r10 != 0) goto L74
            androidx.fragment.app.Fragment$1 r10 = new androidx.fragment.app.Fragment$1
            r1 = 2
            r10.<init>(r1, r9)
            r9.mAnimationRunnable = r10
            goto L77
        L74:
            r9.unscheduleSelf(r10)
        L77:
            r9.animate(r0)
        L7a:
            r9.invalidateSelf()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.selectDrawable(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.mHasAlpha && this.mAlpha == i) {
            return;
        }
        this.mHasAlpha = true;
        this.mAlpha = i;
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            if (this.mEnterAnimationEnd == 0) {
                drawable.setAlpha(i);
            } else {
                animate(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        if (animatedStateListState.mAutoMirrored != z) {
            animatedStateListState.mAutoMirrored = z;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                drawable.setAutoMirrored(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        animatedStateListState.mHasColorFilter = true;
        if (animatedStateListState.mColorFilter != colorFilter) {
            animatedStateListState.mColorFilter = colorFilter;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    public final void setConstantState(AnimatedStateListState animatedStateListState) {
        this.mDrawableContainerState = animatedStateListState;
        int i = this.mCurIndex;
        if (i >= 0) {
            Drawable child = animatedStateListState.getChild(i);
            this.mCurrDrawable = child;
            if (child != null) {
                initializeDrawableForDisplay(child);
            }
        }
        this.mLastDrawable = null;
        this.mStateListState = animatedStateListState;
        this.mState = animatedStateListState;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        if (animatedStateListState.mDither != z) {
            animatedStateListState.mDither = z;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.mHotspotBounds;
        if (rect == null) {
            this.mHotspotBounds = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        animatedStateListState.mHasTintList = true;
        if (animatedStateListState.mTintList != colorStateList) {
            animatedStateListState.mTintList = colorStateList;
            this.mCurrDrawable.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        AnimatedStateListState animatedStateListState = this.mDrawableContainerState;
        animatedStateListState.mHasTintMode = true;
        if (animatedStateListState.mTintMode != mode) {
            animatedStateListState.mTintMode = mode;
            this.mCurrDrawable.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible$androidx$appcompat$graphics$drawable$DrawableContainerCompat = setVisible$androidx$appcompat$graphics$drawable$DrawableContainerCompat(z, z2);
        Data.Companion companion = this.mTransition;
        if (companion != null && (visible$androidx$appcompat$graphics$drawable$DrawableContainerCompat || z2)) {
            if (z) {
                companion.start();
                return visible$androidx$appcompat$graphics$drawable$DrawableContainerCompat;
            }
            jumpToCurrentState();
        }
        return visible$androidx$appcompat$graphics$drawable$DrawableContainerCompat;
    }

    public final boolean setVisible$androidx$appcompat$graphics$drawable$DrawableContainerCompat(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AnimatedStateListState extends Drawable.ConstantState {
        public boolean mAutoMirrored;
        public boolean mCanConstantState;
        public int mChangingConfigurations;
        public boolean mCheckedConstantSize;
        public boolean mCheckedConstantState;
        public boolean mCheckedOpacity;
        public boolean mCheckedPadding;
        public boolean mCheckedStateful;
        public int mChildrenChangingConfigurations;
        public ColorFilter mColorFilter;
        public int mConstantHeight;
        public int mConstantMinimumHeight;
        public int mConstantMinimumWidth;
        public Rect mConstantPadding;
        public boolean mConstantSize;
        public int mConstantWidth;
        public int mDensity;
        public boolean mDither;
        public SparseArray mDrawableFutures;
        public Drawable[] mDrawables;
        public int mEnterFadeDuration;
        public int mExitFadeDuration;
        public boolean mHasColorFilter;
        public boolean mHasTintList;
        public boolean mHasTintMode;
        public int mLayoutDirection;
        public int mNumChildren;
        public int mOpacity;
        public final AnimatedStateListDrawableCompat mOwner;
        public Resources mSourceRes;
        public SparseArrayCompat mStateIds;
        public int[][] mStateSets;
        public ColorStateList mTintList;
        public PorterDuff.Mode mTintMode;
        public LongSparseArray mTransitions;
        public boolean mVariablePadding;

        public AnimatedStateListState(AnimatedStateListState animatedStateListState, AnimatedStateListDrawableCompat animatedStateListDrawableCompat, Resources resources) {
            this.mVariablePadding = false;
            this.mConstantSize = false;
            this.mDither = true;
            this.mEnterFadeDuration = 0;
            this.mExitFadeDuration = 0;
            this.mOwner = animatedStateListDrawableCompat;
            this.mSourceRes = resources != null ? resources : animatedStateListState != null ? animatedStateListState.mSourceRes : null;
            int i = animatedStateListState != null ? animatedStateListState.mDensity : 0;
            int i2 = AnimatedStateListDrawableCompat.$r8$clinit;
            i = resources != null ? resources.getDisplayMetrics().densityDpi : i;
            i = i == 0 ? 160 : i;
            this.mDensity = i;
            if (animatedStateListState != null) {
                this.mChangingConfigurations = animatedStateListState.mChangingConfigurations;
                this.mChildrenChangingConfigurations = animatedStateListState.mChildrenChangingConfigurations;
                this.mCheckedConstantState = true;
                this.mCanConstantState = true;
                this.mVariablePadding = animatedStateListState.mVariablePadding;
                this.mConstantSize = animatedStateListState.mConstantSize;
                this.mDither = animatedStateListState.mDither;
                this.mLayoutDirection = animatedStateListState.mLayoutDirection;
                this.mEnterFadeDuration = animatedStateListState.mEnterFadeDuration;
                this.mExitFadeDuration = animatedStateListState.mExitFadeDuration;
                this.mAutoMirrored = animatedStateListState.mAutoMirrored;
                this.mColorFilter = animatedStateListState.mColorFilter;
                this.mHasColorFilter = animatedStateListState.mHasColorFilter;
                this.mTintList = animatedStateListState.mTintList;
                this.mTintMode = animatedStateListState.mTintMode;
                this.mHasTintList = animatedStateListState.mHasTintList;
                this.mHasTintMode = animatedStateListState.mHasTintMode;
                if (animatedStateListState.mDensity == i) {
                    if (animatedStateListState.mCheckedPadding) {
                        this.mConstantPadding = animatedStateListState.mConstantPadding != null ? new Rect(animatedStateListState.mConstantPadding) : null;
                        this.mCheckedPadding = true;
                    }
                    if (animatedStateListState.mCheckedConstantSize) {
                        this.mConstantWidth = animatedStateListState.mConstantWidth;
                        this.mConstantHeight = animatedStateListState.mConstantHeight;
                        this.mConstantMinimumWidth = animatedStateListState.mConstantMinimumWidth;
                        this.mConstantMinimumHeight = animatedStateListState.mConstantMinimumHeight;
                        this.mCheckedConstantSize = true;
                    }
                }
                if (animatedStateListState.mCheckedOpacity) {
                    this.mOpacity = animatedStateListState.mOpacity;
                    this.mCheckedOpacity = true;
                }
                if (animatedStateListState.mCheckedStateful) {
                    this.mCheckedStateful = true;
                }
                Drawable[] drawableArr = animatedStateListState.mDrawables;
                this.mDrawables = new Drawable[drawableArr.length];
                this.mNumChildren = animatedStateListState.mNumChildren;
                SparseArray sparseArray = animatedStateListState.mDrawableFutures;
                if (sparseArray != null) {
                    this.mDrawableFutures = sparseArray.clone();
                } else {
                    this.mDrawableFutures = new SparseArray(this.mNumChildren);
                }
                int i3 = this.mNumChildren;
                for (int i4 = 0; i4 < i3; i4++) {
                    Drawable drawable = drawableArr[i4];
                    if (drawable != null) {
                        Drawable.ConstantState constantState = drawable.getConstantState();
                        if (constantState != null) {
                            this.mDrawableFutures.put(i4, constantState);
                        } else {
                            this.mDrawables[i4] = drawableArr[i4];
                        }
                    }
                }
            } else {
                this.mDrawables = new Drawable[10];
                this.mNumChildren = 0;
            }
            if (animatedStateListState != null) {
                this.mStateSets = animatedStateListState.mStateSets;
            } else {
                this.mStateSets = new int[this.mDrawables.length][];
            }
            if (animatedStateListState != null) {
                this.mTransitions = animatedStateListState.mTransitions;
                this.mStateIds = animatedStateListState.mStateIds;
            } else {
                this.mTransitions = new LongSparseArray((Object) null);
                this.mStateIds = new SparseArrayCompat(0);
            }
        }

        public final int addChild(Drawable drawable) {
            int i = this.mNumChildren;
            if (i >= this.mDrawables.length) {
                int i2 = i + 10;
                Drawable[] drawableArr = new Drawable[i2];
                Drawable[] drawableArr2 = this.mDrawables;
                if (drawableArr2 != null) {
                    System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
                }
                this.mDrawables = drawableArr;
                int[][] iArr = new int[i2][];
                System.arraycopy(this.mStateSets, 0, iArr, 0, i);
                this.mStateSets = iArr;
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.mOwner);
            this.mDrawables[i] = drawable;
            this.mNumChildren++;
            this.mChildrenChangingConfigurations = drawable.getChangingConfigurations() | this.mChildrenChangingConfigurations;
            this.mCheckedOpacity = false;
            this.mCheckedStateful = false;
            this.mConstantPadding = null;
            this.mCheckedPadding = false;
            this.mCheckedConstantSize = false;
            this.mCheckedConstantState = false;
            return i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            int i = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = (Drawable.ConstantState) this.mDrawableFutures.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        public final void computeConstantSize() {
            this.mCheckedConstantSize = true;
            createAllFutures();
            int i = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            this.mConstantHeight = -1;
            this.mConstantWidth = -1;
            this.mConstantMinimumHeight = 0;
            this.mConstantMinimumWidth = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.mConstantWidth) {
                    this.mConstantWidth = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.mConstantHeight) {
                    this.mConstantHeight = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.mConstantMinimumWidth) {
                    this.mConstantMinimumWidth = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.mConstantMinimumHeight) {
                    this.mConstantMinimumHeight = minimumHeight;
                }
            }
        }

        public final void createAllFutures() {
            SparseArray sparseArray = this.mDrawableFutures;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    int keyAt = this.mDrawableFutures.keyAt(i);
                    Drawable.ConstantState constantState = (Drawable.ConstantState) this.mDrawableFutures.valueAt(i);
                    Drawable[] drawableArr = this.mDrawables;
                    Drawable newDrawable = constantState.newDrawable(this.mSourceRes);
                    newDrawable.setLayoutDirection(this.mLayoutDirection);
                    Drawable mutate = newDrawable.mutate();
                    mutate.setCallback(this.mOwner);
                    drawableArr[keyAt] = mutate;
                }
                this.mDrawableFutures = null;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.mChildrenChangingConfigurations | this.mChangingConfigurations;
        }

        public final Drawable getChild(int i) {
            int indexOfKey;
            Drawable drawable = this.mDrawables[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray sparseArray = this.mDrawableFutures;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable newDrawable = ((Drawable.ConstantState) this.mDrawableFutures.valueAt(indexOfKey)).newDrawable(this.mSourceRes);
            newDrawable.setLayoutDirection(this.mLayoutDirection);
            Drawable mutate = newDrawable.mutate();
            mutate.setCallback(this.mOwner);
            this.mDrawables[i] = mutate;
            this.mDrawableFutures.removeAt(indexOfKey);
            if (this.mDrawableFutures.size() == 0) {
                this.mDrawableFutures = null;
            }
            return mutate;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object[]] */
        /* JADX WARN: Type inference failed for: r3v4 */
        public final int getKeyframeIdAt(int i) {
            ?? r3;
            if (i < 0) {
                return 0;
            }
            SparseArrayCompat sparseArrayCompat = this.mStateIds;
            int i2 = 0;
            int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.size, i, sparseArrayCompat.keys);
            if (binarySearch >= 0 && (r3 = sparseArrayCompat.values[binarySearch]) != ArraySetKt.DELETED$1) {
                i2 = r3;
            }
            return i2.intValue();
        }

        public final int indexOfStateSet$androidx$appcompat$graphics$drawable$StateListDrawableCompat$StateListState(int[] iArr) {
            int[][] iArr2 = this.mStateSets;
            int i = this.mNumChildren;
            for (int i2 = 0; i2 < i; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new AnimatedStateListDrawableCompat(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new AnimatedStateListDrawableCompat(this, resources);
        }
    }
}
