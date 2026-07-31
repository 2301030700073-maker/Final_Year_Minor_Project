.class public final Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$Companion;


# instance fields
.field public final __converters:Lokio/Path$Companion;

.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertAdapterOfFeedEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __insertAdapterOfFeedLastUpdatedEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __updateAdapterOfFeedLastUpdatedEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->Companion:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$Companion;

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
    iput-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    invoke-direct {p1, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__insertAdapterOfFeedEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 22
    .line 23
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 24
    .line 25
    const/4 v0, 0x7

    .line 26
    invoke-direct {p1, p0, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__insertAdapterOfFeedLastUpdatedEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 30
    .line 31
    new-instance p1, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-direct {p1, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__updateAdapterOfFeedLastUpdatedEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 38
    .line 39
    return-void
.end method
