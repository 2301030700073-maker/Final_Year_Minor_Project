.class public final Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$error$1;
.super Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;
.source "IncognitoWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
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
        "com/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$error$1",
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
.field final synthetic $description:Ljava/lang/String;

.field final synthetic $errorCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$error$1;->$description:Ljava/lang/String;

    iput p2, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$error$1;->$errorCode:I

    .line 189
    invoke-direct {p0}, Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$error$1;->$description:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$error$1;->$errorCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$error$1;->$errorCode:I

    return v0
.end method
