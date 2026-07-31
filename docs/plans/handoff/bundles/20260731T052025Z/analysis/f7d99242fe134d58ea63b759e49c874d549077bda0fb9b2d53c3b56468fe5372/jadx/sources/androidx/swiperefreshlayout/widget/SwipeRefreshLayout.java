package androidx.swiperefreshlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.ListView;
import androidx.compose.material3.FabPlacement;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentState;
import androidx.swiperefreshlayout.R$styleable;
import androidx.swiperefreshlayout.widget.CircularProgressDrawable;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SwipeRefreshLayout extends ViewGroup implements NestedScrollingParent3, NestedScrollingParent2, NestedScrollingChild {
    public static final int[] LAYOUT_ATTRS = {R.attr.enabled};
    public int mActivePointerId;
    public AnonymousClass4 mAlphaMaxAnimation;
    public AnonymousClass4 mAlphaStartAnimation;
    public final AnonymousClass2 mAnimateToCorrectPosition;
    public final AnonymousClass2 mAnimateToStartPosition;
    public int mCircleDiameter;
    public final CircleImageView mCircleView;
    public int mCircleViewIndex;
    public int mCurrentTargetOffsetTop;
    public int mCustomSlingshotDistance;
    public final DecelerateInterpolator mDecelerateInterpolator;
    public boolean mEnableLegacyRequestDisallowInterceptTouch;
    public int mFrom;
    public float mInitialDownY;
    public float mInitialMotionY;
    public boolean mIsBeingDragged;
    public OnRefreshListener mListener;
    public final int mMediumAnimationDuration;
    public boolean mNestedScrollInProgress;
    public final NestedScrollingChildHelper mNestedScrollingChildHelper;
    public final FabPlacement mNestedScrollingParentHelper;
    public final int[] mNestedScrollingV2ConsumedCompat;
    public boolean mNotify;
    public final int mOriginalOffsetTop;
    public final int[] mParentOffsetInWindow;
    public final int[] mParentScrollConsumed;
    public final CircularProgressDrawable mProgress;
    public final AnonymousClass1 mRefreshListener;
    public boolean mRefreshing;
    public AnonymousClass2 mScaleAnimation;
    public AnonymousClass2 mScaleDownAnimation;
    public final int mSpinnerOffsetEnd;
    public View mTarget;
    public float mTotalDragDistance;
    public float mTotalUnconsumed;
    public final int mTouchSlop;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$2, reason: invalid class name */
    public final class AnonymousClass2 extends Animation {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ SwipeRefreshLayout this$0;

        public /* synthetic */ AnonymousClass2(SwipeRefreshLayout swipeRefreshLayout, int i) {
            this.$r8$classId = i;
            this.this$0 = swipeRefreshLayout;
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f, Transformation transformation) {
            int i = this.$r8$classId;
            SwipeRefreshLayout swipeRefreshLayout = this.this$0;
            switch (i) {
                case 0:
                    swipeRefreshLayout.setAnimationProgress(f);
                    break;
                case 1:
                    swipeRefreshLayout.setAnimationProgress(1.0f - f);
                    break;
                case 2:
                    int abs = swipeRefreshLayout.mSpinnerOffsetEnd - Math.abs(swipeRefreshLayout.mOriginalOffsetTop);
                    swipeRefreshLayout.setTargetOffsetTopAndBottom((swipeRefreshLayout.mFrom + ((int) ((abs - r1) * f))) - swipeRefreshLayout.mCircleView.getTop());
                    CircularProgressDrawable circularProgressDrawable = swipeRefreshLayout.mProgress;
                    float f2 = 1.0f - f;
                    CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
                    if (f2 != ring.mArrowScale) {
                        ring.mArrowScale = f2;
                    }
                    circularProgressDrawable.invalidateSelf();
                    break;
                default:
                    swipeRefreshLayout.moveToStart(f);
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnChildScrollUpCallback {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnRefreshListener {
        void onRefresh();
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRefreshing = false;
        this.mTotalDragDistance = -1.0f;
        this.mParentScrollConsumed = new int[2];
        this.mParentOffsetInWindow = new int[2];
        this.mNestedScrollingV2ConsumedCompat = new int[2];
        this.mActivePointerId = -1;
        this.mCircleViewIndex = -1;
        this.mRefreshListener = new AnonymousClass1(this, 0);
        this.mAnimateToCorrectPosition = new AnonymousClass2(this, 2);
        this.mAnimateToStartPosition = new AnonymousClass2(this, 3);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mMediumAnimationDuration = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.mDecelerateInterpolator = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.mCircleDiameter = (int) (displayMetrics.density * 40.0f);
        CircleImageView circleImageView = new CircleImageView(getContext());
        float f = circleImageView.getContext().getResources().getDisplayMetrics().density;
        TypedArray obtainStyledAttributes = circleImageView.getContext().obtainStyledAttributes(R$styleable.SwipeRefreshLayout);
        circleImageView.mBackgroundColor = obtainStyledAttributes.getColor(0, -328966);
        obtainStyledAttributes.recycle();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        circleImageView.setElevation(f * 4.0f);
        shapeDrawable.getPaint().setColor(circleImageView.mBackgroundColor);
        circleImageView.setBackground(shapeDrawable);
        this.mCircleView = circleImageView;
        CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable(getContext());
        this.mProgress = circularProgressDrawable;
        circularProgressDrawable.setStyle(1);
        this.mCircleView.setImageDrawable(this.mProgress);
        this.mCircleView.setVisibility(8);
        addView(this.mCircleView);
        setChildrenDrawingOrderEnabled(true);
        int i = (int) (displayMetrics.density * 64.0f);
        this.mSpinnerOffsetEnd = i;
        this.mTotalDragDistance = i;
        this.mNestedScrollingParentHelper = new FabPlacement(1, (byte) 0);
        this.mNestedScrollingChildHelper = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i2 = -this.mCircleDiameter;
        this.mCurrentTargetOffsetTop = i2;
        this.mOriginalOffsetTop = i2;
        moveToStart(1.0f);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, LAYOUT_ATTRS);
        setEnabled(obtainStyledAttributes2.getBoolean(0, true));
        obtainStyledAttributes2.recycle();
    }

    private void setColorViewAlpha(int i) {
        this.mCircleView.getBackground().setAlpha(i);
        this.mProgress.setAlpha(i);
    }

    public final boolean canChildScrollUp() {
        View view = this.mTarget;
        return view instanceof ListView ? ((ListView) view).canScrollList(-1) : view.canScrollVertically(-1);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.mNestedScrollingChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return this.mNestedScrollingChildHelper.dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.mNestedScrollingChildHelper.dispatchNestedPreScroll(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.mNestedScrollingChildHelper.dispatchNestedScrollInternal(i, i2, i3, i4, iArr, 0, null);
    }

    public final void ensureTarget() {
        if (this.mTarget == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.mCircleView)) {
                    this.mTarget = childAt;
                    return;
                }
            }
        }
    }

    public final void finishSpinner(float f) {
        int i = 1;
        if (f > this.mTotalDragDistance) {
            setRefreshing(true, true);
            return;
        }
        this.mRefreshing = false;
        CircularProgressDrawable circularProgressDrawable = this.mProgress;
        CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
        ring.mStartTrim = 0.0f;
        ring.mEndTrim = 0.0f;
        circularProgressDrawable.invalidateSelf();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this, i);
        this.mFrom = this.mCurrentTargetOffsetTop;
        AnonymousClass2 anonymousClass2 = this.mAnimateToStartPosition;
        anonymousClass2.reset();
        anonymousClass2.setDuration(200L);
        anonymousClass2.setInterpolator(this.mDecelerateInterpolator);
        CircleImageView circleImageView = this.mCircleView;
        circleImageView.mListener = anonymousClass1;
        circleImageView.clearAnimation();
        circleImageView.startAnimation(anonymousClass2);
        CircularProgressDrawable.Ring ring2 = circularProgressDrawable.mRing;
        if (ring2.mShowArrow) {
            ring2.mShowArrow = false;
        }
        circularProgressDrawable.invalidateSelf();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        int i3 = this.mCircleViewIndex;
        return i3 < 0 ? i2 : i2 == i + (-1) ? i3 : i2 >= i3 ? i2 + 1 : i2;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        FabPlacement fabPlacement = this.mNestedScrollingParentHelper;
        return fabPlacement.height | fabPlacement.left;
    }

    public int getProgressCircleDiameter() {
        return this.mCircleDiameter;
    }

    public int getProgressViewEndOffset() {
        return this.mSpinnerOffsetEnd;
    }

    public int getProgressViewStartOffset() {
        return this.mOriginalOffsetTop;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.mNestedScrollingChildHelper.hasNestedScrollingParent(0);
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.mNestedScrollingChildHelper.mIsNestedScrollingEnabled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [android.view.animation.Animation, androidx.swiperefreshlayout.widget.SwipeRefreshLayout$4] */
    /* JADX WARN: Type inference failed for: r12v2, types: [android.view.animation.Animation, androidx.swiperefreshlayout.widget.SwipeRefreshLayout$4] */
    public final void moveSpinner(float f) {
        AnonymousClass4 anonymousClass4;
        AnonymousClass4 anonymousClass42;
        CircularProgressDrawable circularProgressDrawable = this.mProgress;
        CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
        if (!ring.mShowArrow) {
            ring.mShowArrow = true;
        }
        circularProgressDrawable.invalidateSelf();
        float min = Math.min(1.0f, Math.abs(f / this.mTotalDragDistance));
        float max = (((float) Math.max(min - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f) - this.mTotalDragDistance;
        int i = this.mCustomSlingshotDistance;
        if (i <= 0) {
            i = this.mSpinnerOffsetEnd;
        }
        float f2 = i;
        double max2 = Math.max(0.0f, Math.min(abs, f2 * 2.0f) / f2) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i2 = this.mOriginalOffsetTop + ((int) ((f2 * min) + (f2 * pow * 2.0f)));
        CircleImageView circleImageView = this.mCircleView;
        if (circleImageView.getVisibility() != 0) {
            circleImageView.setVisibility(0);
        }
        circleImageView.setScaleX(1.0f);
        circleImageView.setScaleY(1.0f);
        if (f < this.mTotalDragDistance) {
            final int i3 = 76;
            if (circularProgressDrawable.mRing.mAlpha > 76 && ((anonymousClass42 = this.mAlphaStartAnimation) == null || !anonymousClass42.hasStarted() || anonymousClass42.hasEnded())) {
                final int i4 = circularProgressDrawable.mRing.mAlpha;
                ?? r12 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
                    @Override // android.view.animation.Animation
                    public final void applyTransformation(float f3, Transformation transformation) {
                        SwipeRefreshLayout.this.mProgress.setAlpha((int) (((i3 - r0) * f3) + i4));
                    }
                };
                r12.setDuration(300L);
                circleImageView.mListener = null;
                circleImageView.clearAnimation();
                circleImageView.startAnimation(r12);
                this.mAlphaStartAnimation = r12;
            }
        } else {
            final int i5 = 255;
            if (circularProgressDrawable.mRing.mAlpha < 255 && ((anonymousClass4 = this.mAlphaMaxAnimation) == null || !anonymousClass4.hasStarted() || anonymousClass4.hasEnded())) {
                final int i6 = circularProgressDrawable.mRing.mAlpha;
                ?? r122 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
                    @Override // android.view.animation.Animation
                    public final void applyTransformation(float f3, Transformation transformation) {
                        SwipeRefreshLayout.this.mProgress.setAlpha((int) (((i5 - r0) * f3) + i6));
                    }
                };
                r122.setDuration(300L);
                circleImageView.mListener = null;
                circleImageView.clearAnimation();
                circleImageView.startAnimation(r122);
                this.mAlphaMaxAnimation = r122;
            }
        }
        float min2 = Math.min(0.8f, max * 0.8f);
        CircularProgressDrawable.Ring ring2 = circularProgressDrawable.mRing;
        ring2.mStartTrim = 0.0f;
        ring2.mEndTrim = min2;
        circularProgressDrawable.invalidateSelf();
        float min3 = Math.min(1.0f, max);
        CircularProgressDrawable.Ring ring3 = circularProgressDrawable.mRing;
        if (min3 != ring3.mArrowScale) {
            ring3.mArrowScale = min3;
        }
        circularProgressDrawable.invalidateSelf();
        circularProgressDrawable.mRing.mRotation = ((pow * 2.0f) + ((max * 0.4f) - 0.25f)) * 0.5f;
        circularProgressDrawable.invalidateSelf();
        setTargetOffsetTopAndBottom(i2 - this.mCurrentTargetOffsetTop);
    }

    public final void moveToStart(float f) {
        setTargetOffsetTopAndBottom((this.mFrom + ((int) ((this.mOriginalOffsetTop - r0) * f))) - this.mCircleView.getTop());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        reset$2();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ensureTarget();
        int actionMasked = motionEvent.getActionMasked();
        if (isEnabled() && !canChildScrollUp() && !this.mRefreshing && !this.mNestedScrollInProgress) {
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked == 2) {
                        int i = this.mActivePointerId;
                        if (i == -1) {
                            Log.e("SwipeRefreshLayout", "Got ACTION_MOVE event but don't have an active pointer id.");
                            return false;
                        }
                        int findPointerIndex = motionEvent.findPointerIndex(i);
                        if (findPointerIndex >= 0) {
                            startDragging(motionEvent.getY(findPointerIndex));
                        }
                    } else if (actionMasked != 3) {
                        if (actionMasked == 6) {
                            int actionIndex = motionEvent.getActionIndex();
                            if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
                                this.mActivePointerId = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                            }
                        }
                    }
                    return this.mIsBeingDragged;
                }
                this.mIsBeingDragged = false;
                this.mActivePointerId = -1;
                return this.mIsBeingDragged;
            }
            setTargetOffsetTopAndBottom(this.mOriginalOffsetTop - this.mCircleView.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.mActivePointerId = pointerId;
            this.mIsBeingDragged = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 >= 0) {
                this.mInitialDownY = motionEvent.getY(findPointerIndex2);
                return this.mIsBeingDragged;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.mTarget == null) {
            ensureTarget();
        }
        View view = this.mTarget;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.mCircleView.getMeasuredWidth();
        int measuredHeight2 = this.mCircleView.getMeasuredHeight();
        int i5 = measuredWidth / 2;
        int i6 = measuredWidth2 / 2;
        int i7 = this.mCurrentTargetOffsetTop;
        this.mCircleView.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mTarget == null) {
            ensureTarget();
        }
        View view = this.mTarget;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.mCircleView.measure(View.MeasureSpec.makeMeasureSpec(this.mCircleDiameter, 1073741824), View.MeasureSpec.makeMeasureSpec(this.mCircleDiameter, 1073741824));
        this.mCircleViewIndex = -1;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3) == this.mCircleView) {
                this.mCircleViewIndex = i3;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        return this.mNestedScrollingChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return this.mNestedScrollingChildHelper.dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.mTotalUnconsumed;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = (int) f;
                    this.mTotalUnconsumed = 0.0f;
                } else {
                    this.mTotalUnconsumed = f - f2;
                    iArr[1] = i2;
                }
                moveSpinner(this.mTotalUnconsumed);
            }
        }
        int i3 = i - iArr[0];
        int i4 = i2 - iArr[1];
        int[] iArr2 = this.mParentScrollConsumed;
        if (dispatchNestedPreScroll(i3, i4, iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i5 != 0) {
            return;
        }
        int i6 = iArr[1];
        if (i5 == 0) {
            this.mNestedScrollingChildHelper.dispatchNestedScrollInternal(i, i2, i3, i4, this.mParentOffsetInWindow, i5, iArr);
        }
        int i7 = i4 - (iArr[1] - i6);
        if ((i7 == 0 ? this.mParentOffsetInWindow[1] + i4 : i7) >= 0 || canChildScrollUp()) {
            return;
        }
        float abs = this.mTotalUnconsumed + Math.abs(r12);
        this.mTotalUnconsumed = abs;
        moveSpinner(abs);
        iArr[1] = iArr[1] + i7;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        this.mNestedScrollingParentHelper.left = i;
        startNestedScroll(i & 2);
        this.mTotalUnconsumed = 0.0f;
        this.mNestedScrollInProgress = true;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setRefreshing(savedState.mRefreshing);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.mRefreshing);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return (!isEnabled() || this.mRefreshing || (i & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        this.mNestedScrollingParentHelper.left = 0;
        this.mNestedScrollInProgress = false;
        float f = this.mTotalUnconsumed;
        if (f > 0.0f) {
            finishSpinner(f);
            this.mTotalUnconsumed = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (isEnabled() && !canChildScrollUp() && !this.mRefreshing && !this.mNestedScrollInProgress) {
            if (actionMasked == 0) {
                this.mActivePointerId = motionEvent.getPointerId(0);
                this.mIsBeingDragged = false;
                return true;
            }
            if (actionMasked == 1) {
                int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (findPointerIndex < 0) {
                    Log.e("SwipeRefreshLayout", "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                if (this.mIsBeingDragged) {
                    float y = (motionEvent.getY(findPointerIndex) - this.mInitialMotionY) * 0.5f;
                    this.mIsBeingDragged = false;
                    finishSpinner(y);
                }
                this.mActivePointerId = -1;
                return false;
            }
            if (actionMasked == 2) {
                int findPointerIndex2 = motionEvent.findPointerIndex(this.mActivePointerId);
                if (findPointerIndex2 < 0) {
                    Log.e("SwipeRefreshLayout", "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                float y2 = motionEvent.getY(findPointerIndex2);
                startDragging(y2);
                if (this.mIsBeingDragged) {
                    float f = (y2 - this.mInitialMotionY) * 0.5f;
                    if (f > 0.0f) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        moveSpinner(f);
                    }
                }
                return true;
            }
            if (actionMasked != 3) {
                if (actionMasked != 5) {
                    if (actionMasked == 6) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
                            this.mActivePointerId = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                            return true;
                        }
                    }
                    return true;
                }
                int actionIndex2 = motionEvent.getActionIndex();
                if (actionIndex2 < 0) {
                    Log.e("SwipeRefreshLayout", "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                    return false;
                }
                this.mActivePointerId = motionEvent.getPointerId(actionIndex2);
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ViewParent parent;
        View view = this.mTarget;
        if (view != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (!view.isNestedScrollingEnabled()) {
                if (this.mEnableLegacyRequestDisallowInterceptTouch || (parent = getParent()) == null) {
                    return;
                }
                parent.requestDisallowInterceptTouchEvent(z);
                return;
            }
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public final void reset$2() {
        this.mCircleView.clearAnimation();
        this.mProgress.stop();
        this.mCircleView.setVisibility(8);
        setColorViewAlpha(255);
        setTargetOffsetTopAndBottom(this.mOriginalOffsetTop - this.mCurrentTargetOffsetTop);
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
    }

    public void setAnimationProgress(float f) {
        this.mCircleView.setScaleX(f);
        this.mCircleView.setScaleY(f);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        ensureTarget();
        CircularProgressDrawable circularProgressDrawable = this.mProgress;
        CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
        ring.mColors = iArr;
        ring.setColorIndex(0);
        ring.setColorIndex(0);
        circularProgressDrawable.invalidateSelf();
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = context.getColor(iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.mTotalDragDistance = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        reset$2();
    }

    @Deprecated
    public void setLegacyRequestDisallowInterceptTouchEventEnabled(boolean z) {
        this.mEnableLegacyRequestDisallowInterceptTouch = z;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.mNestedScrollingChildHelper;
        if (nestedScrollingChildHelper.mIsNestedScrollingEnabled) {
            ViewGroup viewGroup = nestedScrollingChildHelper.mView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            viewGroup.stopNestedScroll();
        }
        nestedScrollingChildHelper.mIsNestedScrollingEnabled = z;
    }

    public void setOnRefreshListener(OnRefreshListener onRefreshListener) {
        this.mListener = onRefreshListener;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.mCircleView.setBackgroundColor(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(getContext().getColor(i));
    }

    public final void setRefreshing(boolean z, boolean z2) {
        if (this.mRefreshing != z) {
            this.mNotify = z2;
            ensureTarget();
            this.mRefreshing = z;
            CircleImageView circleImageView = this.mCircleView;
            AnonymousClass1 anonymousClass1 = this.mRefreshListener;
            if (!z) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, 1);
                this.mScaleDownAnimation = anonymousClass2;
                anonymousClass2.setDuration(150L);
                circleImageView.mListener = anonymousClass1;
                circleImageView.clearAnimation();
                circleImageView.startAnimation(this.mScaleDownAnimation);
                return;
            }
            this.mFrom = this.mCurrentTargetOffsetTop;
            AnonymousClass2 anonymousClass22 = this.mAnimateToCorrectPosition;
            anonymousClass22.reset();
            anonymousClass22.setDuration(200L);
            anonymousClass22.setInterpolator(this.mDecelerateInterpolator);
            if (anonymousClass1 != null) {
                circleImageView.mListener = anonymousClass1;
            }
            circleImageView.clearAnimation();
            circleImageView.startAnimation(anonymousClass22);
        }
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.mCircleDiameter = (int) (displayMetrics.density * 56.0f);
            } else {
                this.mCircleDiameter = (int) (displayMetrics.density * 40.0f);
            }
            this.mCircleView.setImageDrawable(null);
            this.mProgress.setStyle(i);
            this.mCircleView.setImageDrawable(this.mProgress);
        }
    }

    public void setSlingshotDistance(int i) {
        this.mCustomSlingshotDistance = i;
    }

    public void setTargetOffsetTopAndBottom(int i) {
        CircleImageView circleImageView = this.mCircleView;
        circleImageView.bringToFront();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        circleImageView.offsetTopAndBottom(i);
        this.mCurrentTargetOffsetTop = circleImageView.getTop();
    }

    public final void startDragging(float f) {
        float f2 = this.mInitialDownY;
        float f3 = f - f2;
        float f4 = this.mTouchSlop;
        if (f3 <= f4 || this.mIsBeingDragged) {
            return;
        }
        this.mInitialMotionY = f2 + f4;
        this.mIsBeingDragged = true;
        this.mProgress.setAlpha(76);
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return this.mNestedScrollingChildHelper.startNestedScroll(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        this.mNestedScrollingChildHelper.stopNestedScroll(0);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(19);
        public final boolean mRefreshing;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mRefreshing = parcel.readByte() != 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.mRefreshing ? (byte) 1 : (byte) 0);
        }

        public SavedState(Parcelable parcelable, boolean z) {
            super(parcelable);
            this.mRefreshing = z;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            return onStartNestedScroll(view, view2, i);
        }
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onStopNestedScroll(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$1, reason: invalid class name */
    public final class AnonymousClass1 implements Animation.AnimationListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ SwipeRefreshLayout this$0;

        public /* synthetic */ AnonymousClass1(SwipeRefreshLayout swipeRefreshLayout, int i) {
            this.$r8$classId = i;
            this.this$0 = swipeRefreshLayout;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
            OnRefreshListener onRefreshListener;
            int i = this.$r8$classId;
            SwipeRefreshLayout swipeRefreshLayout = this.this$0;
            switch (i) {
                case 0:
                    if (!swipeRefreshLayout.mRefreshing) {
                        swipeRefreshLayout.reset$2();
                        break;
                    } else {
                        swipeRefreshLayout.mProgress.setAlpha(255);
                        swipeRefreshLayout.mProgress.start();
                        if (swipeRefreshLayout.mNotify && (onRefreshListener = swipeRefreshLayout.mListener) != null) {
                            onRefreshListener.onRefresh();
                        }
                        swipeRefreshLayout.mCurrentTargetOffsetTop = swipeRefreshLayout.mCircleView.getTop();
                        break;
                    }
                    break;
                default:
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(swipeRefreshLayout, 1);
                    swipeRefreshLayout.mScaleDownAnimation = anonymousClass2;
                    anonymousClass2.setDuration(150L);
                    CircleImageView circleImageView = swipeRefreshLayout.mCircleView;
                    circleImageView.mListener = null;
                    circleImageView.clearAnimation();
                    swipeRefreshLayout.mCircleView.startAnimation(swipeRefreshLayout.mScaleDownAnimation);
                    break;
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
            int i = this.$r8$classId;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
            int i = this.$r8$classId;
        }

        private final void onAnimationRepeat$androidx$swiperefreshlayout$widget$SwipeRefreshLayout$1(Animation animation) {
        }

        private final void onAnimationRepeat$androidx$swiperefreshlayout$widget$SwipeRefreshLayout$5(Animation animation) {
        }

        private final void onAnimationStart$androidx$swiperefreshlayout$widget$SwipeRefreshLayout$1(Animation animation) {
        }

        private final void onAnimationStart$androidx$swiperefreshlayout$widget$SwipeRefreshLayout$5(Animation animation) {
        }
    }

    public void setOnChildScrollUpCallback(OnChildScrollUpCallback onChildScrollUpCallback) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        onNestedScroll(view, i, i2, i3, i4, i5, this.mNestedScrollingV2ConsumedCompat);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        onNestedScroll(view, i, i2, i3, i4, 0, this.mNestedScrollingV2ConsumedCompat);
    }

    public void setRefreshing(boolean z) {
        int i = 0;
        if (z && this.mRefreshing != z) {
            this.mRefreshing = z;
            setTargetOffsetTopAndBottom((this.mSpinnerOffsetEnd + this.mOriginalOffsetTop) - this.mCurrentTargetOffsetTop);
            this.mNotify = false;
            CircleImageView circleImageView = this.mCircleView;
            circleImageView.setVisibility(0);
            this.mProgress.setAlpha(255);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, i);
            this.mScaleAnimation = anonymousClass2;
            anonymousClass2.setDuration(this.mMediumAnimationDuration);
            AnonymousClass1 anonymousClass1 = this.mRefreshListener;
            if (anonymousClass1 != null) {
                circleImageView.mListener = anonymousClass1;
            }
            circleImageView.clearAnimation();
            circleImageView.startAnimation(this.mScaleAnimation);
            return;
        }
        setRefreshing(z, false);
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }
}
