.class public final Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse$Companion;


# instance fields
.field public final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->Companion:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x1

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->id:J

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput-wide p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->id:J

    .line 14
    .line 15
    return-void
.end method
