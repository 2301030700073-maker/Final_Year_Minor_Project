.class public final synthetic Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;->f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;->f$1:Ljava/util/ArrayList;

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
    .locals 12

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;->f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

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
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__insertAdapterOfSubscriptionEntity_1:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 16
    .line 17
    invoke-virtual {p0, p1, v1}, Lkotlin/text/CharsKt;->insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    .line 30
    new-instance v0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {v0, p0, v1, v2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Ljava/util/ArrayList;I)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {p1, v3, v2, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move v4, v3

    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    add-int/lit8 v6, v4, 0x1

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    if-ltz v4, :cond_2

    .line 62
    .line 63
    check-cast v5, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v8

    .line 69
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 74
    .line 75
    const-wide/16 v10, -0x1

    .line 76
    .line 77
    cmp-long v5, v8, v10

    .line 78
    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    iput-wide v8, v4, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    iget v5, v4, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 85
    .line 86
    iget-object v8, v4, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v9, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 92
    .line 93
    const/16 v10, 0x8

    .line 94
    .line 95
    invoke-direct {v9, v8, v5, v10}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;II)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v2, v3, v9}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Ljava/lang/Long;

    .line 103
    .line 104
    if-eqz v5, :cond_1

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v7

    .line 110
    iput-wide v7, v4, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 111
    .line 112
    invoke-virtual {p0, v4}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->update(Ljava/lang/Object;)I

    .line 113
    .line 114
    .line 115
    :goto_1
    move v4, v6

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    const-string p0, "Subscription cannot be null just after insertion."

    .line 118
    .line 119
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move-object v1, v7

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    invoke-static {}, Lorg/jsoup/Jsoup;->throwIndexOverflow()V

    .line 125
    .line 126
    .line 127
    throw v7

    .line 128
    :cond_3
    :goto_2
    return-object v1

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
