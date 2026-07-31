.class public final Lcom/fsck/k9/ui/settings/export/AccountItem;
.super Lcom/fsck/k9/ui/settings/export/CheckBoxItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final email:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;->accountNumber:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    add-long/2addr v0, v2

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/ui/settings/export/CheckBoxItem;-><init>(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;->displayName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/export/AccountItem;->displayName:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;->email:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/AccountItem;->email:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/fsck/k9/ui/settings/export/AccountViewHolder;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/ui/settings/export/CheckBoxItem;->bindView(Lcom/fsck/k9/ui/settings/export/CheckBoxViewHolder;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p1, Lcom/fsck/k9/ui/settings/export/AccountViewHolder;->accountDisplayName:Lcom/google/android/material/textview/MaterialTextView;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/export/AccountItem;->displayName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/export/AccountViewHolder;->accountEmail:Lcom/google/android/material/textview/MaterialTextView;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/AccountItem;->email:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final bindView(Lcom/fsck/k9/ui/settings/export/CheckBoxViewHolder;Ljava/util/List;)V
    .locals 1

    .line 24
    check-cast p1, Lcom/fsck/k9/ui/settings/export/AccountViewHolder;

    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/ui/settings/export/CheckBoxItem;->bindView(Lcom/fsck/k9/ui/settings/export/CheckBoxViewHolder;Ljava/util/List;)V

    .line 27
    iget-object p2, p1, Lcom/fsck/k9/ui/settings/export/AccountViewHolder;->accountDisplayName:Lcom/google/android/material/textview/MaterialTextView;

    .line 28
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/export/AccountItem;->displayName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/export/AccountViewHolder;->accountEmail:Lcom/google/android/material/textview/MaterialTextView;

    .line 30
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/AccountItem;->email:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getLayoutRes()I
    .locals 0

    .line 1
    const p0, 0x7f0c056c

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const p0, 0x7f0903b9

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/fsck/k9/ui/settings/export/AccountViewHolder;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/settings/export/AccountViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
