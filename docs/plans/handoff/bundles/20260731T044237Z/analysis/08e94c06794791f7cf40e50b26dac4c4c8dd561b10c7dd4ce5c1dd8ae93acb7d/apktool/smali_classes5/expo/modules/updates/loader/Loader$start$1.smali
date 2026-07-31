.class public final Lexpo/modules/updates/loader/Loader$start$1;
.super Ljava/lang/Object;
.source "Loader.kt"

# interfaces
.implements Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/Loader;->start(Lexpo/modules/updates/loader/Loader$LoaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/updates/loader/Loader$start$1",
        "Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
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
.field final synthetic this$0:Lexpo/modules/updates/loader/Loader;


# direct methods
.method constructor <init>(Lexpo/modules/updates/loader/Loader;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/loader/Loader$start$1;->this$0:Lexpo/modules/updates/loader/Loader;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader$start$1;->this$0:Lexpo/modules/updates/loader/Loader;

    invoke-static {v0, p1}, Lexpo/modules/updates/loader/Loader;->access$finishWithException(Lexpo/modules/updates/loader/Loader;Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lexpo/modules/updates/loader/UpdateResponse;)V
    .locals 3

    const-string v0, "updateResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader$start$1;->this$0:Lexpo/modules/updates/loader/Loader;

    invoke-static {v0, p1}, Lexpo/modules/updates/loader/Loader;->access$setUpdateResponse$p(Lexpo/modules/updates/loader/Loader;Lexpo/modules/updates/loader/UpdateResponse;)V

    .line 112
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getManifestUpdateResponsePart()Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;->getUpdate()Lexpo/modules/updates/manifest/Update;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 113
    :goto_0
    iget-object v2, p0, Lexpo/modules/updates/loader/Loader$start$1;->this$0:Lexpo/modules/updates/loader/Loader;

    invoke-static {v2}, Lexpo/modules/updates/loader/Loader;->access$getCallback$p(Lexpo/modules/updates/loader/Loader;)Lexpo/modules/updates/loader/Loader$LoaderCallback;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, p1}, Lexpo/modules/updates/loader/Loader$LoaderCallback;->onUpdateResponseLoaded(Lexpo/modules/updates/loader/UpdateResponse;)Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p1}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;->getShouldDownloadManifestIfPresentInResponse()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lexpo/modules/updates/loader/Loader$start$1;->this$0:Lexpo/modules/updates/loader/Loader;

    invoke-static {p1, v0}, Lexpo/modules/updates/loader/Loader;->access$processUpdate(Lexpo/modules/updates/loader/Loader;Lexpo/modules/updates/manifest/Update;)V

    goto :goto_1

    .line 119
    :cond_1
    iget-object p1, p0, Lexpo/modules/updates/loader/Loader$start$1;->this$0:Lexpo/modules/updates/loader/Loader;

    invoke-static {p1, v1}, Lexpo/modules/updates/loader/Loader;->access$setUpdateEntity$p(Lexpo/modules/updates/loader/Loader;Lexpo/modules/updates/db/entity/UpdateEntity;)V

    .line 120
    iget-object p1, p0, Lexpo/modules/updates/loader/Loader$start$1;->this$0:Lexpo/modules/updates/loader/Loader;

    invoke-static {p1}, Lexpo/modules/updates/loader/Loader;->access$finishWithSuccess(Lexpo/modules/updates/loader/Loader;)V

    :goto_1
    return-void
.end method
