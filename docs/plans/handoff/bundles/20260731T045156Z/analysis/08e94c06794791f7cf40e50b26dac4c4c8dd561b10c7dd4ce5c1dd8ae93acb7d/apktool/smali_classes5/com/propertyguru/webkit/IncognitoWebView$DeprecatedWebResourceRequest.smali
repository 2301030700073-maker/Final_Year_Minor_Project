.class final Lcom/propertyguru/webkit/IncognitoWebView$DeprecatedWebResourceRequest;
.super Ljava/lang/Object;
.source "IncognitoWebView.kt"

# interfaces
.implements Landroid/webkit/WebResourceRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/propertyguru/webkit/IncognitoWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeprecatedWebResourceRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0014\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0008H\u0016J\u0008\u0010\u000e\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/propertyguru/webkit/IncognitoWebView$DeprecatedWebResourceRequest;",
        "Landroid/webkit/WebResourceRequest;",
        "uri",
        "Landroid/net/Uri;",
        "<init>",
        "(Landroid/net/Uri;)V",
        "getUrl",
        "isRedirect",
        "",
        "getMethod",
        "",
        "getRequestHeaders",
        "",
        "hasGesture",
        "isForMainFrame",
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
.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebView$DeprecatedWebResourceRequest;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 271
    const-string v0, "GET"

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$DeprecatedWebResourceRequest;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasGesture()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isForMainFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRedirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
