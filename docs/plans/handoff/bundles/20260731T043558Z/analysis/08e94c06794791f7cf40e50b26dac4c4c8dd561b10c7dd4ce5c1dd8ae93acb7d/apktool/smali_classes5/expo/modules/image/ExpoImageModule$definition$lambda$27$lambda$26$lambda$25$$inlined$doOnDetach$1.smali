.class public final Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$26$lambda$25$$inlined$doOnDetach$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/ExpoImageModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnDetach$1\n+ 2 ExpoImageModule.kt\nexpo/modules/image/ExpoImageModule\n*L\n1#1,414:1\n297#2,2:415\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnDetach$1",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "onViewAttachedToWindow",
        "",
        "view",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
        "core-ktx_release"
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
.field final synthetic $this_doOnDetach:Landroid/view/View;

.field final synthetic $view$inlined:Lexpo/modules/image/ExpoImageViewWrapper;


# direct methods
.method public constructor <init>(Landroid/view/View;Lexpo/modules/image/ExpoImageViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$26$lambda$25$$inlined$doOnDetach$1;->$this_doOnDetach:Landroid/view/View;

    iput-object p2, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$26$lambda$25$$inlined$doOnDetach$1;->$view$inlined:Lexpo/modules/image/ExpoImageViewWrapper;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$26$lambda$25$$inlined$doOnDetach$1;->$this_doOnDetach:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 415
    iget-object p1, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$lambda$26$lambda$25$$inlined$doOnDetach$1;->$view$inlined:Lexpo/modules/image/ExpoImageViewWrapper;

    invoke-virtual {p1}, Lexpo/modules/image/ExpoImageViewWrapper;->onViewDestroys()V

    return-void
.end method
