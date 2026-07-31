.class public final Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __deleteAdapterOfReadingList:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

.field public final __insertAdapterOfReadingList:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __updateAdapterOfReadingList:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 7
    .line 8
    const/16 v0, 0xf

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__insertAdapterOfReadingList:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 14
    .line 15
    new-instance p1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 16
    .line 17
    const/4 v0, 0x7

    .line 18
    invoke-direct {p1, v0}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__deleteAdapterOfReadingList:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 22
    .line 23
    new-instance p1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__updateAdapterOfReadingList:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final createList(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/io/Serializable;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    const-string v0, "Attempted to create list with empty title (default)."

    .line 11
    .line 12
    invoke-virtual {p1, v0, p2}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p3}, Lorg/wikipedia/dataclient/Service$-CC;->getDefaultList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/wikipedia/dataclient/Service$-CC;->$private$createNewList(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final deleteList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lorg/wikipedia/dataclient/Service$-CC;->deleteList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final getAllListsWithUnsyncedPages(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/wikipedia/dataclient/Service$-CC;->getAllListsWithUnsyncedPages$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getListsWithoutContents(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p0, v1, v2, v0, p1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final markAllListsUnsynced(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {p0, v1, v2, v0, p1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    if-ne p0, p1, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method
