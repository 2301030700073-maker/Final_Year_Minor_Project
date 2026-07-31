.class public final Lcom/fsck/k9/notification/NotificationActionService;
.super Landroid/app/Service;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final coroutineScope$delegate:Lkotlin/Lazy;

.field public final interactionPreferences$delegate:Lkotlin/Lazy;

.field public final messagingController$delegate:Lkotlin/Lazy;

.field public final preferences$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/notification/NotificationActionService$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/notification/NotificationActionService$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/notification/NotificationActionService;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/notification/NotificationActionService;->preferences$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/notification/NotificationActionService$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/notification/NotificationActionService$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/notification/NotificationActionService;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/fsck/k9/notification/NotificationActionService;->messagingController$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lorg/koin/core/qualifier/StringQualifier;

    .line 31
    .line 32
    const-string v2, "AppCoroutineScope"

    .line 33
    .line 34
    invoke-direct {v0, v2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 38
    .line 39
    const/4 v3, 0x5

    .line 40
    invoke-direct {v2, v3, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/fsck/k9/notification/NotificationActionService;->coroutineScope$delegate:Lkotlin/Lazy;

    .line 48
    .line 49
    new-instance v0, Lcom/fsck/k9/notification/NotificationActionService$special$$inlined$inject$default$1;

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/notification/NotificationActionService$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/notification/NotificationActionService;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/fsck/k9/notification/NotificationActionService;->interactionPreferences$delegate:Lkotlin/Lazy;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final getMessagingController()Lcom/fsck/k9/controller/MessagingController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationActionService;->messagingController$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    aput-object p2, v0, v1

    .line 13
    .line 14
    const-string p2, "NotificationActionService started with startId = %d"

    .line 15
    .line 16
    invoke-static {p2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/fsck/k9/notification/NotificationActionService;->coroutineScope$delegate:Lkotlin/Lazy;

    .line 20
    .line 21
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    .line 26
    .line 27
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 28
    .line 29
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 30
    .line 31
    new-instance v1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 32
    .line 33
    const/4 v6, 0x5

    .line 34
    const/4 v5, 0x0

    .line 35
    move-object v2, p0

    .line 36
    move-object v3, p1

    .line 37
    move v4, p3

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x2

    .line 42
    invoke-static {p2, v0, v5, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 43
    .line 44
    .line 45
    return p0
.end method
