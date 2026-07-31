.class public final synthetic Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/jsoup/parser/TokenData;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/jsoup/parser/TokenData;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->f$0:Lorg/jsoup/parser/TokenData;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lorg/jsoup/parser/TokenData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->f$0:Lorg/jsoup/parser/TokenData;

    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->f$0:Lorg/jsoup/parser/TokenData;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    iget-object v0, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 37
    .line 38
    iget-object v0, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 39
    .line 40
    new-instance v7, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 41
    .line 42
    const/16 v8, 0xc

    .line 43
    .line 44
    invoke-direct {v7, v5, v6, v8}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v4, v3, v7}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Number;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 72
    .line 73
    iget-object v2, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object v5, v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 84
    .line 85
    new-instance v6, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;

    .line 86
    .line 87
    invoke-direct {v6, v2, v0, v3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v5, v4, v3, v6}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/Number;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    return-void

    .line 101
    :pswitch_0
    iget-object v0, v1, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lorg/schabi/newpipe/database/AppDatabase;

    .line 104
    .line 105
    new-instance v3, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    invoke-direct {v3, p0, v2, v1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/jsoup/parser/TokenData;)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/16 v1, 0xf

    .line 113
    .line 114
    invoke-direct {p0, v3, v1}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
