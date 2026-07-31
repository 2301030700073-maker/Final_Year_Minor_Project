.class public final Lcom/fsck/k9/mailstore/SpecialFolderBackendFoldersRefreshListener;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/BackendFoldersRefreshListener;


# instance fields
.field public final specialFolderUpdater:Lcom/eygraber/uri/Uri$Builder;


# direct methods
.method public constructor <init>(Lcom/eygraber/uri/Uri$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/SpecialFolderBackendFoldersRefreshListener;->specialFolderUpdater:Lcom/eygraber/uri/Uri$Builder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAfterFolderListRefresh()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/SpecialFolderBackendFoldersRefreshListener;->specialFolderUpdater:Lcom/eygraber/uri/Uri$Builder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    new-instance v1, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$updateSpecialFolders$1;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v1, p0, v2, v3}, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$updateSpecialFolders$1;-><init>(Lcom/eygraber/uri/Uri$Builder;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onBeforeFolderListRefresh()V
    .locals 0

    .line 1
    return-void
.end method
