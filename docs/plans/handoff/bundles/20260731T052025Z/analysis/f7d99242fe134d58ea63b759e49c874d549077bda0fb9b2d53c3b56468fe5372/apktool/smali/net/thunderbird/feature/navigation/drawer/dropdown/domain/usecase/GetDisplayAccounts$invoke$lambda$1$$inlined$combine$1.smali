.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $accounts$inlined:Ljava/util/List;

.field public final synthetic $accountsMap$inlined:Ljava/util/Map;

.field public final synthetic $flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

.field public final synthetic $showUnifiedAccount$inlined:Z

.field public final synthetic this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    .line 5
    .line 6
    iput-boolean p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;->$showUnifiedAccount$inlined:Z

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;->this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;->$accounts$inlined:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;->$accountsMap$inlined:Ljava/util/Map;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;

    .line 49
    .line 50
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    .line 51
    .line 52
    invoke-direct {p2, v1, v2}, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;-><init>([Lkotlinx/coroutines/flow/Flow;I)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;

    .line 56
    .line 57
    iget-object v7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;->$accounts$inlined:Ljava/util/List;

    .line 58
    .line 59
    iget-object v8, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;->$accountsMap$inlined:Ljava/util/Map;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    iget-boolean v5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;->$showUnifiedAccount$inlined:Z

    .line 63
    .line 64
    iget-object v6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1;->this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 65
    .line 66
    invoke-direct/range {v3 .. v8}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;Ljava/util/List;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    iput v2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1;->label:I

    .line 70
    .line 71
    invoke-static {v0, p2, v3, p1, v1}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 76
    .line 77
    if-ne p0, p1, :cond_3

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p0
.end method
