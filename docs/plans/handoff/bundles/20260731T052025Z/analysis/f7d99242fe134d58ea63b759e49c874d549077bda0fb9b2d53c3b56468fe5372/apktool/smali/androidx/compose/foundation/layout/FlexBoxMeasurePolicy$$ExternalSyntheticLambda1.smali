.class public final synthetic Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/layout/MeasureScope;

    .line 9
    .line 10
    iput p6, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$5:I

    .line 11
    .line 12
    iput p7, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$6:I

    .line 13
    .line 14
    iput p8, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$7:I

    .line 15
    .line 16
    iput-boolean p9, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$8:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/layout/MeasureScope;

    .line 8
    .line 9
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_0
    if-ge v6, v4, :cond_e

    .line 21
    .line 22
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    check-cast v7, Landroidx/compose/foundation/layout/FlexLine;

    .line 27
    .line 28
    iget-boolean v8, v0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$8:Z

    .line 29
    .line 30
    if-eqz v8, :cond_0

    .line 31
    .line 32
    iget v9, v0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$5:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget v9, v0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$6:I

    .line 36
    .line 37
    :goto_1
    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 38
    .line 39
    if-ne v2, v10, :cond_1

    .line 40
    .line 41
    const/4 v10, 0x1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const/4 v10, 0x0

    .line 44
    :goto_2
    iget v11, v7, Landroidx/compose/foundation/layout/FlexLine;->endIndex:I

    .line 45
    .line 46
    iget v12, v7, Landroidx/compose/foundation/layout/FlexLine;->startIndex:I

    .line 47
    .line 48
    sub-int v13, v11, v12

    .line 49
    .line 50
    iget-object v14, v0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 51
    .line 52
    if-nez v13, :cond_2

    .line 53
    .line 54
    goto :goto_6

    .line 55
    :cond_2
    iget v13, v7, Landroidx/compose/foundation/layout/FlexLine;->mainAxisSize:I

    .line 56
    .line 57
    sub-int/2addr v9, v13

    .line 58
    if-eqz v10, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/4 v9, 0x0

    .line 62
    :goto_3
    if-eqz v10, :cond_4

    .line 63
    .line 64
    add-int/lit8 v11, v11, -0x1

    .line 65
    .line 66
    new-instance v10, Lkotlin/ranges/IntProgression;

    .line 67
    .line 68
    const/4 v13, -0x1

    .line 69
    invoke-direct {v10, v11, v12, v13}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    invoke-static {v12, v11}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    :goto_4
    iget v11, v10, Lkotlin/ranges/IntProgression;->first:I

    .line 78
    .line 79
    iget v12, v10, Lkotlin/ranges/IntProgression;->last:I

    .line 80
    .line 81
    iget v10, v10, Lkotlin/ranges/IntProgression;->step:I

    .line 82
    .line 83
    if-lez v10, :cond_5

    .line 84
    .line 85
    if-le v11, v12, :cond_6

    .line 86
    .line 87
    :cond_5
    if-gez v10, :cond_7

    .line 88
    .line 89
    if-gt v12, v11, :cond_7

    .line 90
    .line 91
    :cond_6
    :goto_5
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    check-cast v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    .line 96
    .line 97
    iput v9, v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->mainPosition:I

    .line 98
    .line 99
    iget v15, v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->targetMainSize:I

    .line 100
    .line 101
    iget v5, v0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;->f$7:I

    .line 102
    .line 103
    add-int/2addr v15, v5

    .line 104
    add-int/2addr v9, v15

    .line 105
    iget v5, v7, Landroidx/compose/foundation/layout/FlexLine;->crossStart:I

    .line 106
    .line 107
    iput v5, v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->crossPosition:I

    .line 108
    .line 109
    if-eq v11, v12, :cond_7

    .line 110
    .line 111
    add-int/2addr v11, v10

    .line 112
    goto :goto_5

    .line 113
    :cond_7
    :goto_6
    iget v5, v7, Landroidx/compose/foundation/layout/FlexLine;->startIndex:I

    .line 114
    .line 115
    iget v7, v7, Landroidx/compose/foundation/layout/FlexLine;->endIndex:I

    .line 116
    .line 117
    const/4 v9, 0x0

    .line 118
    const-string v10, ") is out of bounds [0, "

    .line 119
    .line 120
    if-ltz v5, :cond_d

    .line 121
    .line 122
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    if-gt v5, v11, :cond_d

    .line 127
    .line 128
    if-ltz v7, :cond_c

    .line 129
    .line 130
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-gt v7, v11, :cond_c

    .line 135
    .line 136
    :goto_7
    if-ge v5, v7, :cond_b

    .line 137
    .line 138
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    check-cast v9, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    .line 143
    .line 144
    if-eqz v8, :cond_8

    .line 145
    .line 146
    iget v10, v9, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->mainPosition:I

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_8
    iget v10, v9, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->crossPosition:I

    .line 150
    .line 151
    :goto_8
    if-eqz v8, :cond_9

    .line 152
    .line 153
    iget v11, v9, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->crossPosition:I

    .line 154
    .line 155
    goto :goto_9

    .line 156
    :cond_9
    iget v11, v9, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->mainPosition:I

    .line 157
    .line 158
    :goto_9
    iget-object v9, v9, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->placeable:Landroidx/compose/ui/layout/Placeable;

    .line 159
    .line 160
    if-eqz v9, :cond_a

    .line 161
    .line 162
    invoke-static {v1, v9, v10, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 163
    .line 164
    .line 165
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_c
    const-string v0, "toIndex ("

    .line 173
    .line 174
    invoke-static {v7, v0, v10}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 183
    .line 184
    .line 185
    return-object v9

    .line 186
    :cond_d
    const-string v0, "fromIndex ("

    .line 187
    .line 188
    invoke-static {v5, v0, v10}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 197
    .line 198
    .line 199
    return-object v9

    .line 200
    :cond_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 201
    .line 202
    return-object v0
.end method
