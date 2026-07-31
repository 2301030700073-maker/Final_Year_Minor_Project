.class public final Lcom/fsck/k9/ui/managefolders/FolderListItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final folderIconResource:I

.field public final folderId:J

.field public identifier:J


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lcom/fsck/k9/ui/managefolders/FolderListItem;->folderId:J

    .line 5
    .line 6
    iput p1, p0, Lcom/fsck/k9/ui/managefolders/FolderListItem;->folderIconResource:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/fsck/k9/ui/managefolders/FolderListItem;->displayName:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p2, p0, Lcom/fsck/k9/ui/managefolders/FolderListItem;->identifier:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/fsck/k9/ui/managefolders/FolderListViewHolder;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p1, Lcom/fsck/k9/ui/managefolders/FolderListViewHolder;->icon:Landroid/widget/ImageView;

    .line 10
    .line 11
    iget v0, p0, Lcom/fsck/k9/ui/managefolders/FolderListItem;->folderIconResource:I

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lcom/fsck/k9/ui/managefolders/FolderListViewHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/FolderListItem;->displayName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final getIdentifier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/ui/managefolders/FolderListItem;->identifier:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLayoutRes()I
    .locals 0

    .line 1
    const p0, 0x7f0c0172

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/fsck/k9/ui/managefolders/FolderListViewHolder;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/managefolders/FolderListViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final setIdentifier(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/fsck/k9/ui/managefolders/FolderListItem;->identifier:J

    .line 2
    .line 3
    return-void
.end method
