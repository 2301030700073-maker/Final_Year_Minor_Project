.class public final Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;
.super Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final dragHandle:Landroid/widget/ImageView;

.field public final email:Lcom/google/android/material/textview/MaterialTextView;

.field public final name:Lcom/google/android/material/textview/MaterialTextView;


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
    const v0, 0x7f0902e2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 20
    .line 21
    const v0, 0x7f0901c6

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;->email:Lcom/google/android/material/textview/MaterialTextView;

    .line 34
    .line 35
    const v0, 0x7f0901b8

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    check-cast p1, Landroid/widget/ImageView;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;->dragHandle:Landroid/widget/ImageView;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final bindView(Lcom/mikepenz/fastadapter/items/AbstractItem;Ljava/util/List;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p2, p1, Lcom/fsck/k9/ui/settings/AccountItem;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 7
    .line 8
    invoke-virtual {p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iget-object v3, p0, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;->email:Lcom/google/android/material/textview/MaterialTextView;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getEmail()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getEmail()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-boolean p1, p1, Lcom/fsck/k9/ui/settings/AccountItem;->isDraggable:Z

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v1, v2

    .line 55
    :goto_1
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;->dragHandle:Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final unbindView(Lcom/mikepenz/fastadapter/items/AbstractItem;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;->email:Lcom/google/android/material/textview/MaterialTextView;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
