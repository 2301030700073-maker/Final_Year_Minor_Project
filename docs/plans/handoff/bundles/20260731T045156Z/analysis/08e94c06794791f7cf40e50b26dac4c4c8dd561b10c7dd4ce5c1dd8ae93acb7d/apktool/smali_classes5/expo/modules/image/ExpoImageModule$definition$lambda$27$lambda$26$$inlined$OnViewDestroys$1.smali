.class public final Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$26$$inlined$OnViewDestroys$1;
.super Ljava/lang/Object;
.source "ViewDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/ExpoImageModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder$OnViewDestroys$1\n+ 2 ExpoImageModule.kt\nexpo/modules/image/ExpoImageModule\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,91:1\n296#2:92\n297#2,2:95\n299#2:107\n117#3,2:93\n120#3,10:97\n*S KotlinDebug\n*F\n+ 1 ExpoImageModule.kt\nexpo/modules/image/ExpoImageModule\n*L\n296#1:93,2\n296#1:97,10\n*E\n"
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$26$$inlined$OnViewDestroys$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    check-cast p1, Lexpo/modules/image/ExpoImageViewWrapper;

    .line 92
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p1}, Lexpo/modules/image/ExpoImageViewWrapper;->onViewDestroys()V

    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$26$lambda$25$$inlined$doOnDetach$1;

    invoke-direct {v1, v0, p1}, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$26$lambda$25$$inlined$doOnDetach$1;-><init>(Landroid/view/View;Lexpo/modules/image/ExpoImageViewWrapper;)V

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method
