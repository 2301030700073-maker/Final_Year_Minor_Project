.class public final synthetic Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

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
    iget v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

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
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__insertAdapterOfPlaylistEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

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
    iget-wide v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    .line 30
    .line 31
    const-wide/16 v4, -0x1

    .line 32
    .line 33
    cmp-long p1, v2, v4

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v4, 0x1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 43
    .line 44
    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    invoke-direct {v2, p0, v1, v3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0, v4, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 65
    .line 66
    new-instance v5, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;

    .line 67
    .line 68
    invoke-direct {v5, p0, v1, v0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0, v4, v5}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__updateAdapterOfPlaylistEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 89
    .line 90
    invoke-virtual {p0, p1, v1}, Landroidx/sqlite/SQLite;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
