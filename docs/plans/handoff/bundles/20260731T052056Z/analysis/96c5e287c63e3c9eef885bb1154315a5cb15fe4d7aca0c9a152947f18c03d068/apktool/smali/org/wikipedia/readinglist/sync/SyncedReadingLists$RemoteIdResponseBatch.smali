.class public final Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch$Companion;


# instance fields
.field public final batch:[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;->Companion:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v1, v2}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Lkotlin/Lazy;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v0, v1, v2

    .line 25
    .line 26
    sput-object v1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;->$childSerializers:[Lkotlin/Lazy;

    .line 27
    .line 28
    return-void
.end method

.method public synthetic constructor <init>(I[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;->batch:[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;->batch:[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    .line 15
    .line 16
    return-void
.end method
