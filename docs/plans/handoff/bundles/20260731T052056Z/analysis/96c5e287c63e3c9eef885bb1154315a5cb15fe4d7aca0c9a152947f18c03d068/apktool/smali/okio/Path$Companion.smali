.class public final Lokio/Path$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;
.implements Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;


# static fields
.field public static instance:Lokio/Path$Companion;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokio/Path$Companion;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static agentToString(Lorg/wikipedia/notifications/db/Notification$Agent;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    :try_start_0
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Agent;->Companion:Lorg/wikipedia/notifications/db/Notification$Agent$Companion;

    .line 13
    .line 14
    invoke-virtual {v2}, Lorg/wikipedia/notifications/db/Notification$Agent$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 19
    .line 20
    invoke-virtual {v1, v2, p0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static alpnProtocolNames(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lokhttp3/Protocol;

    .line 22
    .line 23
    sget-object v3, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 24
    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 32
    .line 33
    const/16 v1, 0xa

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lokhttp3/Protocol;

    .line 57
    .line 58
    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    return-object p0
.end method

.method public static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 3

    .line 1
    new-instance v0, Lokio/Buffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lokio/Path$Companion;->alpnProtocolNames(Ljava/util/List;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeByte(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-wide v1, v0, Lokio/Buffer;->size:J

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->readByteArray(J)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static contentsToString(Lorg/wikipedia/notifications/db/Notification$Contents;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    :try_start_0
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Contents;->Companion:Lorg/wikipedia/notifications/db/Notification$Contents$Companion;

    .line 13
    .line 14
    invoke-virtual {v2}, Lorg/wikipedia/notifications/db/Notification$Contents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 19
    .line 20
    invoke-virtual {v1, v2, p0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static createIdsForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/Set;)Ljava/util/Set;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 46
    .line 47
    iget-wide v4, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 48
    .line 49
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    move-object v5, v4

    .line 77
    check-cast v5, Ljava/lang/Number;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    cmp-long v5, v5, v2

    .line 84
    .line 85
    if-lez v5, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/lang/Number;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    iget-wide v3, p0, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 121
    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v3, ":"

    .line 131
    .line 132
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lokio/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    .line 5
    .line 6
    new-instance v0, Lokio/Buffer;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-static {v0, p0}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static get$default(Ljava/io/File;)Lokio/Path;
    .locals 1

    .line 1
    sget-object v0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static getExternalLinkMovementMethod$default()Lorg/wikipedia/page/LinkMovementMethodExt;
    .locals 4

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/page/LinkMovementMethodExt$ErrorLinkHandler;

    .line 14
    .line 15
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v2, v3}, Lorg/wikipedia/page/LinkHandler;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, v2, Lorg/wikipedia/page/LinkMovementMethodExt$ErrorLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public static manualSync(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    sget-boolean v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :try_start_0
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 9
    .line 10
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const v3, 0x7f120030

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    move-object v0, v1

    .line 54
    :goto_0
    if-eqz v0, :cond_4

    .line 55
    .line 56
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 57
    .line 58
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_1
    const-string v0, "force"

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    const-string v0, "expedited"

    .line 77
    .line 78
    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    check-cast v2, Ljava/lang/Iterable;

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    new-instance p0, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 127
    .line 128
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 129
    .line 130
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 131
    .line 132
    .line 133
    sget-object v4, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    new-instance v3, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 139
    .line 140
    invoke-direct {v3, v1}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Landroid/net/NetworkRequest;)V

    .line 141
    .line 142
    .line 143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 144
    .line 145
    const/16 v2, 0x18

    .line 146
    .line 147
    if-lt v1, v2, :cond_3

    .line 148
    .line 149
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    :goto_2
    move-object v13, p0

    .line 154
    goto :goto_3

    .line 155
    :cond_3
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :goto_3
    new-instance v2, Landroidx/work/Constraints;

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    const/4 v6, 0x0

    .line 162
    const/4 v7, 0x0

    .line 163
    const/4 v8, 0x0

    .line 164
    const-wide/16 v9, -0x1

    .line 165
    .line 166
    move-wide v11, v9

    .line 167
    invoke-direct/range {v2 .. v13}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 168
    .line 169
    .line 170
    new-instance p0, Landroidx/compose/runtime/Latch;

    .line 171
    .line 172
    const-class v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;

    .line 173
    .line 174
    invoke-direct {p0, v1}, Landroidx/compose/runtime/Latch;-><init>(Ljava/lang/Class;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    .line 180
    .line 181
    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 182
    .line 183
    new-instance v1, Landroidx/work/Data;

    .line 184
    .line 185
    invoke-direct {v1, v0}, Landroidx/work/Data;-><init>(Ljava/util/LinkedHashMap;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Lkotlin/uuid/UuidKt;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 194
    .line 195
    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 196
    .line 197
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->build()Landroidx/work/OneTimeWorkRequest;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 202
    .line 203
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const-string v1, "readingListSyncAdapter"

    .line 212
    .line 213
    sget-object v2, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 214
    .line 215
    invoke-virtual {v0, v1, v2, p0}, Landroidx/work/impl/WorkManagerImpl;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Data$Builder;

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_4
    :goto_4
    const-string v0, "refreshing"

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-eqz p0, :cond_5

    .line 226
    .line 227
    new-instance p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    .line 228
    .line 229
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    .line 231
    .line 232
    .line 233
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_5
    :goto_5
    return-void
.end method

.method public static synthetic manualSync$default()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lokio/Path$Companion;->manualSync(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static manualSyncWithForce()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lkotlin/Pair;

    .line 4
    .line 5
    const-string v2, "forceFullSync"

    .line 6
    .line 7
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Lkotlin/Pair;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lokio/Path$Companion;->manualSync(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static newInstance$default(ILjava/lang/String;Ljava/lang/String;)Lorg/wikipedia/donate/DonateDialog;
    .locals 6

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p0, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    and-int/lit8 v0, p0, 0x4

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    move v0, v1

    .line 21
    :goto_0
    and-int/lit8 p0, p0, 0x8

    .line 22
    .line 23
    if-eqz p0, :cond_3

    .line 24
    .line 25
    move p0, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_3
    move p0, v1

    .line 28
    :goto_1
    new-instance v3, Lorg/wikipedia/donate/DonateDialog;

    .line 29
    .line 30
    invoke-direct {v3}, Lorg/wikipedia/donate/DonateDialog;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lkotlin/Pair;

    .line 34
    .line 35
    const-string v5, "campaignId"

    .line 36
    .line 37
    invoke-direct {v4, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lkotlin/Pair;

    .line 41
    .line 42
    const-string v5, "donateUrl"

    .line 43
    .line 44
    invoke-direct {p1, v5, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance v0, Lkotlin/Pair;

    .line 52
    .line 53
    const-string v5, "fromDonationReminder"

    .line 54
    .line 55
    invoke-direct {v0, v5, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance p2, Lkotlin/Pair;

    .line 63
    .line 64
    const-string v5, "fromYiR"

    .line 65
    .line 66
    invoke-direct {p2, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x4

    .line 70
    new-array p0, p0, [Lkotlin/Pair;

    .line 71
    .line 72
    aput-object v4, p0, v2

    .line 73
    .line 74
    aput-object p1, p0, v1

    .line 75
    .line 76
    const/4 p1, 0x2

    .line 77
    aput-object v0, p0, p1

    .line 78
    .line 79
    const/4 p1, 0x3

    .line 80
    aput-object p2, p0, p1

    .line 81
    .line 82
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v3, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    return-object v3
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string p0, "login_request_source"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 29
    const-string p1, "create_account_first"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lorg/wikipedia/commons/FilePageActivity;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "title"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "allowEdit"

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public static newIntent$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;JJI)Landroid/content/Intent;
    .locals 4

    .line 1
    sget v0, Lorg/wikipedia/talk/template/TalkTemplatesActivity;->$r8$clinit:I

    .line 2
    .line 3
    and-int/lit8 v0, p6, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    :goto_0
    and-int/lit8 v1, p6, 0x8

    .line 11
    .line 12
    const-wide/16 v2, -0x1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-wide p2, v2

    .line 17
    :cond_1
    and-int/lit8 p6, p6, 0x10

    .line 18
    .line 19
    if-eqz p6, :cond_2

    .line 20
    .line 21
    move-wide p4, v2

    .line 22
    :cond_2
    new-instance p6, Landroid/content/Intent;

    .line 23
    .line 24
    const-class v1, Lorg/wikipedia/talk/template/TalkTemplatesActivity;

    .line 25
    .line 26
    invoke-direct {p6, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "title"

    .line 30
    .line 31
    invoke-virtual {p6, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "templateManagement"

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "fromRevisionId"

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "toRevisionId"

    .line 48
    .line 49
    invoke-virtual {p0, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static setSyncEnabledWithSetup()V
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 5
    .line 6
    .line 7
    const v1, 0x7f12065f

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const v1, 0x7f12065e

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static stringToAgent(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Agent;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Agent;->Companion:Lorg/wikipedia/notifications/db/Notification$Agent$Companion;

    .line 19
    .line 20
    invoke-virtual {v2}, Lorg/wikipedia/notifications/db/Notification$Agent$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 29
    .line 30
    invoke-virtual {v1, p0, v2}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    check-cast v0, Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 40
    .line 41
    return-object v0
.end method

.method public static stringToContents(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Contents;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Contents;->Companion:Lorg/wikipedia/notifications/db/Notification$Contents$Companion;

    .line 19
    .line 20
    invoke-virtual {v2}, Lorg/wikipedia/notifications/db/Notification$Contents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 29
    .line 30
    invoke-virtual {v1, p0, v2}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    check-cast v0, Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 40
    .line 41
    return-object v0
.end method

.method public static stringToTimestamp(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Timestamp;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Timestamp;->Companion:Lorg/wikipedia/notifications/db/Notification$Timestamp$Companion;

    .line 19
    .line 20
    invoke-virtual {v2}, Lorg/wikipedia/notifications/db/Notification$Timestamp$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 29
    .line 30
    invoke-virtual {v1, p0, v2}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    check-cast v0, Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 40
    .line 41
    return-object v0
.end method

.method public static stringToTitle(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Title;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Title;->Companion:Lorg/wikipedia/notifications/db/Notification$Title$Companion;

    .line 19
    .line 20
    invoke-virtual {v2}, Lorg/wikipedia/notifications/db/Notification$Title$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 29
    .line 30
    invoke-virtual {v1, p0, v2}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    check-cast v0, Lorg/wikipedia/notifications/db/Notification$Title;

    .line 40
    .line 41
    return-object v0
.end method

.method public static timestampToString(Lorg/wikipedia/notifications/db/Notification$Timestamp;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    :try_start_0
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Timestamp;->Companion:Lorg/wikipedia/notifications/db/Notification$Timestamp$Companion;

    .line 13
    .line 14
    invoke-virtual {v2}, Lorg/wikipedia/notifications/db/Notification$Timestamp$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 19
    .line 20
    invoke-virtual {v1, v2, p0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static titleToString(Lorg/wikipedia/notifications/db/Notification$Title;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    :try_start_0
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Title;->Companion:Lorg/wikipedia/notifications/db/Notification$Title$Companion;

    .line 13
    .line 14
    invoke-virtual {v2}, Lorg/wikipedia/notifications/db/Notification$Title$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 19
    .line 20
    invoke-virtual {v1, v2, p0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public decode(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget p0, p0, Lokio/Path$Companion;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, " at "

    .line 4
    .line 5
    const-string/jumbo v1, "unexpected length: "

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x1

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->readUtf8String()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lokhttp3/tls/internal/der/Adapters;->BOOLEAN:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 23
    .line 24
    const-string p1, "GMT"

    .line 25
    .line 26
    invoke-static {p1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    const-string/jumbo v1, "yyMMddHHmmss\'Z\'"

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Ljava/util/Date;

    .line 42
    .line 43
    const-wide v1, -0x92f3973c00L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :catch_0
    new-instance p1, Ljava/net/ProtocolException;

    .line 68
    .line 69
    const-string v0, "Failed to parse UTCTime "

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance p0, Lokio/Buffer;

    .line 83
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->readVariableLengthLong()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    cmp-long v6, v4, v0

    .line 92
    .line 93
    const-wide/16 v7, 0x28

    .line 94
    .line 95
    const/16 v9, 0x2e

    .line 96
    .line 97
    if-gtz v6, :cond_0

    .line 98
    .line 99
    cmp-long v6, v0, v7

    .line 100
    .line 101
    if-gez v6, :cond_0

    .line 102
    .line 103
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->writeDecimalLong(J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v9}, Lokio/Buffer;->writeByte(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeDecimalLong(J)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    cmp-long v4, v7, v0

    .line 114
    .line 115
    const-wide/16 v5, 0x50

    .line 116
    .line 117
    if-gtz v4, :cond_1

    .line 118
    .line 119
    cmp-long v4, v0, v5

    .line 120
    .line 121
    if-gez v4, :cond_1

    .line 122
    .line 123
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v9}, Lokio/Buffer;->writeByte(I)V

    .line 127
    .line 128
    .line 129
    sub-long/2addr v0, v7

    .line 130
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeDecimalLong(J)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    const-wide/16 v2, 0x2

    .line 135
    .line 136
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v9}, Lokio/Buffer;->writeByte(I)V

    .line 140
    .line 141
    .line 142
    sub-long/2addr v0, v5

    .line 143
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeDecimalLong(J)V

    .line 144
    .line 145
    .line 146
    :goto_0
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getByteCount()J

    .line 147
    .line 148
    .line 149
    move-result-wide v0

    .line 150
    iget-wide v2, p1, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 151
    .line 152
    cmp-long v0, v0, v2

    .line 153
    .line 154
    if-gez v0, :cond_2

    .line 155
    .line 156
    invoke-virtual {p0, v9}, Lokio/Buffer;->writeByte(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->readVariableLengthLong()J

    .line 160
    .line 161
    .line 162
    move-result-wide v0

    .line 163
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeDecimalLong(J)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 176
    .line 177
    .line 178
    move-result-wide v2

    .line 179
    cmp-long p0, v2, v4

    .line 180
    .line 181
    if-eqz p0, :cond_3

    .line 182
    .line 183
    iget-object p0, p1, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 184
    .line 185
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 186
    .line 187
    .line 188
    move-result-wide v0

    .line 189
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 193
    .line 194
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    new-instance p1, Ljava/math/BigInteger;

    .line 199
    .line 200
    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 201
    .line 202
    .line 203
    return-object p1

    .line 204
    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    .line 205
    .line 206
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p0

    .line 232
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 236
    .line 237
    .line 238
    move-result-wide v4

    .line 239
    cmp-long p0, v4, v2

    .line 240
    .line 241
    if-nez p0, :cond_5

    .line 242
    .line 243
    iget-object p0, p1, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 244
    .line 245
    invoke-virtual {p0}, Lokio/RealBufferedSource;->readByte()B

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    if-eqz p0, :cond_4

    .line 250
    .line 251
    const/4 p0, 0x1

    .line 252
    goto :goto_1

    .line 253
    :cond_4
    const/4 p0, 0x0

    .line 254
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    return-object p0

    .line 259
    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    .line 260
    .line 261
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 262
    .line 263
    .line 264
    move-result-wide v2

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p0

    .line 287
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public encode(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget p0, p0, Lokio/Path$Companion;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Number;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object p0, Lokhttp3/tls/internal/der/Adapters;->BOOLEAN:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 16
    .line 17
    const-string p0, "GMT"

    .line 18
    .line 19
    invoke-static {p0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 24
    .line 25
    const-string/jumbo v2, "yyMMddHHmmss\'Z\'"

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Ljava/util/Date;

    .line 35
    .line 36
    const-wide v2, -0x92f3973c00L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p2, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1, p0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance p0, Lokio/Buffer;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p2}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lokio/Buffer;->readDecimalLong()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    const-string v2, "Failed requirement."

    .line 91
    .line 92
    const/16 v3, 0x2e

    .line 93
    .line 94
    if-ne p2, v3, :cond_1

    .line 95
    .line 96
    invoke-virtual {p0}, Lokio/Buffer;->readDecimalLong()J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    const-wide/16 v6, 0x28

    .line 101
    .line 102
    mul-long/2addr v0, v6

    .line 103
    add-long/2addr v0, v4

    .line 104
    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/Latch;->writeVariableLengthLong(J)V

    .line 105
    .line 106
    .line 107
    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-nez p2, :cond_2

    .line 112
    .line 113
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-ne p2, v3, :cond_0

    .line 118
    .line 119
    invoke-virtual {p0}, Lokio/Buffer;->readDecimalLong()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/Latch;->writeVariableLengthLong(J)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_1
    return-void

    .line 135
    :pswitch_1
    check-cast p2, Ljava/math/BigInteger;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-interface {p0, p1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p0, :cond_3

    .line 172
    .line 173
    const/4 p0, -0x1

    .line 174
    goto :goto_2

    .line 175
    :cond_3
    const/4 p0, 0x0

    .line 176
    :goto_2
    invoke-interface {p1, p0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public watchPageTitle(Lkotlinx/coroutines/CoroutineScope;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/watchlist/WatchlistExpiry;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    move-object/from16 v1, p7

    .line 8
    .line 9
    instance-of v3, v1, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move-object v3, v1

    .line 14
    check-cast v3, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;

    .line 15
    .line 16
    iget v5, v3, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v3, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->label:I

    .line 26
    .line 27
    :goto_0
    move-object v7, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v3, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;

    .line 30
    .line 31
    move-object/from16 v5, p0

    .line 32
    .line 33
    invoke-direct {v3, v5, v1}, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;-><init>(Lokio/Path$Companion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    iget-object v1, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->result:Ljava/lang/Object;

    .line 38
    .line 39
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 40
    .line 41
    iget v3, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->label:I

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x2

    .line 45
    const/4 v11, 0x1

    .line 46
    const-string v12, "Watchlist.itemWiki:"

    .line 47
    .line 48
    const-string v13, ""

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    if-eq v3, v11, :cond_2

    .line 54
    .line 55
    if-ne v3, v10, :cond_1

    .line 56
    .line 57
    iget-boolean v0, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->Z$0:Z

    .line 58
    .line 59
    iget-object v2, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$9:Lorg/wikipedia/util/StringUtil;

    .line 60
    .line 61
    iget-object v3, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$8:Lorg/wikipedia/dataclient/watch/Watch;

    .line 62
    .line 63
    iget-object v4, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 64
    .line 65
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 71
    .line 72
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v9

    .line 76
    :cond_2
    iget-boolean v0, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->Z$0:Z

    .line 77
    .line 78
    iget-object v2, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$7:Lkotlinx/coroutines/DeferredCoroutine;

    .line 79
    .line 80
    iget-object v3, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    move-object/from16 v16, v3

    .line 86
    .line 87
    move-object v3, v2

    .line 88
    move-object/from16 v2, v16

    .line 89
    .line 90
    goto/16 :goto_6

    .line 91
    .line 92
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    if-eqz p5, :cond_9

    .line 96
    .line 97
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 104
    .line 105
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    sget-object v3, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 110
    .line 111
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 112
    .line 113
    invoke-static {v1, v5}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    iget-object v6, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 120
    .line 121
    if-eqz v6, :cond_4

    .line 122
    .line 123
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    move-object v6, v5

    .line 127
    :goto_2
    if-nez v6, :cond_5

    .line 128
    .line 129
    move-object v6, v13

    .line 130
    :cond_5
    const-string v14, ".removed"

    .line 131
    .line 132
    invoke-static {v12, v6, v14}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-direct {v3, v1, v6}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_6
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 144
    .line 145
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    sget-object v3, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 150
    .line 151
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 152
    .line 153
    invoke-static {v1, v5}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v2, :cond_7

    .line 158
    .line 159
    iget-object v6, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 160
    .line 161
    if-eqz v6, :cond_7

    .line 162
    .line 163
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    move-object v6, v5

    .line 167
    :goto_3
    if-nez v6, :cond_8

    .line 168
    .line 169
    move-object v6, v13

    .line 170
    :cond_8
    const-string v14, ".added"

    .line 171
    .line 172
    invoke-static {v12, v6, v14}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-direct {v3, v1, v6}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 180
    .line 181
    .line 182
    :cond_9
    :goto_4
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 183
    .line 184
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 185
    .line 186
    .line 187
    if-eqz p3, :cond_a

    .line 188
    .line 189
    const-string v1, "removedwatchtext"

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_a
    sget-object v1, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 193
    .line 194
    if-ne v4, v1, :cond_b

    .line 195
    .line 196
    const-string v1, "addedwatchindefinitelytext"

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_b
    const-string v1, "addedwatchexpirytext"

    .line 200
    .line 201
    :goto_5
    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 202
    .line 203
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 204
    .line 205
    move-object/from16 v3, p6

    .line 206
    .line 207
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_c

    .line 212
    .line 213
    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 214
    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v1, "-talk"

    .line 224
    .line 225
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 233
    .line 234
    :cond_c
    new-instance v1, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 235
    .line 236
    const/16 v6, 0x9

    .line 237
    .line 238
    move/from16 v3, p3

    .line 239
    .line 240
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 241
    .line 242
    .line 243
    const/4 v6, 0x3

    .line 244
    invoke-static {v0, v5, v1, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    new-instance v15, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 249
    .line 250
    invoke-direct {v15, v2, v14, v4, v5}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/wikipedia/watchlist/WatchlistExpiry;Lkotlin/coroutines/Continuation;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v0, v5, v15, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iput-object v2, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 258
    .line 259
    iput-object v0, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$7:Lkotlinx/coroutines/DeferredCoroutine;

    .line 260
    .line 261
    iput-boolean v3, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->Z$0:Z

    .line 262
    .line 263
    iput v11, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->label:I

    .line 264
    .line 265
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    if-ne v1, v8, :cond_d

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_d
    move/from16 v16, v3

    .line 273
    .line 274
    move-object v3, v0

    .line 275
    move/from16 v0, v16

    .line 276
    .line 277
    :goto_6
    check-cast v1, Lorg/wikipedia/dataclient/watch/WatchPostResponse;

    .line 278
    .line 279
    iget-object v1, v1, Lorg/wikipedia/dataclient/watch/WatchPostResponse;->watch:Ljava/util/List;

    .line 280
    .line 281
    if-nez v1, :cond_e

    .line 282
    .line 283
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 284
    .line 285
    :cond_e
    const/4 v4, 0x0

    .line 286
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    check-cast v1, Lorg/wikipedia/dataclient/watch/Watch;

    .line 291
    .line 292
    if-eqz v1, :cond_15

    .line 293
    .line 294
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 295
    .line 296
    iput-object v2, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 297
    .line 298
    iput-object v5, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$7:Lkotlinx/coroutines/DeferredCoroutine;

    .line 299
    .line 300
    iput-object v1, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$8:Lorg/wikipedia/dataclient/watch/Watch;

    .line 301
    .line 302
    iput-object v4, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->L$9:Lorg/wikipedia/util/StringUtil;

    .line 303
    .line 304
    iput-boolean v0, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->Z$0:Z

    .line 305
    .line 306
    iput v10, v7, Lorg/wikipedia/watchlist/WatchlistViewModel$Companion$watchPageTitle$1;->label:I

    .line 307
    .line 308
    invoke-interface {v3, v7}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    if-ne v3, v8, :cond_f

    .line 313
    .line 314
    :goto_7
    return-object v8

    .line 315
    :cond_f
    move-object/from16 v16, v3

    .line 316
    .line 317
    move-object v3, v1

    .line 318
    move-object/from16 v1, v16

    .line 319
    .line 320
    move-object/from16 v16, v4

    .line 321
    .line 322
    move-object v4, v2

    .line 323
    move-object/from16 v2, v16

    .line 324
    .line 325
    :goto_8
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;

    .line 326
    .line 327
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->getText()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    if-eqz v0, :cond_12

    .line 351
    .line 352
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 353
    .line 354
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 359
    .line 360
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 361
    .line 362
    invoke-static {v0, v5}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    if-eqz v4, :cond_10

    .line 367
    .line 368
    iget-object v4, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 369
    .line 370
    if-eqz v4, :cond_10

    .line 371
    .line 372
    iget-object v5, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 373
    .line 374
    :cond_10
    if-nez v5, :cond_11

    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_11
    move-object v13, v5

    .line 378
    :goto_9
    const-string v4, ".removeSuccess"

    .line 379
    .line 380
    invoke-static {v12, v13, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-direct {v2, v0, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 388
    .line 389
    .line 390
    goto :goto_b

    .line 391
    :cond_12
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 392
    .line 393
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 398
    .line 399
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 400
    .line 401
    invoke-static {v0, v5}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    if-eqz v4, :cond_13

    .line 406
    .line 407
    iget-object v4, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 408
    .line 409
    if-eqz v4, :cond_13

    .line 410
    .line 411
    iget-object v5, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 412
    .line 413
    :cond_13
    if-nez v5, :cond_14

    .line 414
    .line 415
    goto :goto_a

    .line 416
    :cond_14
    move-object v13, v5

    .line 417
    :goto_a
    const-string v4, ".addSuccess"

    .line 418
    .line 419
    invoke-static {v12, v13, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-direct {v2, v0, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 427
    .line 428
    .line 429
    :goto_b
    iget-boolean v0, v3, Lorg/wikipedia/dataclient/watch/Watch;->watched:Z

    .line 430
    .line 431
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    new-instance v2, Lkotlin/Pair;

    .line 436
    .line 437
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    return-object v2

    .line 441
    :cond_15
    const-string v0, "Watch response is null."

    .line 442
    .line 443
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    return-object v9
.end method
