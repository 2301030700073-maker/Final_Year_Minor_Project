.class public final Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;
.super Ljava/lang/Object;
.source "FileDownloader.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/FileDownloader;->downloadAssetAndVerifyHashAndWriteToPath(Lokhttp3/Request;Ljava/lang/String;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;)V
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
        "expo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1",
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
.field final synthetic $callback:Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;

.field final synthetic $destination:Ljava/io/File;

.field final synthetic $expectedBase64URLEncodedSHA256Hash:Ljava/lang/String;

.field final synthetic $request:Lokhttp3/Request;

.field final synthetic this$0:Lexpo/modules/updates/loader/FileDownloader;


# direct methods
.method constructor <init>(Lokhttp3/Request;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$request:Lokhttp3/Request;

    iput-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->this$0:Lexpo/modules/updates/loader/FileDownloader;

    iput-object p3, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;

    iput-object p4, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$destination:Ljava/io/File;

    iput-object p5, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$expectedBase64URLEncodedSHA256Hash:Ljava/lang/String;

    .line 81
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

    .line 83
    iget-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$request:Lokhttp3/Request;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to download asset from URL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->this$0:Lexpo/modules/updates/loader/FileDownloader;

    invoke-static {v0}, Lexpo/modules/updates/loader/FileDownloader;->access$getLogger$p(Lexpo/modules/updates/loader/FileDownloader;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Exception;

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, p1, v1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 85
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;

    new-instance v1, Ljava/io/IOException;

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {v1, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->this$0:Lexpo/modules/updates/loader/FileDownloader;

    invoke-static {p2}, Lexpo/modules/updates/loader/FileDownloader;->access$getLogger$p(Lexpo/modules/updates/loader/FileDownloader;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Ljava/lang/Exception;

    sget-object v1, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v2, "Asset download request not successful"

    invoke-virtual {p2, v2, v0, v1}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 94
    iget-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;

    new-instance v0, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p2, v0}, Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    iget-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$destination:Ljava/io/File;

    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$expectedBase64URLEncodedSHA256Hash:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, p1

    check-cast v2, Ljava/io/InputStream;

    .line 99
    sget-object v3, Lexpo/modules/updates/UpdatesUtils;->INSTANCE:Lexpo/modules/updates/UpdatesUtils;

    invoke-virtual {v3, v2, p2, v0}, Lexpo/modules/updates/UpdatesUtils;->verifySHA256AndWriteToFile(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    .line 100
    invoke-interface {v1, p2, v0}, Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;->onSuccess(Ljava/io/File;[B)V

    .line 101
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    .line 98
    :try_start_2
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 103
    iget-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$request:Lokhttp3/Request;

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$destination:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write asset file from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " to destination "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->this$0:Lexpo/modules/updates/loader/FileDownloader;

    invoke-static {v0}, Lexpo/modules/updates/loader/FileDownloader;->access$getLogger$p(Lexpo/modules/updates/loader/FileDownloader;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v0

    sget-object v1, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, p2, p1, v1}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 105
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;

    new-instance v1, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v1, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
