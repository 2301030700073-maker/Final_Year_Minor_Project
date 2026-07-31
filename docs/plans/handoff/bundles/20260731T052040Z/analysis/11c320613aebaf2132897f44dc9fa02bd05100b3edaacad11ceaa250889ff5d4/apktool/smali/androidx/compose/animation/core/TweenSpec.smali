.class public final Landroidx/compose/animation/core/TweenSpec;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/animation/core/FiniteAnimationSpec;


# instance fields
.field public final delay:I

.field public final durationMillis:I

.field public final easing:Landroidx/compose/animation/core/Easing;


# direct methods
.method public constructor <init>(IILandroidx/compose/animation/core/Easing;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/animation/core/TweenSpec;->delay:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/compose/animation/core/TweenSpec;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/animation/core/TweenSpec;

    .line 7
    .line 8
    iget v0, p1, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    .line 9
    .line 10
    iget v2, p0, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget v0, p1, Landroidx/compose/animation/core/TweenSpec;->delay:I

    .line 15
    .line 16
    iget v2, p0, Landroidx/compose/animation/core/TweenSpec;->delay:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    .line 23
    .line 24
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget p0, p0, Landroidx/compose/animation/core/TweenSpec;->delay:I

    .line 15
    .line 16
    add-int/2addr v1, p0

    .line 17
    return v1
.end method

.method public final vectorize(Landroidx/compose/animation/core/TwoWayConverterImpl;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 2

    .line 1
    new-instance p1, Lokhttp3/internal/http2/Huffman$Node;

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/animation/core/TweenSpec;->delay:I

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    .line 6
    .line 7
    iget p0, p0, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1}, Lokhttp3/internal/http2/Huffman$Node;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final vectorize()Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
    .locals 3

    .line 13
    new-instance v0, Lokhttp3/internal/http2/Huffman$Node;

    iget v1, p0, Landroidx/compose/animation/core/TweenSpec;->delay:I

    iget-object v2, p0, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    iget p0, p0, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    invoke-direct {v0, p0, v1, v2}, Lokhttp3/internal/http2/Huffman$Node;-><init>(IILandroidx/compose/animation/core/Easing;)V

    return-object v0
.end method
