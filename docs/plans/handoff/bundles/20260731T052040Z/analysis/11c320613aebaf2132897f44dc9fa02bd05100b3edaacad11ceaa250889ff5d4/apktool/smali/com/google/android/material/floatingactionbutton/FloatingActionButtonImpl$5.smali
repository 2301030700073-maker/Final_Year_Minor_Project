.class public final Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final synthetic $r8$classId:I

.field public floatEvaluator:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 7
    .line 8
    check-cast p3, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 9
    .line 10
    invoke-static {p2, p3}, Lokio/Okio;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;->floatEvaluator:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 19
    .line 20
    invoke-static {v0, p2}, Lokio/Okio;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-static {p2}, Lokio/Okio;->deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;->floatEvaluator:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    move v1, v0

    .line 34
    :goto_0
    array-length v2, p2

    .line 35
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;->floatEvaluator:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 38
    .line 39
    if-ge v1, v2, :cond_3

    .line 40
    .line 41
    aget-object v2, v3, v1

    .line 42
    .line 43
    aget-object v3, p2, v1

    .line 44
    .line 45
    aget-object v4, p3, v1

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-char v5, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 51
    .line 52
    iput-char v5, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 53
    .line 54
    move v5, v0

    .line 55
    :goto_1
    iget-object v6, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 56
    .line 57
    array-length v7, v6

    .line 58
    if-ge v5, v7, :cond_1

    .line 59
    .line 60
    iget-object v7, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 61
    .line 62
    aget v6, v6, v5

    .line 63
    .line 64
    const/high16 v8, 0x3f800000    # 1.0f

    .line 65
    .line 66
    sub-float/2addr v8, p1

    .line 67
    mul-float/2addr v8, v6

    .line 68
    iget-object v6, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 69
    .line 70
    aget v6, v6, v5

    .line 71
    .line 72
    mul-float/2addr v6, p1

    .line 73
    add-float/2addr v6, v8

    .line 74
    aput v6, v7, v5

    .line 75
    .line 76
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const-string p0, "Can\'t interpolate between two incompatible pathData"

    .line 83
    .line 84
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    :cond_3
    return-object v3

    .line 89
    :pswitch_0
    check-cast p2, Ljava/lang/Float;

    .line 90
    .line 91
    check-cast p3, Ljava/lang/Float;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;->floatEvaluator:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p0, Landroid/animation/FloatEvaluator;

    .line 96
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    const p1, 0x3dcccccd    # 0.1f

    .line 106
    .line 107
    .line 108
    cmpg-float p1, p0, p1

    .line 109
    .line 110
    if-gez p1, :cond_4

    .line 111
    .line 112
    const/4 p0, 0x0

    .line 113
    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
