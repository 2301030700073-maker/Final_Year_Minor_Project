.class public final Lexpo/modules/updates/loader/FileDownloader$downloadData$1;
.super Ljava/lang/Object;
.source "FileDownloader.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/FileDownloader;->downloadData(Lokhttp3/Request;Lokhttp3/Callback;Z)V
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
        "expo/modules/updates/loader/FileDownloader$downloadData$1",
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
.field final synthetic $callback:Lokhttp3/Callback;

.field final synthetic $isRetry:Z

.field final synthetic $request:Lokhttp3/Request;

.field final synthetic this$0:Lexpo/modules/updates/loader/FileDownloader;


# direct methods
.method constructor <init>(ZLokhttp3/Callback;Lexpo/modules/updates/loader/FileDownloader;Lokhttp3/Request;)V
    .locals 0

    iput-boolean p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;->$isRetry:Z

    iput-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;->$callback:Lokhttp3/Callback;

    iput-object p3, p0, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;->this$0:Lexpo/modules/updates/loader/FileDownloader;

    iput-object p4, p0, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;->$request:Lokhttp3/Request;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-boolean v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;->$isRetry:Z

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;->$callback:Lokhttp3/Callback;

    invoke-interface {v0, p1, p2}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;->this$0:Lexpo/modules/updates/loader/FileDownloader;

    iget-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;->$request:Lokhttp3/Request;

    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;->$callback:Lokhttp3/Callback;

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lexpo/modules/updates/loader/FileDownloader;->access$downloadData(Lexpo/modules/updates/loader/FileDownloader;Lokhttp3/Request;Lokhttp3/Callback;Z)V

    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;->$callback:Lokhttp3/Callback;

    invoke-interface {v0, p1, p2}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method
