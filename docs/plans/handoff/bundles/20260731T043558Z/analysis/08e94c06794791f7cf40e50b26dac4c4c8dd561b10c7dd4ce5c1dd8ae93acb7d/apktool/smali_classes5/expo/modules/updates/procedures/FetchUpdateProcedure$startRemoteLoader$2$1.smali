.class public final Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;
.super Ljava/lang/Object;
.source "FetchUpdateProcedure.kt"

# interfaces
.implements Lexpo/modules/updates/loader/Loader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/procedures/FetchUpdateProcedure;->startRemoteLoader(Lexpo/modules/updates/db/UpdatesDatabase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016J(\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "expo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1",
        "Lexpo/modules/updates/loader/Loader$LoaderCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onAssetLoaded",
        "asset",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "successfulAssetCount",
        "",
        "failedAssetCount",
        "totalAssetCount",
        "onUpdateResponseLoaded",
        "Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;",
        "updateResponse",
        "Lexpo/modules/updates/loader/UpdateResponse;",
        "onSuccess",
        "loaderResult",
        "Lexpo/modules/updates/loader/Loader$LoaderResult;",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lexpo/modules/updates/loader/Loader$LoaderResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lexpo/modules/updates/procedures/FetchUpdateProcedure;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lexpo/modules/updates/procedures/FetchUpdateProcedure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lexpo/modules/updates/loader/Loader$LoaderResult;",
            ">;",
            "Lexpo/modules/updates/procedures/FetchUpdateProcedure;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;->this$0:Lexpo/modules/updates/procedures/FetchUpdateProcedure;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Lexpo/modules/updates/db/entity/AssetEntity;III)V
    .locals 0

    const-string p2, "asset"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lexpo/modules/updates/loader/Loader$LoaderResult;)V
    .locals 2

    const-string v0, "loaderResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onUpdateResponseLoaded(Lexpo/modules/updates/loader/UpdateResponse;)Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;
    .locals 5

    const-string v0, "updateResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getDirectiveUpdateResponsePart()Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;->getUpdateDirective()Lexpo/modules/updates/loader/UpdateDirective;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 83
    new-instance p1, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    .line 85
    instance-of v1, v0, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    instance-of v0, v0, Lexpo/modules/updates/loader/UpdateDirective$NoUpdateAvailableUpdateDirective;

    if-eqz v0, :cond_2

    .line 83
    :goto_1
    invoke-direct {p1, v2}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    return-object p1

    .line 84
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 91
    :cond_3
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getManifestUpdateResponsePart()Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;->getUpdate()Lexpo/modules/updates/manifest/Update;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 94
    :cond_4
    new-instance v2, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    .line 95
    iget-object v3, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;->this$0:Lexpo/modules/updates/procedures/FetchUpdateProcedure;

    invoke-static {v3}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->access$getSelectionPolicy$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v3

    .line 96
    invoke-interface {v0}, Lexpo/modules/updates/manifest/Update;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    .line 97
    iget-object v4, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;->this$0:Lexpo/modules/updates/procedures/FetchUpdateProcedure;

    invoke-static {v4}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->access$getLaunchedUpdate$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v4

    .line 98
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getResponseHeaderData()Lexpo/modules/updates/manifest/ResponseHeaderData;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponseHeaderData;->getManifestFilters()Lorg/json/JSONObject;

    move-result-object v1

    .line 95
    :cond_5
    invoke-virtual {v3, v0, v4, v1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->shouldLoadNewUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lorg/json/JSONObject;)Z

    move-result p1

    .line 94
    invoke-direct {v2, p1}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    return-object v2

    .line 92
    :cond_6
    :goto_2
    new-instance p1, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    invoke-direct {p1, v2}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    return-object p1
.end method
