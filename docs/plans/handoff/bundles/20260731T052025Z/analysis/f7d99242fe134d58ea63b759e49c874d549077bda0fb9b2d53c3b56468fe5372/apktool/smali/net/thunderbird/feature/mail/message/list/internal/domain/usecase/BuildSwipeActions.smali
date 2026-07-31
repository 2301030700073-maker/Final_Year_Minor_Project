.class public final Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final swipeActions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)V
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 4
    .line 5
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, v0}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 24
    .line 25
    check-cast p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    .line 29
    new-instance p2, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 30
    .line 31
    const/16 v0, 0x14

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {p2, p0, v2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    sget v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->$r8$clinit:I

    .line 38
    .line 39
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v0, p1, p2, v2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 46
    .line 47
    const/4 p2, 0x7

    .line 48
    invoke-direct {p1, p2, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedLazily;

    .line 52
    .line 53
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 54
    .line 55
    invoke-static {p1, v1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;->swipeActions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 60
    .line 61
    return-void
.end method

.method public static final access$buildSwipeAction(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/core/common/action/SwipeAction;Z)Lnet/thunderbird/core/common/action/SwipeAction;
    .locals 4

    .line 1
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    aget p0, p0, v0

    .line 8
    .line 9
    sget-object v0, Lnet/thunderbird/core/common/action/SwipeAction;->ArchiveDisabled:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "pop3"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    if-ne p0, v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccount;->hasArchiveFolder()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    sget-object p0, Lnet/thunderbird/core/common/action/SwipeAction;->ArchiveSetupArchiveFolder:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    if-ne p0, v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccount;->hasArchiveFolder()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    return-object p2
.end method
