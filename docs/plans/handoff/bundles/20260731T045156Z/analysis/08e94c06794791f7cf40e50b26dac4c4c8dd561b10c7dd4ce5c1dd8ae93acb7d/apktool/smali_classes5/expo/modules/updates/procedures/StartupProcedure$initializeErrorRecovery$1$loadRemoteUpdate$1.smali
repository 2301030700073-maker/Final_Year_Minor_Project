.class public final Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1;
.super Ljava/lang/Object;
.source "StartupProcedure.kt"

# interfaces
.implements Lexpo/modules/updates/loader/Loader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->loadRemoteUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J(\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "expo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1",
        "Lexpo/modules/updates/loader/Loader$LoaderCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "loaderResult",
        "Lexpo/modules/updates/loader/Loader$LoaderResult;",
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
.field final synthetic this$0:Lexpo/modules/updates/procedures/StartupProcedure;


# direct methods
.method constructor <init>(Lexpo/modules/updates/procedures/StartupProcedure;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    .line 243
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
    .locals 7

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getLogger$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v1

    sget-object v4, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->getLoggingId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    const-string v2, "UpdatesController loadRemoteUpdate onFailure"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    sget-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->IDLE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    invoke-static {p1, v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setRemoteLoadStatus(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    return-void
.end method

.method public onSuccess(Lexpo/modules/updates/loader/Loader$LoaderResult;)V
    .locals 2

    const-string v0, "loaderResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    .line 251
    invoke-virtual {p1}, Lexpo/modules/updates/loader/Loader$LoaderResult;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lexpo/modules/updates/loader/Loader$LoaderResult;->getUpdateDirective()Lexpo/modules/updates/loader/UpdateDirective;

    move-result-object p1

    instance-of p1, p1, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    sget-object p1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->IDLE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    goto :goto_1

    .line 252
    :cond_1
    :goto_0
    sget-object p1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->NEW_UPDATE_LOADED:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    .line 250
    :goto_1
    invoke-static {v0, p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setRemoteLoadStatus(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    return-void
.end method

.method public onUpdateResponseLoaded(Lexpo/modules/updates/loader/UpdateResponse;)Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;
    .locals 5

    const-string v0, "updateResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
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

    .line 264
    new-instance p1, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    .line 266
    instance-of v1, v0, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 267
    :cond_1
    instance-of v0, v0, Lexpo/modules/updates/loader/UpdateDirective$NoUpdateAvailableUpdateDirective;

    if-eqz v0, :cond_2

    .line 264
    :goto_1
    invoke-direct {p1, v2}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    return-object p1

    .line 265
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 272
    :cond_3
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getManifestUpdateResponsePart()Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;->getUpdate()Lexpo/modules/updates/manifest/Update;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 273
    :cond_4
    new-instance v2, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    iget-object v3, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v3}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getSelectionPolicy$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v3

    invoke-interface {v0}, Lexpo/modules/updates/manifest/Update;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    iget-object v4, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v4}, Lexpo/modules/updates/procedures/StartupProcedure;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v4

    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getResponseHeaderData()Lexpo/modules/updates/manifest/ResponseHeaderData;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponseHeaderData;->getManifestFilters()Lorg/json/JSONObject;

    move-result-object v1

    :cond_5
    invoke-virtual {v3, v0, v4, v1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->shouldLoadNewUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lorg/json/JSONObject;)Z

    move-result p1

    invoke-direct {v2, p1}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    return-object v2

    .line 272
    :cond_6
    :goto_2
    new-instance p1, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    invoke-direct {p1, v2}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    return-object p1
.end method
