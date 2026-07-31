.class public final Landroidx/compose/ui/text/android/style/ShadowSpan;
.super Landroid/text/style/CharacterStyle;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final color:I

.field public final offsetX:F

.field public final offsetY:F

.field public final radius:F


# direct methods
.method public constructor <init>(FFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    .line 5
    .line 6
    iput p1, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    .line 7
    .line 8
    iput p2, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    .line 9
    .line 10
    iput p3, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    .line 6
    .line 7
    iget p0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    .line 8
    .line 9
    invoke-virtual {p1, v2, p0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
