.class final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryTouchListener"
.end annotation


# instance fields
.field private final mAlternateIcon:Landroid/widget/ImageView;

.field private final mEntry:Landroid/view/View;

.field private mSlop:I

.field private final mThirdIcon:Landroid/widget/ImageView;

.field private mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    .line 1024
    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    .line 1025
    iput-object p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    .line 1026
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    return-void
.end method

.method private hitAlternateIcon(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1095
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    .line 1096
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1097
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1099
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 1101
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private hitThirdIcon(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1081
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1031
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    .line 1036
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_4

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    if-eq v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 1064
    iput-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    goto :goto_4

    .line 1052
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    if-eq v0, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    .line 1054
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1055
    invoke-virtual {p1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1056
    iget v4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    neg-int v5, v4

    neg-int v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 1057
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    goto :goto_4

    .line 1038
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->hitThirdIcon(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1039
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mThirdIcon:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    .line 1041
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->hitAlternateIcon(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1042
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mAlternateIcon:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    goto :goto_2

    .line 1045
    :cond_6
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    const/4 v0, 0x0

    .line 1048
    :goto_3
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    :cond_7
    :goto_4
    if-eqz v0, :cond_9

    if-eqz v3, :cond_8

    .line 1069
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_5

    .line 1073
    :cond_8
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    mul-int/lit8 v2, v0, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    mul-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v2, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1075
    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_9
    return v2
.end method
