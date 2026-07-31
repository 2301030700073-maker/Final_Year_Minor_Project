.class public final synthetic Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

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
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

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
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__insertAdapterOfStreamStateEntity_1:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 16
    .line 17
    invoke-virtual {p0, p1, v1}, Lkotlin/text/CharsKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__updateAdapterOfStreamStateEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v1}, Landroidx/sqlite/SQLite;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    .line 42
    new-instance v0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-direct {v0, p0, v1, v2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;I)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-static {p1, v2, v3, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    new-instance v0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;

    .line 54
    .line 55
    invoke-direct {v0, p0, v1, v3}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v2, v3, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Ljava/lang/Number;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    int-to-long p0, p0

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
