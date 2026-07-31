.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Lorg/jsoup/parser/TokenData;J)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iput-wide p3, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$1:J

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 13
    .line 14
    check-cast v2, Lorg/jsoup/parser/TokenData;

    .line 15
    .line 16
    new-instance v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 17
    .line 18
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V

    .line 19
    .line 20
    .line 21
    iget-wide v5, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$1:J

    .line 22
    .line 23
    iput-wide v5, v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    .line 24
    .line 25
    iget-object p0, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    .line 34
    new-instance v3, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    invoke-direct {v3, p0, v0, v4}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v4, v1, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_0
    check-cast v3, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 55
    .line 56
    move-object v10, v2

    .line 57
    check-cast v10, Ljava/util/List;

    .line 58
    .line 59
    iget-object v9, v3, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v0, v9, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 65
    .line 66
    new-instance v5, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;

    .line 67
    .line 68
    const/4 v6, 0x1

    .line 69
    iget-wide v7, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;->f$1:J

    .line 70
    .line 71
    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;-><init>(IJLjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v4, v1, v5}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
