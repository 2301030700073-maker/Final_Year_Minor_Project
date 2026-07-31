.class public final Lorg/acra/builder/LastActivityManager;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final activityStack:Lorg/acra/collections/WeakStack;

.field public final destroyedCondition:Ljava/util/concurrent/locks/Condition;

.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/App;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/acra/collections/WeakStack;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/acra/collections/WeakStack;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/acra/builder/LastActivityManager;->activityStack:Lorg/acra/collections/WeakStack;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/acra/builder/LastActivityManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lorg/acra/builder/LastActivityManager;->destroyedCondition:Ljava/util/concurrent/locks/Condition;

    .line 23
    .line 24
    new-instance v0, Lcom/livefront/bridge/BridgeDelegate$4;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, p0, v1}, Lcom/livefront/bridge/BridgeDelegate$4;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
