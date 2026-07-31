.class public final Lcom/xwray/groupie/DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final newBodyItemCount:I

.field public final newGroups:Ljava/util/Collection;

.field public final oldBodyItemCount:I

.field public final oldGroups:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/xwray/groupie/DiffCallback;->oldBodyItemCount:I

    .line 9
    .line 10
    invoke-static {p2}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/xwray/groupie/DiffCallback;->newBodyItemCount:I

    .line 15
    .line 16
    iput-object p1, p0, Lcom/xwray/groupie/DiffCallback;->oldGroups:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/xwray/groupie/DiffCallback;->newGroups:Ljava/util/Collection;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xwray/groupie/DiffCallback;->oldGroups:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/xwray/groupie/DiffCallback;->newGroups:Ljava/util/Collection;

    .line 8
    .line 9
    invoke-static {p2, p0}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final areItemsTheSame(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xwray/groupie/DiffCallback;->oldGroups:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/xwray/groupie/DiffCallback;->newGroups:Ljava/util/Collection;

    .line 8
    .line 9
    invoke-static {p2, p0}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/xwray/groupie/Item;->getLayout()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p1}, Lcom/xwray/groupie/Item;->getLayout()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq p2, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/xwray/groupie/Item;->getId()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p1}, Lcom/xwray/groupie/Item;->getId()J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    cmp-long p0, v0, p0

    .line 33
    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final getChangePayload(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xwray/groupie/DiffCallback;->oldGroups:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/xwray/groupie/DiffCallback;->newGroups:Ljava/util/Collection;

    .line 8
    .line 9
    invoke-static {p2, p0}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final getNewListSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xwray/groupie/DiffCallback;->newBodyItemCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xwray/groupie/DiffCallback;->oldBodyItemCount:I

    .line 2
    .line 3
    return p0
.end method
