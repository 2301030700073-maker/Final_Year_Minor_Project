.class public final Lokhttp3/internal/http2/Huffman$Node;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
.implements Landroidx/compose/ui/text/input/OffsetMapping;
.implements Landroidx/compose/runtime/Applier;


# instance fields
.field public final children:Ljava/lang/Object;

.field public final symbol:I

.field public terminalBitCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 107
    new-array v0, v0, [Lokhttp3/internal/http2/Huffman$Node;

    iput-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 109
    iput v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 101
    new-instance p1, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 102
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 103
    iput-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 112
    iput p1, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 113
    :cond_0
    iput p1, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    return-void
.end method

.method public constructor <init>(IILandroidx/compose/animation/core/Easing;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 116
    iput p2, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 117
    new-instance v0, Lokhttp3/Dispatcher;

    new-instance v1, Landroidx/compose/animation/core/FloatTweenSpec;

    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/animation/core/FloatTweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-direct {v0, v1}, Lokhttp3/Dispatcher;-><init>(Landroidx/compose/animation/core/FloatAnimationSpec;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    iput p2, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    iput-object p3, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 13
    .line 14
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->State:[I

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ge v1, v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget v3, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 38
    .line 39
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iput v2, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 v3, 0x1

    .line 47
    if-ne v2, v3, :cond_1

    .line 48
    .line 49
    iget v3, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 50
    .line 51
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iput v2, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    const-string v4, "layout"

    .line 73
    .line 74
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 81
    .line 82
    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/Applier;I)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    iput p2, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/input/OffsetMapping;II)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 97
    iput p2, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 98
    iput p3, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/Applier;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Applier;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public decodeToStringAndReset()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Lkotlin/SynchronizedLazyImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, [B

    .line 11
    .line 12
    iget v2, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString(I[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iput v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 19
    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    iput v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 23
    .line 24
    throw v1
.end method

.method public down(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 6
    .line 7
    iget-object p0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/compose/runtime/Applier;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getDelayMillis()I
    .locals 0

    .line 1
    iget p0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getDurationMillis()I
    .locals 0

    .line 1
    iget p0, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 2
    .line 3
    return p0
.end method

.method public getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/http2/Huffman$Node;->getDelayMillis()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/http2/Huffman$Node;->getDurationMillis()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    add-int/2addr p0, p1

    .line 10
    int-to-long p0, p0

    .line 11
    const-wide/32 p2, 0xf4240

    .line 12
    .line 13
    .line 14
    mul-long/2addr p0, p2

    .line 15
    return-wide p0
.end method

.method public getEndVelocity(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/http2/Huffman$Node;->getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    iget-object p0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lokhttp3/Dispatcher;

    .line 9
    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p2

    .line 12
    move-object v5, p3

    .line 13
    invoke-virtual/range {v0 .. v5}, Lokhttp3/Dispatcher;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 6

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lokhttp3/Dispatcher;

    .line 5
    .line 6
    move-wide v1, p1

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lokhttp3/Dispatcher;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 6

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lokhttp3/Dispatcher;

    .line 5
    .line 6
    move-wide v1, p1

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lokhttp3/Dispatcher;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public insertBottomUp(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/Applier;

    .line 4
    .line 5
    iget v1, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    add-int/2addr p1, p0

    .line 14
    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->insertBottomUp(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public insertTopDown(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/Applier;

    .line 4
    .line 5
    iget v1, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    add-int/2addr p1, p0

    .line 14
    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->insertTopDown(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public synthetic isInfinite()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public move(III)V
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object p0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/compose/runtime/Applier;

    .line 12
    .line 13
    add-int/2addr p1, v0

    .line 14
    add-int/2addr p2, v0

    .line 15
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/runtime/Applier;->move(III)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public synthetic onEndChanges()V
    .locals 0

    .line 1
    return-void
.end method

.method public originalToTransformed(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 12
    .line 13
    if-gt p1, v1, :cond_0

    .line 14
    .line 15
    iget p0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 16
    .line 17
    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->validateOriginalToTransformed(III)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return v0
.end method

.method public remove(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/Applier;

    .line 4
    .line 5
    iget v1, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    add-int/2addr p1, p0

    .line 14
    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->remove(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public reuse()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/Applier;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->reuse()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public transformedToOriginal(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 12
    .line 13
    if-gt p1, v1, :cond_0

    .line 14
    .line 15
    iget p0, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 16
    .line 17
    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->validateTransformedToOriginal(III)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return v0
.end method

.method public up()V
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "OffsetApplier up called with no corresponding down"

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    iput v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 16
    .line 17
    iget-object p0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroidx/compose/runtime/Applier;

    .line 20
    .line 21
    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->up()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
