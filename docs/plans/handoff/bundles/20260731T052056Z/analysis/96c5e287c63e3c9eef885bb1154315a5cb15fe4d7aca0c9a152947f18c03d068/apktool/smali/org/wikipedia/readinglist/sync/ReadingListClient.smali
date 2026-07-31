.class public final Lorg/wikipedia/readinglist/sync/ReadingListClient;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public lastDateHeader:Lj$/time/Instant;

.field public final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 5
    .line 6
    return-void
.end method

.method public static isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 7
    .line 8
    iget-object p1, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->serviceError:Lorg/wikipedia/dataclient/restbase/RbServiceError;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lorg/wikipedia/dataclient/restbase/RbServiceError;->errorKey:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p1, Lorg/wikipedia/dataclient/restbase/RbServiceError;->title:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    :cond_0
    invoke-static {v0, p0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 p1, 0x1

    .line 27
    if-ne p0, p1, :cond_1

    .line 28
    .line 29
    return p1

    .line 30
    :cond_1
    return v1
.end method


# virtual methods
.method public final addPageToList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)J
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/wikipedia/dataclient/RestService;->addEntryToReadingList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p1, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p2, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 30
    .line 31
    .line 32
    iget-wide p0, p2, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->id:J

    .line 33
    .line 34
    return-wide p0

    .line 35
    :cond_0
    const-string p0, "Incorrect response format."

    .line 36
    .line 37
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 p0, 0x0

    .line 41
    .line 42
    return-wide p0
.end method

.method public final addPagesToList(Ljava/lang/String;JLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    const/16 v1, 0x32

    .line 10
    .line 11
    invoke-static {p4, v1, v1}, Lkotlin/collections/CollectionsKt;->windowed(Ljava/lang/Iterable;II)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :try_start_0
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 39
    .line 40
    iget-object v2, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 41
    .line 42
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;

    .line 47
    .line 48
    invoke-direct {v3, v1}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;-><init>(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, p2, p3, p1, v3}, Lorg/wikipedia/dataclient/RestService;->addEntriesToReadingList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;)Lretrofit2/Call;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, v1, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v2, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;->batch:[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    .line 69
    .line 70
    array-length v2, v1

    .line 71
    const/4 v3, 0x0

    .line 72
    :goto_0
    if-ge v3, v2, :cond_0

    .line 73
    .line 74
    aget-object v4, v1, v3

    .line 75
    .line 76
    iget-wide v4, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->id:J

    .line 77
    .line 78
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 91
    .line 92
    const-string p1, "Incorrect response format."

    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_1
    const-string p1, "entry-limit"

    .line 99
    .line 100
    invoke-static {p1, p0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    throw p0

    .line 108
    :cond_4
    :goto_2
    return-object v0
.end method

.method public final createList(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)J
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lorg/wikipedia/dataclient/RestService;->createReadingList(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)Lretrofit2/Call;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p1, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p2, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 27
    .line 28
    .line 29
    iget-wide p0, p2, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->id:J

    .line 30
    .line 31
    return-wide p0

    .line 32
    :cond_0
    const-string p0, "Incorrect response format."

    .line 33
    .line 34
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 p0, 0x0

    .line 38
    .line 39
    return-wide p0
.end method

.method public final deleteList(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p2, p3, p1}, Lorg/wikipedia/dataclient/RestService;->deleteReadingList(JLjava/lang/String;)Lretrofit2/Call;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final deletePageFromList(JJLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    move-wide v2, p1

    .line 13
    move-wide v4, p3

    .line 14
    move-object v6, p5

    .line 15
    invoke-interface/range {v1 .. v6}, Lorg/wikipedia/dataclient/RestService;->deleteEntryFromReadingList(JJLjava/lang/String;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final getAllLists()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v3, v2

    .line 9
    :goto_0
    sget-object v4, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 10
    .line 11
    iget-object v4, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v4, v3}, Lorg/wikipedia/dataclient/RestService;->getReadingLists(Ljava/lang/String;)Lretrofit2/Call;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, v3, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-object v5, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->lists:Ljava/util/List;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move-object v5, v2

    .line 35
    :goto_1
    if-eqz v5, :cond_6

    .line 36
    .line 37
    iget-object v5, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->lists:Ljava/util/List;

    .line 38
    .line 39
    iget-object v4, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->continueStr:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    :cond_1
    move-object v4, v2

    .line 53
    :cond_2
    invoke-virtual {p0, v3}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 54
    .line 55
    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 66
    .line 67
    const/16 v5, 0x100

    .line 68
    .line 69
    if-lt v1, v5, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move v1, v3

    .line 73
    move-object v3, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    :goto_2
    return-object v0

    .line 76
    :cond_6
    const-string p0, "Incorrect response format."

    .line 77
    .line 78
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v2
.end method

.method public final getChangesSince(Ljava/lang/String;)Lorg/wikipedia/readinglist/sync/SyncedReadingLists;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v4, v3

    .line 17
    :goto_0
    sget-object v5, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 18
    .line 19
    iget-object v5, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 20
    .line 21
    invoke-static {v5}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-interface {v5, p1, v4}, Lorg/wikipedia/dataclient/RestService;->getReadingListChangesSince(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget-object v5, v4, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    .line 36
    .line 37
    if-eqz v5, :cond_7

    .line 38
    .line 39
    iget-object v6, v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->continueStr:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v7, v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->lists:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v5, v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->entries:Ljava/util/List;

    .line 49
    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    if-eqz v6, :cond_2

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_3

    .line 62
    .line 63
    :cond_2
    move-object v6, v3

    .line 64
    :cond_3
    invoke-virtual {p0, v4}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 65
    .line 66
    .line 67
    if-eqz v6, :cond_6

    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    add-int/lit8 v4, v2, 0x1

    .line 77
    .line 78
    const/16 v5, 0x100

    .line 79
    .line 80
    if-lt v2, v5, :cond_5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    move v2, v4

    .line 84
    move-object v4, v6

    .line 85
    goto :goto_0

    .line 86
    :cond_6
    :goto_1
    new-instance p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    .line 87
    .line 88
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 89
    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_7
    const-string p0, "Incorrect response format."

    .line 93
    .line 94
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v3
.end method

.method public final getListEntries(J)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v3, v2

    .line 9
    :goto_0
    sget-object v4, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 10
    .line 11
    iget-object v4, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v4, p1, p2, v3}, Lorg/wikipedia/dataclient/RestService;->getReadingListEntries(JLjava/lang/String;)Lretrofit2/Call;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, v3, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-object v5, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->entries:Ljava/util/List;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move-object v5, v2

    .line 35
    :goto_1
    if-eqz v5, :cond_6

    .line 36
    .line 37
    iget-object v5, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->entries:Ljava/util/List;

    .line 38
    .line 39
    iget-object v4, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->continueStr:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    :cond_1
    move-object v4, v2

    .line 53
    :cond_2
    invoke-virtual {p0, v3}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 54
    .line 55
    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 66
    .line 67
    const/16 v5, 0x100

    .line 68
    .line 69
    if-lt v1, v5, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move v1, v3

    .line 73
    move-object v3, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    :goto_2
    return-object v0

    .line 76
    :cond_6
    const-string p0, "Incorrect response format."

    .line 77
    .line 78
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v2
.end method

.method public final saveLastDateHeader(Lretrofit2/Response;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    iget-object p1, p1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 4
    .line 5
    invoke-virtual {p1}, Lokhttp3/Headers;->getInstant()Lj$/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->lastDateHeader:Lj$/time/Instant;

    .line 10
    .line 11
    return-void
.end method

.method public final setup(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0, p1}, Lorg/wikipedia/dataclient/RestService;->setupReadingLists(Ljava/lang/String;)Lretrofit2/Call;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    const-string p1, "already-set-up"

    .line 22
    .line 23
    invoke-static {p1, p0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    throw p0
.end method

.method public final tearDown(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0, p1}, Lorg/wikipedia/dataclient/RestService;->tearDownReadingLists(Ljava/lang/String;)Lretrofit2/Call;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    const-string p1, "not-set-up"

    .line 22
    .line 23
    invoke-static {p1, p0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    throw p0
.end method

.method public final updateList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/wikipedia/dataclient/RestService;->updateReadingList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)Lretrofit2/Call;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
