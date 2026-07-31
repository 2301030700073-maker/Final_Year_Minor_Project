.class public final Lorg/maplibre/android/location/LatLngEvaluator;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final synthetic $r8$classId:I

.field public latLng:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/maplibre/android/location/LatLngEvaluator;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lorg/maplibre/android/geometry/LatLng;

    .line 10
    .line 11
    invoke-direct {p1}, Lorg/maplibre/android/geometry/LatLng;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Ljava/lang/Object;

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/animation/FloatEvaluator;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/animation/FloatEvaluator;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Ljava/lang/Object;

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lorg/maplibre/android/location/LatLngEvaluator;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Float;

    .line 7
    .line 8
    check-cast p3, Ljava/lang/Float;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/animation/FloatEvaluator;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const p1, 0x3dcccccd    # 0.1f

    .line 23
    .line 24
    .line 25
    cmpg-float p1, p0, p1

    .line 26
    .line 27
    if-gez p1, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_0
    check-cast p2, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 36
    .line 37
    check-cast p3, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 38
    .line 39
    invoke-static {p2, p3}, Lcoil3/util/ContextsKt;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 48
    .line 49
    invoke-static {v0, p2}, Lcoil3/util/ContextsKt;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    invoke-static {p2}, Lcoil3/util/ContextsKt;->deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Ljava/lang/Object;

    .line 60
    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    move v1, v0

    .line 63
    :goto_0
    array-length v2, p2

    .line 64
    iget-object v3, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 67
    .line 68
    if-ge v1, v2, :cond_4

    .line 69
    .line 70
    aget-object v2, v3, v1

    .line 71
    .line 72
    aget-object v3, p2, v1

    .line 73
    .line 74
    aget-object v4, p3, v1

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-char v5, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 80
    .line 81
    iput-char v5, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 82
    .line 83
    move v5, v0

    .line 84
    :goto_1
    iget-object v6, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 85
    .line 86
    array-length v7, v6

    .line 87
    if-ge v5, v7, :cond_2

    .line 88
    .line 89
    iget-object v7, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 90
    .line 91
    aget v6, v6, v5

    .line 92
    .line 93
    const/high16 v8, 0x3f800000    # 1.0f

    .line 94
    .line 95
    sub-float/2addr v8, p1

    .line 96
    mul-float/2addr v8, v6

    .line 97
    iget-object v6, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 98
    .line 99
    aget v6, v6, v5

    .line 100
    .line 101
    mul-float/2addr v6, p1

    .line 102
    add-float/2addr v6, v8

    .line 103
    aput v6, v7, v5

    .line 104
    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const-string p0, "Can\'t interpolate between two incompatible pathData"

    .line 112
    .line 113
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    :cond_4
    return-object v3

    .line 118
    :pswitch_1
    check-cast p2, Lorg/maplibre/android/geometry/LatLng;

    .line 119
    .line 120
    check-cast p3, Lorg/maplibre/android/geometry/LatLng;

    .line 121
    .line 122
    iget-object p0, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p0, Lorg/maplibre/android/geometry/LatLng;

    .line 125
    .line 126
    invoke-virtual {p2}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 127
    .line 128
    .line 129
    move-result-wide v0

    .line 130
    invoke-virtual {p3}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    invoke-virtual {p2}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    sub-double/2addr v2, v4

    .line 139
    float-to-double v4, p1

    .line 140
    mul-double/2addr v2, v4

    .line 141
    add-double/2addr v2, v0

    .line 142
    invoke-virtual {p0, v2, v3}, Lorg/maplibre/android/geometry/LatLng;->setLatitude(D)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    invoke-virtual {p3}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    invoke-virtual {p2}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 154
    .line 155
    .line 156
    move-result-wide p1

    .line 157
    sub-double/2addr v2, p1

    .line 158
    mul-double/2addr v2, v4

    .line 159
    add-double/2addr v2, v0

    .line 160
    invoke-virtual {p0, v2, v3}, Lorg/maplibre/android/geometry/LatLng;->setLongitude(D)V

    .line 161
    .line 162
    .line 163
    return-object p0

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
