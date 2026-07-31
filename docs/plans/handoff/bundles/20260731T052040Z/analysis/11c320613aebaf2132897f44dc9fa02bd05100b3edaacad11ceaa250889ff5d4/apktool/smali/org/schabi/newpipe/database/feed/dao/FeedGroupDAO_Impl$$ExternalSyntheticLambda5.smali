.class public final synthetic Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

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
    iget v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

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
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__updateAdapterOfFeedGroupEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 16
    .line 17
    invoke-virtual {p0, p1, v1}, Landroidx/sqlite/SQLite;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__insertAdapterOfFeedGroupEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 30
    .line 31
    invoke-virtual {p0, p1, v1}, Lkotlin/text/CharsKt;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    .line 48
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 49
    .line 50
    const/16 v2, 0x19

    .line 51
    .line 52
    invoke-direct {v0, v2}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-static {p1, v2, v3, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Number;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    iput-wide v4, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    .line 68
    .line 69
    new-instance v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;

    .line 70
    .line 71
    invoke-direct {v0, p0, v1, v2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;I)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v3, v2, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Ljava/lang/Number;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide p0

    .line 84
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
