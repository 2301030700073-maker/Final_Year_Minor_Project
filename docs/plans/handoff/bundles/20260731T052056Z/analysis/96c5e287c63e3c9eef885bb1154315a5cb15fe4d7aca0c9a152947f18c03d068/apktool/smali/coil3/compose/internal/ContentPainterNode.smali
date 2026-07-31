.class public final Lcoil3/compose/internal/ContentPainterNode;
.super Lcoil3/compose/internal/AbstractContentPainterNode;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final painter:Lcoil3/compose/AsyncImagePainter;


# direct methods
.method public constructor <init>(Lcoil3/compose/AsyncImagePainter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Lcoil3/compose/ConstraintsSizeResolver;)V
    .locals 7

    .line 1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v4, 0x1

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p2

    .line 6
    move-object v2, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcoil3/compose/internal/AbstractContentPainterNode;-><init>(Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLjava/lang/String;Lcoil3/compose/ConstraintsSizeResolver;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcoil3/compose/internal/ContentPainterNode;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getPainter$1()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterNode;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onAttach()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterNode;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 6
    .line 7
    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->onRemembered()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onDetach()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterNode;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->onForgotten()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onReset()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterNode;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcoil3/compose/AsyncImagePainter;->set_input$coil_compose_core(Lcoil3/compose/AsyncImagePainter$Input;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
