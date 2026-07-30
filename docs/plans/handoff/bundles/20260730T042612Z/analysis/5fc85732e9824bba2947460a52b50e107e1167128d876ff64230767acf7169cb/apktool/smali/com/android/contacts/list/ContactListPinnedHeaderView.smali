.class public Lcom/android/contacts/list/ContactListPinnedHeaderView;
.super Landroid/widget/TextView;
.source "ContactListPinnedHeaderView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V
    .locals 5

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object p1, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x2

    .line 42
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/16 v3, 0x10

    .line 46
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f11014c

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 55
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p3}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    const/16 p1, 0x11

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p1

    add-int/2addr p1, v2

    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p3

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 61
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public setSectionHeaderTitle(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
