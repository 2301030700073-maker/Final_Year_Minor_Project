.class public Lcom/android/contacts/widget/MultiShrinkScroller;
.super Landroid/widget/FrameLayout;
.source "MultiShrinkScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;,
        Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    }
.end annotation


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mActionBarGradientView:Landroid/view/View;

.field private final mActionBarSize:I

.field private final mAlphaMatrixValues:[F

.field private mCollapsedTitleBottomMargin:I

.field private mCollapsedTitleStartMargin:I

.field private final mColorMatrix:Landroid/graphics/ColorMatrix;

.field private final mDismissDistanceOnRelease:I

.field private final mDismissDistanceOnScroll:I

.field private final mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private final mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFullNameView:Landroid/widget/TextView;

.field private final mGradientColors:[I

.field private mHasEverTouchedTheTop:Z

.field private mHeaderTintColor:I

.field private mIntermediateHeaderHeight:I

.field private mInvisiblePlaceholderTextView:Landroid/widget/TextView;

.field private mIsBeingDragged:Z

.field private mIsFullscreenDownwardsFling:Z

.field private mIsOpenContactSquare:Z

.field private mIsTouchDisabledForDismissAnimation:Z

.field private mIsTouchDisabledForSuppressLayout:Z

.field private final mIsTwoPanel:Z

.field private final mLandscapePhotoRatio:F

.field private mLastEventPosition:[F

.field private mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

.field private mMaximumFullNameViewHeight:I

.field private mMaximumHeaderHeight:I

.field private mMaximumHeaderTextSize:I

.field private mMaximumPhoneticNameViewHeight:I

.field private mMaximumPortraitHeaderHeight:I

.field private final mMaximumTitleMargin:I

.field private final mMaximumVelocity:I

.field private mMinimumHeaderHeight:I

.field private mMinimumPortraitHeaderHeight:I

.field private final mMinimumVelocity:I

.field private final mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

.field private final mMultiplyBlendMatrixValues:[F

.field private mPhoneticNameView:Landroid/widget/TextView;

.field private mPhotoTouchInterceptOverlay:Landroid/view/View;

.field private mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

.field private mPhotoViewContainer:Landroid/view/View;

.field private mReceivedDown:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mScrollViewChild:Landroid/view/View;

.field private final mScroller:Landroid/widget/Scroller;

.field private final mSnapToBottomListener:Landroid/animation/Animator$AnimatorListener;

.field private final mSnapToTopSlopHeight:I

.field private mStartColumn:Landroid/view/View;

.field private final mTextSizePathInterpolator:Landroid/view/animation/Interpolator;

.field private mTitleAndPhoneticNameView:Landroid/view/View;

.field private mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTitleGradientView:Landroid/view/View;

.field private mToolbar:Landroid/view/View;

.field private final mToolbarElevation:F

.field private final mTouchSlop:I

.field private final mTransparentStartHeight:I

.field private mTransparentView:Landroid/view/View;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    new-instance v0, Lcom/android/contacts/widget/MultiShrinkScroller$2;

    invoke-direct {v0}, Lcom/android/contacts/widget/MultiShrinkScroller$2;-><init>()V

    sput-object v0, Lcom/android/contacts/widget/MultiShrinkScroller;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 246
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    new-array p3, p2, [F

    .line 97
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    const/4 p3, 0x0

    .line 99
    iput-boolean p3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    .line 100
    iput-boolean p3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    .line 104
    iput-boolean p3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsFullscreenDownwardsFling:Z

    .line 169
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;

    .line 170
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    const/16 v0, 0x14

    new-array v1, v0, [F

    .line 171
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    .line 177
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

    new-array v0, v0, [F

    .line 178
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    const v0, 0x3e23d70a    # 0.16f

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 186
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTextSizePathInterpolator:Landroid/view/animation/Interpolator;

    new-array p2, p2, [I

    .line 188
    fill-array-data p2, :array_3

    iput-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mGradientColors:[I

    .line 189
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mGradientColors:[I

    invoke-direct {p2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 191
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mGradientColors:[I

    invoke-direct {p2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 208
    new-instance p2, Lcom/android/contacts/widget/MultiShrinkScroller$1;

    invoke-direct {p2, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$1;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    iput-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mSnapToBottomListener:Landroid/animation/Animator$AnimatorListener;

    .line 248
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 249
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 251
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 253
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 254
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 255
    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Lcom/android/contacts/widget/MultiShrinkScroller;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    .line 256
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    .line 257
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumVelocity:I

    .line 258
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumVelocity:I

    .line 259
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701bf

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701ae

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarElevation:F

    .line 263
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050010

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    .line 264
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701c5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    .line 267
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701b4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mDismissDistanceOnScroll:I

    .line 269
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701b3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mDismissDistanceOnRelease:I

    .line 271
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701be

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mSnapToTopSlopHeight:I

    .line 274
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 275
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701bb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 277
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLandscapePhotoRatio:F

    new-array p2, v2, [I

    const v0, 0x10102eb

    aput v0, p2, p3

    .line 279
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 281
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarSize:I

    .line 282
    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    .line 285
    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumPortraitHeaderHeight:I

    .line 286
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x78000000
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/contacts/widget/MultiShrinkScroller;Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumFullNameViewHeight:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumFullNameViewHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mFullNameView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPhoneticNameViewHeight:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/widget/MultiShrinkScroller;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLandscapePhotoRatio:F

    return p0
.end method

.method static synthetic access$1600(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhoneticNameView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->calculateCollapsedLargeTitlePadding()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->expandHeader()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->configureGradientViewHeights()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/widget/MultiShrinkScroller;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIntermediateHeaderHeight:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$902(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    return p1
.end method

.method private alphaMatrix(FI)Landroid/graphics/ColorMatrix;
    .locals 4

    .line 1240
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 1241
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    div-float/2addr v1, v2

    const/4 v3, 0x6

    aput v1, v0, v3

    .line 1242
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    div-float/2addr p2, v2

    const/16 v1, 0xc

    aput p2, v0, v1

    .line 1243
    iget-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v0, v0, v2

    const/4 p1, 0x4

    aput v0, p2, p1

    const/16 p1, 0x9

    .line 1244
    aput v0, p2, p1

    const/16 p1, 0xe

    .line 1245
    aput v0, p2, p1

    .line 1246
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p1, p2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1247
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;

    return-object p1
.end method

.method private calculateCollapsedLargeTitlePadding()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    .line 1101
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mInvisiblePlaceholderTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1102
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    .line 1104
    aget v1, v1, v3

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mInvisiblePlaceholderTextView:Landroid/widget/TextView;

    .line 1105
    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v1, v4

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 1109
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    div-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleBottomMargin:I

    return-void
.end method

.method private calculateHeightRatioToBlendingStartHeight(I)F
    .locals 3

    .line 1227
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 1229
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumPortraitHeaderHeight:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    int-to-float p1, p1

    cmpl-float v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-float/2addr v0, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private calculateHeightRatioToFullyOpen(I)F
    .locals 2

    .line 1222
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumPortraitHeaderHeight:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    return p1
.end method

.method private configureGradientViewHeights()V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    .line 404
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarSize:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 406
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 410
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    .line 411
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 412
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 414
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private expandHeader()V
    .locals 6

    .line 578
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeaderHeight()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const-string v1, "headerHeight"

    .line 579
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    .line 581
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 582
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 584
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    new-array v0, v0, [I

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    aput v2, v0, v3

    const-string v2, "scrollY"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private fling(F)V
    .locals 9

    .line 949
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v2

    float-to-int v4, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 951
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 952
    iput-boolean p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsFullscreenDownwardsFling:Z

    .line 954
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private getCurrentVelocity()F
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0x3e8

    .line 942
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 943
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method private getFullyCompressedHeaderHeight()I
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getOverflowingChildViewSize()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1007
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    .line 1006
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getMaximumScrollUpwards()I
    .locals 4

    .line 958
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 959
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    .line 961
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    .line 963
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 964
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 963
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 966
    :cond_0
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    .line 968
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private getMaximumScrollableHeaderHeight()I
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsOpenContactSquare:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIntermediateHeaderHeight:I

    :goto_0
    return v0
.end method

.method private getOverflowingChildViewSize()I
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1015
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getScrollUntilOffBottom()I
    .locals 2

    .line 854
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll_ignoreOversizedHeaderForSnapping()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScroll_ignoreOversizedHeaderForSnapping()I
    .locals 3

    .line 837
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 838
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    .line 839
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTransparentHeightRatio(I)F
    .locals 2

    int-to-float p1, p1

    .line 691
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 693
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method private getTransparentViewHeight()I
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method private motionShouldStartDrag(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-float/2addr p1, v0

    .line 1274
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    int-to-float v2, v0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_1

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private multiplyBlend(IF)F
    .locals 1

    int-to-float p1, p1

    mul-float p1, p1, p2

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    add-float/2addr p1, v0

    return p1
.end method

.method private multiplyBlendMatrix(IF)Landroid/graphics/ColorMatrix;
    .locals 3

    .line 1256
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlend(IF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1257
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlend(IF)F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 1258
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlend(IF)F

    move-result p1

    const/16 p2, 0xc

    aput p1, v0, p2

    .line 1259
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

    iget-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    invoke-virtual {p1, p2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1260
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

    return-object p1
.end method

.method private onDragFinished(I)V
    .locals 1

    .line 618
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 622
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->snapToTopOnDragFinished(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 625
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->snapToBottomOnDragFinished()V

    :cond_1
    return-void
.end method

.method private scrollDown(I)V
    .locals 4

    .line 1019
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 1021
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1022
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1025
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1026
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v2, v1, p1

    .line 1027
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1029
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v3

    .line 1028
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1030
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 1033
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTransparentViewHeight(I)V

    .line 1035
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result p1

    if-gtz p1, :cond_2

    .line 1036
    new-instance p1, Lcom/android/contacts/widget/MultiShrinkScroller$8;

    invoke-direct {p1, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$8;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private scrollUp(I)V
    .locals 5

    .line 982
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 983
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    .line 984
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTransparentViewHeight(I)V

    .line 985
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTransparentViewHeight(I)V

    .line 986
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr p1, v0

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    .line 989
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 990
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 991
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v3, v2, p1

    .line 992
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 994
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v4

    .line 993
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 995
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v0

    sub-int/2addr p1, v2

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    return-void
.end method

.method private setInterpolatedTitleMargins(F)V
    .locals 7

    .line 1118
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    .line 1119
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1120
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    .line 1121
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1124
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1126
    :goto_0
    iget v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleStartMargin:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    mul-float v4, v4, v5

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    int-to-float v6, v6

    mul-float v6, v6, p1

    add-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1129
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleBottomMargin:I

    int-to-float v2, v2

    mul-float v2, v2, v5

    iget v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    int-to-float v4, v4

    mul-float v4, v4, p1

    add-float/2addr v2, v4

    float-to-int p1, v2

    .line 1135
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p1

    iget p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1138
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1139
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTransparentViewHeight(I)V
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 978
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private shouldDismissOnScroll()Z
    .locals 2

    .line 680
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mDismissDistanceOnScroll:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldStartDrag(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 469
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTouchDisabledForDismissAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTouchDisabledForSuppressLayout:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    .line 473
    iput-boolean v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    return v1

    .line 477
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 493
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->motionShouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 494
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateLastEventPosition(Landroid/view/MotionEvent;)V

    .line 495
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->startDrag()V

    return v2

    .line 481
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateLastEventPosition(Landroid/view/MotionEvent;)V

    .line 482
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 483
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->startDrag()V

    return v2

    .line 486
    :cond_4
    iput-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    :cond_5
    :goto_0
    return v1
.end method

.method private smoothScrollBy(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1298
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    .line 1294
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Smooth scrolling by delta=0 is pointless and harmful"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private snapToBottomOnDragFinished()V
    .locals 2

    .line 664
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    if-eqz v0, :cond_1

    .line 665
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mDismissDistanceOnRelease:I

    if-le v0, v1, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    :cond_0
    return-void

    .line 670
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    if-le v0, v1, :cond_2

    .line 671
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    :cond_2
    return-void
.end method

.method private snapToTopOnDragFinished(I)Z
    .locals 3

    .line 635
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 639
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float p1, v0

    .line 640
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mSnapToTopSlopHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return v1

    .line 644
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result p1

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    if-gt p1, v0, :cond_1

    .line 646
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 647
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->smoothScrollBy(I)V

    return v2

    :cond_1
    return v1

    .line 652
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result p1

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mDismissDistanceOnRelease:I

    if-ge p1, v0, :cond_3

    .line 653
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 654
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->smoothScrollBy(I)V

    return v2

    :cond_3
    return v1
.end method

.method private startDrag()V
    .locals 1

    const/4 v0, 0x1

    .line 591
    iput-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    .line 592
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method private stopDrag(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    if-nez p1, :cond_2

    .line 597
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 598
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getCurrentVelocity()F

    move-result p1

    .line 599
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumVelocity:I

    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->onDragFinished(I)V

    goto :goto_1

    :cond_1
    :goto_0
    neg-float p1, p1

    .line 600
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->fling(F)V

    .line 601
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->onDragFinished(I)V

    goto :goto_1

    .line 606
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->onDragFinished(I)V

    .line 609
    :goto_1
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    .line 610
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 611
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 614
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    return-void
.end method

.method private updateHeaderTextSizeAndMargin()V
    .locals 5

    .line 1053
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v0, :cond_0

    return-void

    .line 1059
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 1064
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1066
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1067
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1069
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_3

    .line 1071
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1072
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1073
    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setInterpolatedTitleMargins(F)V

    return-void

    .line 1077
    :cond_3
    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1079
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mInvisiblePlaceholderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1080
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTextSizePathInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 1081
    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    int-to-float v4, v3

    sub-float/2addr v4, v1

    mul-float v4, v4, v0

    add-float/2addr v1, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 1086
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1087
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1089
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1090
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1091
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->setInterpolatedTitleMargins(F)V

    return-void
.end method

.method private updateLastEventPosition(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1268
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1269
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method private updatePhotoTintAndDropShadow()V
    .locals 15

    const-string v0, "updatePhotoTintAndDropShadow"

    .line 1144
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/QuickContactImageView;->setTint(I)V

    .line 1150
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v0}, Lcom/android/contacts/widget/QuickContactImageView;->isBasedOffLetterTile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    return-void

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v0

    .line 1162
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez v1, :cond_1

    .line 1163
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarElevation:F

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 1165
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1169
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 1170
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    .line 1173
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v1}, Lcom/android/contacts/widget/QuickContactImageView;->isBasedOffLetterTile()Z

    move-result v1

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    .line 1183
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->calculateHeightRatioToBlendingStartHeight(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 1184
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v11

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    double-to-float v9, v9

    sub-float/2addr v8, v9

    .line 1185
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1186
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1187
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    const/4 v2, -0x1

    invoke-direct {p0, v8, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->alphaMatrix(FI)Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 1188
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    invoke-direct {p0, v2, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlendMatrix(IF)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v8, v8, v0

    float-to-int v3, v8

    goto :goto_1

    .line 1190
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v1, :cond_3

    .line 1191
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 1192
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    const v1, 0x3f4ccccd    # 0.8f

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->alphaMatrix(FI)Landroid/graphics/ColorMatrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_1

    .line 1199
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->calculateHeightRatioToFullyOpen(I)F

    move-result v0

    .line 1200
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I

    int-to-float v1, v1

    const v9, 0x3f19999a    # 0.6f

    mul-float v1, v1, v9

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->calculateHeightRatioToFullyOpen(I)F

    move-result v1

    sub-float v9, v8, v1

    div-float/2addr v9, v1

    float-to-double v9, v9

    const-wide v11, 0x3fc9999980000000L    # 0.19999998807907104

    const-wide v13, 0x3fd5555560000000L    # 0.3333333432674408

    .line 1204
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    sub-double/2addr v6, v11

    div-double/2addr v9, v6

    double-to-float v6, v9

    sub-float v0, v8, v0

    div-float/2addr v0, v1

    div-float/2addr v0, v6

    sub-float v0, v8, v0

    .line 1205
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    .line 1207
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v8, v0

    .line 1208
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    invoke-direct {p0, v8, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->alphaMatrix(FI)Landroid/graphics/ColorMatrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 1213
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1215
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1216
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1218
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private updatePositionAndComputeDelta(Landroid/view/MotionEvent;)F
    .locals 4

    .line 1279
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 1280
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateLastEventPosition(Landroid/view/MotionEvent;)V

    .line 1282
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    aget p1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    if-eqz p1, :cond_0

    .line 1285
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3c23d70a    # 0.01f

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    .line 1287
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    aget p1, p1, v1

    sub-float/2addr v0, p1

    div-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 860
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 862
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v0

    .line 863
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollTo(II)V

    .line 864
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v1, v0

    .line 865
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v3

    sub-int/2addr v0, v3

    if-le v1, v0, :cond_0

    if-lez v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 869
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsFullscreenDownwardsFling:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 871
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollTo(II)V

    .line 872
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 873
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 874
    iput-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsFullscreenDownwardsFling:Z

    .line 876
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_2

    .line 878
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    .line 880
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 882
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 883
    iput-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsFullscreenDownwardsFling:Z

    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 890
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 892
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 893
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 895
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 896
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    neg-int v5, v0

    .line 902
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 903
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 902
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, 0x43340000    # 180.0f

    int-to-float v6, v0

    .line 905
    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 906
    iget-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v5, :cond_0

    .line 908
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 909
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 910
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 913
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 915
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 916
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    .line 918
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 921
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_7

    .line 922
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 923
    iget-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v5, :cond_4

    .line 924
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v0, v5, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 925
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 926
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 929
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v0, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 931
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 932
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    .line 934
    :cond_6
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    return-void
.end method

.method public getHeaderHeight()I
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getScroll()I
    .locals 2

    .line 816
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 817
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    .line 818
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getScrollNeededToBeFullScreen()I
    .locals 1

    .line 846
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    return v0
.end method

.method public getStartingTransparentHeightRatio()F
    .locals 1

    .line 687
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentHeightRatio(I)F

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;ZIZ)V
    .locals 2

    const v0, 0x7f09008c

    .line 294
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    const v0, 0x7f090069

    .line 295
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    const v0, 0x7f0901ee

    .line 296
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    .line 297
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    const v0, 0x7f0901f8

    .line 298
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    const v0, 0x7f09011b

    .line 299
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mFullNameView:Landroid/widget/TextView;

    const v0, 0x7f09016e

    .line 300
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhoneticNameView:Landroid/widget/TextView;

    const v0, 0x7f0901e8

    .line 301
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleAndPhoneticNameView:Landroid/view/View;

    const v0, 0x7f090176

    .line 302
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mInvisiblePlaceholderTextView:Landroid/widget/TextView;

    const v0, 0x7f0900db

    .line 303
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 306
    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$3;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900d2

    .line 312
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$4;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    .line 320
    iput-boolean p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsOpenContactSquare:Z

    const p1, 0x7f09016f

    .line 322
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/widget/QuickContactImageView;

    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    const p1, 0x7f0901e9

    .line 324
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    .line 325
    iget-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f09003a

    .line 326
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    .line 327
    iget-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0901ec

    .line 328
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleStartMargin:I

    const p1, 0x7f090173

    .line 330
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    .line 331
    iget-boolean p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez p2, :cond_1

    .line 332
    new-instance p2, Lcom/android/contacts/widget/MultiShrinkScroller$5;

    invoke-direct {p2, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$5;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 p1, 0x0

    .line 340
    new-instance p2, Lcom/android/contacts/widget/MultiShrinkScroller$6;

    invoke-direct {p2, p0, p4, p3}, Lcom/android/contacts/widget/MultiShrinkScroller$6;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;ZI)V

    invoke-static {p0, p1, p2}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 460
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 465
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->shouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 506
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTouchDisabledForDismissAnimation:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTouchDisabledForSuppressLayout:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 508
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 510
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 511
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 515
    iget-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 516
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->shouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 520
    iget-boolean p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    if-eqz p1, :cond_3

    .line 521
    iput-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    .line 522
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result p1

    return p1

    :cond_3
    return v1

    :cond_4
    const/4 v2, 0x3

    if-eq v0, v1, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_8

    goto :goto_1

    .line 529
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePositionAndComputeDelta(Landroid/view/MotionEvent;)F

    move-result v0

    .line 530
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v2

    float-to-int v4, v0

    add-int/2addr v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollTo(II)V

    .line 531
    iput-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    .line 533
    iget-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    if-eqz v2, :cond_a

    .line 534
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    .line 538
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    .line 538
    invoke-static {v2, v0, v3}, Lcom/android/contacts/compat/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 542
    :cond_6
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    .line 543
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    .line 546
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->shouldDismissOnScroll()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 547
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    goto :goto_1

    :cond_8
    if-ne v0, v2, :cond_9

    const/4 p1, 0x1

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    .line 555
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->stopDrag(Z)V

    .line 556
    iput-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    :cond_a
    :goto_1
    return v1
.end method

.method public prepareForShrinkingScrollChild(I)V
    .locals 2

    .line 1355
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getOverflowingChildViewSize()I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 1356
    iget-boolean p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez p1, :cond_0

    .line 1357
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result p1

    add-int/2addr p1, v0

    .line 1358
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v0

    .line 1357
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "toolbarHeight"

    .line 1359
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1360
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public scrollOffBottom()V
    .locals 5

    const/4 v0, 0x1

    .line 697
    iput-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTouchDisabledForDismissAnimation:Z

    .line 698
    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;

    .line 699
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getCurrentVelocity()F

    move-result v2

    .line 700
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result v3

    const/16 v4, 0xfa

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;IFI)V

    .line 701
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    new-array v0, v0, [I

    .line 703
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v2

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v0, v3

    const-string v2, "scroll"

    .line 702
    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 704
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 705
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 706
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 707
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mSnapToBottomListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 708
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 709
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    if-eqz v0, :cond_0

    .line 710
    invoke-interface {v0}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onStartScrollOffBottom()V

    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    .line 743
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result p1

    sub-int/2addr p2, p1

    .line 744
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p2, :cond_1

    .line 746
    invoke-direct {p0, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollUp(I)V

    goto :goto_1

    .line 748
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollDown(I)V

    .line 750
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    .line 751
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    .line 752
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 753
    :goto_2
    iget-boolean p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    or-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    .line 754
    iget-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 756
    invoke-interface {p2}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onExitFullscreen()V

    goto :goto_3

    :cond_3
    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    .line 758
    iget-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    invoke-interface {p2}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onEnterFullscreen()V

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    if-nez p1, :cond_6

    .line 761
    :cond_5
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    .line 762
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentHeightRatio(I)F

    move-result p2

    .line 761
    invoke-interface {p1, p2}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onTransparentViewHeightChange(F)V

    :cond_6
    return-void
.end method

.method public scrollUpForEntranceAnimation(Z)V
    .locals 5

    .line 720
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v0

    .line 722
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, v0, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 723
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10c000e

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 726
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v4, 0x0

    aput v1, p1, v4

    aput v0, p1, v2

    const-string v1, "scroll"

    .line 727
    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 729
    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 730
    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$7;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller$7;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 738
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setDisableTouchesForSuppressLayout(Z)V
    .locals 0

    .line 1371
    iput-boolean p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTouchDisabledForSuppressLayout:Z

    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    .line 793
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 794
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 795
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    .line 797
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    return-void
.end method

.method public setHeaderTintColor(I)V
    .locals 3

    .line 564
    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    .line 565
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    .line 566
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 569
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v2, 0xffffff

    and-int/2addr p1, v2

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 570
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setPhoneticName(Ljava/lang/String;)V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhoneticNameView:Landroid/widget/TextView;

    .line 429
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhoneticNameView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumFullNameViewHeight:I

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mFullNameView:Landroid/widget/TextView;

    .line 437
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    mul-int p1, p1, v1

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPhoneticNameViewHeight:I

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhoneticNameView:Landroid/widget/TextView;

    .line 438
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr p1, v1

    .line 440
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    iget-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsOpenContactSquare:Z

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;ZIZ)V

    return-void
.end method

.method public setPhoneticNameGone()V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumFullNameViewHeight:I

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mFullNameView:Landroid/widget/TextView;

    .line 451
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    mul-int v0, v0, v1

    .line 453
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    iget-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsOpenContactSquare:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/contacts/widget/MultiShrinkScroller;->initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;ZIZ)V

    return-void
.end method

.method public setScroll(I)V
    .locals 1

    const/4 v0, 0x0

    .line 807
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollTo(II)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mFullNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 421
    iget-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mFullNameView:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 423
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setToolbarHeight(I)V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    .line 774
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 775
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 776
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    .line 779
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    return-void
.end method
