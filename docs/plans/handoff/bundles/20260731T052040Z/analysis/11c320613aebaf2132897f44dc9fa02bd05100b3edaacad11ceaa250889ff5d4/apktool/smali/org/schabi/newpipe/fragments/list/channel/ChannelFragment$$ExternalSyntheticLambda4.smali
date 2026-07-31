.class public final synthetic Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/util/List;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscribeButtonMonitor:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/16 v9, 0xff

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-direct/range {v2 .. v9}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getDescription()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelSubscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateNotifyButton(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-direct {p1, p0, v2, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->monitorSubscribeButton(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscribeButtonMonitor:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    .line 102
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 107
    .line 108
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelSubscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateNotifyButton(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelSubscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 114
    .line 115
    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;

    .line 116
    .line 117
    invoke-direct {v1, p0, p1, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->monitorSubscribeButton(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscribeButtonMonitor:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 125
    .line 126
    :goto_0
    return-void

    .line 127
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 128
    .line 129
    sget v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$clinit:I

    .line 130
    .line 131
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v3, "Updating subscription for "

    .line 136
    .line 137
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_UPDATE:Lorg/schabi/newpipe/error/UserAction;

    .line 152
    .line 153
    invoke-direct {v0, p1, v3, v2, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
