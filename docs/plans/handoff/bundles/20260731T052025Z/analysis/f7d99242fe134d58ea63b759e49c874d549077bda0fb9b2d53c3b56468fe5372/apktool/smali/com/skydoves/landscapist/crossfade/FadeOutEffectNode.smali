.class public final Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;


# instance fields
.field public final alpha:Landroidx/compose/animation/core/Animatable;

.field public final brightness:Landroidx/compose/animation/core/Animatable;

.field public final colorMatrix:[F

.field public durationMs:I

.field public key:Landroidx/compose/runtime/MutableState;

.field public final paint:Landroidx/compose/ui/graphics/AndroidPaint;

.field public final saturation:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->key:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    iput p2, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->durationMs:I

    .line 7
    .line 8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->alpha:Landroidx/compose/animation/core/Animatable;

    .line 15
    .line 16
    invoke-static {p1}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->brightness:Landroidx/compose/animation/core/Animatable;

    .line 21
    .line 22
    invoke-static {p1}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->saturation:Landroidx/compose/animation/core/Animatable;

    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/ui/graphics/ColorKt;->constructor-impl$default()[F

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->colorMatrix:[F

    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/ui/graphics/ColorKt;->Paint()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->paint:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->alpha:Landroidx/compose/animation/core/Animatable;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->brightness:Landroidx/compose/animation/core/Animatable;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->saturation:Landroidx/compose/animation/core/Animatable;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    cmpl-float v4, v1, v4

    .line 41
    .line 42
    if-lez v4, :cond_0

    .line 43
    .line 44
    iget-object v4, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->colorMatrix:[F

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/high16 v5, 0x3f800000    # 1.0f

    .line 50
    .line 51
    sub-float/2addr v5, v2

    .line 52
    const/high16 v2, 0x437f0000    # 255.0f

    .line 53
    .line 54
    mul-float/2addr v5, v2

    .line 55
    const/4 v2, 0x4

    .line 56
    aput v5, v4, v2

    .line 57
    .line 58
    const/16 v2, 0x9

    .line 59
    .line 60
    aput v5, v4, v2

    .line 61
    .line 62
    const/16 v2, 0xe

    .line 63
    .line 64
    aput v5, v4, v2

    .line 65
    .line 66
    invoke-static {v4, v3}, Lcom/skydoves/landscapist/crossfade/CrossfadeWithEffectKt;->updateSaturation-RaGpIIw([FF)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;

    .line 70
    .line 71
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    .line 72
    .line 73
    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    .line 77
    .line 78
    .line 79
    iput-object v4, v2, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;->colorMatrix:[F

    .line 80
    .line 81
    iget-object p0, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->paint:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Landroidx/compose/ui/graphics/AndroidPaint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->setAlpha(F)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 90
    .line 91
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    const-wide/16 v4, 0x0

    .line 102
    .line 103
    invoke-static {v4, v5, v2, v3}, Lorg/slf4j/helpers/Util;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v1, v2, p0}, Landroidx/compose/ui/graphics/Canvas;->saveLayer(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 118
    .line 119
    .line 120
    :cond_0
    return-void
.end method

.method public final onAttach()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x3

    .line 13
    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final bridge onMeasureResultChanged()V
    .locals 0

    .line 1
    return-void
.end method
