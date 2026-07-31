.class public final Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/bridge/CommunicationBridge;


# direct methods
.method public constructor <init>(Lorg/wikipedia/bridge/CommunicationBridge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final declared-synchronized getSetupSettings()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 3
    .line 4
    iget-object v0, v0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 5
    .line 6
    invoke-interface {v0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 18
    .line 19
    iget-object v1, v1, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 20
    .line 21
    invoke-interface {v1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getModel()Lorg/wikipedia/page/PageViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v1, v1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 33
    .line 34
    iget-object v2, v2, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 35
    .line 36
    invoke-interface {v2}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->isPreview()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object v3, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 41
    .line 42
    iget-object v3, v3, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 43
    .line 44
    invoke-interface {v3}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getToolbarMargin()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget-object v4, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 49
    .line 50
    iget-object v4, v4, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 51
    .line 52
    invoke-interface {v4}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getMessageCardHeight()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-static {v0, v1, v2, v3, v4}, Lokhttp3/HttpUrl$Companion;->setUp(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;ZII)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    .line 61
    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw v0
.end method

.method public final declared-synchronized onReceiveMessage(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "Received malformed message: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 5
    .line 6
    iget-object v1, v1, Lorg/wikipedia/bridge/CommunicationBridge;->incomingMessageHandler:Landroid/os/Handler;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_4

    .line 19
    :cond_0
    move-object v1, p1

    .line 20
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    :goto_1
    move-object v1, v3

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :try_start_1
    sget-object v2, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v4, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;->Companion:Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage$Companion;

    .line 35
    .line 36
    invoke-virtual {v4}, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 45
    .line 46
    invoke-virtual {v2, v1, v4}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception v1

    .line 52
    :try_start_2
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :goto_2
    check-cast v1, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 61
    .line 62
    iget-object p1, p1, Lorg/wikipedia/bridge/CommunicationBridge;->incomingMessageHandler:Landroid/os/Handler;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 70
    .line 71
    iget-object v0, v0, Lorg/wikipedia/bridge/CommunicationBridge;->incomingMessageHandler:Landroid/os/Handler;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object v0, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 93
    .line 94
    invoke-virtual {v0, p1, v3}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_3
    monitor-exit p0

    .line 98
    return-void

    .line 99
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    throw p1
.end method
