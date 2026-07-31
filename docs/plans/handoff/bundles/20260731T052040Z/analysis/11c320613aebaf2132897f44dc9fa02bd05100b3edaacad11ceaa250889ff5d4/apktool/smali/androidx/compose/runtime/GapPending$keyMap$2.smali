.class public final Landroidx/compose/runtime/GapPending$keyMap$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, [Lkotlinx/coroutines/flow/Flow;

    .line 9
    .line 10
    array-length p0, p0

    .line 11
    new-array p0, p0, [Landroidx/work/impl/constraints/ConstraintsState;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_0
    check-cast p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->colors:Landroidx/compose/material3/TopAppBarColors;

    .line 17
    .line 18
    iget-wide v0, p0, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    .line 19
    .line 20
    iget-wide v2, p0, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    .line 21
    .line 22
    sget-object p0, Landroidx/compose/animation/core/EasingKt;->FastOutLinearInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {p0, v4}, Landroidx/compose/animation/core/CubicBezierEasing;->transform(F)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    sget-object v5, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/Oklab;

    .line 30
    .line 31
    invoke-static {v0, v1, v5}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {v2, v3, v5}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    cmpg-float v7, p0, v4

    .line 72
    .line 73
    if-gez v7, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move v4, p0

    .line 77
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 78
    .line 79
    cmpl-float v7, v4, p0

    .line 80
    .line 81
    if-lez v7, :cond_1

    .line 82
    .line 83
    move v4, p0

    .line 84
    :cond_1
    sub-float/2addr p0, v4

    .line 85
    mul-float/2addr v9, p0

    .line 86
    mul-float/2addr v11, v4

    .line 87
    add-float/2addr v11, v9

    .line 88
    mul-float/2addr v10, p0

    .line 89
    mul-float/2addr v12, v4

    .line 90
    add-float/2addr v12, v10

    .line 91
    mul-float/2addr v0, p0

    .line 92
    mul-float/2addr v6, v4

    .line 93
    add-float/2addr v6, v0

    .line 94
    mul-float/2addr p0, v8

    .line 95
    mul-float/2addr v4, v1

    .line 96
    add-float/2addr v4, p0

    .line 97
    invoke-static {v11, v12, v6, v4, v5}, Landroidx/compose/ui/graphics/Brush;->UncheckedColor(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    new-instance p0, Landroidx/compose/ui/graphics/Color;

    .line 110
    .line 111
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/GapPending;

    .line 116
    .line 117
    iget-object p0, p0, Landroidx/compose/runtime/GapPending;->keyInfos:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    new-instance v1, Landroidx/collection/MutableScatterMap;

    .line 124
    .line 125
    invoke-direct {v1, v0}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/4 v2, 0x0

    .line 133
    :goto_1
    if-ge v2, v0, :cond_3

    .line 134
    .line 135
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 140
    .line 141
    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    .line 142
    .line 143
    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->key:I

    .line 144
    .line 145
    if-eqz v4, :cond_2

    .line 146
    .line 147
    new-instance v4, Landroidx/compose/runtime/JoinedKey;

    .line 148
    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    iget-object v6, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    :goto_2
    invoke-static {v1, v4, v3}, Landroidx/compose/runtime/collection/MultiValueMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    add-int/lit8 v2, v2, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    new-instance p0, Landroidx/compose/runtime/collection/MultiValueMap;

    .line 170
    .line 171
    invoke-direct {p0, v1}, Landroidx/compose/runtime/collection/MultiValueMap;-><init>(Landroidx/collection/MutableScatterMap;)V

    .line 172
    .line 173
    .line 174
    return-object p0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
