.class public final Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "AppleSignInModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppleSignInModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppleSignInModule.kt\ncom/allproperty/android/consumer/modules/applesignin/AppleSignInModule\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,75:1\n29#2:76\n*S KotlinDebug\n*F\n+ 1 AppleSignInModule.kt\ncom/allproperty/android/consumer/modules/applesignin/AppleSignInModule\n*L\n47#1:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\t\u001a\u00020\u0007H\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "context",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "clientId",
        "",
        "redirectUri",
        "getName",
        "setUp",
        "",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "login",
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
.field public static final Companion:Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule$Companion;

.field private static final REACT_CLASS:Ljava/lang/String; = "AppleSignIn"


# instance fields
.field private clientId:Ljava/lang/String;

.field private redirectUri:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ro9zDPKb540DtmmHS8i2R2ZabwA(Lcom/facebook/react/bridge/Promise;Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;->login$lambda$2$lambda$1(Lcom/facebook/react/bridge/Promise;Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tzwM9cmqR13K9NahQ-omVyCZnoY(Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;Ljava/lang/String;Landroidx/fragment/app/FragmentManager;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;->login$lambda$2(Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;Ljava/lang/String;Landroidx/fragment/app/FragmentManager;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;->Companion:Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method private static final login$lambda$2(Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;Ljava/lang/String;Landroidx/fragment/app/FragmentManager;Lcom/facebook/react/bridge/Promise;)V
    .locals 7

    .line 45
    sget-object v0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->Companion:Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;

    .line 46
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;->redirectUri:Ljava/lang/String;

    const-string/jumbo v2, "redirectUri"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    .line 47
    :cond_0
    const-string v4, "https://appleid.apple.com/auth/authorize"

    .line 76
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 48
    const-string/jumbo v5, "response_type"

    const-string v6, "code id_token"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    const-string/jumbo v5, "scope"

    const-string v6, "email"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    iget-object v5, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;->clientId:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, "clientId"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_1
    const-string v6, "client_id"

    invoke-virtual {v4, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    iget-object p0, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;->redirectUri:Ljava/lang/String;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_2
    const-string/jumbo v2, "redirect_uri"

    invoke-virtual {v4, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    const-string/jumbo p0, "state"

    invoke-virtual {v4, p0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    const-string/jumbo p0, "response_mode"

    const-string v2, "form_post"

    invoke-virtual {v4, p0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "toString(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v2, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;

    move-result-object p0

    .line 71
    invoke-virtual {p0, p2, v3}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final login$lambda$2$lambda$1(Lcom/facebook/react/bridge/Promise;Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)Lkotlin/Unit;
    .locals 3

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p1, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Success;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v0, Lcom/facebook/react/bridge/WritableMap;

    .line 60
    check-cast p1, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Success;

    invoke-virtual {p1}, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Success;->getIdToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "identityToken"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "authorizationCode"

    invoke-virtual {p1}, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Success;->getAuthorizationCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    instance-of v0, p1, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Failure;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Failure;

    invoke-virtual {p1}, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppleSignIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, "E_GENERAL"

    invoke-virtual {p1}, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 57
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "AppleSignIn"

    return-object v0
.end method

.method public final login(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "getSupportFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, v1, p1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule$$ExternalSyntheticLambda0;-><init>(Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;Ljava/lang/String;Landroidx/fragment/app/FragmentManager;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setUp(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "redirectUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;->clientId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;->redirectUri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
