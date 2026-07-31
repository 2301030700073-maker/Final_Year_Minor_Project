.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;
.implements Lio/reactivex/rxjava3/functions/Function;


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

.field public static final INSTANCE$1:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

.field public static final INSTANCE$2:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->INSTANCE$1:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    .line 8
    .line 9
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->INSTANCE$2:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    .line 16
    .line 17
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    .line 24
    .line 25
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlin/Pair;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast p0, Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    sget-object v1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$1;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;

    .line 41
    .line 42
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    new-instance p0, Lkotlin/Pair;

    .line 74
    .line 75
    invoke-direct {p0, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance p0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 108
    .line 109
    new-instance v1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;

    .line 110
    .line 111
    new-instance v2, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 112
    .line 113
    iget v3, v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 114
    .line 115
    iget-object v4, v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v5, v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 118
    .line 119
    invoke-direct {v2, v4, v3, v5}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v3, v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v3}, Lorg/schabi/newpipe/util/image/ImageStrategy;->dbUrlToImageList(Ljava/lang/String;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    iget-object v3, v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    .line 132
    .line 133
    if-eqz v3, :cond_2

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    goto :goto_3

    .line 140
    :cond_2
    const-wide/16 v3, -0x1

    .line 141
    .line 142
    :goto_3
    invoke-virtual {v2, v3, v4}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setSubscriberCount(J)V

    .line 143
    .line 144
    .line 145
    iget-object v3, v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setDescription(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-wide v3, v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 151
    .line 152
    invoke-direct {v1, v2, v3, v4}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;-><init>(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    return-object p0

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 161
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Boolean;

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
