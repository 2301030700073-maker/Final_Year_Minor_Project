.class public Lcom/android/contacts/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListItemView$PhotoPosition;,
        Lcom/android/contacts/list/ContactListItemView$HighlightSequence;
    }
.end annotation


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ContactListItemView"


# instance fields
.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mAdjustSelectionBoundsEnabled:Z

.field private mAvatarOffsetTop:I

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private mCheckBoxHeight:I

.field private mCheckBoxWidth:I

.field private final mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDataViewHeight:I

.field private mDataViewWidthWeight:I

.field private mDefaultPhotoViewSize:I

.field private mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field private mDeleteImageButtonHeight:I

.field private mDeleteImageButtonWidth:I

.field private mGapBetweenImageAndText:I

.field private mGapBetweenIndexerAndImage:I

.field private mGapBetweenLabelAndData:I

.field private mGapFromScrollBar:I

.field private mHeaderView:Landroid/view/View;

.field private mHeaderWidth:I

.field private mHighlightedPrefix:Ljava/lang/String;

.field private mIsSectionHeaderEnabled:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndDataViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private mLabelViewWidthWeight:I

.field private mLeftOffset:I

.field private mNameHighlightSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private mNameTextViewTextColor:I

.field private mNameTextViewTextSize:I

.field private mNumberHighlightSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumberListAdapterListener:Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;

.field private final mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhoneticNameTextViewHeight:I

.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private mPosition:I

.field private mPreferredHeight:I

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private mPresenceIconMargin:I

.field private mPresenceIconSize:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mRightOffset:I

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mShowVideoCallIcon:Z

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private mSupportVideoCallIcon:Z

.field private final mTextHighlighter:Lcom/android/contacts/format/TextHighlighter;

.field private mTextIndent:I

.field private mTextOffsetTop:I

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field private mVideoCallIcon:Landroid/widget/ImageView;

.field private mVideoCallIconMargin:I

.field private mVideoCallIconSize:I

.field private mWorkProfileIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    .line 1802
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 261
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .line 92
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 93
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenIndexerAndImage:I

    .line 94
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    const/4 v0, 0x4

    .line 95
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    const/16 v0, 0x10

    .line 96
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    const/16 v1, 0x20

    .line 103
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconSize:I

    .line 104
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconMargin:I

    const/16 v0, 0x14

    .line 105
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapFromScrollBar:I

    const/4 v0, 0x3

    .line 114
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    const/4 v0, 0x5

    .line 118
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 144
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mShowVideoCallIcon:Z

    .line 149
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSupportVideoCallIcon:Z

    .line 173
    invoke-static {p1}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 197
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 223
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    const/high16 p1, -0x1000000

    .line 226
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewTextColor:I

    .line 247
    new-instance p1, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {p1, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 248
    new-instance p1, Landroid/database/CharArrayBuffer;

    invoke-direct {p1, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 251
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    .line 253
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 263
    new-instance p1, Lcom/android/contacts/format/TextHighlighter;

    invoke-direct {p1, v0}, Lcom/android/contacts/format/TextHighlighter;-><init>(I)V

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/format/TextHighlighter;

    .line 264
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    .line 265
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 275
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .line 92
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 93
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenIndexerAndImage:I

    .line 94
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    const/4 v0, 0x4

    .line 95
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    const/16 v1, 0x10

    .line 96
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    const/16 v2, 0x20

    .line 103
    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconSize:I

    .line 104
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconMargin:I

    const/16 v2, 0x14

    .line 105
    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mGapFromScrollBar:I

    const/4 v2, 0x3

    .line 114
    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    const/4 v3, 0x5

    .line 118
    iput v3, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 144
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mShowVideoCallIcon:Z

    .line 149
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSupportVideoCallIcon:Z

    .line 173
    invoke-static {p1}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    const/4 v4, 0x1

    .line 180
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 197
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 223
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    const/high16 v5, -0x1000000

    .line 226
    iput v5, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewTextColor:I

    .line 247
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 248
    new-instance v5, Landroid/database/CharArrayBuffer;

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 251
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    .line 253
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 279
    sget-object v5, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    if-eqz v5, :cond_0

    .line 281
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v5, 0xb

    .line 282
    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .line 284
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 287
    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 290
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenIndexerAndImage:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenIndexerAndImage:I

    const/4 v0, 0x6

    .line 293
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    const/16 v0, 0x15

    .line 296
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    const/16 v0, 0x16

    .line 299
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    const/16 v0, 0x13

    .line 302
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    const/16 v0, 0x18

    .line 304
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    const/16 v0, 0x19

    .line 306
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mTextOffsetTop:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mTextOffsetTop:I

    .line 308
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAvatarOffsetTop:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAvatarOffsetTop:I

    .line 310
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    const/16 v0, 0xc

    .line 313
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    const/16 v0, 0xd

    .line 316
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewTextColor:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewTextColor:I

    const/16 v0, 0xe

    .line 321
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070071

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    .line 319
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewTextSize:I

    const/16 v0, 0x1b

    .line 322
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconSize:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconSize:I

    const/16 v0, 0x1a

    .line 325
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconMargin:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconMargin:I

    .line 331
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    const/16 v1, 0x12

    .line 333
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    const/16 v3, 0x11

    .line 335
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/16 v5, 0xf

    .line 337
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 330
    invoke-virtual {p0, v0, v1, v3, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 340
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    :cond_0
    new-instance p2, Lcom/android/contacts/format/TextHighlighter;

    invoke-direct {p2, v4}, Lcom/android/contacts/format/TextHighlighter;-><init>(I)V

    iput-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/format/TextHighlighter;

    .line 345
    sget-object p2, Lcom/android/contacts/R$styleable;->Theme:[I

    if-eqz p2, :cond_1

    .line 346
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/android/contacts/R$styleable;->Theme:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 347
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 348
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 352
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07007d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderWidth:I

    .line 354
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 355
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 358
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    .line 359
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    .line 361
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 271
    iput-boolean p3, p0, Lcom/android/contacts/list/ContactListItemView;->mSupportVideoCallIcon:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneNumberListAdapterListener:Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/contacts/list/ContactListItemView;->mPosition:I

    return p0
.end method

.method private addStarImageHeader()V
    .locals 4

    .line 1029
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderView:Landroid/view/View;

    .line 1030
    check-cast v0, Landroid/widget/ImageView;

    .line 1032
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1033
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0800ce

    .line 1032
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1031
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a7

    .line 1035
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1034
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1037
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1036
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1038
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1039
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addTextHeader(Ljava/lang/String;)V
    .locals 3

    .line 1008
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderView:Landroid/view/View;

    .line 1009
    check-cast v0, Landroid/widget/TextView;

    .line 1010
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11014c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 1011
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1012
    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->updateHeaderText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 2

    .line 916
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v0, :cond_2

    .line 917
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 918
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 919
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 920
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 922
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-nez v0, :cond_1

    .line 923
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    :cond_1
    const/4 v0, 0x1

    .line 927
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    :cond_2
    return-void
.end method

.method private getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 941
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 942
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 943
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object v0
.end method

.method public static final getDefaultPhotoPosition(Z)Lcom/android/contacts/list/ContactListItemView$PhotoPosition;
    .locals 2

    .line 162
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 169
    sget-object p0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    :goto_0
    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 166
    sget-object p0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    :goto_1
    return-object p0
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1492
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private final pointIsInView(FF)Z
    .locals 1

    .line 1891
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLeftOffset:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mRightOffset:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 1892
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 4

    .line 1307
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 1310
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1311
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1313
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1315
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setMarqueeText(Landroid/widget/TextView;[CI)V
    .locals 3

    .line 1299
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1300
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1302
    :cond_0
    invoke-virtual {p1, p2, v2, p3}, Landroid/widget/TextView;->setText([CII)V

    :goto_0
    return-void
.end method

.method private snippetize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    move v0, p2

    move v1, p3

    .line 1757
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1758
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    move p3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_1
    add-int/lit8 v1, p2, -0x1

    move v2, v1

    move v1, p3

    :goto_2
    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    if-lez p3, :cond_3

    .line 1772
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, p3

    move p2, v2

    :cond_2
    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    move p3, v0

    .line 1783
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    if-lez v1, :cond_5

    .line 1784
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_4

    move p3, v0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1791
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    if-lez p2, :cond_6

    .line 1793
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    :cond_6
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p3, p1, :cond_7

    .line 1797
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static split(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1815
    sget-object v0, Lcom/android/contacts/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1816
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1817
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1818
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateHeaderText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 1017
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1018
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    const-string v0, "\u2026"

    .line 1019
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1000d9

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1020
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1023
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p2, 0x0

    .line 1025
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1710
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/contacts/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1714
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1715
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 1716
    invoke-static {p3}, Lcom/android/contacts/list/ContactListItemView;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 1717
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1718
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1726
    :cond_2
    invoke-static {p1, p2}, Lcom/android/contacts/util/SearchUtil;->findMatchingLine(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/util/SearchUtil$MatchedLine;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1728
    iget-object p2, p1, Lcom/android/contacts/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 1732
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0a001e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 1734
    iget-object p3, p1, Lcom/android/contacts/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, p2, :cond_3

    .line 1735
    iget-object p3, p1, Lcom/android/contacts/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    iget p1, p1, Lcom/android/contacts/util/SearchUtil$MatchedLine;->startIndex:I

    invoke-direct {p0, p3, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->snippetize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1737
    :cond_3
    iget-object p1, p1, Lcom/android/contacts/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public addNameHighlightSequence(II)V
    .locals 2

    .line 1139
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNumberHighlightSequence(II)V
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 900
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    if-eqz v0, :cond_0

    .line 901
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 902
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 903
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 904
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method

.method public clearHighlightSequences()V
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1129
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1130
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 970
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 974
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 949
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 950
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getCheckBox()Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 2

    .line 1323
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-nez v0, :cond_0

    .line 1324
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v1, 0x0

    .line 1326
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1327
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object v0
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    .line 1370
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1371
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 1372
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1373
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1374
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1101b2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1375
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1376
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1377
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1378
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1383
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    .line 932
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getDeleteImageButton(Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;I)Landroidx/appcompat/widget/AppCompatImageButton;
    .locals 4

    .line 1338
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    if-nez v0, :cond_1

    .line 1339
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const v1, 0x7f0800a9

    .line 1340
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 1341
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1342
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1343
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 1344
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1343
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1345
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1347
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101045c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1349
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setBackgroundResource(I)V

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/android/contacts/list/ContactListItemView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/contacts/list/ContactListItemView$2;-><init>(Lcom/android/contacts/list/ContactListItemView;Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1363
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    return-object p1
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    .line 1228
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1229
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 1230
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1234
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1235
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1101b2

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1236
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v2, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v0, v2, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_0

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1241
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1242
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1243
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 4

    .line 1155
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1156
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 1157
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1158
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1159
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060043

    .line 1160
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1159
    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1161
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1164
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1165
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1167
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1168
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneticNameTextView()Landroid/widget/TextView;
    .locals 4

    .line 1195
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1196
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 1197
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1198
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1199
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030046

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1200
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1201
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1202
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1203
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1204
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoPosition()Lcom/android/contacts/list/ContactListItemView$PhotoPosition;
    .locals 1

    .line 1852
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 2

    .line 1074
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1075
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 1076
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1079
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1080
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    .line 1050
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v0, :cond_3

    .line 1053
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_2

    .line 1054
    new-instance v0, Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 1055
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000da

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1061
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1060
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1065
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 1067
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0

    .line 1051
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 3

    .line 1411
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1412
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 1413
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1414
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1415
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1416
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1417
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1418
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 3

    .line 1427
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1428
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 1429
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1430
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1431
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1432
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1433
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1434
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1435
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCheckBox()V
    .locals 1

    .line 1547
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v0, :cond_0

    .line 1548
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1549
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    :cond_0
    return-void
.end method

.method public hideDeleteImageButton()V
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1556
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    :cond_0
    return-void
.end method

.method public hideDisplayName()V
    .locals 1

    .line 1561
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1562
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1563
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public hidePhoneticName()V
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1579
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1580
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 962
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 963
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 615
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    .line 616
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p4, p3

    .line 618
    invoke-static {p0}, Lcom/android/contacts/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result p3

    .line 621
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    if-eqz v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v1, p5, 0x0

    sub-int/2addr v1, v0

    .line 624
    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextOffsetTop:I

    add-int/2addr v1, v2

    .line 626
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderView:Landroid/view/View;

    if-eqz p3, :cond_0

    .line 627
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderWidth:I

    sub-int v3, p4, v3

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    if-eqz p3, :cond_1

    move v4, p4

    goto :goto_1

    .line 629
    :cond_1
    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderWidth:I

    add-int/2addr v4, p1

    :goto_1
    add-int/2addr v0, v1

    .line 626
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_2
    if-eqz p3, :cond_3

    .line 633
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderWidth:I

    sub-int/2addr p4, v0

    goto :goto_2

    .line 635
    :cond_3
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderWidth:I

    add-int/2addr p1, v0

    .line 639
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    add-int v1, p2, p1

    add-int/2addr p2, p4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 640
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mLeftOffset:I

    .line 641
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mRightOffset:I

    if-eqz p3, :cond_5

    .line 643
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenIndexerAndImage:I

    sub-int/2addr p4, p2

    goto :goto_3

    .line 645
    :cond_5
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenIndexerAndImage:I

    add-int/2addr p1, p2

    .line 648
    :goto_3
    iget-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isActivated()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 649
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 652
    :cond_6
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_8

    add-int/lit8 p2, p5, 0x0

    .line 653
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    .line 654
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v3, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v1, v3, :cond_7

    .line 655
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mGapFromScrollBar:I

    sub-int v4, p4, v3

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidth:I

    sub-int/2addr v4, v5

    sub-int v3, p4, v3

    add-int/2addr v0, p2

    invoke-virtual {v1, v4, p2, v3, v0}, Landroid/widget/CheckBox;->layout(IIII)V

    goto :goto_4

    .line 660
    :cond_7
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mGapFromScrollBar:I

    add-int v4, p1, v3

    add-int/2addr v3, p1

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidth:I

    add-int/2addr v3, v5

    add-int/2addr v0, p2

    invoke-virtual {v1, v4, p2, v3, v0}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 667
    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_b

    add-int/lit8 p2, p5, 0x0

    .line 668
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButtonHeight:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    .line 669
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButtonWidth:I

    if-le v0, v1, :cond_9

    goto :goto_5

    :cond_9
    move v0, v1

    .line 671
    :goto_5
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v3, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v1, v3, :cond_a

    .line 672
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    sub-int v3, p4, v0

    add-int/2addr v0, p2

    invoke-virtual {v1, v3, p2, p4, v0}, Landroid/widget/ImageButton;->layout(IIII)V

    move p4, v3

    goto :goto_6

    .line 678
    :cond_a
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    add-int v3, p1, v0

    add-int/2addr v0, p2

    invoke-virtual {v1, p1, p2, v3, v0}, Landroid/widget/ImageButton;->layout(IIII)V

    move p1, v3

    .line 686
    :cond_b
    :goto_6
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz p2, :cond_c

    goto :goto_7

    :cond_c
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 687
    :goto_7
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_e

    if-eqz p2, :cond_d

    add-int/lit8 v0, p5, 0x0

    .line 691
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mAvatarOffsetTop:I

    add-int/2addr v0, v3

    .line 693
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    add-int/2addr v3, p1

    add-int/2addr v1, v0

    invoke-virtual {p2, p1, v0, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 698
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    :goto_8
    add-int/2addr p2, v0

    :goto_9
    add-int/2addr p1, p2

    goto :goto_c

    .line 699
    :cond_d
    iget-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz p2, :cond_11

    .line 701
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    goto :goto_8

    :cond_e
    if-eqz p2, :cond_f

    add-int/lit8 v0, p5, 0x0

    .line 707
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mAvatarOffsetTop:I

    add-int/2addr v0, v3

    .line 709
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    sub-int v3, p4, v3

    add-int/2addr v1, v0

    invoke-virtual {p2, v3, v0, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 714
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    :goto_a
    add-int/2addr p2, v0

    sub-int/2addr p4, p2

    goto :goto_b

    .line 715
    :cond_f
    iget-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz p2, :cond_10

    .line 717
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    goto :goto_a

    .line 721
    :cond_10
    :goto_b
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    goto :goto_9

    .line 724
    :cond_11
    :goto_c
    iget-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mSupportVideoCallIcon:Z

    if-eqz p2, :cond_15

    .line 726
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_13

    add-int/lit8 p2, p5, 0x0

    .line 728
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconSize:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    if-nez p3, :cond_12

    .line 733
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    sub-int v3, p4, v0

    add-int/2addr v0, p2

    invoke-virtual {v1, v3, p2, p4, v0}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_d

    .line 739
    :cond_12
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    add-int v3, p1, v0

    add-int/2addr v0, p2

    invoke-virtual {v1, p1, p2, v3, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 746
    :cond_13
    :goto_d
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne p2, v0, :cond_14

    .line 747
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconSize:I

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconMargin:I

    add-int/2addr p2, v0

    sub-int/2addr p4, p2

    goto :goto_e

    .line 749
    :cond_14
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconSize:I

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconMargin:I

    add-int/2addr p2, v0

    add-int/2addr p1, p2

    .line 755
    :cond_15
    :goto_e
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr p2, v0

    add-int/2addr p5, v2

    sub-int/2addr p5, p2

    .line 757
    div-int/lit8 p5, p5, 0x2

    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextOffsetTop:I

    add-int/2addr p5, p2

    .line 761
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 762
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 763
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidth:I

    if-lez v0, :cond_16

    .line 764
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v0, v1

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    .line 765
    :goto_f
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v3, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v1, v3, :cond_17

    .line 767
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    sub-int v3, p4, p2

    sub-int/2addr v3, v0

    sub-int v0, p4, v0

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    add-int/2addr v4, p5

    invoke-virtual {v1, v3, p5, v0, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_10

    .line 773
    :cond_17
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    add-int v3, p1, v0

    add-int v4, p1, p2

    add-int/2addr v4, v0

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    add-int/2addr v0, p5

    invoke-virtual {v1, v3, p5, v4, v0}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_10

    :cond_18
    const/4 p2, 0x0

    .line 782
    :goto_10
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 784
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidth:I

    if-lez v0, :cond_19

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int v2, v0, v1

    :cond_19
    add-int/2addr p2, v2

    .line 785
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1a

    .line 786
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    sub-int p2, p4, p2

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    add-int/2addr v1, p5

    invoke-virtual {v0, p1, p5, p2, v1}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_11

    .line 791
    :cond_1a
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    add-int/2addr p2, p1

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    add-int/2addr v1, p5

    invoke-virtual {v0, p2, p5, p4, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 798
    :cond_1b
    :goto_11
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_1c

    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 799
    :cond_1c
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    add-int/2addr p5, p2

    :cond_1d
    if-eqz p3, :cond_1f

    .line 805
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 806
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 807
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sub-int v1, p4, p2

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr v2, p5

    invoke-virtual {v0, v1, p5, p4, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 812
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    add-int/2addr p2, v0

    sub-int p2, p4, p2

    goto :goto_12

    :cond_1e
    move p2, p4

    .line 815
    :goto_12
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 816
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr v1, p5

    invoke-virtual {v0, p1, p5, p2, v1}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_14

    .line 823
    :cond_1f
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 824
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 825
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    add-int v1, p1, p2

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr v2, p5

    invoke-virtual {v0, p1, p5, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 830
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    add-int/2addr p2, v0

    add-int/2addr p2, p1

    goto :goto_13

    :cond_20
    move p2, p1

    .line 833
    :goto_13
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 834
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr v1, p5

    invoke-virtual {v0, p2, p5, p4, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 841
    :cond_21
    :goto_14
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_22

    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 842
    :cond_22
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr p5, p2

    .line 847
    :cond_23
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 848
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr v0, p5

    invoke-virtual {p2, p1, p5, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 852
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr p5, p2

    .line 856
    :cond_24
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_26

    if-nez p3, :cond_25

    .line 858
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v1, p5, v0

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    sub-int/2addr v1, v2

    add-int/2addr v0, p5

    invoke-virtual {p2, p1, v1, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 862
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    add-int/2addr p2, v0

    add-int/2addr p2, p1

    goto :goto_15

    .line 864
    :cond_25
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p1

    .line 865
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p4, v1

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v3, p5, v2

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    sub-int/2addr v3, v4

    add-int/2addr v2, p5

    invoke-virtual {v0, v1, v3, p4, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 869
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    add-int/2addr v0, v1

    sub-int/2addr p4, v0

    goto :goto_15

    :cond_26
    move p2, p1

    .line 873
    :goto_15
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-nez p3, :cond_27

    .line 875
    iget-object p3, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v1, p5, v0

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    sub-int/2addr v1, v2

    add-int/2addr v0, p5

    invoke-virtual {p3, p2, v1, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_16

    .line 880
    :cond_27
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v1, p5, v0

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    sub-int/2addr v1, v2

    add-int/2addr v0, p5

    invoke-virtual {p2, p3, v1, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 886
    :cond_28
    :goto_16
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_29

    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 887
    :cond_29
    iget p2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr p5, p2

    .line 890
    :cond_2a
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 891
    iget-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget p3, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr p3, p5

    invoke-virtual {p2, p1, p5, p4, p3}, Landroid/widget/TextView;->layout(IIII)V

    :cond_2b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 p2, 0x0

    .line 429
    invoke-static {p2, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    .line 430
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .line 432
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    .line 433
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 434
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    .line 435
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    .line 436
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 437
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 438
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 439
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidth:I

    .line 440
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I

    .line 441
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButtonWidth:I

    .line 442
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButtonHeight:I

    .line 444
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensurePhotoViewSize()V

    .line 449
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    goto :goto_1

    .line 450
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenIndexerAndImage:I

    add-int/2addr v2, v3

    :goto_1
    sub-int/2addr v1, v2

    .line 456
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    if-eqz v2, :cond_2

    .line 457
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderWidth:I

    sub-int/2addr v1, v2

    .line 460
    :cond_2
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mSupportVideoCallIcon:Z

    if-eqz v2, :cond_3

    .line 461
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconSize:I

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 467
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 468
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 469
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 470
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 468
    invoke-virtual {v2, v3, v4}, Landroid/widget/CheckBox;->measure(II)V

    .line 471
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidth:I

    .line 472
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I

    .line 473
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidth:I

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 476
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 477
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 478
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 479
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 477
    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageButton;->measure(II)V

    .line 480
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButtonWidth:I

    .line 481
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButtonHeight:I

    .line 482
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDeleteImageButtonWidth:I

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 485
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_7

    .line 488
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v4, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-eq v2, v4, :cond_6

    .line 489
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    sub-int v2, v1, v2

    goto :goto_2

    :cond_6
    move v2, v1

    .line 491
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 492
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 493
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 491
    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->measure(II)V

    .line 494
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    .line 497
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 498
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 499
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 500
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 498
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 501
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 508
    :cond_8
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 509
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 510
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    sub-int v2, v1, v2

    .line 511
    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    mul-int v5, v2, v4

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    add-int v7, v4, v6

    div-int/2addr v5, v7

    mul-int v2, v2, v6

    add-int/2addr v4, v6

    .line 513
    div-int/2addr v2, v4

    goto :goto_4

    :cond_9
    move v5, v1

    const/4 v2, 0x0

    goto :goto_4

    .line 521
    :cond_a
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v1

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    :goto_3
    const/4 v5, 0x0

    .line 528
    :goto_4
    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 529
    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 530
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 529
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 531
    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    .line 534
    :cond_c
    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 535
    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/high16 v5, -0x80000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 536
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 535
    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->measure(II)V

    .line 537
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    .line 539
    :cond_d
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 541
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 542
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 543
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 544
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 542
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 545
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 549
    :cond_e
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 550
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    .line 551
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    .line 552
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 550
    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 553
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 556
    :cond_f
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mSupportVideoCallIcon:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 557
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconSize:I

    .line 558
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIconSize:I

    .line 559
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 557
    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 562
    :cond_10
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 563
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    .line 564
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 565
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 563
    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 566
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    .line 567
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    .line 570
    :cond_11
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 573
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 574
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    sub-int/2addr v1, v2

    .line 579
    :cond_12
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 580
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 579
    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->measure(II)V

    .line 581
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    .line 582
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 586
    :cond_13
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr v1, v2

    .line 589
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 592
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 595
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    .line 599
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderView:Landroid/view/View;

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderWidth:I

    .line 600
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 601
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 599
    invoke-virtual {v1, v2, p2}, Landroid/view/View;->measure(II)V

    .line 604
    :cond_14
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1879
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1883
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->pointIsInView(FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 1884
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removePhotoView()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1089
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    return-void
.end method

.method public removePhotoView(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1101
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 1102
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 1103
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 1104
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1105
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1106
    iput-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 1108
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz p1, :cond_1

    .line 1109
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1110
    iput-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 1844
    invoke-virtual {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0

    .line 1832
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0

    .line 1836
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    return-void
.end method

.method public setData([CI)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1258
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1259
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1253
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    .line 1254
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1517
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1519
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/format/TextHighlighter;

    invoke-virtual {v1, p1, v0}, Lcom/android/contacts/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1522
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1523
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;

    .line 1524
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/format/TextHighlighter;

    invoke-static {v1}, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;->access$200(Lcom/android/contacts/list/ContactListItemView$HighlightSequence;)I

    move-result v3

    .line 1525
    invoke-static {v1}, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;->access$300(Lcom/android/contacts/list/ContactListItemView$HighlightSequence;)I

    move-result v1

    .line 1524
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/contacts/format/TextHighlighter;->applyMaskingHighlight(Landroid/text/SpannableString;II)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1

    .line 1530
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 1532
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1534
    invoke-static {p1}, Lcom/android/contacts/util/ContactDisplayUtils;->isPossiblePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1536
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1537
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1538
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1537
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1542
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 1509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1510
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->clearHighlightSequences()V

    const/4 p2, 0x0

    .line 1511
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->addNameHighlightSequence(II)V

    .line 1513
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDrawableResource(I)V
    .locals 3

    .line 1861
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1862
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1863
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1865
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600f9

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 1866
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1867
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1868
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1870
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1871
    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 1872
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setHighlightedPrefix(Ljava/lang/String;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    return-void
.end method

.method public setIsSectionHeaderEnabled(Z)V
    .locals 0

    .line 1043
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 1215
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 1219
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1220
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1269
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    .line 1270
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1281
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1284
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;

    .line 1285
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/format/TextHighlighter;

    invoke-static {p1}, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;->access$200(Lcom/android/contacts/list/ContactListItemView$HighlightSequence;)I

    move-result v2

    .line 1286
    invoke-static {p1}, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;->access$300(Lcom/android/contacts/list/ContactListItemView$HighlightSequence;)I

    move-result p1

    .line 1285
    invoke-virtual {v1, p2, v2, p1}, Lcom/android/contacts/format/TextHighlighter;->applyMaskingHighlight(Landroid/text/SpannableString;II)V

    .line 1289
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1290
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1293
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1294
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPhoneticName([CI)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1185
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameTextView()Landroid/widget/TextView;

    .line 1186
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1187
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1181
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    .line 1182
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V
    .locals 0

    .line 1848
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1461
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 1462
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1465
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1466
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1468
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 1469
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 983
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 984
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderView:Landroid/view/View;

    if-nez p1, :cond_0

    .line 985
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->addStarImageHeader()V

    goto :goto_0

    .line 986
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 987
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 988
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->addStarImageHeader()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 990
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 993
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 994
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListItemView;->addTextHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 995
    :cond_3
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 996
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 997
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListItemView;->addTextHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 999
    :cond_4
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->updateHeaderText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :cond_5
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    .line 1003
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setShowVideoCallIcon(ZLcom/android/contacts/list/PhoneNumberListAdapter$Listener;I)V
    .locals 0

    .line 383
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mShowVideoCallIcon:Z

    .line 384
    iput-object p2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneNumberListAdapterListener:Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;

    .line 385
    iput p3, p0, Lcom/android/contacts/list/ContactListItemView;->mPosition:I

    if-eqz p1, :cond_1

    .line 388
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    .line 389
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    .line 390
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f1000db

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    const p2, 0x7f0800cf

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 396
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/contacts/list/ContactListItemView$1;

    invoke-direct {p2, p0}, Lcom/android/contacts/list/ContactListItemView$1;-><init>(Lcom/android/contacts/list/ContactListItemView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVideoCallIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    .line 408
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3

    .line 1390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 1392
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/format/TextHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/format/TextHighlighter;->setPrefixText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1397
    invoke-static {p1}, Lcom/android/contacts/util/ContactDisplayUtils;->isPossiblePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1399
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 1400
    invoke-static {p1}, Lcom/android/contacts/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1399
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1402
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1444
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 1446
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1449
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    .line 1450
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1451
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportVideoCallIcon(Z)V
    .locals 0

    .line 422
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSupportVideoCallIcon:Z

    return-void
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setWorkProfileIconEnabled(Z)V
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1481
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 1483
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    .line 1484
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1485
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    const v0, 0x7f080085

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1486
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1487
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showData(Landroid/database/Cursor;I)V
    .locals 1

    .line 1827
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1828
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object p2, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget p1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p0, p2, p1}, Lcom/android/contacts/list/ContactListItemView;->setData([CI)V

    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;II)V
    .locals 3

    .line 1496
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1497
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 1502
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz p1, :cond_0

    .line 1503
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f1000da

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1504
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1503
    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showPhoneticName(Landroid/database/Cursor;I)V
    .locals 1

    .line 1568
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1569
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget p2, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz p2, :cond_0

    .line 1571
    iget-object p1, p1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1573
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    :goto_0
    return-void
.end method

.method public showPresenceAndStatusMessage(Landroid/database/Cursor;II)V
    .locals 2

    .line 1591
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1592
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 1593
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move-object v0, v1

    .line 1595
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    .line 1598
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1599
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 1604
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/contacts/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1606
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 6

    .line 1638
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p2, :cond_9

    .line 1639
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "snippet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1644
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1647
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "deferred_snippeting"

    .line 1648
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "deferred_snippeting_query"

    .line 1650
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "display_name"

    .line 1653
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1655
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1658
    :cond_1
    invoke-direct {p0, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_8

    const/4 p1, 0x0

    .line 1663
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x5b

    .line 1664
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0xa

    .line 1668
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    if-eq v3, v4, :cond_4

    add-int/lit8 p1, v3, 0x1

    :cond_4
    const/16 v3, 0x5d

    .line 1672
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_5

    .line 1674
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v4, :cond_5

    move v0, v1

    .line 1680
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, v0, :cond_7

    .line 1682
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_6

    if-eq v4, v3, :cond_6

    .line 1685
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1688
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    move-object v1, p2

    .line 1693
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void

    .line 1640
    :cond_9
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void
.end method

.method public showSnippet(Landroid/database/Cursor;Ljava/lang/String;I)V
    .locals 3

    .line 1617
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1619
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "display_name"

    .line 1622
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1623
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 1624
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1627
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void

    .line 1631
    :cond_2
    invoke-direct {p0, p3, p2, p1}, Lcom/android/contacts/list/ContactListItemView;->updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
