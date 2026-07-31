.class public final Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$Companion;


# instance fields
.field public final __converters:Lokio/Path$Companion;

.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertAdapterOfFeedGroupEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __insertAdapterOfFeedGroupSubscriptionEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __updateAdapterOfFeedGroupEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->Companion:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$Companion;

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
    iput-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    invoke-direct {p1, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__insertAdapterOfFeedGroupSubscriptionEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 23
    .line 24
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 25
    .line 26
    const/16 v0, 0x9

    .line 27
    .line 28
    invoke-direct {p1, p0, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__insertAdapterOfFeedGroupEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 32
    .line 33
    new-instance p1, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-direct {p1, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__updateAdapterOfFeedGroupEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final getAll()Lio/reactivex/rxjava3/core/Flowable;
    .locals 3

    .line 1
    const-string v0, "feed_group"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 8
    .line 9
    const/16 v2, 0x18

    .line 10
    .line 11
    invoke-direct {v1, p0, v2}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p0, v2, v0, v1}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
