.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final displayFolderRepository:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

.field public final unifiedFolderRepository:Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;


# direct methods
.method public constructor <init>(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;->displayFolderRepository:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;->unifiedFolderRepository:Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;

    .line 7
    .line 8
    return-void
.end method
