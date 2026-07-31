.class public final Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;
.super Lcom/facebook/react/bridge/BaseActivityEventListener;
.source "IncognitoWebViewChromeClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1",
        "Lcom/facebook/react/bridge/BaseActivityEventListener;",
        "onActivityResult",
        "",
        "activity",
        "Landroid/app/Activity;",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
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
.field final synthetic this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;


# direct methods
.method public static synthetic $r8$lambda$9MMJJDJP2QiYSYlXsDYxZqcMPLM(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;->onActivityResult$lambda$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;)V
    .locals 0

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    .line 54
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseActivityEventListener;-><init>()V

    return-void
.end method

.method private static final onActivityResult$lambda$0(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x0

    const/4 p2, -0x1

    if-eq p3, p2, :cond_1

    .line 59
    iget-object p2, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    invoke-static {p2}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$getFilePathCallback$p(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;)Landroid/webkit/ValueCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 60
    :cond_0
    iget-object p2, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    invoke-static {p2, p1}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$setFilePathCallback$p(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Landroid/webkit/ValueCallback;)V

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    invoke-static {v0}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$getTempFilePaths$p(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 77
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    invoke-static {v0}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$getTempFilePaths$p(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eq p3, p2, :cond_2

    move-object p2, p1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/4 p2, 0x1

    .line 81
    new-array p2, p2, [Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    aput-object p4, p2, p3

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {p3, p4}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p2

    .line 85
    :goto_0
    iget-object p3, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    invoke-static {p3}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$getTempFilePaths$p(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 86
    iget-object p3, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    invoke-static {p3}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$getFilePathCallback$p(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;)Landroid/webkit/ValueCallback;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p3, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 87
    :cond_4
    iget-object p2, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    invoke-static {p2, p1}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->access$setFilePathCallback$p(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Landroid/webkit/ValueCallback;)V

    return-void
.end method
