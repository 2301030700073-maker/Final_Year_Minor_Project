.class public abstract Lcom/fsck/k9/ui/settings/export/CheckBoxItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public identifier:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/fsck/k9/ui/settings/export/CheckBoxItem;->identifier:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/fsck/k9/ui/settings/export/CheckBoxViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/settings/export/CheckBoxItem;->bindView(Lcom/fsck/k9/ui/settings/export/CheckBoxViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/fsck/k9/ui/settings/export/CheckBoxViewHolder;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iget-object p2, p1, Lcom/fsck/k9/ui/settings/export/CheckBoxViewHolder;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->isSelected:Z

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->isEnabled:Z

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->isEnabled:Z

    .line 22
    .line 23
    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getIdentifier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/ui/settings/export/CheckBoxItem;->identifier:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setIdentifier(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/fsck/k9/ui/settings/export/CheckBoxItem;->identifier:J

    .line 2
    .line 3
    return-void
.end method
