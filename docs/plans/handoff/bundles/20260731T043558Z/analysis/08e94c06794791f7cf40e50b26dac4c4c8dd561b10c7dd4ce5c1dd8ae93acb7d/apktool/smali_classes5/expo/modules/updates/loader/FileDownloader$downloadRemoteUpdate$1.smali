.class public final Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;
.super Ljava/lang/Object;
.source "FileDownloader.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/FileDownloader;->downloadRemoteUpdate(Lorg/json/JSONObject;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "expo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
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
.field final synthetic $callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

.field final synthetic this$0:Lexpo/modules/updates/loader/FileDownloader;


# direct methods
.method constructor <init>(Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;->this$0:Lexpo/modules/updates/loader/FileDownloader;

    iput-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;->this$0:Lexpo/modules/updates/loader/FileDownloader;

    invoke-static {p1}, Lexpo/modules/updates/loader/FileDownloader;->access$getLogger$p(Lexpo/modules/updates/loader/FileDownloader;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Ljava/lang/Exception;

    sget-object v1, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v2, "Failed to download remote update"

    invoke-virtual {p1, v2, v0, v1}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 426
    iget-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    new-instance v0, Ljava/io/IOException;

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {v0, v2, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    .line 433
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 434
    iget-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;->this$0:Lexpo/modules/updates/loader/FileDownloader;

    invoke-static {p2}, Lexpo/modules/updates/loader/FileDownloader;->access$getLogger$p(Lexpo/modules/updates/loader/FileDownloader;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Ljava/lang/Exception;

    sget-object v1, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v2, "Remote update request not successful"

    invoke-virtual {p2, v2, v0, v1}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 435
    iget-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    new-instance v0, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p2, v0}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 439
    :cond_0
    iget-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;->this$0:Lexpo/modules/updates/loader/FileDownloader;

    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    invoke-virtual {p1, p2, v0}, Lexpo/modules/updates/loader/FileDownloader;->parseRemoteUpdateResponse$expo_updates_release(Lokhttp3/Response;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V

    return-void
.end method
