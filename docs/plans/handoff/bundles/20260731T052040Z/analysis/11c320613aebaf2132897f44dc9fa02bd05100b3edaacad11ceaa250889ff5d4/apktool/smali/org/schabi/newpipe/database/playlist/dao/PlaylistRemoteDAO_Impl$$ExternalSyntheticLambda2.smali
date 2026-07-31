.class public final synthetic Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 6
    .line 7
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__insertAdapterOfPlaylistRemoteEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 16
    .line 17
    invoke-virtual {p0, p1, v1}, Lkotlin/text/CharsKt;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget p1, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    .line 33
    .line 34
    int-to-long v2, p1

    .line 35
    iget-object p1, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 38
    .line 39
    new-instance v4, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    invoke-direct {v4, p1, v2, v3, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;JI)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-static {v0, p1, v2, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/Long;

    .line 52
    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    new-instance v3, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;

    .line 56
    .line 57
    const/4 v4, 0x2

    .line 58
    invoke-direct {v3, p0, v1, v4}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2, p1, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide p0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    iput-wide v4, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    .line 77
    .line 78
    new-instance v4, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;

    .line 79
    .line 80
    invoke-direct {v4, p0, v1, v2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;I)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v2, p1, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Ljava/lang/Number;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide p0

    .line 96
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__updateAdapterOfPlaylistRemoteEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 105
    .line 106
    invoke-virtual {p0, p1, v1}, Landroidx/sqlite/SQLite;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
