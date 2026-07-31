.class public final Lapp/k9mail/feature/settings/import/ui/AccountItem;
.super Lapp/k9mail/feature/settings/import/ui/ImportListItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final layoutRes:I

.field public final type:I


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;)V
    .locals 4

    .line 1
    iget v0, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->accountIndex:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    add-long/2addr v0, v2

    .line 7
    iget-object v2, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, v2}, Lapp/k9mail/feature/settings/import/ui/ImportListItem;-><init>(JLapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->displayName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AccountItem;->displayName:Ljava/lang/String;

    .line 15
    .line 16
    const p1, 0x7f0903bd

    .line 17
    .line 18
    .line 19
    iput p1, p0, Lapp/k9mail/feature/settings/import/ui/AccountItem;->type:I

    .line 20
    .line 21
    const p1, 0x7f0c056e

    .line 22
    .line 23
    .line 24
    iput p1, p0, Lapp/k9mail/feature/settings/import/ui/AccountItem;->layoutRes:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AccountViewHolder;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lapp/k9mail/feature/settings/import/ui/ImportListItem;->bindView(Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lapp/k9mail/feature/settings/import/ui/AccountViewHolder;->accountDisplayName:Lcom/google/android/material/textview/MaterialTextView;

    .line 10
    .line 11
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/AccountItem;->displayName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final bindView(Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;Ljava/util/List;)V
    .locals 0

    .line 17
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AccountViewHolder;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-super {p0, p1, p2}, Lapp/k9mail/feature/settings/import/ui/ImportListItem;->bindView(Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;Ljava/util/List;)V

    .line 20
    iget-object p1, p1, Lapp/k9mail/feature/settings/import/ui/AccountViewHolder;->accountDisplayName:Lcom/google/android/material/textview/MaterialTextView;

    .line 21
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/AccountItem;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getLayoutRes()I
    .locals 0

    .line 1
    iget p0, p0, Lapp/k9mail/feature/settings/import/ui/AccountItem;->layoutRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget p0, p0, Lapp/k9mail/feature/settings/import/ui/AccountItem;->type:I

    .line 2
    .line 3
    return p0
.end method

.method public final getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lapp/k9mail/feature/settings/import/ui/AccountViewHolder;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lapp/k9mail/feature/settings/import/ui/AccountViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
