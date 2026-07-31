.class public final Lcom/allproperty/android/consumer/CustomInAppMessageManagerListener;
.super Ljava/lang/Object;
.source "CustomInAppMessageManagerListener.kt"

# interfaces
.implements Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/CustomInAppMessageManagerListener;",
        "Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;",
        "<init>",
        "()V",
        "beforeInAppMessageDisplayed",
        "Lcom/braze/ui/inappmessage/InAppMessageOperation;",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "onInAppMessageButtonClicked",
        "",
        "button",
        "Lcom/braze/models/inappmessage/MessageButton;",
        "onInAppMessageClicked",
        "handleInAppBrowser",
        "",
        "uri",
        "Landroid/net/Uri;",
        "app_myPublicRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final handleInAppBrowser(Landroid/net/Uri;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->hideCurrentlyDisplayingInAppMessage(Z)V

    .line 48
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->resetAfterInAppMessageClose()V

    .line 49
    sget-object v0, Lcom/allproperty/android/consumer/modules/EventEmitter;->Companion:Lcom/allproperty/android/consumer/modules/EventEmitter$Companion;

    invoke-virtual {v0}, Lcom/allproperty/android/consumer/modules/EventEmitter$Companion;->getInstance()Lcom/allproperty/android/consumer/modules/EventEmitter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inAppBrowser"

    invoke-virtual {v0, v1, p1}, Lcom/allproperty/android/consumer/modules/EventEmitter;->sendNativeEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public beforeInAppMessageDisplayed(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/InAppMessageOperation;
    .locals 1

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/allproperty/android/consumer/modules/SplashScreen;->Companion:Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;

    invoke-virtual {v0}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object p1, Lcom/braze/ui/inappmessage/InAppMessageOperation;->DISPLAY_LATER:Lcom/braze/ui/inappmessage/InAppMessageOperation;

    return-object p1

    .line 18
    :cond_0
    invoke-super {p0, p1}, Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;->beforeInAppMessageDisplayed(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/InAppMessageOperation;

    move-result-object p1

    return-object p1
.end method

.method public onInAppMessageButtonClicked(Lcom/braze/models/inappmessage/IInAppMessage;Lcom/braze/models/inappmessage/MessageButton;)Z
    .locals 3

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "button"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lcom/braze/models/inappmessage/MessageButton;->getClickAction()Lcom/braze/enums/inappmessage/ClickAction;

    move-result-object v0

    sget-object v1, Lcom/braze/enums/inappmessage/ClickAction;->URI:Lcom/braze/enums/inappmessage/ClickAction;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/braze/models/inappmessage/MessageButton;->getOpenUriInWebview()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p2}, Lcom/braze/models/inappmessage/MessageButton;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 28
    invoke-direct {p0, v1}, Lcom/allproperty/android/consumer/CustomInAppMessageManagerListener;->handleInAppBrowser(Landroid/net/Uri;)V

    goto :goto_1

    .line 31
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;->onInAppMessageButtonClicked(Lcom/braze/models/inappmessage/IInAppMessage;Lcom/braze/models/inappmessage/MessageButton;)Z

    move-result v2

    :goto_1
    return v2
.end method

.method public onInAppMessageClicked(Lcom/braze/models/inappmessage/IInAppMessage;)Z
    .locals 3

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessage;->getClickAction()Lcom/braze/enums/inappmessage/ClickAction;

    move-result-object v1

    sget-object v2, Lcom/braze/enums/inappmessage/ClickAction;->URI:Lcom/braze/enums/inappmessage/ClickAction;

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessage;->getOpenUriInWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, v0}, Lcom/allproperty/android/consumer/CustomInAppMessageManagerListener;->handleInAppBrowser(Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;->onInAppMessageClicked(Lcom/braze/models/inappmessage/IInAppMessage;)Z

    move-result p1

    return p1
.end method
