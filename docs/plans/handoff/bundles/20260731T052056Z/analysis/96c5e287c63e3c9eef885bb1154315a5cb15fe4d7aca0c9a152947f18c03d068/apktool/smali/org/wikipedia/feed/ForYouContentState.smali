.class public final Lorg/wikipedia/feed/ForYouContentState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final emptyState:Lorg/wikipedia/feed/FeedEmptyState;

.field public final error:Ljava/lang/Throwable;

.field public final isInitialLoading:Z

.field public final isInterestModuleHidden:Z

.field public final isLoadingMore:Z

.field public final modules:Ljava/util/List;

.field public final wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public synthetic constructor <init>()V
    .locals 10

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 2
    .line 3
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 4
    .line 5
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getHomeLanguageCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    move-object v2, p0

    .line 24
    invoke-direct/range {v2 .. v9}, Lorg/wikipedia/feed/ForYouContentState;-><init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;ZLorg/wikipedia/feed/FeedEmptyState;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;ZLorg/wikipedia/feed/FeedEmptyState;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouContentState;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 31
    iput-boolean p3, p0, Lorg/wikipedia/feed/ForYouContentState;->isInitialLoading:Z

    .line 32
    iput-boolean p4, p0, Lorg/wikipedia/feed/ForYouContentState;->isLoadingMore:Z

    .line 33
    iput-object p5, p0, Lorg/wikipedia/feed/ForYouContentState;->error:Ljava/lang/Throwable;

    .line 34
    iput-boolean p6, p0, Lorg/wikipedia/feed/ForYouContentState;->isInterestModuleHidden:Z

    .line 35
    iput-object p7, p0, Lorg/wikipedia/feed/ForYouContentState;->emptyState:Lorg/wikipedia/feed/FeedEmptyState;

    return-void
.end method

.method public static copy$default(Lorg/wikipedia/feed/ForYouContentState;Ljava/util/ArrayList;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;ZLorg/wikipedia/feed/FeedEmptyState;I)Lorg/wikipedia/feed/ForYouContentState;
    .locals 8

    .line 1
    move/from16 v0, p8

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    and-int/lit8 p1, v0, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lorg/wikipedia/feed/ForYouContentState;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 15
    .line 16
    :cond_1
    move-object v2, p2

    .line 17
    and-int/lit8 p1, v0, 0x4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-boolean p3, p0, Lorg/wikipedia/feed/ForYouContentState;->isInitialLoading:Z

    .line 22
    .line 23
    :cond_2
    move v3, p3

    .line 24
    and-int/lit8 p1, v0, 0x8

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-boolean p4, p0, Lorg/wikipedia/feed/ForYouContentState;->isLoadingMore:Z

    .line 29
    .line 30
    :cond_3
    move v4, p4

    .line 31
    and-int/lit8 p1, v0, 0x10

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-object p5, p0, Lorg/wikipedia/feed/ForYouContentState;->error:Ljava/lang/Throwable;

    .line 36
    .line 37
    :cond_4
    move-object v5, p5

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    and-int/lit8 p1, v0, 0x40

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    iget-boolean p6, p0, Lorg/wikipedia/feed/ForYouContentState;->isInterestModuleHidden:Z

    .line 46
    .line 47
    :cond_5
    move v6, p6

    .line 48
    and-int/lit16 p1, v0, 0x80

    .line 49
    .line 50
    if-eqz p1, :cond_6

    .line 51
    .line 52
    iget-object p7, p0, Lorg/wikipedia/feed/ForYouContentState;->emptyState:Lorg/wikipedia/feed/FeedEmptyState;

    .line 53
    .line 54
    :cond_6
    move-object v7, p7

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v0, Lorg/wikipedia/feed/ForYouContentState;

    .line 65
    .line 66
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/feed/ForYouContentState;-><init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;ZLorg/wikipedia/feed/FeedEmptyState;)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/feed/ForYouContentState;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/wikipedia/feed/ForYouContentState;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/feed/ForYouContentState;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 23
    .line 24
    iget-object v1, p1, Lorg/wikipedia/feed/ForYouContentState;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-boolean v0, p0, Lorg/wikipedia/feed/ForYouContentState;->isInitialLoading:Z

    .line 34
    .line 35
    iget-boolean v1, p1, Lorg/wikipedia/feed/ForYouContentState;->isInitialLoading:Z

    .line 36
    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-boolean v0, p0, Lorg/wikipedia/feed/ForYouContentState;->isLoadingMore:Z

    .line 41
    .line 42
    iget-boolean v1, p1, Lorg/wikipedia/feed/ForYouContentState;->isLoadingMore:Z

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/feed/ForYouContentState;->error:Ljava/lang/Throwable;

    .line 48
    .line 49
    iget-object v1, p1, Lorg/wikipedia/feed/ForYouContentState;->error:Ljava/lang/Throwable;

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget-boolean v0, p0, Lorg/wikipedia/feed/ForYouContentState;->isInterestModuleHidden:Z

    .line 59
    .line 60
    iget-boolean v1, p1, Lorg/wikipedia/feed/ForYouContentState;->isInterestModuleHidden:Z

    .line 61
    .line 62
    if-eq v0, v1, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouContentState;->emptyState:Lorg/wikipedia/feed/FeedEmptyState;

    .line 66
    .line 67
    iget-object p1, p1, Lorg/wikipedia/feed/ForYouContentState;->emptyState:Lorg/wikipedia/feed/FeedEmptyState;

    .line 68
    .line 69
    if-eq p0, p1, :cond_8

    .line 70
    .line 71
    :goto_0
    const/4 p0, 0x0

    .line 72
    return p0

    .line 73
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 74
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouContentState;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-boolean v0, p0, Lorg/wikipedia/feed/ForYouContentState;->isInitialLoading:Z

    .line 19
    .line 20
    const/16 v2, 0x4d5

    .line 21
    .line 22
    const/16 v3, 0x4cf

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v0, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v2

    .line 29
    :goto_0
    add-int/2addr v1, v0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    iget-boolean v0, p0, Lorg/wikipedia/feed/ForYouContentState;->isLoadingMore:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    move v0, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v0, v2

    .line 39
    :goto_1
    add-int/2addr v1, v0

    .line 40
    mul-int/lit8 v1, v1, 0x1f

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iget-object v4, p0, Lorg/wikipedia/feed/ForYouContentState;->error:Ljava/lang/Throwable;

    .line 44
    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    move v4, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    :goto_2
    add-int/2addr v1, v4

    .line 54
    mul-int/lit8 v1, v1, 0x1f

    .line 55
    .line 56
    add-int/2addr v1, v2

    .line 57
    mul-int/lit8 v1, v1, 0x1f

    .line 58
    .line 59
    iget-boolean v4, p0, Lorg/wikipedia/feed/ForYouContentState;->isInterestModuleHidden:Z

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    move v2, v3

    .line 64
    :cond_3
    add-int/2addr v1, v2

    .line 65
    mul-int/lit8 v1, v1, 0x1f

    .line 66
    .line 67
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouContentState;->emptyState:Lorg/wikipedia/feed/FeedEmptyState;

    .line 68
    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    :goto_3
    add-int/2addr v1, v0

    .line 77
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ForYouContentState(modules="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", wikiSite="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouContentState;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isInitialLoading="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lorg/wikipedia/feed/ForYouContentState;->isInitialLoading:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isLoadingMore="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lorg/wikipedia/feed/ForYouContentState;->isLoadingMore:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", error="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouContentState;->error:Ljava/lang/Throwable;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", canLoadMore=false, isInterestModuleHidden="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lorg/wikipedia/feed/ForYouContentState;->isInterestModuleHidden:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", emptyState="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouContentState;->emptyState:Lorg/wikipedia/feed/FeedEmptyState;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, ")"

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
