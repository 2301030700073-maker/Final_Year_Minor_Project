.class public final Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$compatibleError$1;
.super Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;
.source "IncognitoWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$compatibleError$1",
        "Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;",
        "description",
        "",
        "getDescription",
        "()Ljava/lang/CharSequence;",
        "errorCode",
        "",
        "getErrorCode",
        "()I",
        "propertyguru_react-native-webkit_release"
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
.field final synthetic $error:Landroid/webkit/WebResourceError;


# direct methods
.method constructor <init>(Landroid/webkit/WebResourceError;)V
    .locals 0

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$compatibleError$1;->$error:Landroid/webkit/WebResourceError;

    .line 213
    invoke-direct {p0}, Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$compatibleError$1;->$error:Landroid/webkit/WebResourceError;

    invoke-virtual {v0}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "getDescription(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$compatibleError$1;->$error:Landroid/webkit/WebResourceError;

    invoke-virtual {v0}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    return v0
.end method
