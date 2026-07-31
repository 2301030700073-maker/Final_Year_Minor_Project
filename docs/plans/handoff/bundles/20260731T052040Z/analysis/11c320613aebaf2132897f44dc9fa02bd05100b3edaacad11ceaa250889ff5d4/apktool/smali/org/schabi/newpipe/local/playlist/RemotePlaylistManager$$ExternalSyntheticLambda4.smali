.class public final synthetic Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

.field public final synthetic f$1:Lorg/jsoup/parser/TokenData;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Lorg/jsoup/parser/TokenData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda4;->f$1:Lorg/jsoup/parser/TokenData;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda4;->f$1:Lorg/jsoup/parser/TokenData;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-direct {v2, p0, v0, v3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    invoke-static {v1, p0, v3, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
