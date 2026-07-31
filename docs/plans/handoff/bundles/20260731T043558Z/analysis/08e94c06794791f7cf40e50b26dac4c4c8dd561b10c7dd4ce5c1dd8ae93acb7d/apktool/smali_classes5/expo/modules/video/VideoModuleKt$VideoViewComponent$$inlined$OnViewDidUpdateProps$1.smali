.class public final Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$OnViewDidUpdateProps$1;
.super Ljava/lang/Object;
.source "ViewDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/VideoModuleKt;->VideoViewComponent(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
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
    value = "SMAP\nViewDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder$OnViewDidUpdateProps$1\n+ 2 VideoModule.kt\nexpo/modules/video/VideoModuleKt\n*L\n1#1,109:1\n410#2,4:110\n*E\n"
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

    .line 107
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$OnViewDidUpdateProps$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    check-cast p1, Lexpo/modules/video/VideoView;

    .line 110
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getUseController()Z

    move-result v0

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getUseNativeControls()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 111
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getUseNativeControls()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    :cond_0
    return-void
.end method
