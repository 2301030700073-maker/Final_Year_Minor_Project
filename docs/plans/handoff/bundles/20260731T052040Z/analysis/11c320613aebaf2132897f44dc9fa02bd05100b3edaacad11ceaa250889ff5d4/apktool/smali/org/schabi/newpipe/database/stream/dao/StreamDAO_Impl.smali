.class public final Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$Companion;


# instance fields
.field public final __converters:Lokio/Path$Companion;

.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertAdapterOfStreamEntity_1:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __updateAdapterOfStreamEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->Companion:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$Companion;

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
    iput-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 16
    .line 17
    const/16 v0, 0xf

    .line 18
    .line 19
    invoke-direct {p1, p0, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__insertAdapterOfStreamEntity_1:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 23
    .line 24
    new-instance p1, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    invoke-direct {p1, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__updateAdapterOfStreamEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final compareAndUpdateStream(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 13
    .line 14
    invoke-direct {v2, v1, v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v0, v1, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

    .line 26
    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    iget-wide v2, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J

    .line 30
    .line 31
    iget-wide v4, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

    .line 32
    .line 33
    invoke-virtual {p1, v4, v5}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setUid(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Lokio/Okio;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploadDate()Lj$/time/OffsetDateTime;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation()Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v0, v1

    .line 66
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setUploadDate(Lj$/time/OffsetDateTime;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setTextualUploadDate(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setUploadDateApproximation(Ljava/lang/Boolean;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    const-wide/16 v0, 0x0

    .line 86
    .line 87
    cmp-long p0, v2, v0

    .line 88
    .line 89
    if-lez p0, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    cmp-long p0, v4, v0

    .line 96
    .line 97
    if-gez p0, :cond_2

    .line 98
    .line 99
    invoke-virtual {p1, v2, v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setDuration(J)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void

    .line 103
    :cond_3
    const-string p0, "Stream cannot be null just after insertion."

    .line 104
    .line 105
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p0, v1, p1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0
.end method

.method public final upsertAll(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/List;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {p0, v1, p1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/List;

    .line 18
    .line 19
    return-object p0
.end method
