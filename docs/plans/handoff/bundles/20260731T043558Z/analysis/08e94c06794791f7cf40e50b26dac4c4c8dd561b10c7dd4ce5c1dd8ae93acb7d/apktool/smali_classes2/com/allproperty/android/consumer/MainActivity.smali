.class public final Lcom/allproperty/android/consumer/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0014J\u0008\u0010\u000e\u001a\u00020\u000fH\u0014\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/MainActivity;",
        "Lcom/facebook/react/ReactActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstance",
        "Landroid/os/Bundle;",
        "setTransparentNavigationBar",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "getMainComponentName",
        "",
        "createReactActivityDelegate",
        "Lcom/facebook/react/ReactActivityDelegate;",
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

    .line 15
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method

.method private final setTransparentNavigationBar()V
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x310

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 28
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/allproperty/android/consumer/MainActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 5

    .line 50
    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper;

    .line 51
    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactActivity;

    .line 53
    new-instance v2, Lcom/facebook/react/defaults/DefaultReactActivityDelegate;

    invoke-virtual {p0}, Lcom/allproperty/android/consumer/MainActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->getFabricEnabled()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/facebook/react/defaults/DefaultReactActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;Z)V

    check-cast v2, Lcom/facebook/react/ReactActivityDelegate;

    const/4 v3, 0x1

    .line 50
    invoke-direct {v0, v1, v3, v2}, Lexpo/modules/ReactActivityDelegateWrapper;-><init>(Lcom/facebook/react/ReactActivity;ZLcom/facebook/react/ReactActivityDelegate;)V

    check-cast v0, Lcom/facebook/react/ReactActivityDelegate;

    return-object v0
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "host"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    sget-object p1, Lcom/allproperty/android/consumer/modules/SplashScreen;->Companion:Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->onCreate(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 19
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/allproperty/android/consumer/R$color;->pg_white:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 21
    invoke-direct {p0}, Lcom/allproperty/android/consumer/MainActivity;->setTransparentNavigationBar()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/allproperty/android/consumer/MainActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
