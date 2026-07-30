.class public Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.super Landroidx/cardview/widget/CardView;
.source "ExpandingEntryCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;,
        Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;
    }
.end annotation


# static fields
.field private static final VIEW_LAYOUT_HEIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllEntriesInflated:Z

.field private mAnimationViewGroup:Landroid/view/ViewGroup;

.field private mCollapsedEntriesCount:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private final mDividerLineHeightPixels:I

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEntriesViewGroup:Landroid/widget/LinearLayout;

.field private mEntryViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExpandCollapseArrow:Landroid/widget/ImageView;

.field private mExpandCollapseButton:Landroid/view/View;

.field private final mExpandCollapseButtonListener:Landroid/view/View$OnClickListener;

.field private mExpandCollapseTextView:Landroid/widget/TextView;

.field private mIsAlwaysExpanded:Z

.field private mIsExpanded:Z

.field private mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

.field private mNumEntries:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mSeparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeColor:I

.field private mThemeColorFilter:Landroid/graphics/ColorFilter;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->VIEW_LAYOUT_HEIGHT_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 296
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 254
    iput-boolean p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    .line 262
    iput p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    .line 263
    iput-boolean p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    .line 280
    new-instance v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;-><init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButtonListener:Landroid/view/View$OnClickListener;

    .line 297
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0063

    .line 298
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09008a

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    const v1, 0x7f0901e6

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f090087

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0c0097

    .line 304
    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const p2, 0x7f0901d7

    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    .line 307
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const p2, 0x7f09005c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    .line 308
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    iget-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700df

    .line 310
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mDividerLineHeightPixels:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->collapse()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->expand()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->insertEntriesIntoViewGroup()V

    return-void
.end method

.method static synthetic access$500()Landroid/util/Property;
    .locals 1

    .line 62
    sget-object v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->VIEW_LAYOUT_HEIGHT_PROPERTY:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mDividerLineHeightPixels:I

    return p0
.end method

.method private calculateEntriesToRemoveDuringCollapse()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 364
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getViewsToDisplay(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 365
    invoke-direct {p0, v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getViewsToDisplay(Z)Ljava/util/List;

    move-result-object v1

    .line 366
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private collapse()V
    .locals 14

    .line 829
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->calculateEntriesToRemoveDuringCollapse()Ljava/util/List;

    move-result-object v0

    .line 837
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 838
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 840
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, 0x12c

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 841
    sget-object v9, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->VIEW_LAYOUT_HEIGHT_PROPERTY:Landroid/util/Property;

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Integer;

    .line 842
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 841
    invoke-static {v6, v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 843
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v5, v10

    .line 844
    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 845
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0x4b

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 848
    :cond_0
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 849
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 850
    new-instance v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$5;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$5;-><init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 881
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    invoke-interface {v0, v5}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;->onCollapse(I)V

    .line 882
    iput-boolean v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    .line 883
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getExpandButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, v7, v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method private createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;I)Landroid/view/View;
    .locals 8

    const v0, 0x7f0c0062

    const/4 v1, 0x0

    .line 632
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;

    .line 635
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getEntryContextMenuInfo()Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->setContextMenuInfo(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V

    .line 636
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getPrimaryContentDescription()Landroid/text/Spannable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getPrimaryContentDescription()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f090105

    .line 640
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 641
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 643
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x7f0900ff

    .line 645
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 646
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_2

    .line 647
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 649
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v2, 0x7f0901c0

    .line 652
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 653
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 654
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 656
    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v4, 0x7f090108

    .line 659
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 660
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 661
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 663
    :cond_4
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    const v4, 0x7f0901d7

    .line 666
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 667
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 668
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 670
    :cond_5
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const v5, 0x7f090109

    .line 673
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 674
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getTextIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 675
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getTextIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 677
    :cond_6
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 680
    :goto_4
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 681
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    new-instance v5, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getId()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 685
    :cond_7
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getEntryContextMenuInfo()Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    move-result-object v5

    if-nez v5, :cond_8

    const/4 v5, 0x0

    .line 687
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 692
    :cond_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 693
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 695
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 696
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 698
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070104

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 700
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    const/4 v0, 0x4

    if-ne p3, v0, :cond_b

    .line 706
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 707
    :cond_a
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingStart()I

    move-result p3

    .line 708
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07010d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 710
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingEnd()I

    move-result v2

    .line 711
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v3

    .line 707
    invoke-virtual {p1, p3, v0, v2, v3}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    goto :goto_5

    :cond_b
    if-ne p3, v0, :cond_c

    .line 712
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getSubHeader()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 713
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 714
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingStart()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingEnd()I

    move-result v0

    .line 715
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v2

    .line 714
    invoke-virtual {p1, p3, v1, v0, v2}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    :cond_c
    :goto_5
    const p3, 0x7f090106

    .line 718
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0901e3

    .line 719
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 721
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 722
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    new-instance v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 725
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 726
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateContentDescription()Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 729
    :cond_d
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    .line 730
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 732
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    new-instance v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_6

    .line 734
    :cond_e
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    .line 735
    new-instance v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;

    invoke-direct {v2, p0, p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;-><init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 751
    :cond_f
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 752
    invoke-virtual {p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdContentDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 756
    :cond_10
    new-instance p2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;

    invoke-direct {p2, p1, p3, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 757
    iget-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-object p1
.end method

.method private expand()V
    .locals 7

    .line 778
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0x12c

    .line 779
    invoke-virtual {v0, v1, v2}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 781
    new-instance v3, Landroid/transition/Fade;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/transition/Fade;-><init>(I)V

    const-wide/16 v5, 0xc8

    .line 782
    invoke-virtual {v3, v5, v6}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    const-wide/16 v5, 0x64

    .line 783
    invoke-virtual {v3, v5, v6}, Landroid/transition/Fade;->setStartDelay(J)Landroid/transition/Transition;

    .line 785
    new-instance v5, Landroid/transition/TransitionSet;

    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    .line 786
    invoke-virtual {v5, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 787
    invoke-virtual {v5, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const v0, 0x7f0901d7

    .line 789
    invoke-virtual {v5, v0, v4}, Landroid/transition/TransitionSet;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 791
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    move-object v0, p0

    .line 794
    :cond_0
    new-instance v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$4;

    invoke-direct {v3, p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$4;-><init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    invoke-virtual {v5, v3}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 818
    invoke-static {v0, v5}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 820
    iput-boolean v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    .line 822
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateAllEntries(Landroid/view/LayoutInflater;)V

    .line 823
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->insertEntriesIntoViewGroup()V

    .line 824
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getCollapseButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method private formatEntryIfFirst(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 447
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 449
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 451
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 448
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method private generateSeparator(Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 459
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 460
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060084

    .line 462
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 464
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mDividerLineHeightPixels:I

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v3, 0x7f070110

    .line 468
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f090105

    .line 470
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 471
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f07010b

    .line 473
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v4, 0x7f07010c

    .line 474
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v3, p1

    .line 477
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 478
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getCollapseButtonText()Ljava/lang/CharSequence;
    .locals 2

    .line 489
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getExpandButtonText()Ljava/lang/CharSequence;
    .locals 2

    .line 484
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getViewsToDisplay(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 391
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_7

    .line 392
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-lez p1, :cond_1

    .line 395
    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, p1, -0x1

    if-gt v3, v4, :cond_0

    .line 396
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->generateSeparator(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 397
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 401
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 404
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 412
    :cond_3
    iget p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 413
    :goto_3
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v3, v4, :cond_7

    .line 415
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-lez v2, :cond_5

    .line 418
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v2, -0x1

    if-gt v5, v6, :cond_4

    .line 419
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->generateSeparator(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 420
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 422
    :cond_4
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 424
    :goto_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_5
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    .line 430
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v3, v6, :cond_6

    if-lez p1, :cond_6

    .line 432
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 439
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->formatEntryIfFirst(Ljava/util/List;)V

    return-object v0
.end method

.method private inflateAllEntries(Landroid/view/LayoutInflater;)V
    .locals 7

    .line 528
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 531
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 532
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 533
    iget-object v3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 534
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 536
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    .line 539
    invoke-virtual {v5}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    const/16 v6, 0x8

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/4 v6, 0x4

    .line 546
    :goto_2
    invoke-direct {p0, p1, v5, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 549
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    return-void
.end method

.method private inflateInitialEntries(Landroid/view/LayoutInflater;)V
    .locals 9

    .line 497
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    if-ne v0, v1, :cond_0

    .line 498
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateAllEntries(Landroid/view/LayoutInflater;)V

    goto :goto_2

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 504
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v3, v4, :cond_2

    .line 505
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 506
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 508
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-direct {p0, p1, v6, v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    .line 513
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    iget v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    if-ge v3, v7, :cond_1

    if-lez v0, :cond_1

    .line 515
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    const/4 v8, 0x4

    invoke-direct {p0, p1, v7, v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private insertEntriesIntoViewGroup()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 373
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getViewsToDisplay(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 374
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 378
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    iget v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsAlwaysExpanded:Z

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseButton:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private updateExpandCollapseButton(Ljava/lang/CharSequence;J)V
    .locals 5

    .line 763
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "rotation"

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    new-array v2, v2, [F

    const/high16 v4, 0x43340000    # 180.0f

    aput v4, v2, v1

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 766
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 767
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v4, v2, v1

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 771
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 772
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 774
    :goto_0
    iget-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public applyColor()V
    .locals 5

    .line 593
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_6

    .line 595
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 601
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 602
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    .line 603
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->shouldApplyColor()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 604
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 606
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 607
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 610
    :cond_3
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 612
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 613
    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 615
    :cond_4
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 616
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->shouldApplyThirdIconColor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 617
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 618
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 625
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 626
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mExpandCollapseArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    return-void
.end method

.method public initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;>;IZZ",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 322
    iput-boolean p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    .line 323
    iput-boolean p4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsAlwaysExpanded:Z

    or-int/2addr p3, p4

    .line 325
    iput-boolean p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    .line 326
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    .line 327
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    const/4 p3, 0x0

    .line 328
    iput p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    .line 329
    iput-boolean p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAllEntriesInflated:Z

    .line 330
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 331
    iget v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/2addr v1, p4

    iput v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    .line 332
    iget-object p4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_0
    iget p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mNumEntries:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mCollapsedEntriesCount:I

    .line 336
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    .line 337
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mSeparators:Ljava/util/List;

    .line 339
    :cond_1
    iput-object p5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    .line 340
    iput-object p6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mAnimationViewGroup:Landroid/view/ViewGroup;

    .line 342
    iget-boolean p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_2

    .line 343
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getCollapseButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    .line 344
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateAllEntries(Landroid/view/LayoutInflater;)V

    goto :goto_1

    .line 346
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->getExpandButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->updateExpandCollapseButton(Ljava/lang/CharSequence;J)V

    .line 347
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->inflateInitialEntries(Landroid/view/LayoutInflater;)V

    .line 349
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->insertEntriesIntoViewGroup()V

    .line 350
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->applyColor()V

    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 891
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z

    return v0
.end method

.method public setColorAndFilter(ILandroid/graphics/ColorFilter;)V
    .locals 0

    .line 553
    iput p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColor:I

    .line 554
    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mThemeColorFilter:Landroid/graphics/ColorFilter;

    .line 555
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->applyColor()V

    return-void
.end method

.method public setEntryHeaderColor(I)V
    .locals 4

    .line 559
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntries:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntryViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 561
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f0900ff

    .line 562
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 564
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .line 899
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "ExpandingEntryCardView"

    const-string v1, "mTitleTextView is null"

    .line 900
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0901ea

    .line 904
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 909
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f070111

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 910
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 912
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 914
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 915
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 911
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 916
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 917
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 918
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 919
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 921
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 924
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 918
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    :goto_2
    return-void
.end method
