.class final Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;
.super Landroid/os/Handler;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHandler"
.end annotation


# instance fields
.field private final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/media/MediaRouteProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .locals 1
    .param p1, "service"    # Landroid/support/v7/media/MediaRouteProviderService;

    .line 581
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 582
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 583
    return-void
.end method

.method private processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "what"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "requestId"    # I
    .param p4, "arg"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "data"    # Landroid/os/Bundle;

    .line 611
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService;

    .line 612
    .local v0, "service":Landroid/support/v7/media/MediaRouteProviderService;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 613
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 668
    :pswitch_0
    if-eqz p5, :cond_0

    instance-of v2, p5, Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 669
    :cond_0
    move-object v1, p5

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    move-result-object v1

    .line 671
    .local v1, "request":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, p2, p3, v2}, Landroid/support/v7/media/MediaRouteProviderService;->access$2100(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;ILandroid/support/v7/media/MediaRouteDiscoveryRequest;)Z

    move-result v2

    return v2

    .line 661
    .end local v1    # "request":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    :pswitch_1
    instance-of v2, p5, Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 662
    move-object v1, p5

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, p2, p3, p4, v1}, Landroid/support/v7/media/MediaRouteProviderService;->access$2000(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;IILandroid/content/Intent;)Z

    move-result v1

    return v1

    .line 652
    :pswitch_2
    const-string v2, "volume"

    invoke-virtual {p6, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 653
    .local v2, "delta":I
    if-eqz v2, :cond_3

    .line 654
    invoke-static {v0, p2, p3, p4, v2}, Landroid/support/v7/media/MediaRouteProviderService;->access$1900(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z

    move-result v1

    return v1

    .line 643
    .end local v2    # "delta":I
    :pswitch_3
    const-string v2, "volume"

    const/4 v3, -0x1

    invoke-virtual {p6, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 644
    .local v2, "volume":I
    if-ltz v2, :cond_3

    .line 645
    invoke-static {v0, p2, p3, p4, v2}, Landroid/support/v7/media/MediaRouteProviderService;->access$1800(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z

    move-result v1

    return v1

    .line 636
    .end local v2    # "volume":I
    :pswitch_4
    if-nez p6, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "unselectReason"

    invoke-virtual {p6, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 640
    .local v1, "reason":I
    :goto_1
    invoke-static {v0, p2, p3, p4, v1}, Landroid/support/v7/media/MediaRouteProviderService;->access$1700(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z

    move-result v2

    return v2

    .line 633
    .end local v1    # "reason":I
    :pswitch_5
    invoke-static {v0, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->access$1600(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z

    move-result v1

    return v1

    .line 630
    :pswitch_6
    invoke-static {v0, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->access$1500(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z

    move-result v1

    return v1

    .line 621
    :pswitch_7
    const-string v2, "routeId"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "routeId":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 623
    invoke-static {v0, p2, p3, p4, v2}, Landroid/support/v7/media/MediaRouteProviderService;->access$1400(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 618
    .end local v2    # "routeId":Ljava/lang/String;
    :pswitch_8
    invoke-static {v0, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->access$1300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;I)Z

    move-result v1

    return v1

    .line 615
    :pswitch_9
    invoke-static {v0, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->access$1200(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z

    move-result v1

    return v1

    .line 678
    :cond_3
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 587
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 588
    .local v7, "messenger":Landroid/os/Messenger;
    invoke-static {v7}, Landroid/support/v7/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    iget v8, p1, Landroid/os/Message;->what:I

    .line 590
    .local v8, "what":I
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 591
    .local v9, "requestId":I
    iget v10, p1, Landroid/os/Message;->arg2:I

    .line 592
    .local v10, "arg":I
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 593
    .local v11, "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v12

    .line 594
    .local v12, "data":Landroid/os/Bundle;
    move-object v0, p0

    move v1, v8

    move-object v2, v7

    move v3, v9

    move v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    invoke-static {}, Landroid/support/v7/media/MediaRouteProviderService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const-string v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Landroid/support/v7/media/MediaRouteProviderService;->access$1000(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Message failed, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", arg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    invoke-static {v7, v9}, Landroid/support/v7/media/MediaRouteProviderService;->access$1100(Landroid/os/Messenger;I)V

    .line 602
    .end local v8    # "what":I
    .end local v9    # "requestId":I
    .end local v10    # "arg":I
    .end local v11    # "obj":Ljava/lang/Object;
    .end local v12    # "data":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 603
    :cond_2
    invoke-static {}, Landroid/support/v7/media/MediaRouteProviderService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 604
    const-string v0, "MediaRouteProviderSrv"

    const-string v1, "Ignoring message without valid reply messenger."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_3
    :goto_0
    return-void
.end method
