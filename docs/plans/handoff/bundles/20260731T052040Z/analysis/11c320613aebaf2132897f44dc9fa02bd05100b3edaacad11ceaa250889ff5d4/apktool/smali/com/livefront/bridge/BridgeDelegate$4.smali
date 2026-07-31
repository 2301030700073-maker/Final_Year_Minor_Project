.class public final Lcom/livefront/bridge/BridgeDelegate$4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/livefront/bridge/BridgeDelegate$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onActivityResumed$com$livefront$bridge$BridgeDelegate$4(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onActivitySaveInstanceState$com$livefront$bridge$BridgeDelegate$4(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object p2, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 12
    .line 13
    check-cast p0, Lorg/acra/builder/LastActivityManager;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/acra/builder/LastActivityManager;->activityStack:Lorg/acra/collections/WeakStack;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lorg/acra/collections/WeakStack;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lcom/livefront/bridge/BridgeDelegate;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsConfigChange:Z

    .line 25
    .line 26
    invoke-static {p0, p1, p2}, Lcom/livefront/bridge/BridgeDelegate;->access$800(Lcom/livefront/bridge/BridgeDelegate;Landroid/app/Activity;Landroid/os/Bundle;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    .line 41
    .line 42
    .line 43
    new-instance p1, Landroidx/lifecycle/LiveData$1;

    .line 44
    .line 45
    const/16 p2, 0x12

    .line 46
    .line 47
    invoke-direct {p1, p0, p2}, Landroidx/lifecycle/LiveData$1;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 51
    .line 52
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/acra/builder/LastActivityManager;

    .line 14
    .line 15
    iget-object v0, p0, Lorg/acra/builder/LastActivityManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v1, p0, Lorg/acra/builder/LastActivityManager;->activityStack:Lorg/acra/collections/WeakStack;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lorg/acra/collections/WeakStack;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lorg/acra/builder/LastActivityManager;->destroyedCondition:Ljava/util/concurrent/locks/Condition;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/livefront/bridge/BridgeDelegate;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput-boolean p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsConfigChange:Z

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 10
    .line 11
    :pswitch_0
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object p0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 13
    .line 14
    :pswitch_0
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/livefront/bridge/BridgeDelegate;

    .line 15
    .line 16
    iget p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    iput p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/livefront/bridge/BridgeDelegate;

    .line 15
    .line 16
    iget p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    .line 20
    iput p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
