.class public final synthetic Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/database/AppDatabase_Impl;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/database/AppDatabase_Impl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/database/AppDatabase_Impl;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    new-instance v0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_1
    new-instance v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_2
    new-instance v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_3
    new-instance v0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :pswitch_4
    new-instance v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_5
    new-instance v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_6
    new-instance v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :pswitch_7
    new-instance v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :pswitch_8
    new-instance v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
