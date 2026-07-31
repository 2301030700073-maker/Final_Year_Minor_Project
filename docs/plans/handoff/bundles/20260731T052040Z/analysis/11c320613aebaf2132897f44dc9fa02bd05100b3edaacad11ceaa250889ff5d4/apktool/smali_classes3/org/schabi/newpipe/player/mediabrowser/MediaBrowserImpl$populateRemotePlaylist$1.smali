.class public final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

.field public static final INSTANCE$1:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

.field public static final INSTANCE$2:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

.field public static final INSTANCE$3:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

.field public static final INSTANCE$4:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 8
    .line 9
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE$1:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 16
    .line 17
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE$2:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 24
    .line 25
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE$3:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 32
    .line 33
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE$4:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 40
    .line 41
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget p0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    .line 13
    .line 14
    iget-object p1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    .line 27
    .line 28
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(Lorg/schabi/newpipe/extractor/ListInfo;I)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    .line 38
    .line 39
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(Lorg/schabi/newpipe/extractor/ListInfo;I)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_3
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget p0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    .line 60
    .line 61
    iget-object p1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
