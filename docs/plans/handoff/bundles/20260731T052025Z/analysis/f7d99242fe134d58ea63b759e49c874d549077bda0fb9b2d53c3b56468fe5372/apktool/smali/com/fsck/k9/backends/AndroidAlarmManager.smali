.class public final Lcom/fsck/k9/backends/AndroidAlarmManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final alarmManager:Landroid/app/AlarmManager;

.field public final callback:Ljava/util/concurrent/atomic/AtomicReference;

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/fsck/k9/backends/AndroidAlarmManager;->alarmManager:Landroid/app/AlarmManager;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/fsck/k9/backends/AndroidAlarmManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 18
    .line 19
    new-instance p2, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v0, "com.fsck.k9.backends.ALARM"

    .line 22
    .line 23
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    const/high16 v2, 0x4000000

    .line 35
    .line 36
    invoke-static {p1, v1, p2, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/fsck/k9/backends/AndroidAlarmManager;->pendingIntent:Landroid/app/PendingIntent;

    .line 44
    .line 45
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/fsck/k9/backends/AndroidAlarmManager;->callback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    new-instance p2, Landroid/content/IntentFilter;

    .line 54
    .line 55
    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/backends/AndroidAlarmManager$1;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x4

    .line 65
    invoke-static {p1, v0, p2, p0}, Landroidx/tracing/TraceApi29Impl;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    return-void
.end method
