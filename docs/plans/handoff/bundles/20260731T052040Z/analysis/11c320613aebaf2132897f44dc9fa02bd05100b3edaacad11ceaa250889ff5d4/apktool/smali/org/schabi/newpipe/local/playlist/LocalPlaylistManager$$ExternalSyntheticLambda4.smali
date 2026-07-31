.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lokhttp3/Dispatcher;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Dispatcher;Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;->f$0:Lokhttp3/Dispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;->f$2:J

    .line 9
    .line 10
    iput-boolean p5, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput-object v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    const-wide/16 v1, -0x2

    .line 17
    .line 18
    iget-wide v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;->f$2:J

    .line 19
    .line 20
    cmp-long v1, v3, v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iput-wide v3, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 25
    .line 26
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;->f$3:Z

    .line 27
    .line 28
    iput-boolean v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    .line 29
    .line 30
    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;->f$0:Lokhttp3/Dispatcher;

    .line 31
    .line 32
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 43
    .line 44
    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;

    .line 45
    .line 46
    invoke-direct {v2, p0, p1, v0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;I)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    invoke-static {v1, v0, p0, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method
