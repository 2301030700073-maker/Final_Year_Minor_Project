.class public final Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountRepository:Lcom/fsck/k9/Preferences;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Preferences;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;->accountRepository:Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 7
    .line 8
    return-void
.end method
