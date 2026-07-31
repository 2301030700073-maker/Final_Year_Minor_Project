.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandlerFactory;


# instance fields
.field public final accounts:Ljava/util/Set;

.field public final getSortCriteriaPerAccount:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$Factory;->accounts:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$Factory;->getSortCriteriaPerAccount:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;)Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;
    .locals 1

    .line 1
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;

    .line 2
    .line 3
    iget-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 4
    .line 5
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$Factory;->getSortCriteriaPerAccount:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$Factory;->accounts:Ljava/util/Set;

    .line 8
    .line 9
    invoke-direct {p1, p0, p2, p3, v0}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;-><init>(Ljava/util/Set;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
