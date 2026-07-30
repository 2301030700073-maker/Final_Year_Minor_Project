.class public Lcom/android/contacts/activities/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;,
        Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mActionBarAnimationDuration:I

.field private final mActivity:Landroid/app/Activity;

.field private mClearSearchView:Landroid/view/View;

.field private mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private mMaxToolbarContentInsetStart:I

.field private mQueryString:Ljava/lang/String;

.field private mSearchContainer:Landroid/view/View;

.field private mSearchHintResId:I

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/EditText;

.field private mSelectionContainer:Landroid/view/View;

.field private mSelectionMode:Z

.field private mShowHomeAsUp:Z

.field private mShowHomeIcon:Z

.field private mStatusBarAnimator:Landroid/animation/ValueAnimator;

.field private final mToolBarFrame:Landroid/widget/FrameLayout;

.field private final mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroidx/appcompat/app/ActionBar;Landroidx/appcompat/widget/Toolbar;I)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    .line 118
    iput-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 119
    iput-object p3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 120
    iput-object p4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 121
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolBarFrame:Landroid/widget/FrameLayout;

    .line 122
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mMaxToolbarContentInsetStart:I

    .line 123
    iput p5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchHintResId:I

    .line 124
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    .line 125
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0003

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarAnimationDuration:I

    .line 127
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupSearchAndSelectionViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/ActionBarAdapter;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/app/Activity;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ActionBarAdapter;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/contacts/activities/ActionBarAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ActionBarAdapter;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mClearSearchView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ActionBarAdapter;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/widget/FrameLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolBarFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method private addSearchContainer()V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 541
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private addSelectionContainer()V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolBarFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 547
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolBarFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 548
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private runStatusBarAnimation(I)V
    .locals 5

    .line 517
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mStatusBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mStatusBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 523
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    .line 525
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mStatusBarAnimator:Landroid/animation/ValueAnimator;

    .line 526
    new-instance v1, Lcom/android/contacts/activities/ActionBarAdapter$7;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter$7;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Landroid/view/Window;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 533
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mStatusBarAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 534
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mStatusBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 535
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mStatusBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private setupSearchAndSelectionViews()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 147
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f0c009c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    .line 149
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600fb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    const v2, 0x7f09019e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    .line 154
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    iget v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchHintResId:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    const v2, 0x7f090191

    .line 157
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 158
    new-instance v2, Lcom/android/contacts/activities/ActionBarAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/ActionBarAdapter$1;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    const v2, 0x7f090197

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mClearSearchView:Landroid/view/View;

    .line 170
    new-instance v2, Lcom/android/contacts/activities/ActionBarAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/ActionBarAdapter$2;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f0c00a3

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    .line 183
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolBarFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 184
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/ActionBarAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ActionBarAdapter$3;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 599
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private update(Z)V
    .locals 8

    .line 364
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateOverflowButtonColor()V

    .line 366
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 368
    :goto_1
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 370
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    .line 371
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_8

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v5, 0x1

    .line 375
    :goto_6
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolBarFrame:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/contacts/util/MaterialColorMapUtils;->getToolBarColor(Landroid/app/Activity;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    if-eqz v0, :cond_9

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    .line 376
    :goto_7
    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateStatusBarColor(Z)V

    if-nez p1, :cond_10

    if-eqz v3, :cond_a

    goto/16 :goto_a

    :cond_a
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 397
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-eqz v0, :cond_b

    .line 398
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->addSelectionContainer()V

    .line 399
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 400
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 401
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions(Z)V

    goto :goto_8

    .line 403
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v0, :cond_c

    const/4 v2, 0x4

    .line 404
    invoke-interface {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 406
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 407
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/contacts/activities/ActionBarAdapter$4;

    invoke-direct {v2, p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter$4;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Z)V

    .line 408
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_d
    :goto_8
    if-eqz v4, :cond_f

    .line 420
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_e

    .line 421
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->addSearchContainer()V

    .line 422
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 423
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 424
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions(Z)V

    goto :goto_9

    .line 426
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 427
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$5;

    invoke-direct {v0, p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter$5;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Z)V

    .line 428
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_f
    :goto_9
    return-void

    :cond_10
    :goto_a
    if-nez v5, :cond_11

    if-eqz v3, :cond_14

    .line 383
    :cond_11
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 384
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolBarFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 385
    iget-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-eqz p1, :cond_12

    .line 386
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->addSelectionContainer()V

    goto :goto_b

    .line 387
    :cond_12
    iget-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz p1, :cond_13

    .line 388
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->addSearchContainer()V

    .line 390
    :cond_13
    :goto_b
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions(Z)V

    :cond_14
    return-void
.end method

.method private updateDisplayOptions(Z)V
    .locals 1

    .line 552
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    if-eqz p1, :cond_0

    .line 558
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz p1, :cond_3

    .line 565
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 566
    invoke-interface {p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 568
    :cond_1
    iget-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-eqz p1, :cond_2

    .line 569
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 571
    :cond_2
    iget-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-nez p1, :cond_3

    .line 572
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 575
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptionsInner()V

    return-void
.end method

.method private updateDisplayOptionsInner()V
    .locals 7

    .line 316
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result v0

    const/16 v1, 0xe

    and-int/2addr v0, v1

    .line 318
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 322
    :goto_1
    iget-boolean v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    const/4 v4, 0x2

    .line 324
    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeAsUp:Z

    if-eqz v5, :cond_3

    const/4 v4, 0x6

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 328
    :cond_3
    :goto_2
    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-nez v5, :cond_4

    .line 332
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    :cond_4
    if-nez v2, :cond_5

    or-int/lit8 v4, v4, 0x8

    .line 336
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mMaxToolbarContentInsetStart:I

    .line 337
    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v5

    .line 336
    invoke-virtual {v2, v3, v5}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 338
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v3, 0x7f0800be

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_3

    .line 340
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 343
    :goto_3
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    const v3, 0x800005

    if-eqz v2, :cond_6

    .line 346
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    .line 347
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 348
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 349
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 351
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    .line 352
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 353
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 354
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    if-eq v0, v4, :cond_7

    .line 359
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v4, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    :cond_7
    return-void
.end method

.method private updateStatusBarColor(Z)V
    .locals 1

    .line 498
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-eqz v0, :cond_1

    .line 503
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    const v0, 0x7f060047

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 505
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->runStatusBarAnimation(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 508
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    .line 509
    invoke-static {p1}, Lcom/android/contacts/util/MaterialColorMapUtils;->getStatusBarColor(Landroid/app/Activity;)I

    move-result p1

    .line 508
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->runStatusBarAnimation(I)V

    goto :goto_0

    .line 510
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    instance-of v0, p1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_3

    .line 511
    check-cast p1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Lcom/android/contacts/activities/PeopleActivity;->updateStatusBarBackground()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getQueryString()Ljava/lang/String;
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSelectionContainer()Landroid/view/View;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    return-object v0
.end method

.method public initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 0

    if-nez p1, :cond_0

    .line 197
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 198
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    goto :goto_0

    :cond_0
    const-string p2, "navBar.searchMode"

    .line 201
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    const-string p2, "navBar.selectionMode"

    .line 202
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    const-string p2, "navBar.query"

    .line 203
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    .line 207
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->update(Z)V

    .line 210
    iget-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionMode()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    return v0
.end method

.method public isUpShowing()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public onClose()Z
    .locals 1

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 585
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    const-string v1, "navBar.searchMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    const-string v1, "navBar.selectionMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    const-string v1, "navBar.query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    const v1, 0x7f0901a5

    .line 492
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 493
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFocusOnSearchView()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 592
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method public setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1

    .line 295
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 300
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 2

    .line 263
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eq v0, p1, :cond_2

    .line 264
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    const/4 p1, 0x0

    .line 265
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->update(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 270
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 271
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_0
    const/4 p1, 0x0

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 279
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setSelectionCount(I)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionContainer:Landroid/view/View;

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    .line 483
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 485
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    if-eq v0, p1, :cond_0

    .line 285
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSelectionMode:Z

    const/4 p1, 0x0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method public setShowHomeAsUp(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeAsUp:Z

    return-void
.end method

.method public setShowHomeIcon(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    return-void
.end method

.method public updateOverflowButtonColor()V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 446
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 447
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter$6;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
