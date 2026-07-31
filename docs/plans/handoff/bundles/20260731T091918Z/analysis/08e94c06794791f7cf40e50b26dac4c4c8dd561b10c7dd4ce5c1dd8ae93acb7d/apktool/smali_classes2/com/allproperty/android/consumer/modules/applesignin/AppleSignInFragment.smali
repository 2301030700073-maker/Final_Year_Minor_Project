.class public final Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AppleSignInFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J$\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u0015\u001a\u00020\u000bH\u0016J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "<init>",
        "()V",
        "argRedirectUri",
        "",
        "argAuthenticationUri",
        "argState",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "onCallback",
        "result",
        "Companion",
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


# static fields
.field private static final ARG_AUTHENTICATION_URI:Ljava/lang/String; = "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.AUTHENTICATION_URI"

.field private static final ARG_REDIRECT_URI:Ljava/lang/String; = "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.REDIRECT_URI"

.field private static final ARG_STATE:Ljava/lang/String; = "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.STATE"

.field public static final Companion:Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;


# instance fields
.field private argAuthenticationUri:Ljava/lang/String;

.field private argRedirectUri:Ljava/lang/String;

.field private argState:Ljava/lang/String;

.field private callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->Companion:Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$onCallback(Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->onCallback(Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)V

    return-void
.end method

.method public static final synthetic access$setCallback$p(Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final onCallback(Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->callback:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_1

    const-string v0, "callback"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 48
    const-string v0, "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.REDIRECT_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->argRedirectUri:Ljava/lang/String;

    .line 49
    const-string v0, "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.AUTHENTICATION_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->argAuthenticationUri:Ljava/lang/String;

    .line 50
    const-string v0, "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->argState:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 61
    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    .line 64
    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 67
    new-instance p2, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;

    iget-object p3, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->argState:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p3, "argState"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_0
    new-instance v1, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$onCreateView$1$2;

    invoke-direct {v1, p0}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$onCreateView$1$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, p3, v1}, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string p3, "FormInterceptorInterface"

    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance p2, Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;

    iget-object p3, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->argRedirectUri:Ljava/lang/String;

    if-nez p3, :cond_1

    const-string p3, "argRedirectUri"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_1
    sget-object v1, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor;->Companion:Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor$Companion;

    invoke-virtual {v1}, Lcom/allproperty/android/consumer/modules/applesignin/FormDataInterceptor$Companion;->getJS_TO_INJECT()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 69
    iget-object p2, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->argAuthenticationUri:Ljava/lang/String;

    if-nez p2, :cond_2

    const-string p2, "argAuthenticationUri"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 75
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
