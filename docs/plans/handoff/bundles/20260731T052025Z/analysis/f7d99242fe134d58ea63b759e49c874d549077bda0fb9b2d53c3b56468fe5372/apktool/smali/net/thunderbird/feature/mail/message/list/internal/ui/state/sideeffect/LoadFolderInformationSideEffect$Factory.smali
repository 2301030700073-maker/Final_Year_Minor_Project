.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandlerFactory;


# instance fields
.field public final accountIds:Ljava/util/Set;

.field public final folderId:Ljava/lang/Long;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final profileRepository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/Long;Lnet/thunderbird/core/logging/Logger;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;->accountIds:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;->folderId:Ljava/lang/Long;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;->profileRepository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;)Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;
    .locals 7

    .line 1
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;

    .line 2
    .line 3
    iget-object v5, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 4
    .line 5
    iget-object v6, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;->profileRepository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;->accountIds:Ljava/util/Set;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;->folderId:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 12
    .line 13
    move-object v3, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;-><init>(Ljava/util/Set;Ljava/lang/Long;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Lnet/thunderbird/core/logging/Logger;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
