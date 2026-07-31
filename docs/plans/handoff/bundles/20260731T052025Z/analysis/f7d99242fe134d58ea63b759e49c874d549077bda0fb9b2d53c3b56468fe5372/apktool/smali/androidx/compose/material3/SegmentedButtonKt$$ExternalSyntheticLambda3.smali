.class public final synthetic Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;->f$1:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    move-object/from16 v1, p1

    .line 17
    .line 18
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 19
    .line 20
    move-object/from16 v6, p2

    .line 21
    .line 22
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    move-object/from16 v7, p3

    .line 25
    .line 26
    check-cast v7, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    and-int/lit8 v1, v7, 0x11

    .line 36
    .line 37
    const/16 v8, 0x10

    .line 38
    .line 39
    if-eq v1, v8, :cond_0

    .line 40
    .line 41
    move v3, v4

    .line 42
    :cond_0
    and-int/lit8 v1, v7, 0x1

    .line 43
    .line 44
    move-object v13, v6

    .line 45
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 46
    .line 47
    invoke-virtual {v13, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    const v1, 0x7f1202b8

    .line 54
    .line 55
    .line 56
    invoke-static {v13, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 71
    .line 72
    if-ne v3, v1, :cond_2

    .line 73
    .line 74
    :cond_1
    new-instance v3, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 75
    .line 76
    const/16 v1, 0x18

    .line 77
    .line 78
    invoke-direct {v3, v1, v5}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    move-object v8, v3

    .line 85
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 86
    .line 87
    const/4 v14, 0x0

    .line 88
    const/16 v15, 0x34

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    iget-boolean v10, v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;->f$1:Z

    .line 92
    .line 93
    const/4 v11, 0x0

    .line 94
    const/4 v12, 0x0

    .line 95
    invoke-static/range {v7 .. v15}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-object v2

    .line 103
    :pswitch_0
    move-object v15, v5

    .line 104
    check-cast v15, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 105
    .line 106
    move-object/from16 v1, p1

    .line 107
    .line 108
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 109
    .line 110
    move-object/from16 v5, p2

    .line 111
    .line 112
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 113
    .line 114
    move-object/from16 v6, p3

    .line 115
    .line 116
    check-cast v6, Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    and-int/lit8 v7, v6, 0x6

    .line 126
    .line 127
    if-nez v7, :cond_5

    .line 128
    .line 129
    move-object v7, v5

    .line 130
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 131
    .line 132
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_4

    .line 137
    .line 138
    const/4 v7, 0x4

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    const/4 v7, 0x2

    .line 141
    :goto_1
    or-int/2addr v6, v7

    .line 142
    :cond_5
    and-int/lit8 v7, v6, 0x13

    .line 143
    .line 144
    const/16 v8, 0x12

    .line 145
    .line 146
    if-eq v7, v8, :cond_6

    .line 147
    .line 148
    move v3, v4

    .line 149
    :cond_6
    and-int/2addr v4, v6

    .line 150
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 151
    .line 152
    invoke-virtual {v5, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_7

    .line 157
    .line 158
    sget-object v14, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    .line 159
    .line 160
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 161
    .line 162
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    .line 163
    .line 164
    invoke-interface {v1, v3, v4}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v3, "PullToRefreshIndicator"

    .line 169
    .line 170
    invoke-static {v1, v3}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 171
    .line 172
    .line 173
    move-result-object v17

    .line 174
    const/16 v22, 0x0

    .line 175
    .line 176
    const/high16 v24, 0x180000

    .line 177
    .line 178
    iget-boolean v0, v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;->f$1:Z

    .line 179
    .line 180
    const-wide/16 v18, 0x0

    .line 181
    .line 182
    const-wide/16 v20, 0x0

    .line 183
    .line 184
    move/from16 v16, v0

    .line 185
    .line 186
    move-object/from16 v23, v5

    .line 187
    .line 188
    invoke-virtual/range {v14 .. v24}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->Indicator-2poqoh4(Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;ZLandroidx/compose/ui/Modifier;JJFLandroidx/compose/runtime/Composer;I)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_7
    move-object/from16 v23, v5

    .line 193
    .line 194
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 195
    .line 196
    .line 197
    :goto_2
    return-object v2

    .line 198
    :pswitch_1
    check-cast v5, Landroidx/compose/runtime/State;

    .line 199
    .line 200
    move-object/from16 v1, p1

    .line 201
    .line 202
    check-cast v1, Landroidx/compose/ui/layout/MeasureScope;

    .line 203
    .line 204
    move-object/from16 v2, p2

    .line 205
    .line 206
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 207
    .line 208
    move-object/from16 v3, p3

    .line 209
    .line 210
    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    .line 211
    .line 212
    iget-wide v6, v3, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 213
    .line 214
    invoke-interface {v2, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    iget v3, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 219
    .line 220
    iget v6, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 221
    .line 222
    new-instance v7, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda0;

    .line 223
    .line 224
    iget-boolean v0, v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;->f$1:Z

    .line 225
    .line 226
    invoke-direct {v7, v4, v5, v2, v0}, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 227
    .line 228
    .line 229
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 230
    .line 231
    invoke-interface {v1, v3, v6, v0, v7}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    return-object v0

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
