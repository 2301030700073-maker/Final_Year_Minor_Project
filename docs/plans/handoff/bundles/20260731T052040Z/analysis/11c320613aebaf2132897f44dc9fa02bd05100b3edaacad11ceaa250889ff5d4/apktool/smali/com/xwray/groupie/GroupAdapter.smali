.class public Lcom/xwray/groupie/GroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/xwray/groupie/GroupDataObserver;


# instance fields
.field public final asyncDiffUtil:Lcom/xwray/groupie/AsyncDiffUtil;

.field public final diffUtilCallbacks:Lokhttp3/ConnectionPool;

.field public final groups:Ljava/util/ArrayList;

.field public lastItemForViewTypeLookup:Lcom/xwray/groupie/Item;

.field public onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

.field public onItemLongClickListener:Lcom/xwray/groupie/OnItemLongClickListener;

.field public spanCount:I

.field public final spanSizeLookup:Lcom/xwray/groupie/GroupAdapter$2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/xwray/groupie/GroupAdapter;->spanCount:I

    .line 13
    .line 14
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 15
    .line 16
    const/16 v1, 0xb

    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->diffUtilCallbacks:Lokhttp3/ConnectionPool;

    .line 22
    .line 23
    new-instance v1, Lcom/xwray/groupie/AsyncDiffUtil;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/xwray/groupie/AsyncDiffUtil;-><init>(Lokhttp3/ConnectionPool;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/xwray/groupie/GroupAdapter;->asyncDiffUtil:Lcom/xwray/groupie/AsyncDiffUtil;

    .line 29
    .line 30
    new-instance v0, Lcom/xwray/groupie/GroupAdapter$2;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, p0, v1}, Lcom/xwray/groupie/GroupAdapter$2;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->spanSizeLookup:Lcom/xwray/groupie/GroupAdapter$2;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final add(Lcom/xwray/groupie/Group;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p1, p0}, Lcom/xwray/groupie/Group;->registerGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "Group cannot be null"

    .line 24
    .line 25
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final addAll(Ljava/util/Collection;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/xwray/groupie/Group;

    .line 30
    .line 31
    invoke-interface {v4}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    add-int/2addr v3, v5

    .line 36
    invoke-interface {v4, p0}, Lcom/xwray/groupie/Group;->registerGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    const-string p0, "List of groups can\'t contain null!"

    .line 48
    .line 49
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/xwray/groupie/Group;

    .line 18
    .line 19
    invoke-interface {v2, p0}, Lcom/xwray/groupie/Group;->unregisterGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final getAdapterPosition(Lcom/xwray/groupie/Group;)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v0, p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/xwray/groupie/Group;

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v1, v2

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v1
.end method

.method public final getGroupAtAdapterPosition(I)Lcom/xwray/groupie/Group;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/xwray/groupie/Group;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-int v3, p1, v0

    .line 25
    .line 26
    if-ge v3, v2, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    invoke-interface {v1}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string p0, " in group adapter but there are only "

    .line 36
    .line 37
    const-string v1, " items"

    .line 38
    .line 39
    const-string v2, "Requested position "

    .line 40
    .line 41
    invoke-static {v2, p1, p0, v0, v1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/String;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/xwray/groupie/Item;->getId()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->lastItemForViewTypeLookup:Lcom/xwray/groupie/Item;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/xwray/groupie/Item;->getLayout()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const-string p0, "Invalid position "

    .line 17
    .line 18
    invoke-static {p1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 50
    check-cast p1, Lcom/xwray/groupie/GroupieViewHolder;

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/xwray/groupie/GroupieViewHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p2, v0}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/xwray/groupie/GroupAdapter;->onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/xwray/groupie/GroupAdapter;->onItemLongClickListener:Lcom/xwray/groupie/OnItemLongClickListener;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object v0, p1, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/xwray/groupie/GroupieViewHolder;->onClickListener:Landroidx/preference/Preference$1;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p1, Lcom/xwray/groupie/GroupieViewHolder;->onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 28
    .line 29
    :cond_0
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/xwray/groupie/Item;->isLongClickable()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    .line 39
    iget-object v2, p1, Lcom/xwray/groupie/GroupieViewHolder;->onLongClickListener:Lcom/xwray/groupie/GroupieViewHolder$2;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 42
    .line 43
    .line 44
    iput-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->onItemLongClickListener:Lcom/xwray/groupie/OnItemLongClickListener;

    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/xwray/groupie/Item;->bind(Lcom/xwray/groupie/GroupieViewHolder;ILjava/util/List;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/xwray/groupie/GroupAdapter;->lastItemForViewTypeLookup:Lcom/xwray/groupie/Item;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/xwray/groupie/Item;->getLayout()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne v1, p2, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/xwray/groupie/GroupAdapter;->lastItemForViewTypeLookup:Lcom/xwray/groupie/Item;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    iget-object v3, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {v3}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ge v1, v4, :cond_2

    .line 31
    .line 32
    invoke-static {v1, v3}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lcom/xwray/groupie/Item;->getLayout()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ne v4, p2, :cond_1

    .line 41
    .line 42
    move-object p0, v3

    .line 43
    :goto_1
    invoke-virtual {p0}, Lcom/xwray/groupie/Item;->getLayout()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/Item;->createViewHolder(Landroid/view/View;)Lcom/xwray/groupie/GroupieViewHolder;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string p0, "Could not find model for view type: "

    .line 60
    .line 61
    invoke-static {p2, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    return-object p0
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/xwray/groupie/GroupieViewHolder;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0
.end method

.method public final onItemChanged(Lcom/xwray/groupie/Group;ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/GroupAdapter;->getAdapterPosition(Lcom/xwray/groupie/Group;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p1, p2

    .line 6
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onItemMoved(Lcom/xwray/groupie/Group;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/GroupAdapter;->getAdapterPosition(Lcom/xwray/groupie/Group;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p2, p1

    .line 6
    add-int/2addr p1, p3

    .line 7
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onItemRangeChanged(Lcom/xwray/groupie/Group;IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/GroupAdapter;->getAdapterPosition(Lcom/xwray/groupie/Group;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p1, p2

    .line 6
    invoke-virtual {p0, p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onItemRangeInserted(Lcom/xwray/groupie/Section;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/GroupAdapter;->getAdapterPosition(Lcom/xwray/groupie/Group;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p1, p2

    .line 6
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onItemRangeRemoved(Lcom/xwray/groupie/Section;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/GroupAdapter;->getAdapterPosition(Lcom/xwray/groupie/Group;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p1, p2

    .line 6
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xwray/groupie/GroupieViewHolder;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xwray/groupie/GroupieViewHolder;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xwray/groupie/GroupieViewHolder;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/Item;->unbind(Lcom/xwray/groupie/GroupieViewHolder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setNewGroups(Ljava/util/Collection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/xwray/groupie/Group;

    .line 18
    .line 19
    invoke-interface {v2, p0}, Lcom/xwray/groupie/Group;->unregisterGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/xwray/groupie/Group;

    .line 44
    .line 45
    invoke-interface {v0, p0}, Lcom/xwray/groupie/Group;->registerGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return-void
.end method
