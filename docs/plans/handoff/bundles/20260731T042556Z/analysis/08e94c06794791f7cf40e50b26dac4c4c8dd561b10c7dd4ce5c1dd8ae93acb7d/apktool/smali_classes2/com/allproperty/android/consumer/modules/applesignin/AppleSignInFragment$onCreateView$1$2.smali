.class final synthetic Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$onCreateView$1$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AppleSignInFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;

    const-string/jumbo v5, "onCallback(Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string/jumbo v4, "onCallback"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;

    invoke-virtual {p0, p1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$onCreateView$1$2;->invoke(Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)V
    .locals 1

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$onCreateView$1$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;

    invoke-static {v0, p1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;->access$onCallback(Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)V

    return-void
.end method
