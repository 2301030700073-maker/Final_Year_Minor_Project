.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_PROVIDER_ADDED:I = 0x201

.field public static final MSG_PROVIDER_CHANGED:I = 0x203

.field public static final MSG_PROVIDER_REMOVED:I = 0x202

.field public static final MSG_ROUTE_ADDED:I = 0x101

.field public static final MSG_ROUTE_CHANGED:I = 0x103

.field public static final MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED:I = 0x105

.field public static final MSG_ROUTE_REMOVED:I = 0x102

.field public static final MSG_ROUTE_SELECTED:I = 0x106

.field public static final MSG_ROUTE_UNSELECTED:I = 0x107

.field public static final MSG_ROUTE_VOLUME_CHANGED:I = 0x104

.field private static final MSG_TYPE_MASK:I = 0xff00

.field private static final MSG_TYPE_PROVIDER:I = 0x200

.field private static final MSG_TYPE_ROUTE:I = 0x100


# instance fields
.field private final mTempCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouter$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V
    .locals 0

    .line 2380
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2381
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
    .param p2, "x1"    # Landroid/support/v7/media/MediaRouter$1;

    .line 2380
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    return-void
.end method

.method private invokeCallback(Landroid/support/v7/media/MediaRouter$CallbackRecord;ILjava/lang/Object;)V
    .locals 4
    .param p1, "record"    # Landroid/support/v7/media/MediaRouter$CallbackRecord;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2452
    iget-object v0, p1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 2453
    .local v0, "router":Landroid/support/v7/media/MediaRouter;
    iget-object v1, p1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    .line 2454
    .local v1, "callback":Landroid/support/v7/media/MediaRouter$Callback;
    const v2, 0xff00

    and-int/2addr v2, p2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_1

    const/16 v3, 0x200

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 2486
    :cond_0
    move-object v2, p3

    check-cast v2, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2487
    .local v2, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    packed-switch p2, :pswitch_data_0

    .line 2487
    .end local v2    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    goto :goto_1

    .line 2495
    .restart local v2    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :pswitch_0
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    .line 2495
    .end local v2    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    goto :goto_1

    .line 2492
    .restart local v2    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :pswitch_1
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    .line 2493
    goto :goto_1

    .line 2489
    :pswitch_2
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    .line 2490
    goto :goto_1

    .line 2456
    .end local v2    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :cond_1
    move-object v2, p3

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2457
    .local v2, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouter$CallbackRecord;->filterRouteEvent(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2458
    goto :goto_1

    .line 2460
    :cond_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 2480
    :pswitch_3
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 2477
    :pswitch_4
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 2478
    goto :goto_0

    .line 2474
    :pswitch_5
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 2475
    goto :goto_0

    .line 2471
    :pswitch_6
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 2472
    goto :goto_0

    .line 2468
    :pswitch_7
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 2469
    goto :goto_0

    .line 2465
    :pswitch_8
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 2466
    goto :goto_0

    .line 2462
    :pswitch_9
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 2463
    nop

    .line 2483
    :goto_0
    nop

    .line 2500
    .end local v2    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private syncWithSystemProvider(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 2435
    const/16 v0, 0x106

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2443
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteChanged(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 2444
    goto :goto_0

    .line 2440
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 2441
    goto :goto_0

    .line 2437
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteAdded(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 2438
    goto :goto_0

    .line 2446
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteSelected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 2449
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2406
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2407
    .local v0, "what":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2410
    .local v1, "obj":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->syncWithSystemProvider(ILjava/lang/Object;)V

    .line 2416
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1500(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2416
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 2417
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1500(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter;

    .line 2418
    .local v3, "router":Landroid/support/v7/media/MediaRouter;
    if-nez v3, :cond_0

    .line 2419
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-static {v4}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$1500(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2421
    :cond_0
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2423
    .end local v3    # "router":Landroid/support/v7/media/MediaRouter;
    :goto_1
    goto :goto_0

    .line 2425
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2426
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .line 2426
    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 2427
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    invoke-direct {p0, v4, v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->invokeCallback(Landroid/support/v7/media/MediaRouter$CallbackRecord;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2426
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2430
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2431
    nop

    .line 2432
    return-void

    .line 2430
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v2
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 2401
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2402
    return-void
.end method
