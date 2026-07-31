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
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentState;
import androidx.navigation.NavOptions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.R$styleable;
import androidx.swiperefreshlayout.widget.CircularProgressDrawable;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.WeakHashMap;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SwipeRefreshLayout extends ViewGroup implements NestedScrollingParent3, NestedScrollingParent2, NestedScrollingChild {
    public static final int[] LAYOUT_ATTRS = {R.attr.enabled};
    public int mActivePointerId;
    public AnonymousClass4 mAlphaMaxAnimation;
    public AnonymousClass4 mAlphaStartAnimation;
    public final AnonymousClass6 mAnimateToCorrectPosition;
    public final AnonymousClass6 mAnimateToStartPosition;
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
    public final NavOptions.Builder mNestedScrollingParentHelper;
    public final int[] mNestedScrollingV2ConsumedCompat;
    public boolean mNotify;
    public int mOriginalOffsetTop;
    public final int[] mParentOffsetInWindow;
    public final int[] mParentScrollConsumed;
    public final CircularProgressDrawable mProgress;
    public final AnonymousClass1 mRefreshListener;
    public boolean mRefreshing;
    public AnonymousClass2 mScaleAnimation;
    public AnonymousClass2 mScaleDownAnimation;
    public int mSpinnerOffsetEnd;
    public View mTarget;
    public float mTotalDragDistance;
    public float mTotalUnconsumed;
    public final int mTouchSlop;
    public boolean mUsingCustomStart;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                default:
                    swipeRefreshLayout.setAnimationProgress(1.0f - f);
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnChildScrollUpCallback {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnRefreshListener {
        void onRefresh();
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.swiperefreshlayout.widget.SwipeRefreshLayout$6] */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.swiperefreshlayout.widget.SwipeRefreshLayout$6] */
    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        final int i = 0;
        this.mRefreshing = false;
        this.mTotalDragDistance = -1.0f;
        this.mParentScrollConsumed = new int[2];
        this.mParentOffsetInWindow = new int[2];
        this.mNestedScrollingV2ConsumedCompat = new int[2];
        this.mActivePointerId = -1;
        this.mCircleViewIndex = -1;
        final WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) this;
        this.mRefreshListener = new AnonymousClass1(wikiSwipeRefreshLayout, i);
        this.mAnimateToCorrectPosition = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                int i2 = i;
                WikiSwipeRefreshLayout wikiSwipeRefreshLayout2 = wikiSwipeRefreshLayout;
                switch (i2) {
                    case 0:
                        boolean z = wikiSwipeRefreshLayout2.mUsingCustomStart;
                        int i3 = wikiSwipeRefreshLayout2.mSpinnerOffsetEnd;
                        if (!z) {
                            i3 -= Math.abs(wikiSwipeRefreshLayout2.mOriginalOffsetTop);
                        }
                        wikiSwipeRefreshLayout2.setTargetOffsetTopAndBottom((wikiSwipeRefreshLayout2.mFrom + ((int) ((i3 - r3) * f))) - wikiSwipeRefreshLayout2.mCircleView.getTop());
                        CircularProgressDrawable circularProgressDrawable = wikiSwipeRefreshLayout2.mProgress;
                        float f2 = 1.0f - f;
                        CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
                        if (f2 != ring.mArrowScale) {
                            ring.mArrowScale = f2;
                        }
                        circularProgressDrawable.invalidateSelf();
                        break;
                    default:
                        wikiSwipeRefreshLayout2.moveToStart(f);
                        break;
                }
            }
        };
        final int i2 = 1;
        this.mAnimateToStartPosition = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                int i22 = i2;
                WikiSwipeRefreshLayout wikiSwipeRefreshLayout2 = wikiSwipeRefreshLayout;
                switch (i22) {
                    case 0:
                        boolean z = wikiSwipeRefreshLayout2.mUsingCustomStart;
                        int i3 = wikiSwipeRefreshLayout2.mSpinnerOffsetEnd;
                        if (!z) {
                            i3 -= Math.abs(wikiSwipeRefreshLayout2.mOriginalOffsetTop);
                        }
                        wikiSwipeRefreshLayout2.setTargetOffsetTopAndBottom((wikiSwipeRefreshLayout2.mFrom + ((int) ((i3 - r3) * f))) - wikiSwipeRefreshLayout2.mCircleView.getTop());
                        CircularProgressDrawable circularProgressDrawable = wikiSwipeRefreshLayout2.mProgress;
                        float f2 = 1.0f - f;
                        CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
                        if (f2 != ring.mArrowScale) {
                            ring.mArrowScale = f2;
                        }
                        circularProgressDrawable.invalidateSelf();
                        break;
                    default:
                        wikiSwipeRefreshLayout2.moveToStart(f);
                        break;
                }
            }
        };
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
        int i3 = (int) (displayMetrics.density * 64.0f);
        this.mSpinnerOffsetEnd = i3;
        this.mTotalDragDistance = i3;
        this.mNestedScrollingParentHelper = new NavOptions.Builder();
        this.mNestedScrollingChildHelper = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i4 = -this.mCircleDiameter;
        this.mCurrentTargetOffsetTop = i4;
        this.mOriginalOffsetTop = i4;
        moveToStart(1.0f);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, LAYOUT_ATTRS);
        setEnabled(obtainStyledAttributes2.getBoolean(0, true));
        obtainStyledAttributes2.recycle();
    }

    private void setColorViewAlpha(int i) {
        this.mCircleView.getBackground().setAlpha(i);
        this.mProgress.setAlpha(i);
    }

    public abstract boolean canChildScrollUp();

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent == null || keyEvent.getAction() != 1 || keyEvent.getKeyCode() != 285) {
            return super.dispatchKeyEvent(keyEvent);
        }
        setRefreshingWithoutSwipeGesture(true, true);
        return true;
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
        ring.mStartTrim = RecyclerView.DECELERATION_RATE;
        ring.mEndTrim = RecyclerView.DECELERATION_RATE;
        circularProgressDrawable.invalidateSelf();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this, i);
        this.mFrom = this.mCurrentTargetOffsetTop;
        AnonymousClass6 anonymousClass6 = this.mAnimateToStartPosition;
        anonymousClass6.reset();
        anonymousClass6.setDuration(200L);
        anonymousClass6.setInterpolator(this.mDecelerateInterpolator);
        CircleImageView circleImageView = this.mCircleView;
        circleImageView.mListener = anonymousClass1;
        circleImageView.clearAnimation();
        circleImageView.startAnimation(anonymousClass6);
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
        NavOptions.Builder builder = this.mNestedScrollingParentHelper;
        return builder.exitAnim | builder.enterAnim;
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
        float f2;
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
        if (i > 0) {
            f2 = i;
        } else {
            boolean z = this.mUsingCustomStart;
            int i2 = this.mSpinnerOffsetEnd;
            if (z) {
                i2 -= this.mOriginalOffsetTop;
            }
            f2 = i2;
        }
        double max2 = Math.max(RecyclerView.DECELERATION_RATE, Math.min(abs, f2 * 2.0f) / f2) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i3 = this.mOriginalOffsetTop + ((int) ((f2 * min) + (f2 * pow * 2.0f)));
        CircleImageView circleImageView = this.mCircleView;
        if (circleImageView.getVisibility() != 0) {
            circleImageView.setVisibility(0);
        }
        circleImageView.setScaleX(1.0f);
        circleImageView.setScaleY(1.0f);
        if (f < this.mTotalDragDistance) {
            final int i4 = 76;
            if (circularProgressDrawable.mRing.mAlpha > 76 && ((anonymousClass42 = this.mAlphaStartAnimation) == null || !anonymousClass42.hasStarted() || anonymousClass42.hasEnded())) {
                final int i5 = circularProgressDrawable.mRing.mAlpha;
                ?? r12 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
                    @Override // android.view.animation.Animation
                    public final void applyTransformation(float f3, Transformation transformation) {
                        SwipeRefreshLayout.this.mProgress.setAlpha((int) (((i4 - r0) * f3) + i5));
                    }
                };
                r12.setDuration(300L);
                circleImageView.mListener = null;
                circleImageView.clearAnimation();
                circleImageView.startAnimation(r12);
                this.mAlphaStartAnimation = r12;
            }
        } else {
            final int i6 = 255;
            if (circularProgressDrawable.mRing.mAlpha < 255 && ((anonymousClass4 = this.mAlphaMaxAnimation) == null || !anonymousClass4.hasStarted() || anonymousClass4.hasEnded())) {
                final int i7 = circularProgressDrawable.mRing.mAlpha;
                ?? r122 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
                    @Override // android.view.animation.Animation
                    public final void applyTransformation(float f3, Transformation transformation) {
                        SwipeRefreshLayout.this.mProgress.setAlpha((int) (((i6 - r0) * f3) + i7));
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
        ring2.mStartTrim = RecyclerView.DECELERATION_RATE;
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
        setTargetOffsetTopAndBottom(i3 - this.mCurrentTargetOffsetTop);
    }

    public final void moveToStart(float f) {
        setTargetOffsetTopAndBottom((this.mFrom + ((int) ((this.mOriginalOffsetTop - r0) * f))) - this.mCircleView.getTop());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        reset$1();
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
        float f;
        if (i2 > 0) {
            float f2 = this.mTotalUnconsumed;
            if (f2 > RecyclerView.DECELERATION_RATE) {
                float f3 = i2;
                if (f3 > f2) {
                    iArr[1] = (int) f2;
                    this.mTotalUnconsumed = RecyclerView.DECELERATION_RATE;
                    f = 0.0f;
                } else {
                    f = f2 - f3;
                    this.mTotalUnconsumed = f;
                    iArr[1] = i2;
                }
                moveSpinner(f);
            }
        }
        if (this.mUsingCustomStart && i2 > 0 && this.mTotalUnconsumed == RecyclerView.DECELERATION_RATE && Math.abs(i2 - iArr[1]) > 0) {
            this.mCircleView.setVisibility(8);
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
        this.mNestedScrollingParentHelper.enterAnim = i;
        startNestedScroll(i & 2);
        this.mTotalUnconsumed = RecyclerView.DECELERATION_RATE;
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
        this.mNestedScrollingParentHelper.enterAnim = 0;
        this.mNestedScrollInProgress = false;
        float f = this.mTotalUnconsumed;
        if (f > RecyclerView.DECELERATION_RATE) {
            finishSpinner(f);
            this.mTotalUnconsumed = RecyclerView.DECELERATION_RATE;
        } else {
            post(new Task$$ExternalSyntheticLambda0(18, this));
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
                    if (f > RecyclerView.DECELERATION_RATE) {
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
        View view;
        if (this.mEnableLegacyRequestDisallowInterceptTouch && (view = this.mTarget) != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (!view.isNestedScrollingEnabled()) {
                return;
            }
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public final void reset$1() {
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
        reset$1();
    }

    @Deprecated
    public void setLegacyRequestDisallowInterceptTouchEventEnabled(boolean z) {
        this.mEnableLegacyRequestDisallowInterceptTouch = z;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.mNestedScrollingChildHelper.setNestedScrollingEnabled(z);
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
            AnonymousClass6 anonymousClass6 = this.mAnimateToCorrectPosition;
            anonymousClass6.reset();
            anonymousClass6.setDuration(200L);
            anonymousClass6.setInterpolator(this.mDecelerateInterpolator);
            if (anonymousClass1 != null) {
                circleImageView.mListener = anonymousClass1;
            }
            circleImageView.clearAnimation();
            circleImageView.startAnimation(anonymousClass6);
        }
    }

    public final void setRefreshingWithoutSwipeGesture(boolean z, boolean z2) {
        int i = 0;
        if (!z || this.mRefreshing == z) {
            setRefreshing(z, false);
            return;
        }
        this.mRefreshing = z;
        boolean z3 = this.mUsingCustomStart;
        int i2 = this.mSpinnerOffsetEnd;
        if (!z3) {
            i2 += this.mOriginalOffsetTop;
        }
        setTargetOffsetTopAndBottom(i2 - this.mCurrentTargetOffsetTop);
        this.mNotify = z2;
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(20);
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                    WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) swipeRefreshLayout;
                    if (!wikiSwipeRefreshLayout.mRefreshing) {
                        wikiSwipeRefreshLayout.reset$1();
                        break;
                    } else {
                        wikiSwipeRefreshLayout.mProgress.setAlpha(255);
                        wikiSwipeRefreshLayout.mProgress.start();
                        if (wikiSwipeRefreshLayout.mNotify && (onRefreshListener = wikiSwipeRefreshLayout.mListener) != null) {
                            onRefreshListener.onRefresh();
                        }
                        wikiSwipeRefreshLayout.mCurrentTargetOffsetTop = wikiSwipeRefreshLayout.mCircleView.getTop();
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
    public final void onStopNestedScroll(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
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
        setRefreshingWithoutSwipeGesture(z, false);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }
}
