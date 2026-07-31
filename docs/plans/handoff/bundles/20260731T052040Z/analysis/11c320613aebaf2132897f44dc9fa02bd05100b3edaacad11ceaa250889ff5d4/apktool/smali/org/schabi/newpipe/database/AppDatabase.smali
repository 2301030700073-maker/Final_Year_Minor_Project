.class public abstract Lorg/schabi/newpipe/database/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/AppDatabase$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/AppDatabase;->Companion:Lorg/schabi/newpipe/database/AppDatabase$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract feedDAO()Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;
.end method

.method public abstract feedGroupDAO()Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;
.end method

.method public abstract playlistDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;
.end method

.method public abstract playlistRemoteDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;
.end method

.method public abstract playlistStreamDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;
.end method

.method public abstract searchHistoryDAO()Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;
.end method

.method public abstract streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;
.end method

.method public abstract streamHistoryDAO()Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;
.end method

.method public abstract streamStateDAO()Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;
.end method

.method public abstract subscriptionDAO()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;
.end method
