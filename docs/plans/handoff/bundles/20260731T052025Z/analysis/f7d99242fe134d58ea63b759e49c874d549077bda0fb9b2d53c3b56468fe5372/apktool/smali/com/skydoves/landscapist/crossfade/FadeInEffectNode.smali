.class public final Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;
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
    iput-object p1, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->key:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    iput p2, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->durationMs:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->alpha:Landroidx/compose/animation/core/Animatable;

    .line 14
    .line 15
    const p2, 0x3f4ccccd    # 0.8f

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->brightness:Landroidx/compose/animation/core/Animatable;

    .line 23
    .line 24
    invoke-static {p1}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->saturation:Landroidx/compose/animation/core/Animatable;

    .line 29
    .line 30
    invoke-static {}, Landroidx/compose/ui/graphics/ColorKt;->constructor-impl$default()[F

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->colorMatrix:[F

    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/ui/graphics/ColorKt;->Paint()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->paint:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->alpha:Landroidx/compose/animation/core/Animatable;

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
    iget-object v2, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->brightness:Landroidx/compose/animation/core/Animatable;

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
    iget-object v3, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->saturation:Landroidx/compose/animation/core/Animatable;

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
    const/high16 v4, 0x3f800000    # 1.0f

    .line 40
    .line 41
    cmpg-float v5, v1, v4

    .line 42
    .line 43
    if-ltz v5, :cond_1

    .line 44
    .line 45
    cmpg-float v5, v2, v4

    .line 46
    .line 47
    if-ltz v5, :cond_1

    .line 48
    .line 49
    cmpg-float v5, v3, v4

    .line 50
    .line 51
    if-gez v5, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->colorMatrix:[F

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sub-float/2addr v4, v2

    .line 64
    const/high16 v2, 0x437f0000    # 255.0f

    .line 65
    .line 66
    mul-float/2addr v4, v2

    .line 67
    const/4 v2, 0x4

    .line 68
    aput v4, v5, v2

    .line 69
    .line 70
    const/16 v2, 0x9

    .line 71
    .line 72
    aput v4, v5, v2

    .line 73
    .line 74
    const/16 v2, 0xe

    .line 75
    .line 76
    aput v4, v5, v2

    .line 77
    .line 78
    invoke-static {v5, v3}, Lcom/skydoves/landscapist/crossfade/CrossfadeWithEffectKt;->updateSaturation-RaGpIIw([FF)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;

    .line 82
    .line 83
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    .line 84
    .line 85
    invoke-direct {v3, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, v3}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    .line 89
    .line 90
    .line 91
    iput-object v5, v2, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;->colorMatrix:[F

    .line 92
    .line 93
    iget-object p0, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->paint:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Landroidx/compose/ui/graphics/AndroidPaint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->setAlpha(F)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 102
    .line 103
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    const-wide/16 v4, 0x0

    .line 114
    .line 115
    invoke-static {v4, v5, v2, v3}, Lorg/slf4j/helpers/Util;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v1, v2, p0}, Landroidx/compose/ui/graphics/Canvas;->saveLayer(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 130
    .line 131
    .line 132
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
    new-instance v1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V

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
