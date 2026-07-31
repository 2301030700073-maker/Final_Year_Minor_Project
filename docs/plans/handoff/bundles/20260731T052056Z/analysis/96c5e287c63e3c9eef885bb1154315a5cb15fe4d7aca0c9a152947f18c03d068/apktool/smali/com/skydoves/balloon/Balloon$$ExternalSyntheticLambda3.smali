.class public final synthetic Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/skydoves/balloon/Balloon;


# direct methods
.method public synthetic constructor <init>(Lcom/skydoves/balloon/Balloon;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;->f$0:Lcom/skydoves/balloon/Balloon;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;->f$0:Lcom/skydoves/balloon/Balloon;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/skydoves/balloon/Balloon;->isShowing:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->overlayWindow:Landroid/widget/PopupWindow;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->handler$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/os/Handler;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->autoDismissRunnable$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/skydoves/balloon/AutoDismissRunnable;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_0
    sget-object v0, Lcom/skydoves/balloon/BalloonPersistence;->Companion:Lcom/skydoves/balloon/BalloonPersistence$Companion;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    .line 46
    .line 47
    sget-object v2, Lcom/skydoves/balloon/BalloonPersistence;->instance:Lcom/skydoves/balloon/BalloonPersistence;

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v2, Lcom/skydoves/balloon/BalloonPersistence;->instance:Lcom/skydoves/balloon/BalloonPersistence;

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    new-instance v2, Lcom/skydoves/balloon/BalloonPersistence;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    sput-object v2, Lcom/skydoves/balloon/BalloonPersistence;->instance:Lcom/skydoves/balloon/BalloonPersistence;

    .line 62
    .line 63
    const-string v3, "com.skydoves.balloon"

    .line 64
    .line 65
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit v0

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    monitor-exit v0

    .line 78
    throw p0

    .line 79
    :cond_1
    :goto_2
    return-object v2

    .line 80
    :pswitch_1
    new-instance v0, Lcom/skydoves/balloon/AutoDismissRunnable;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/skydoves/balloon/AutoDismissRunnable;-><init>(Lcom/skydoves/balloon/Balloon;)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
