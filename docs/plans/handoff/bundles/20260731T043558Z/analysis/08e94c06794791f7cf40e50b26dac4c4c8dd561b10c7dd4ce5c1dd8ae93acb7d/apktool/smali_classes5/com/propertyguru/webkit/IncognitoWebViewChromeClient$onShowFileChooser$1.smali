.class public final Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;
.super Ljava/lang/Object;
.source "IncognitoWebViewChromeClient.kt"

# interfaces
.implements Lcom/facebook/react/modules/core/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J+\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1",
        "Lcom/facebook/react/modules/core/PermissionListener;",
        "onRequestPermissionsResult",
        "",
        "requestCode",
        "",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)Z",
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
.field final synthetic $acceptTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filesIntent:Landroid/content/Intent;

.field final synthetic $intents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $manager:Landroid/content/pm/PackageManager;

.field final synthetic $reactContext:Lcom/facebook/react/bridge/ReactContext;

.field final synthetic $requestedPermissions:[Ljava/lang/String;

.field final synthetic this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;


# direct methods
.method constructor <init>(Landroid/webkit/ValueCallback;Ljava/util/List;Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Ljava/util/List;Landroid/content/pm/PackageManager;[Ljava/lang/String;Landroid/content/Intent;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lcom/facebook/react/bridge/ReactContext;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$filePathCallback:Landroid/webkit/ValueCallback;

    iput-object p2, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$intents:Ljava/util/List;

    iput-object p3, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    iput-object p4, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$acceptTypes:Ljava/util/List;

    iput-object p5, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$manager:Landroid/content/pm/PackageManager;

    iput-object p6, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$requestedPermissions:[Ljava/lang/String;

    iput-object p7, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$filesIntent:Landroid/content/Intent;

    iput-object p8, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 8

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 202
    iget-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$filePathCallback:Landroid/webkit/ValueCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return v1

    .line 206
    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    const-string v2, "android.permission.CAMERA"

    if-ge v0, p1, :cond_3

    .line 207
    aget-object v3, p2, v0

    .line 208
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    aget v2, p3, v0

    if-nez v2, :cond_2

    .line 210
    iget-object v2, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$intents:Ljava/util/List;

    iget-object v3, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    iget-object v4, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$acceptTypes:Ljava/util/List;

    iget-object v5, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$manager:Landroid/content/pm/PackageManager;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v4, v5}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$cameraPermissionGranted(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 214
    :cond_1
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    aget v2, p3, v0

    if-nez v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$intents:Ljava/util/List;

    iget-object v3, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    iget-object v4, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$acceptTypes:Ljava/util/List;

    iget-object v5, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$manager:Landroid/content/pm/PackageManager;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v4, v5}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$recordAudioPermissionGranted(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_3
    iget-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$requestedPermissions:[Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 222
    iget-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$intents:Ljava/util/List;

    iget-object p2, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    iget-object p3, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$acceptTypes:Ljava/util/List;

    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$manager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, p3, v0}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$cameraPermissionGranted(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    :cond_4
    iget-object v2, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    iget-object v3, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$intents:Ljava/util/List;

    iget-object v4, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$filesIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$manager:Landroid/content/pm/PackageManager;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v7, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;->$filePathCallback:Landroid/webkit/ValueCallback;

    invoke-static/range {v2 .. v7}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$startIntent(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager;Lcom/facebook/react/bridge/ReactContext;Landroid/webkit/ValueCallback;)V

    return v1
.end method
