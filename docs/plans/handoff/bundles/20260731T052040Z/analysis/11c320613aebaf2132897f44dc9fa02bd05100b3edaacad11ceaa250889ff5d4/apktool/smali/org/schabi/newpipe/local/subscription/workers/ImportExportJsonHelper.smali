.class public abstract Lorg/schabi/newpipe/local/subscription/workers/ImportExportJsonHelper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final json:Lkotlinx/serialization/json/JsonImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/room/Room;->Json$default(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/JsonImpl;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lorg/schabi/newpipe/local/subscription/workers/ImportExportJsonHelper;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 13
    .line 14
    return-void
.end method

.method public static final readFrom(Ljava/io/InputStream;)Ljava/util/List;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/schabi/newpipe/local/subscription/workers/ImportExportJsonHelper;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$Companion;

    .line 7
    .line 8
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v2, Lokhttp3/ConnectionPool;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lokhttp3/ConnectionPool;-><init>(Ljava/io/InputStream;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, v2, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lkotlinx/serialization/json/internal/CharsetReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    :try_start_1
    invoke-static {v0, v1, v2}, Lkotlinx/serialization/json/internal/WriteModeKt;->decodeByReader(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/KSerializer;Lokhttp3/ConnectionPool;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v1, Lkotlinx/serialization/json/internal/ByteArrayPool8k;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool8k;

    .line 34
    .line 35
    iget-object p0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->releaseImpl([B)V

    .line 48
    .line 49
    .line 50
    check-cast v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;

    .line 51
    .line 52
    iget-object p0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->subscriptions:Ljava/util/List;

    .line 53
    .line 54
    return-object p0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    sget-object v1, Lkotlinx/serialization/json/internal/ByteArrayPool8k;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool8k;

    .line 60
    .line 61
    iget-object p0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p0}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->releaseImpl([B)V

    .line 74
    .line 75
    .line 76
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    new-instance v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    .line 79
    .line 80
    const-string v1, "Couldn\'t parse json"

    .line 81
    .line 82
    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public static final writeTo(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;-><init>(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lorg/schabi/newpipe/local/subscription/workers/ImportExportJsonHelper;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$Companion;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroidx/core/app/NotificationCompatBuilder;

    .line 26
    .line 27
    invoke-direct {v2, p1}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Ljava/io/OutputStream;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v2, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, [B

    .line 33
    .line 34
    :try_start_0
    invoke-static {p0, v2, v1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->encodeByWriter(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonWriter;Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 41
    .line 42
    iget-object v0, v2, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, [C

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->releaseImpl([C)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lkotlinx/serialization/json/internal/ByteArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->releaseImpl([B)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 72
    .line 73
    iget-object v1, v2, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, [C

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->releaseImpl([C)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lkotlinx/serialization/json/internal/ByteArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->releaseImpl([B)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method
