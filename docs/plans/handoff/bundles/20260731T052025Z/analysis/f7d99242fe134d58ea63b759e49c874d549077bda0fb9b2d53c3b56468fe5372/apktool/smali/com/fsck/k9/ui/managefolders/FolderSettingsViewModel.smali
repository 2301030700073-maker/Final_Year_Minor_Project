.class public final Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

.field public folderId:J

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public folderSettingsLiveData:Landroidx/lifecycle/CoroutineLiveData;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;

.field public final preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Preferences;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/controller/MessagingController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->preferences:Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 9
    .line 10
    new-instance p1, Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2}, Lcom/fsck/k9/helper/SingleLiveEvent;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 17
    .line 18
    return-void
.end method
