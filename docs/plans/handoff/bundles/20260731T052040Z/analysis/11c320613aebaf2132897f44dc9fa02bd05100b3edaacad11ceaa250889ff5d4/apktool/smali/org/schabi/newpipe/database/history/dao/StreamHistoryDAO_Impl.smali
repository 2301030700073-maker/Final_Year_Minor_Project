.class public final Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;


# instance fields
.field public final __converters:Lokio/Path$Companion;

.field public final __db:Landroidx/room/RoomDatabase;

.field public final __deleteAdapterOfStreamHistoryEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

.field public final __insertAdapterOfStreamHistoryEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->Companion:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/Path$Companion;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lokio/Path$Companion;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 16
    .line 17
    const/16 v0, 0xb

    .line 18
    .line 19
    invoke-direct {p1, p0, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__insertAdapterOfStreamHistoryEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 23
    .line 24
    new-instance p1, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    invoke-direct {p1, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__deleteAdapterOfStreamHistoryEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final insert(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    .line 2
    .line 3
    new-instance v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p0, p1, v1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    return-wide p0
.end method
