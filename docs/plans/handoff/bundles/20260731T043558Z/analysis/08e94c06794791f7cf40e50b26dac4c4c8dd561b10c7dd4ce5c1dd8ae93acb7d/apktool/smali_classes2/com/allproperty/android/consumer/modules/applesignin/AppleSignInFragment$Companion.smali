.class public final Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;
.super Ljava/lang/Object;
.source "AppleSignInFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J2\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;",
        "",
        "<init>",
        "()V",
        "ARG_REDIRECT_URI",
        "",
        "ARG_AUTHENTICATION_URI",
        "ARG_STATE",
        "newInstance",
        "Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;",
        "redirectUri",
        "authenticationUri",
        "state",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;",
        "",
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
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;"
        }
    .end annotation

    const-string/jumbo v0, "redirectUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;

    invoke-direct {v0}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    const-string v2, "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.REDIRECT_URI"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string p1, "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.AUTHENTICATION_URI"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string p1, "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.STATE"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0, p4}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->access$setCallback$p(Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
