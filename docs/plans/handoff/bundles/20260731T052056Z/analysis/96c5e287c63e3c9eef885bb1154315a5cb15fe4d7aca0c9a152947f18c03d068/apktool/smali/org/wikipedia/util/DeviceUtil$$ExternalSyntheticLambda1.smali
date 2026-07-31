.class public final synthetic Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget p0, p0, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance p0, Lorg/wikipedia/events/WebViewInvalidateEvent;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget-object p0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikimedia/testkitchen/TestKitchenClient;->eventProcessor:Lokhttp3/Request$Builder;

    .line 19
    .line 20
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->sendEnqueuedEvents()V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 24
    .line 25
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getMainThreadHandler()Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const-wide/16 v1, 0x7530

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_1
    sget-object p0, Landroidx/compose/ui/platform/AndroidComposeView;->composeViews:Landroidx/collection/MutableObjectList;

    .line 42
    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 47
    .line 48
    iget v3, p0, Landroidx/collection/MutableObjectList;->_size:I

    .line 49
    .line 50
    const/16 v4, 0x1e

    .line 51
    .line 52
    if-ge v1, v4, :cond_1

    .line 53
    .line 54
    :goto_0
    if-ge v0, v3, :cond_2

    .line 55
    .line 56
    :try_start_1
    aget-object v1, v2, v0

    .line 57
    .line 58
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeView;->systemPropertiesClass:Ljava/lang/Class;

    .line 65
    .line 66
    invoke-static {}, Landroidx/compose/ui/platform/TestTagKt;->getIsShowingLayoutBounds()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {v1, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eq v4, v5, :cond_0

    .line 78
    .line 79
    new-instance v4, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda3;

    .line 80
    .line 81
    const/4 v5, 0x2

    .line 82
    invoke-direct {v4, v1, v5}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_3

    .line 91
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    :goto_2
    if-ge v0, v3, :cond_2

    .line 95
    .line 96
    aget-object v1, v2, v0

    .line 97
    .line 98
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 99
    .line 100
    new-instance v4, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda3;

    .line 101
    .line 102
    const/4 v5, 0x3

    .line 103
    invoke-direct {v4, v1, v5}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    monitor-exit p0

    .line 113
    return-void

    .line 114
    :goto_3
    monitor-exit p0

    .line 115
    throw v0

    .line 116
    :pswitch_2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 117
    .line 118
    .line 119
    new-instance p0, Ljava/lang/RuntimeException;

    .line 120
    .line 121
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 122
    .line 123
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
