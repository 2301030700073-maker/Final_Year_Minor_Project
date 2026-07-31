.class public final Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;
.super Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final descriptionTextView:Lcom/google/android/material/textview/MaterialTextView;

.field public final imageView:Landroid/widget/ImageView;

.field public final originalBackground:Landroid/graphics/drawable/Drawable;

.field public final titleTextView:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f090173

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->titleTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 17
    .line 18
    const v0, 0x7f09016e

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->descriptionTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 28
    .line 29
    const v0, 0x7f090172

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->originalBackground:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final bindView(Lcom/mikepenz/fastadapter/items/AbstractItem;Ljava/util/List;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p1, p1, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem;->cryptoDetails:Lcom/fsck/k9/ui/messagedetails/CryptoDetails;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/fsck/k9/ui/messagedetails/CryptoDetails;->cryptoStatus:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 15
    .line 16
    iget v2, v1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusIconRes:I

    .line 17
    .line 18
    iget-object v3, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget v4, v1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->colorAttr:I

    .line 31
    .line 32
    invoke-static {v2, v4}, Lkotlin/math/MathKt;->resolveColorAttribute(Landroid/content/res/Resources$Theme;I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->titleTextRes:Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget-object v3, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->titleTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v1, v1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->descriptionTextRes:Ljava/lang/Integer;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget-object v2, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->descriptionTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-boolean p1, p1, Lcom/fsck/k9/ui/messagedetails/CryptoDetails;->isClickable:Z

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    iget-object p0, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->originalBackground:Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    const/4 p0, 0x0

    .line 88
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final unbindView(Lcom/mikepenz/fastadapter/items/AbstractItem;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->titleTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem$ViewHolder;->descriptionTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
