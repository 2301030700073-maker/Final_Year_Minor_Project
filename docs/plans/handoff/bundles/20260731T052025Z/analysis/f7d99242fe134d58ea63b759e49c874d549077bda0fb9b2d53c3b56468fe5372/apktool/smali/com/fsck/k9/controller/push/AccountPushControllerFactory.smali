.class public final Lcom/fsck/k9/controller/push/AccountPushControllerFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final backendManager:Lcom/fsck/k9/backend/BackendManager;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/backend/BackendManager;Lcom/fsck/k9/controller/MessagingController;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/core/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;->backendManager:Lcom/fsck/k9/backend/BackendManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 13
    .line 14
    return-void
.end method
