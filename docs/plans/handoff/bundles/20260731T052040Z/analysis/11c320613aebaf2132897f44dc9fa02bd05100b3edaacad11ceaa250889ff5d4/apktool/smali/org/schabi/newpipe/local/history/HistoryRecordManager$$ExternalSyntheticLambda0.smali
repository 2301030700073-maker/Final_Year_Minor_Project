.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

.field public final synthetic f$2:Lj$/time/OffsetDateTime;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;->f$2:Lj$/time/OffsetDateTime;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;->f$2:Lj$/time/OffsetDateTime;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    iget-object v4, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 20
    .line 21
    new-instance v5, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v6, 0xc

    .line 24
    .line 25
    invoke-direct {v5, p0, v6}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static {v0, v3, v6, v5}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget v5, v0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    .line 38
    .line 39
    iget v7, v2, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    .line 40
    .line 41
    if-ne v5, v7, :cond_0

    .line 42
    .line 43
    iget-object v5, v0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v7, v2, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    iput-object v1, v0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->creationDate:Lj$/time/OffsetDateTime;

    .line 54
    .line 55
    new-instance v1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda2;

    .line 56
    .line 57
    invoke-direct {v1, p0, v0, v3}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v6, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Ljava/lang/Number;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    int-to-long v0, p0

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda2;

    .line 77
    .line 78
    invoke-direct {v0, p0, v2, v6}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v4, v6, v3, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :goto_0
    return-object p0

    .line 96
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Lorg/schabi/newpipe/database/AppDatabase;

    .line 99
    .line 100
    new-instance v4, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    invoke-direct {v4, p0, v2, v1, v3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 109
    .line 110
    const/16 v1, 0xe

    .line 111
    .line 112
    invoke-direct {p0, v4, v1}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Ljava/lang/Long;

    .line 120
    .line 121
    return-object p0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
