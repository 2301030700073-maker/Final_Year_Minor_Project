.class public final synthetic Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/legacy/mailstore/FolderSettingsChangedListener;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

.field public final synthetic f$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic f$3:J

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(JLapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lkotlinx/coroutines/channels/ProducerScope;Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    .line 5
    .line 6
    iput-object p3, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;->f$1:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 7
    .line 8
    iput-object p5, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    iput-wide p1, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;->f$3:J

    .line 11
    .line 12
    iput-boolean p6, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;->f$4:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onFolderSettingsChanged()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;->f$3:J

    .line 2
    .line 3
    iget-boolean v2, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;->f$4:Z

    .line 4
    .line 5
    iget-object v3, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;->f$1:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 6
    .line 7
    iget-object v4, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    invoke-static {v3, v4, v0, v1, v2}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->access$getDisplayFolders(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccountDto;JZ)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    .line 14
    .line 15
    invoke-static {v0, p0}, Lokhttp3/Handshake$Companion;->trySendBlocking(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method
