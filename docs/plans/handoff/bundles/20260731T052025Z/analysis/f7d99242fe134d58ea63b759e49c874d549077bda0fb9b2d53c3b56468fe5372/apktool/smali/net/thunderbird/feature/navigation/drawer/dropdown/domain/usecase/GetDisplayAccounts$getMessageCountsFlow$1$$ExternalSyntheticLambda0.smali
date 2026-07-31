.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$getMessageCountsFlow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/legacy/mailstore/MessageListChangedListener;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

.field public final synthetic f$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$getMessageCountsFlow$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$getMessageCountsFlow$1$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$getMessageCountsFlow$1$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onMessageListChanged()V
    .locals 6

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;

    .line 2
    .line 3
    const/16 v5, 0x8

    .line 4
    .line 5
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$getMessageCountsFlow$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    .line 6
    .line 7
    iget-object v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$getMessageCountsFlow$1$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 8
    .line 9
    iget-object v3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$getMessageCountsFlow$1$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x3

    .line 16
    invoke-static {v1, v4, v4, v0, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 17
    .line 18
    .line 19
    return-void
.end method
