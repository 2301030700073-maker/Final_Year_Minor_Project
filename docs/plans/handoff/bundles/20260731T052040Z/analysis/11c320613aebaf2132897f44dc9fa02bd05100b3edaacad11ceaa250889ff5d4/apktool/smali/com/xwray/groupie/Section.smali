.class public final Lcom/xwray/groupie/Section;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/xwray/groupie/Group;
.implements Lcom/xwray/groupie/GroupDataObserver;


# instance fields
.field public final children:Ljava/util/ArrayList;

.field public final header:Lcom/xwray/groupie/Group;

.field public hideWhenEmpty:Z

.field public isHeaderAndFooterVisible:Z

.field public isPlaceholderVisible:Z

.field public final listUpdateCallback:Lokhttp3/ConnectionPool;

.field public final observable:Lokhttp3/Headers$Builder;

.field public placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/xwray/groupie/Section;-><init>(Lcom/xwray/groupie/viewbinding/BindableItem;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/xwray/groupie/viewbinding/BindableItem;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/xwray/groupie/Section;->children:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-boolean v2, p0, Lcom/xwray/groupie/Section;->hideWhenEmpty:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/xwray/groupie/Section;->isHeaderAndFooterVisible:Z

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 25
    .line 26
    new-instance v1, Lokhttp3/ConnectionPool;

    .line 27
    .line 28
    const/16 v2, 0xc

    .line 29
    .line 30
    invoke-direct {v1, p0, v2}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/xwray/groupie/Section;->listUpdateCallback:Lokhttp3/ConnectionPool;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/xwray/groupie/Section;->header:Lcom/xwray/groupie/Group;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iput-object p0, p1, Lcom/xwray/groupie/Item;->parentDataObserver:Lcom/xwray/groupie/GroupDataObserver;

    .line 40
    .line 41
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/xwray/groupie/Group;

    .line 63
    .line 64
    invoke-interface {v1, p0}, Lcom/xwray/groupie/Group;->registerGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getItemCountWithoutFooter()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/xwray/groupie/Section;->notifyItemRangeInserted(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->refreshEmptyState()V

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xwray/groupie/Section;->children:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/xwray/groupie/Group;

    .line 37
    .line 38
    invoke-interface {v3, p0}, Lcom/xwray/groupie/Group;->unregisterGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/xwray/groupie/Group;

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lcom/xwray/groupie/Section;->getItemCountBeforeGroup(Lcom/xwray/groupie/Group;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-interface {v2}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iget-object v4, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 70
    .line 71
    invoke-virtual {v4, p0, v3, v2}, Lokhttp3/Headers$Builder;->onItemRangeRemoved(Lcom/xwray/groupie/Section;II)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->refreshEmptyState()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final getGroup(I)Lcom/xwray/groupie/Group;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/xwray/groupie/Section;->header:Lcom/xwray/groupie/Group;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr p1, v0

    .line 17
    iget-boolean v0, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    sub-int/2addr p1, v0

    .line 27
    iget-object v0, p0, Lcom/xwray/groupie/Section;->children:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eq p1, v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/xwray/groupie/Group;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 43
    .line 44
    const-string v1, "Wanted group at position "

    .line 45
    .line 46
    const-string v2, " but there are only "

    .line 47
    .line 48
    invoke-static {v1, p1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getGroupCount()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p0, " groups"

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method public final getGroupCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    iget-object p0, p0, Lcom/xwray/groupie/Section;->children:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    add-int/2addr p0, v0

    .line 15
    return p0
.end method

.method public final getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xwray/groupie/Section;->header:Lcom/xwray/groupie/Group;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/xwray/groupie/Section;->isHeaderAndFooterVisible:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final getHeaderItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/xwray/groupie/Section;->header:Lcom/xwray/groupie/Group;

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getItem(I)Lcom/xwray/groupie/Item;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getGroupCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/xwray/groupie/Section;->getGroup(I)Lcom/xwray/groupie/Group;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/2addr v3, v1

    .line 18
    if-le v3, p1, :cond_0

    .line 19
    .line 20
    sub-int/2addr p1, v1

    .line 21
    invoke-interface {v2, p1}, Lcom/xwray/groupie/Group;->getItem(I)Lcom/xwray/groupie/Item;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    move v1, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 31
    .line 32
    const-string v1, "Wanted item at "

    .line 33
    .line 34
    const-string v2, " but there are only "

    .line 35
    .line 36
    invoke-static {v1, p1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getItemCount()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " items"

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public final getItemCount()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getGroupCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/xwray/groupie/Section;->getGroup(I)Lcom/xwray/groupie/Group;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return v1
.end method

.method public final getItemCountBeforeGroup(Lcom/xwray/groupie/Group;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/xwray/groupie/Section;->header:Lcom/xwray/groupie/Group;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-boolean v2, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 19
    .line 20
    if-lez v2, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 23
    .line 24
    if-ne p1, v3, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    add-int/2addr v0, v2

    .line 28
    iget-object v2, p0, Lcom/xwray/groupie/Section;->children:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ltz p1, :cond_2

    .line 35
    .line 36
    add-int/2addr v0, p1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    const/4 v0, -0x1

    .line 42
    :goto_0
    move p1, v1

    .line 43
    :goto_1
    if-ge v1, v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/xwray/groupie/Section;->getGroup(I)Lcom/xwray/groupie/Group;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/2addr p1, v2

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    return p1
.end method

.method public final getItemCountWithoutFooter()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/xwray/groupie/Section;->children:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderItemCount()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    add-int/2addr p0, v0

    .line 26
    return p0
.end method

.method public final getPosition(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getGroupCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/xwray/groupie/Section;->getGroup(I)Lcom/xwray/groupie/Group;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2, p1}, Lcom/xwray/groupie/Group;->getPosition(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ltz v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v3, v1

    .line 20
    return v3

    .line 21
    :cond_0
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
    const/4 p0, -0x1

    .line 30
    return p0
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lokhttp3/Headers$Builder;->onItemRangeInserted(Lcom/xwray/groupie/Section;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onItemChanged(Lcom/xwray/groupie/Group;ILjava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/Section;->getItemCountBeforeGroup(Lcom/xwray/groupie/Group;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 7
    .line 8
    iget-object p2, p2, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/xwray/groupie/GroupDataObserver;

    .line 23
    .line 24
    invoke-interface {v1, p0, p1, p3}, Lcom/xwray/groupie/GroupDataObserver;->onItemChanged(Lcom/xwray/groupie/Group;ILjava/lang/Integer;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final onItemMoved(Lcom/xwray/groupie/Group;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/Section;->getItemCountBeforeGroup(Lcom/xwray/groupie/Group;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p2, p1

    .line 6
    add-int/2addr p1, p3

    .line 7
    iget-object p3, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 8
    .line 9
    invoke-virtual {p3, p0, p2, p1}, Lokhttp3/Headers$Builder;->onItemMoved(Lcom/xwray/groupie/Group;II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onItemRangeChanged(Lcom/xwray/groupie/Group;IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/Section;->getItemCountBeforeGroup(Lcom/xwray/groupie/Group;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 7
    .line 8
    invoke-virtual {p2, p0, p1, p3, p4}, Lokhttp3/Headers$Builder;->onItemRangeChanged(Lcom/xwray/groupie/Group;IILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onItemRangeInserted(Lcom/xwray/groupie/Section;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/Section;->getItemCountBeforeGroup(Lcom/xwray/groupie/Group;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 7
    .line 8
    invoke-virtual {p2, p0, p1, p3}, Lokhttp3/Headers$Builder;->onItemRangeInserted(Lcom/xwray/groupie/Section;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->refreshEmptyState()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onItemRangeRemoved(Lcom/xwray/groupie/Section;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/Section;->getItemCountBeforeGroup(Lcom/xwray/groupie/Group;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 7
    .line 8
    invoke-virtual {p2, p0, p1, p3}, Lokhttp3/Headers$Builder;->onItemRangeRemoved(Lcom/xwray/groupie/Section;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->refreshEmptyState()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final refreshEmptyState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xwray/groupie/Section;->children:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v1, :cond_4

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput-boolean v3, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderItemCount()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0, v0, v4}, Lokhttp3/Headers$Builder;->onItemRangeRemoved(Lcom/xwray/groupie/Section;II)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/xwray/groupie/Section;->isHeaderAndFooterVisible:Z

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_3
    iput-boolean v4, p0, Lcom/xwray/groupie/Section;->isHeaderAndFooterVisible:Z

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderItemCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0, v3, v0}, Lcom/xwray/groupie/Section;->notifyItemRangeInserted(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getItemCountWithoutFooter()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p0, v0, v3}, Lcom/xwray/groupie/Section;->notifyItemRangeInserted(II)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/xwray/groupie/Section;->hideWhenEmpty:Z

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/xwray/groupie/Section;->isHeaderAndFooterVisible:Z

    .line 70
    .line 71
    if-nez v0, :cond_5

    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 74
    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderItemCount()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-boolean v1, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 83
    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    iget-object v1, p0, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move v4, v3

    .line 92
    :goto_2
    add-int/2addr v4, v0

    .line 93
    iput-boolean v3, p0, Lcom/xwray/groupie/Section;->isHeaderAndFooterVisible:Z

    .line 94
    .line 95
    iput-boolean v3, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 96
    .line 97
    invoke-virtual {v2, p0, v3, v4}, Lokhttp3/Headers$Builder;->onItemRangeRemoved(Lcom/xwray/groupie/Section;II)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_7
    iget-boolean v0, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 102
    .line 103
    if-nez v0, :cond_9

    .line 104
    .line 105
    iget-object v0, p0, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 106
    .line 107
    if-nez v0, :cond_8

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_8
    iput-boolean v4, p0, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderItemCount()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iget-object v1, p0, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0, v4}, Lcom/xwray/groupie/Section;->notifyItemRangeInserted(II)V

    .line 122
    .line 123
    .line 124
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/xwray/groupie/Section;->isHeaderAndFooterVisible:Z

    .line 125
    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    :goto_4
    return-void

    .line 129
    :cond_a
    iput-boolean v4, p0, Lcom/xwray/groupie/Section;->isHeaderAndFooterVisible:Z

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getHeaderItemCount()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p0, v3, v0}, Lcom/xwray/groupie/Section;->notifyItemRangeInserted(II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->getItemCountWithoutFooter()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {p0, v0, v3}, Lcom/xwray/groupie/Section;->notifyItemRangeInserted(II)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final registerGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    const-string v0, "Observer "

    .line 4
    .line 5
    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " is already registered."

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final unregisterGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    iget-object v0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final update(Ljava/util/Collection;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xwray/groupie/Section;->children:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/xwray/groupie/DiffCallback;

    .line 9
    .line 10
    invoke-direct {v2, v0, p1}, Lcom/xwray/groupie/DiffCallback;-><init>(Ljava/util/ArrayList;Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/xwray/groupie/Group;

    .line 32
    .line 33
    invoke-interface {v2, p0}, Lcom/xwray/groupie/Group;->unregisterGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/xwray/groupie/Group;

    .line 58
    .line 59
    invoke-interface {v0, p0}, Lcom/xwray/groupie/Group;->registerGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/xwray/groupie/Section;->listUpdateCallback:Lokhttp3/ConnectionPool;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/xwray/groupie/Section;->refreshEmptyState()V

    .line 69
    .line 70
    .line 71
    return-void
.end method
