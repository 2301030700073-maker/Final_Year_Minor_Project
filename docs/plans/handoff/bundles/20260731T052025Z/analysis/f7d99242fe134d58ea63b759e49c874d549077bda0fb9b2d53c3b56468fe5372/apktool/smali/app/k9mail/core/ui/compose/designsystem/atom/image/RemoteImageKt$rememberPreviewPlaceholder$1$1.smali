.class public final Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field public final synthetic $paddingPx:F

.field public final synthetic $painter:Landroidx/compose/ui/graphics/vector/VectorPainter;

.field public final intrinsicSize:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/vector/VectorPainter;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;->$painter:Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 2
    .line 3
    iput p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;->$paddingPx:F

    .line 4
    .line 5
    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/VectorPainter;->getIntrinsicSize-NH-jbRc()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;->intrinsicSize:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getIntrinsicSize-NH-jbRc()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;->intrinsicSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final onDraw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;->$painter:Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 2
    .line 3
    iget-object v5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 4
    .line 5
    iget-object v6, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 6
    .line 7
    iget-object v1, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Landroidx/camera/view/PreviewView$1;

    .line 12
    .line 13
    iget p0, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;->$paddingPx:F

    .line 14
    .line 15
    invoke-virtual {v1, p0, p0, p0, p0}, Landroidx/camera/view/PreviewView$1;->inset(FFFF)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getSize-NH-jbRc()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const/high16 v4, 0x3f800000    # 1.0f

    .line 23
    .line 24
    move-object v1, p1

    .line 25
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0(Landroidx/compose/ui/node/LayoutNodeDrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    iget-object p1, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Landroidx/camera/view/PreviewView$1;

    .line 33
    .line 34
    neg-float p0, p0

    .line 35
    invoke-virtual {p1, p0, p0, p0, p0}, Landroidx/camera/view/PreviewView$1;->inset(FFFF)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    move-object p1, v0

    .line 41
    iget-object v0, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroidx/camera/view/PreviewView$1;

    .line 46
    .line 47
    neg-float p0, p0

    .line 48
    invoke-virtual {v0, p0, p0, p0, p0}, Landroidx/camera/view/PreviewView$1;->inset(FFFF)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
