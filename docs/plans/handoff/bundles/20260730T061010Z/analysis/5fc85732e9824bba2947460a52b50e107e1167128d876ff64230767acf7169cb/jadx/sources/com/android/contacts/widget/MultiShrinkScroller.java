package com.android.contacts.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.GradientDrawable;
import android.hardware.display.DisplayManager;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Scroller;
import android.widget.TextView;
import android.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.android.contacts.ContactPhotoManager;
import com.android.contacts.R;
import com.android.contacts.compat.CompatUtils;
import com.android.contacts.util.SchedulingUtils;

/* loaded from: classes.dex */
public class MultiShrinkScroller extends FrameLayout {
    private static final Interpolator sInterpolator = new Interpolator() { // from class: com.android.contacts.widget.MultiShrinkScroller.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };
    private GradientDrawable mActionBarGradientDrawable;
    private View mActionBarGradientView;
    private final int mActionBarSize;
    private final float[] mAlphaMatrixValues;
    private int mCollapsedTitleBottomMargin;
    private int mCollapsedTitleStartMargin;
    private final ColorMatrix mColorMatrix;
    private final int mDismissDistanceOnRelease;
    private final int mDismissDistanceOnScroll;
    private final EdgeEffect mEdgeGlowBottom;
    private final EdgeEffect mEdgeGlowTop;
    private TextView mFullNameView;
    private final int[] mGradientColors;
    private boolean mHasEverTouchedTheTop;
    private int mHeaderTintColor;
    private int mIntermediateHeaderHeight;
    private TextView mInvisiblePlaceholderTextView;
    private boolean mIsBeingDragged;
    private boolean mIsFullscreenDownwardsFling;
    private boolean mIsOpenContactSquare;
    private boolean mIsTouchDisabledForDismissAnimation;
    private boolean mIsTouchDisabledForSuppressLayout;
    private final boolean mIsTwoPanel;
    private final float mLandscapePhotoRatio;
    private float[] mLastEventPosition;
    private MultiShrinkScrollerListener mListener;
    private int mMaximumFullNameViewHeight;
    private int mMaximumHeaderHeight;
    private int mMaximumHeaderTextSize;
    private int mMaximumPhoneticNameViewHeight;
    private int mMaximumPortraitHeaderHeight;
    private final int mMaximumTitleMargin;
    private final int mMaximumVelocity;
    private int mMinimumHeaderHeight;
    private int mMinimumPortraitHeaderHeight;
    private final int mMinimumVelocity;
    private final ColorMatrix mMultiplyBlendMatrix;
    private final float[] mMultiplyBlendMatrixValues;
    private TextView mPhoneticNameView;
    private View mPhotoTouchInterceptOverlay;
    private QuickContactImageView mPhotoView;
    private View mPhotoViewContainer;
    private boolean mReceivedDown;
    private ScrollView mScrollView;
    private View mScrollViewChild;
    private final Scroller mScroller;
    private final Animator.AnimatorListener mSnapToBottomListener;
    private final int mSnapToTopSlopHeight;
    private View mStartColumn;
    private final Interpolator mTextSizePathInterpolator;
    private View mTitleAndPhoneticNameView;
    private GradientDrawable mTitleGradientDrawable;
    private View mTitleGradientView;
    private View mToolbar;
    private final float mToolbarElevation;
    private final int mTouchSlop;
    private final int mTransparentStartHeight;
    private View mTransparentView;
    private VelocityTracker mVelocityTracker;
    private final ColorMatrix mWhitenessColorMatrix;

    public interface MultiShrinkScrollerListener {
        void onEnterFullscreen();

        void onEntranceAnimationDone();

        void onExitFullscreen();

        void onScrolledOffBottom();

        void onStartScrollOffBottom();

        void onTransparentViewHeightChange(float f);
    }

    private float multiplyBlend(int i, float f) {
        return ((i * f) / 255.0f) + (1.0f - f);
    }

    public MultiShrinkScroller(Context context) {
        this(context, null);
    }

    public MultiShrinkScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MultiShrinkScroller(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLastEventPosition = new float[]{ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT};
        this.mIsBeingDragged = false;
        this.mReceivedDown = false;
        this.mIsFullscreenDownwardsFling = false;
        this.mWhitenessColorMatrix = new ColorMatrix();
        this.mColorMatrix = new ColorMatrix();
        this.mAlphaMatrixValues = new float[]{ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, 1.0f, ContactPhotoManager.OFFSET_DEFAULT};
        this.mMultiplyBlendMatrix = new ColorMatrix();
        this.mMultiplyBlendMatrixValues = new float[]{ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, 1.0f, ContactPhotoManager.OFFSET_DEFAULT};
        this.mTextSizePathInterpolator = PathInterpolatorCompat.create(0.16f, 0.4f, 0.2f, 1.0f);
        this.mGradientColors = new int[]{0, -2013265920};
        this.mTitleGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, this.mGradientColors);
        this.mActionBarGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, this.mGradientColors);
        this.mSnapToBottomListener = new AnimatorListenerAdapter() { // from class: com.android.contacts.widget.MultiShrinkScroller.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (MultiShrinkScroller.this.getScrollUntilOffBottom() <= 0 || MultiShrinkScroller.this.mListener == null) {
                    return;
                }
                MultiShrinkScroller.this.mListener.onScrolledOffBottom();
                MultiShrinkScroller.this.mListener = null;
            }
        };
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        setFocusable(false);
        setWillNotDraw(false);
        this.mEdgeGlowBottom = new EdgeEffect(context);
        this.mEdgeGlowTop = new EdgeEffect(context);
        this.mScroller = new Scroller(context, sInterpolator);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mTransparentStartHeight = (int) getResources().getDimension(R.dimen.quickcontact_starting_empty_height);
        this.mToolbarElevation = getResources().getDimension(R.dimen.quick_contact_toolbar_elevation);
        this.mIsTwoPanel = getResources().getBoolean(R.bool.quickcontact_two_panel);
        this.mMaximumTitleMargin = (int) getResources().getDimension(R.dimen.quickcontact_title_initial_margin);
        this.mDismissDistanceOnScroll = (int) getResources().getDimension(R.dimen.quickcontact_dismiss_distance_on_scroll);
        this.mDismissDistanceOnRelease = (int) getResources().getDimension(R.dimen.quickcontact_dismiss_distance_on_release);
        this.mSnapToTopSlopHeight = (int) getResources().getDimension(R.dimen.quickcontact_snap_to_top_slop_height);
        TypedValue typedValue = new TypedValue();
        getResources().getValue(R.dimen.quickcontact_landscape_photo_ratio, typedValue, true);
        this.mLandscapePhotoRatio = typedValue.getFloat();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{android.R.attr.actionBarSize});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.mActionBarSize = dimensionPixelSize;
        this.mMinimumHeaderHeight = dimensionPixelSize;
        this.mMinimumPortraitHeaderHeight = dimensionPixelSize;
        obtainStyledAttributes.recycle();
    }

    public void initialize(MultiShrinkScrollerListener multiShrinkScrollerListener, boolean z, final int i, final boolean z2) {
        this.mScrollView = (ScrollView) findViewById(R.id.content_scroller);
        this.mScrollViewChild = findViewById(R.id.card_container);
        this.mToolbar = findViewById(R.id.toolbar_parent);
        this.mPhotoViewContainer = findViewById(R.id.toolbar_parent);
        this.mTransparentView = findViewById(R.id.transparent_view);
        this.mFullNameView = (TextView) findViewById(R.id.large_title);
        this.mPhoneticNameView = (TextView) findViewById(R.id.phonetic_name);
        this.mTitleAndPhoneticNameView = findViewById(R.id.title_and_phonetic_name);
        this.mInvisiblePlaceholderTextView = (TextView) findViewById(R.id.placeholder_textview);
        View findViewById = findViewById(R.id.empty_start_column);
        this.mStartColumn = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.widget.MultiShrinkScroller.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MultiShrinkScroller.this.scrollOffBottom();
                }
            });
            findViewById(R.id.empty_end_column).setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.widget.MultiShrinkScroller.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MultiShrinkScroller.this.scrollOffBottom();
                }
            });
        }
        this.mListener = multiShrinkScrollerListener;
        this.mIsOpenContactSquare = z;
        this.mPhotoView = (QuickContactImageView) findViewById(R.id.photo);
        View findViewById2 = findViewById(R.id.title_gradient);
        this.mTitleGradientView = findViewById2;
        findViewById2.setBackground(this.mTitleGradientDrawable);
        View findViewById3 = findViewById(R.id.action_bar_gradient);
        this.mActionBarGradientView = findViewById3;
        findViewById3.setBackground(this.mActionBarGradientDrawable);
        this.mCollapsedTitleStartMargin = ((Toolbar) findViewById(R.id.toolbar)).getContentInsetStart();
        View findViewById4 = findViewById(R.id.photo_touch_intercept_overlay);
        this.mPhotoTouchInterceptOverlay = findViewById4;
        if (!this.mIsTwoPanel) {
            findViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.widget.MultiShrinkScroller.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MultiShrinkScroller.this.expandHeader();
                }
            });
        }
        SchedulingUtils.doOnPreDraw(this, false, new Runnable() { // from class: com.android.contacts.widget.MultiShrinkScroller.6
            @Override // java.lang.Runnable
            public void run() {
                if (!MultiShrinkScroller.this.mIsTwoPanel) {
                    MultiShrinkScroller multiShrinkScroller = MultiShrinkScroller.this;
                    multiShrinkScroller.mMaximumHeaderHeight = multiShrinkScroller.mPhotoViewContainer.getWidth();
                    MultiShrinkScroller.this.mIntermediateHeaderHeight = (int) (r0.mMaximumHeaderHeight * 0.6f);
                }
                MultiShrinkScroller multiShrinkScroller2 = MultiShrinkScroller.this;
                multiShrinkScroller2.mMaximumPortraitHeaderHeight = multiShrinkScroller2.mIsTwoPanel ? MultiShrinkScroller.this.getHeight() : MultiShrinkScroller.this.mPhotoViewContainer.getWidth();
                MultiShrinkScroller multiShrinkScroller3 = MultiShrinkScroller.this;
                multiShrinkScroller3.setHeaderHeight(multiShrinkScroller3.getMaximumScrollableHeaderHeight());
                if (z2) {
                    MultiShrinkScroller multiShrinkScroller4 = MultiShrinkScroller.this;
                    multiShrinkScroller4.mMaximumHeaderTextSize = multiShrinkScroller4.mTitleAndPhoneticNameView.getHeight();
                    MultiShrinkScroller multiShrinkScroller5 = MultiShrinkScroller.this;
                    multiShrinkScroller5.mMaximumFullNameViewHeight = multiShrinkScroller5.mFullNameView.getHeight();
                    int dimensionPixelSize = MultiShrinkScroller.this.getResources().getDimensionPixelSize(R.dimen.quickcontact_maximum_phonetic_name_size);
                    int dimensionPixelSize2 = MultiShrinkScroller.this.getResources().getDimensionPixelSize(R.dimen.quickcontact_maximum_title_size);
                    MultiShrinkScroller multiShrinkScroller6 = MultiShrinkScroller.this;
                    multiShrinkScroller6.mMaximumPhoneticNameViewHeight = (multiShrinkScroller6.mMaximumFullNameViewHeight * dimensionPixelSize) / dimensionPixelSize2;
                }
                int i2 = i;
                if (i2 > 0) {
                    MultiShrinkScroller.this.mMaximumHeaderTextSize = i2;
                }
                if (MultiShrinkScroller.this.mIsTwoPanel) {
                    MultiShrinkScroller multiShrinkScroller7 = MultiShrinkScroller.this;
                    multiShrinkScroller7.mMaximumHeaderHeight = multiShrinkScroller7.getHeight();
                    MultiShrinkScroller multiShrinkScroller8 = MultiShrinkScroller.this;
                    multiShrinkScroller8.mMinimumHeaderHeight = multiShrinkScroller8.mMaximumHeaderHeight;
                    MultiShrinkScroller multiShrinkScroller9 = MultiShrinkScroller.this;
                    multiShrinkScroller9.mIntermediateHeaderHeight = multiShrinkScroller9.mMaximumHeaderHeight;
                    ViewGroup.LayoutParams layoutParams = MultiShrinkScroller.this.mPhotoViewContainer.getLayoutParams();
                    layoutParams.height = MultiShrinkScroller.this.mMaximumHeaderHeight;
                    layoutParams.width = (int) (MultiShrinkScroller.this.mMaximumHeaderHeight * MultiShrinkScroller.this.mLandscapePhotoRatio);
                    MultiShrinkScroller.this.mPhotoViewContainer.setLayoutParams(layoutParams);
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) MultiShrinkScroller.this.mTitleAndPhoneticNameView.getLayoutParams();
                    layoutParams2.width = (layoutParams.width - layoutParams2.leftMargin) - layoutParams2.rightMargin;
                    layoutParams2.gravity = 8388691;
                    MultiShrinkScroller.this.mTitleAndPhoneticNameView.setLayoutParams(layoutParams2);
                } else {
                    MultiShrinkScroller.this.mFullNameView.setWidth(MultiShrinkScroller.this.mPhotoViewContainer.getWidth() - (MultiShrinkScroller.this.mMaximumTitleMargin * 2));
                    MultiShrinkScroller.this.mPhoneticNameView.setWidth(MultiShrinkScroller.this.mPhotoViewContainer.getWidth() - (MultiShrinkScroller.this.mMaximumTitleMargin * 2));
                }
                MultiShrinkScroller.this.calculateCollapsedLargeTitlePadding();
                MultiShrinkScroller.this.updateHeaderTextSizeAndMargin();
                MultiShrinkScroller.this.configureGradientViewHeights();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configureGradientViewHeights() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mActionBarGradientView.getLayoutParams();
        layoutParams.height = this.mActionBarSize;
        this.mActionBarGradientView.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mTitleGradientView.getLayoutParams();
        layoutParams2.height = (int) ((this.mMaximumHeaderTextSize + ((FrameLayout.LayoutParams) this.mTitleAndPhoneticNameView.getLayoutParams()).bottomMargin) * 1.25f);
        this.mTitleGradientView.setLayoutParams(layoutParams2);
    }

    public void setTitle(String str, boolean z) {
        this.mFullNameView.setText(str);
        if (z) {
            this.mFullNameView.setTextDirection(3);
        }
        this.mPhotoTouchInterceptOverlay.setContentDescription(str);
    }

    public void setPhoneticName(String str) {
        if (this.mPhoneticNameView.getVisibility() == 0 && str.equals(this.mPhoneticNameView.getText())) {
            return;
        }
        this.mPhoneticNameView.setText(str);
        this.mPhoneticNameView.setVisibility(0);
        initialize(this.mListener, this.mIsOpenContactSquare, (this.mMaximumFullNameViewHeight * this.mFullNameView.getLineCount()) + (this.mMaximumPhoneticNameViewHeight * this.mPhoneticNameView.getLineCount()), false);
    }

    public void setPhoneticNameGone() {
        if (this.mPhoneticNameView.getVisibility() == 8) {
            return;
        }
        this.mPhoneticNameView.setVisibility(8);
        initialize(this.mListener, this.mIsOpenContactSquare, this.mMaximumFullNameViewHeight * this.mFullNameView.getLineCount(), false);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        return shouldStartDrag(motionEvent);
    }

    private boolean shouldStartDrag(MotionEvent motionEvent) {
        if (!this.mIsTouchDisabledForDismissAnimation && !this.mIsTouchDisabledForSuppressLayout) {
            if (this.mIsBeingDragged) {
                this.mIsBeingDragged = false;
                return false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                updateLastEventPosition(motionEvent);
                if (!this.mScroller.isFinished()) {
                    startDrag();
                    return true;
                }
                this.mReceivedDown = true;
            } else if (action == 2 && motionShouldStartDrag(motionEvent)) {
                updateLastEventPosition(motionEvent);
                startDrag();
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003e, code lost:
    
        if (r0 != 3) goto L42;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            boolean r0 = r5.mIsTouchDisabledForDismissAnimation
            r1 = 1
            if (r0 != 0) goto L99
            boolean r0 = r5.mIsTouchDisabledForSuppressLayout
            if (r0 == 0) goto Lb
            goto L99
        Lb:
            int r0 = r6.getAction()
            android.view.VelocityTracker r2 = r5.mVelocityTracker
            if (r2 != 0) goto L19
            android.view.VelocityTracker r2 = android.view.VelocityTracker.obtain()
            r5.mVelocityTracker = r2
        L19:
            android.view.VelocityTracker r2 = r5.mVelocityTracker
            r2.addMovement(r6)
            boolean r2 = r5.mIsBeingDragged
            r3 = 0
            if (r2 != 0) goto L38
            boolean r6 = r5.shouldStartDrag(r6)
            if (r6 == 0) goto L2a
            return r1
        L2a:
            if (r0 != r1) goto L37
            boolean r6 = r5.mReceivedDown
            if (r6 == 0) goto L37
            r5.mReceivedDown = r3
            boolean r6 = r5.performClick()
            return r6
        L37:
            return r1
        L38:
            r2 = 3
            if (r0 == r1) goto L8f
            r4 = 2
            if (r0 == r4) goto L41
            if (r0 == r2) goto L8f
            goto L99
        L41:
            float r0 = r5.updatePositionAndComputeDelta(r6)
            int r2 = r5.getScroll()
            int r4 = (int) r0
            int r2 = r2 + r4
            r5.scrollTo(r3, r2)
            r5.mReceivedDown = r3
            boolean r2 = r5.mIsBeingDragged
            if (r2 == 0) goto L99
            int r2 = r5.getMaximumScrollUpwards()
            int r3 = r5.getScroll()
            int r2 = r2 - r3
            float r2 = (float) r2
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 <= 0) goto L7a
            android.widget.EdgeEffect r2 = r5.mEdgeGlowBottom
            int r3 = r5.getHeight()
            float r3 = (float) r3
            float r0 = r0 / r3
            r3 = 1065353216(0x3f800000, float:1.0)
            float r6 = r6.getX()
            int r4 = r5.getWidth()
            float r4 = (float) r4
            float r6 = r6 / r4
            float r3 = r3 - r6
            com.android.contacts.compat.EdgeEffectCompat.onPull(r2, r0, r3)
        L7a:
            android.widget.EdgeEffect r6 = r5.mEdgeGlowBottom
            boolean r6 = r6.isFinished()
            if (r6 != 0) goto L85
            r5.postInvalidateOnAnimation()
        L85:
            boolean r6 = r5.shouldDismissOnScroll()
            if (r6 == 0) goto L99
            r5.scrollOffBottom()
            goto L99
        L8f:
            if (r0 != r2) goto L93
            r6 = 1
            goto L94
        L93:
            r6 = 0
        L94:
            r5.stopDrag(r6)
            r5.mReceivedDown = r3
        L99:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.widget.MultiShrinkScroller.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setHeaderTintColor(int i) {
        this.mHeaderTintColor = i;
        updatePhotoTintAndDropShadow();
        if (CompatUtils.isLollipopCompatible()) {
            this.mEdgeGlowBottom.setColor((i & 16777215) | Color.argb(Color.alpha(this.mEdgeGlowBottom.getColor()), 0, 0, 0));
            this.mEdgeGlowTop.setColor(this.mEdgeGlowBottom.getColor());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expandHeader() {
        int headerHeight = getHeaderHeight();
        int i = this.mMaximumHeaderHeight;
        if (headerHeight != i) {
            ObjectAnimator ofInt = ObjectAnimator.ofInt(this, "headerHeight", i);
            ofInt.setDuration(300L);
            ofInt.start();
            if (this.mScrollView.getScrollY() != 0) {
                ScrollView scrollView = this.mScrollView;
                ObjectAnimator.ofInt(scrollView, "scrollY", -scrollView.getScrollY()).start();
            }
        }
    }

    private void startDrag() {
        this.mIsBeingDragged = true;
        this.mScroller.abortAnimation();
    }

    private void stopDrag(boolean z) {
        this.mIsBeingDragged = false;
        if (!z && getChildCount() > 0) {
            float currentVelocity = getCurrentVelocity();
            if (currentVelocity > this.mMinimumVelocity || currentVelocity < (-r1)) {
                fling(-currentVelocity);
                onDragFinished(this.mScroller.getFinalY() - this.mScroller.getStartY());
            } else {
                onDragFinished(0);
            }
        } else {
            onDragFinished(0);
        }
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
        this.mEdgeGlowBottom.onRelease();
    }

    private void onDragFinished(int i) {
        if (getTransparentViewHeight() > 0 && !snapToTopOnDragFinished(i)) {
            snapToBottomOnDragFinished();
        }
    }

    private boolean snapToTopOnDragFinished(int i) {
        if (!this.mHasEverTouchedTheTop) {
            if (getTransparentViewHeight() - i < (-this.mSnapToTopSlopHeight) || getTransparentViewHeight() > this.mTransparentStartHeight) {
                return false;
            }
            this.mScroller.forceFinished(true);
            smoothScrollBy(getTransparentViewHeight());
            return true;
        }
        if (getTransparentViewHeight() >= this.mDismissDistanceOnRelease) {
            return false;
        }
        this.mScroller.forceFinished(true);
        smoothScrollBy(getTransparentViewHeight());
        return true;
    }

    private void snapToBottomOnDragFinished() {
        if (this.mHasEverTouchedTheTop) {
            if (getTransparentViewHeight() > this.mDismissDistanceOnRelease) {
                scrollOffBottom();
            }
        } else if (getTransparentViewHeight() > this.mTransparentStartHeight) {
            scrollOffBottom();
        }
    }

    private boolean shouldDismissOnScroll() {
        return this.mHasEverTouchedTheTop && getTransparentViewHeight() > this.mDismissDistanceOnScroll;
    }

    public float getStartingTransparentHeightRatio() {
        return getTransparentHeightRatio(this.mTransparentStartHeight);
    }

    private float getTransparentHeightRatio(int i) {
        return 1.0f - Math.max(Math.min(1.0f, i / getHeight()), ContactPhotoManager.OFFSET_DEFAULT);
    }

    public void scrollOffBottom() {
        this.mIsTouchDisabledForDismissAnimation = true;
        AcceleratingFlingInterpolator acceleratingFlingInterpolator = new AcceleratingFlingInterpolator(250, getCurrentVelocity(), getScrollUntilOffBottom());
        this.mScroller.forceFinished(true);
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this, "scroll", getScroll() - getScrollUntilOffBottom());
        ofInt.setRepeatCount(0);
        ofInt.setInterpolator(acceleratingFlingInterpolator);
        ofInt.setDuration(250L);
        ofInt.addListener(this.mSnapToBottomListener);
        ofInt.start();
        MultiShrinkScrollerListener multiShrinkScrollerListener = this.mListener;
        if (multiShrinkScrollerListener != null) {
            multiShrinkScrollerListener.onStartScrollOffBottom();
        }
    }

    public void scrollUpForEntranceAnimation(boolean z) {
        int scroll = getScroll();
        int height = (scroll - (getHeight() - getTransparentViewHeight())) + 1;
        Interpolator loadInterpolator = AnimationUtils.loadInterpolator(getContext(), android.R.interpolator.linear_out_slow_in);
        final int transparentViewHeight = scroll + (z ? scroll : getTransparentViewHeight());
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this, "scroll", height, transparentViewHeight);
        ofInt.setInterpolator(loadInterpolator);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.contacts.widget.MultiShrinkScroller.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (!valueAnimator.getAnimatedValue().equals(Integer.valueOf(transparentViewHeight)) || MultiShrinkScroller.this.mListener == null) {
                    return;
                }
                MultiShrinkScroller.this.mListener.onEntranceAnimationDone();
            }
        });
        ofInt.start();
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        int scroll = i2 - getScroll();
        boolean z = getScrollNeededToBeFullScreen() <= 0;
        if (scroll > 0) {
            scrollUp(scroll);
        } else {
            scrollDown(scroll);
        }
        updatePhotoTintAndDropShadow();
        updateHeaderTextSizeAndMargin();
        boolean z2 = getScrollNeededToBeFullScreen() <= 0;
        this.mHasEverTouchedTheTop |= z2;
        MultiShrinkScrollerListener multiShrinkScrollerListener = this.mListener;
        if (multiShrinkScrollerListener != null) {
            if (z && !z2) {
                multiShrinkScrollerListener.onExitFullscreen();
            } else if (!z && z2) {
                this.mListener.onEnterFullscreen();
            }
            if (z2 && z) {
                return;
            }
            this.mListener.onTransparentViewHeightChange(getTransparentHeightRatio(getTransparentViewHeight()));
        }
    }

    public void setToolbarHeight(int i) {
        ViewGroup.LayoutParams layoutParams = this.mToolbar.getLayoutParams();
        layoutParams.height = i;
        this.mToolbar.setLayoutParams(layoutParams);
        updatePhotoTintAndDropShadow();
        updateHeaderTextSizeAndMargin();
    }

    public int getToolbarHeight() {
        return this.mToolbar.getLayoutParams().height;
    }

    public void setHeaderHeight(int i) {
        ViewGroup.LayoutParams layoutParams = this.mToolbar.getLayoutParams();
        layoutParams.height = i;
        this.mToolbar.setLayoutParams(layoutParams);
        updatePhotoTintAndDropShadow();
        updateHeaderTextSizeAndMargin();
    }

    public int getHeaderHeight() {
        return this.mToolbar.getLayoutParams().height;
    }

    public void setScroll(int i) {
        scrollTo(0, i);
    }

    public int getScroll() {
        return (((this.mTransparentStartHeight - getTransparentViewHeight()) + getMaximumScrollableHeaderHeight()) - getToolbarHeight()) + this.mScrollView.getScrollY();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMaximumScrollableHeaderHeight() {
        return this.mIsOpenContactSquare ? this.mMaximumHeaderHeight : this.mIntermediateHeaderHeight;
    }

    private int getScroll_ignoreOversizedHeaderForSnapping() {
        return (this.mTransparentStartHeight - getTransparentViewHeight()) + Math.max(getMaximumScrollableHeaderHeight() - getToolbarHeight(), 0) + this.mScrollView.getScrollY();
    }

    public int getScrollNeededToBeFullScreen() {
        return getTransparentViewHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getScrollUntilOffBottom() {
        return (getHeight() + getScroll_ignoreOversizedHeaderForSnapping()) - this.mTransparentStartHeight;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            int scroll = getScroll();
            scrollTo(0, this.mScroller.getCurrY());
            int currY = this.mScroller.getCurrY() - scroll;
            int maximumScrollUpwards = getMaximumScrollUpwards() - getScroll();
            if (currY > maximumScrollUpwards && maximumScrollUpwards > 0) {
                this.mEdgeGlowBottom.onAbsorb((int) this.mScroller.getCurrVelocity());
            }
            if (this.mIsFullscreenDownwardsFling && getTransparentViewHeight() > 0) {
                scrollTo(0, getScroll() + getTransparentViewHeight());
                this.mEdgeGlowTop.onAbsorb((int) this.mScroller.getCurrVelocity());
                this.mScroller.abortAnimation();
                this.mIsFullscreenDownwardsFling = false;
            }
            if (!awakenScrollBars()) {
                postInvalidateOnAnimation();
            }
            if (this.mScroller.getCurrY() >= getMaximumScrollUpwards()) {
                this.mScroller.abortAnimation();
                this.mIsFullscreenDownwardsFling = false;
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = getHeight();
        if (!this.mEdgeGlowBottom.isFinished()) {
            int save = canvas.save();
            canvas.translate((-width) + getPaddingLeft(), (getMaximumScrollUpwards() + height) - getScroll());
            canvas.rotate(180.0f, width, ContactPhotoManager.OFFSET_DEFAULT);
            if (this.mIsTwoPanel) {
                this.mEdgeGlowBottom.setSize(this.mScrollView.getWidth(), height);
                if (getLayoutDirection() == 1) {
                    canvas.translate(this.mPhotoViewContainer.getWidth(), ContactPhotoManager.OFFSET_DEFAULT);
                }
            } else {
                this.mEdgeGlowBottom.setSize(width, height);
            }
            if (this.mEdgeGlowBottom.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save);
        }
        if (this.mEdgeGlowTop.isFinished()) {
            return;
        }
        int save2 = canvas.save();
        if (this.mIsTwoPanel) {
            this.mEdgeGlowTop.setSize(this.mScrollView.getWidth(), height);
            if (getLayoutDirection() != 1) {
                canvas.translate(this.mPhotoViewContainer.getWidth(), ContactPhotoManager.OFFSET_DEFAULT);
            }
        } else {
            this.mEdgeGlowTop.setSize(width, height);
        }
        if (this.mEdgeGlowTop.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(save2);
    }

    private float getCurrentVelocity() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            return ContactPhotoManager.OFFSET_DEFAULT;
        }
        velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
        return this.mVelocityTracker.getYVelocity();
    }

    private void fling(float f) {
        this.mScroller.fling(0, getScroll(), 0, (int) f, 0, 0, -2147483647, Integer.MAX_VALUE);
        if (f < ContactPhotoManager.OFFSET_DEFAULT && this.mTransparentView.getHeight() <= 0) {
            this.mIsFullscreenDownwardsFling = true;
        }
        invalidate();
    }

    private int getMaximumScrollUpwards() {
        int i;
        int max;
        if (!this.mIsTwoPanel) {
            i = (this.mTransparentStartHeight + getMaximumScrollableHeaderHeight()) - getFullyCompressedHeaderHeight();
            max = Math.max(0, (this.mScrollViewChild.getHeight() - getHeight()) + getFullyCompressedHeaderHeight());
        } else {
            i = this.mTransparentStartHeight;
            max = Math.max(0, this.mScrollViewChild.getHeight() - getHeight());
        }
        return i + max;
    }

    private int getTransparentViewHeight() {
        return this.mTransparentView.getLayoutParams().height;
    }

    private void setTransparentViewHeight(int i) {
        this.mTransparentView.getLayoutParams().height = i;
        View view = this.mTransparentView;
        view.setLayoutParams(view.getLayoutParams());
    }

    private void scrollUp(int i) {
        if (getTransparentViewHeight() != 0) {
            int transparentViewHeight = getTransparentViewHeight();
            setTransparentViewHeight(getTransparentViewHeight() - i);
            setTransparentViewHeight(Math.max(0, getTransparentViewHeight()));
            i -= transparentViewHeight - getTransparentViewHeight();
        }
        ViewGroup.LayoutParams layoutParams = this.mToolbar.getLayoutParams();
        if (layoutParams.height > getFullyCompressedHeaderHeight()) {
            int i2 = layoutParams.height;
            int i3 = i2 - i;
            layoutParams.height = i3;
            layoutParams.height = Math.max(i3, getFullyCompressedHeaderHeight());
            this.mToolbar.setLayoutParams(layoutParams);
            i -= i2 - layoutParams.height;
        }
        this.mScrollView.scrollBy(0, i);
    }

    private int getFullyCompressedHeaderHeight() {
        return Math.min(Math.max(this.mToolbar.getLayoutParams().height - getOverflowingChildViewSize(), this.mMinimumHeaderHeight), getMaximumScrollableHeaderHeight());
    }

    private int getOverflowingChildViewSize() {
        return (-getHeight()) + this.mScrollViewChild.getHeight() + this.mToolbar.getLayoutParams().height;
    }

    private void scrollDown(int i) {
        if (this.mScrollView.getScrollY() > 0) {
            int scrollY = this.mScrollView.getScrollY();
            this.mScrollView.scrollBy(0, i);
            i -= this.mScrollView.getScrollY() - scrollY;
        }
        ViewGroup.LayoutParams layoutParams = this.mToolbar.getLayoutParams();
        if (layoutParams.height < getMaximumScrollableHeaderHeight()) {
            int i2 = layoutParams.height;
            int i3 = i2 - i;
            layoutParams.height = i3;
            layoutParams.height = Math.min(i3, getMaximumScrollableHeaderHeight());
            this.mToolbar.setLayoutParams(layoutParams);
            i -= i2 - layoutParams.height;
        }
        setTransparentViewHeight(getTransparentViewHeight() - i);
        if (getScrollUntilOffBottom() <= 0) {
            post(new Runnable() { // from class: com.android.contacts.widget.MultiShrinkScroller.8
                @Override // java.lang.Runnable
                public void run() {
                    if (MultiShrinkScroller.this.mListener != null) {
                        MultiShrinkScroller.this.mListener.onScrolledOffBottom();
                        MultiShrinkScroller.this.mListener = null;
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeaderTextSizeAndMargin() {
        if (this.mIsTwoPanel) {
            return;
        }
        if (getLayoutDirection() == 1) {
            this.mTitleAndPhoneticNameView.setPivotX(r0.getWidth());
        } else {
            this.mTitleAndPhoneticNameView.setPivotX(ContactPhotoManager.OFFSET_DEFAULT);
        }
        this.mTitleAndPhoneticNameView.setPivotY(this.mMaximumHeaderTextSize / 2);
        int i = this.mToolbar.getLayoutParams().height;
        this.mPhotoTouchInterceptOverlay.setClickable(i != this.mMaximumHeaderHeight);
        if (i >= this.mMaximumHeaderHeight) {
            this.mTitleAndPhoneticNameView.setScaleX(1.0f);
            this.mTitleAndPhoneticNameView.setScaleY(1.0f);
            setInterpolatedTitleMargins(1.0f);
            return;
        }
        int i2 = this.mMinimumHeaderHeight;
        float f = (i - i2) / (r1 - i2);
        float height = this.mInvisiblePlaceholderTextView.getHeight();
        float interpolation = this.mTextSizePathInterpolator.getInterpolation(f);
        int i3 = this.mMaximumHeaderTextSize;
        float f2 = (height + ((i3 - height) * interpolation)) / i3;
        float min = Math.min(interpolation, 1.0f);
        float min2 = Math.min(f2, 1.0f);
        this.mTitleAndPhoneticNameView.setScaleX(min2);
        this.mTitleAndPhoneticNameView.setScaleY(min2);
        setInterpolatedTitleMargins(min);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void calculateCollapsedLargeTitlePadding() {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        this.mInvisiblePlaceholderTextView.getLocationOnScreen(iArr);
        this.mToolbar.getLocationOnScreen(iArr2);
        this.mCollapsedTitleBottomMargin = ((iArr[1] + (this.mInvisiblePlaceholderTextView.getHeight() / 2)) - iArr2[1]) - (this.mMaximumHeaderTextSize / 2);
    }

    private void setInterpolatedTitleMargins(float f) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mTitleAndPhoneticNameView.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mToolbar.getLayoutParams();
        View view = this.mStartColumn;
        float f2 = 1.0f - f;
        layoutParams.setMarginStart(((int) ((this.mCollapsedTitleStartMargin * f2) + (this.mMaximumTitleMargin * f))) + (view == null ? 0 : view.getWidth()));
        layoutParams.topMargin = ((getTransparentViewHeight() + layoutParams2.height) - ((int) ((this.mCollapsedTitleBottomMargin * f2) + (this.mMaximumTitleMargin * f)))) - this.mMaximumHeaderTextSize;
        layoutParams.bottomMargin = 0;
        this.mTitleAndPhoneticNameView.setLayoutParams(layoutParams);
    }

    private void updatePhotoTintAndDropShadow() {
        Trace.beginSection("updatePhotoTintAndDropShadow");
        this.mPhotoView.setTint(this.mHeaderTintColor);
        if (this.mIsTwoPanel && !this.mPhotoView.isBasedOffLetterTile()) {
            this.mTitleGradientDrawable.setAlpha(255);
            this.mActionBarGradientDrawable.setAlpha(255);
            return;
        }
        int toolbarHeight = getToolbarHeight();
        if (toolbarHeight <= this.mMinimumHeaderHeight && !this.mIsTwoPanel) {
            ViewCompat.setElevation(this.mPhotoViewContainer, this.mToolbarElevation);
        } else {
            ViewCompat.setElevation(this.mPhotoViewContainer, ContactPhotoManager.OFFSET_DEFAULT);
        }
        this.mPhotoView.clearColorFilter();
        this.mColorMatrix.reset();
        int i = 0;
        if (!this.mPhotoView.isBasedOffLetterTile()) {
            double calculateHeightRatioToBlendingStartHeight = calculateHeightRatioToBlendingStartHeight(toolbarHeight);
            float min = 1.0f - ((float) Math.min(Math.pow(calculateHeightRatioToBlendingStartHeight, 1.5d) * 2.0d, 1.0d));
            float min2 = (float) Math.min(Math.pow(calculateHeightRatioToBlendingStartHeight, 1.5d) * 3.0d, 1.0d);
            this.mColorMatrix.setSaturation(min);
            this.mColorMatrix.postConcat(alphaMatrix(min, -1));
            this.mColorMatrix.postConcat(multiplyBlendMatrix(this.mHeaderTintColor, min2));
            i = (int) (min * 255.0f);
        } else if (this.mIsTwoPanel) {
            this.mColorMatrix.reset();
            this.mColorMatrix.postConcat(alphaMatrix(0.8f, this.mHeaderTintColor));
        } else {
            float calculateHeightRatioToFullyOpen = calculateHeightRatioToFullyOpen(toolbarHeight);
            float calculateHeightRatioToFullyOpen2 = calculateHeightRatioToFullyOpen((int) (this.mMaximumPortraitHeaderHeight * 0.6f));
            this.mColorMatrix.postConcat(alphaMatrix(1.0f - ((float) Math.pow(Math.max(1.0f - (((1.0f - calculateHeightRatioToFullyOpen) / calculateHeightRatioToFullyOpen2) / ((float) (((1.0f - calculateHeightRatioToFullyOpen2) / calculateHeightRatioToFullyOpen2) / (1.0d - Math.pow(0.19999998807907104d, 0.3333333432674408d))))), ContactPhotoManager.OFFSET_DEFAULT), 3.0d)), this.mHeaderTintColor));
        }
        this.mPhotoView.setColorFilter(new ColorMatrixColorFilter(this.mColorMatrix));
        this.mTitleGradientDrawable.setAlpha(i);
        this.mActionBarGradientDrawable.setAlpha(i);
        Trace.endSection();
    }

    private float calculateHeightRatioToFullyOpen(int i) {
        int i2 = this.mMinimumPortraitHeaderHeight;
        return (i - i2) / (this.mMaximumPortraitHeaderHeight - i2);
    }

    private float calculateHeightRatioToBlendingStartHeight(int i) {
        float f = this.mMaximumPortraitHeaderHeight * 0.5f;
        float f2 = i;
        return f2 > f ? ContactPhotoManager.OFFSET_DEFAULT : (f - f2) / (f - this.mMinimumPortraitHeaderHeight);
    }

    private ColorMatrix alphaMatrix(float f, int i) {
        this.mAlphaMatrixValues[0] = (Color.red(i) * f) / 255.0f;
        this.mAlphaMatrixValues[6] = (Color.green(i) * f) / 255.0f;
        this.mAlphaMatrixValues[12] = (Color.blue(i) * f) / 255.0f;
        float[] fArr = this.mAlphaMatrixValues;
        float f2 = (1.0f - f) * 255.0f;
        fArr[4] = f2;
        fArr[9] = f2;
        fArr[14] = f2;
        this.mWhitenessColorMatrix.set(fArr);
        return this.mWhitenessColorMatrix;
    }

    private ColorMatrix multiplyBlendMatrix(int i, float f) {
        this.mMultiplyBlendMatrixValues[0] = multiplyBlend(Color.red(i), f);
        this.mMultiplyBlendMatrixValues[6] = multiplyBlend(Color.green(i), f);
        this.mMultiplyBlendMatrixValues[12] = multiplyBlend(Color.blue(i), f);
        this.mMultiplyBlendMatrix.set(this.mMultiplyBlendMatrixValues);
        return this.mMultiplyBlendMatrix;
    }

    private void updateLastEventPosition(MotionEvent motionEvent) {
        this.mLastEventPosition[0] = motionEvent.getX();
        this.mLastEventPosition[1] = motionEvent.getY();
    }

    private boolean motionShouldStartDrag(MotionEvent motionEvent) {
        float y = motionEvent.getY() - this.mLastEventPosition[1];
        int i = this.mTouchSlop;
        return y > ((float) i) || y < ((float) (-i));
    }

    private float updatePositionAndComputeDelta(MotionEvent motionEvent) {
        float f = this.mLastEventPosition[1];
        updateLastEventPosition(motionEvent);
        float f2 = 1.0f;
        if (f < this.mLastEventPosition[1] && this.mHasEverTouchedTheTop) {
            f2 = 1.0f + (this.mTransparentView.getHeight() * 0.01f);
        }
        return (f - this.mLastEventPosition[1]) / f2;
    }

    private void smoothScrollBy(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Smooth scrolling by delta=0 is pointless and harmful");
        }
        this.mScroller.startScroll(0, getScroll(), 0, i);
        invalidate();
    }

    private class AcceleratingFlingInterpolator implements Interpolator {
        private final float mDurationMs;
        private final float mNumberFrames;
        private final int mPixelsDelta;
        private final float mStartingSpeedPixelsPerFrame;

        public AcceleratingFlingInterpolator(int i, float f, int i2) {
            this.mStartingSpeedPixelsPerFrame = f / getRefreshRate();
            float f2 = i;
            this.mDurationMs = f2;
            this.mPixelsDelta = i2;
            this.mNumberFrames = f2 / getFrameIntervalMs();
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = this.mNumberFrames * f;
            float f3 = this.mStartingSpeedPixelsPerFrame;
            float f4 = (f2 * f3) / this.mPixelsDelta;
            if (f3 > ContactPhotoManager.OFFSET_DEFAULT) {
                return Math.min((f * f) + f4, 1.0f);
            }
            return Math.min((f * (f - f4)) + f4, 1.0f);
        }

        private float getRefreshRate() {
            return ((DisplayManager) MultiShrinkScroller.this.getContext().getSystemService("display")).getDisplay(0).getRefreshRate();
        }

        public long getFrameIntervalMs() {
            return (long) (1000.0f / getRefreshRate());
        }
    }

    public void prepareForShrinkingScrollChild(int i) {
        int i2 = (-getOverflowingChildViewSize()) + i;
        if (i2 <= 0 || this.mIsTwoPanel) {
            return;
        }
        ObjectAnimator.ofInt(this, "toolbarHeight", Math.min(getToolbarHeight() + i2, getMaximumScrollableHeaderHeight())).setDuration(300L).start();
    }

    public void setDisableTouchesForSuppressLayout(boolean z) {
        this.mIsTouchDisabledForSuppressLayout = z;
    }
}
