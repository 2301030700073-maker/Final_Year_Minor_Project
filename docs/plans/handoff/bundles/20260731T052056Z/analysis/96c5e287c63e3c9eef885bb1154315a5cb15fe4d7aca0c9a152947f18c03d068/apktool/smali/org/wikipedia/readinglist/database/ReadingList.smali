.class public final Lorg/wikipedia/readinglist/database/ReadingList;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient accentInvariantTitle$delegate:Lkotlin/SynchronizedLazyImpl;

.field public atime:J

.field public description:Ljava/lang/String;

.field public dirty:Z

.field public id:J

.field public listTitle:Ljava/lang/String;

.field public mtime:J

.field public final pages:Ljava/util/ArrayList;

.field public remoteId:J

.field public transient selected:Z

.field public final sizeBytes:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-wide v5, v3

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 46
    invoke-direct/range {v0 .. v13}, Lorg/wikipedia/readinglist/database/ReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJZJ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->listTitle:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p3, p0, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 12
    .line 13
    iput-wide p5, p0, Lorg/wikipedia/readinglist/database/ReadingList;->atime:J

    .line 14
    .line 15
    iput-wide p7, p0, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 16
    .line 17
    iput-wide p9, p0, Lorg/wikipedia/readinglist/database/ReadingList;->sizeBytes:J

    .line 18
    .line 19
    iput-boolean p11, p0, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    .line 20
    .line 21
    iput-wide p12, p0, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance p1, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/16 p2, 0x15

    .line 33
    .line 34
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 38
    .line 39
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lorg/wikipedia/readinglist/database/ReadingList;->accentInvariantTitle$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final getAccentInvariantTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->accentInvariantTitle$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getNumPagesOffline()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 28
    .line 29
    iget-boolean v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget-wide v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 34
    .line 35
    const-wide/16 v3, 0x1

    .line 36
    .line 37
    cmp-long v1, v1, v3

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    if-ltz v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    throw p0

    .line 51
    :cond_3
    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->listTitle:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 10
    .line 11
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/ActivityLifecycleHandler;->currentActivity:Landroid/app/Activity;

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_0
    const v0, 0x7f1200fc

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    :cond_1
    return-object p0
.end method

.method public final isDefault()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 6
    .line 7
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 12
    .line 13
    iget-object v0, v0, Lorg/wikipedia/ActivityLifecycleHandler;->currentActivity:Landroid/app/Activity;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    const v1, 0x7f1200fc

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method
