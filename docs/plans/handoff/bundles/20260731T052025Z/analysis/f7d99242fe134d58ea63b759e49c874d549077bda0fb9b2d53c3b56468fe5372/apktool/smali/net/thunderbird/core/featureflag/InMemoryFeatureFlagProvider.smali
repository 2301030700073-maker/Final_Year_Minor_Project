.class public final Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final combinedFeatureFlags:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lapp/k9mail/featureflag/K9FeatureFlagFactory;Lnet/thunderbird/core/featureflag/NoOpFeatureFlagOverrides;)V
    .locals 6

    .line 1
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 4
    .line 5
    iget-object p1, p1, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 6
    .line 7
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {p1, v1, v2, v3}, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 34
    .line 35
    invoke-direct {v1, v3, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p2, Lnet/thunderbird/core/featureflag/NoOpFeatureFlagOverrides;->overrides:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 39
    .line 40
    new-instance p2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 41
    .line 42
    const/4 v4, 0x3

    .line 43
    const/16 v5, 0xa

    .line 44
    .line 45
    invoke-direct {p2, v4, v2, v5}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 49
    .line 50
    invoke-direct {v2, v1, p1, p2, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedLazily;

    .line 54
    .line 55
    sget-object p2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 56
    .line 57
    invoke-static {v2, v0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->combinedFeatureFlags:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->combinedFeatureFlags:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 5
    .line 6
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Lnet/thunderbird/core/featureflag/FeatureFlagKey;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lnet/thunderbird/core/featureflag/FeatureFlagKey;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    iget-boolean p0, p0, Lnet/thunderbird/core/featureflag/FeatureFlag;->enabled:Z

    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object p0, p1

    .line 36
    :goto_0
    if-nez p0, :cond_1

    .line 37
    .line 38
    sget-object p0, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Unavailable;->INSTANCE:Lnet/thunderbird/core/featureflag/FeatureFlagResult$Unavailable;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    sget-object p0, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;->INSTANCE:Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    sget-object p0, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Disabled;->INSTANCE:Lnet/thunderbird/core/featureflag/FeatureFlagResult$Disabled;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 64
    .line 65
    .line 66
    return-object p1
.end method
