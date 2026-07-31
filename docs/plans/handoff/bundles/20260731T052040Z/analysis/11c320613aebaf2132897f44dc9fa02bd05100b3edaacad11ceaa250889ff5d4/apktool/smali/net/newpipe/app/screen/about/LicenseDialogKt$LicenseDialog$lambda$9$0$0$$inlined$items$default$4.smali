.class public final Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $items:Ljava/util/List;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v0, v0, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 8
    .line 9
    const/16 v3, 0x92

    .line 10
    .line 11
    const/16 v4, 0x10

    .line 12
    .line 13
    const/16 v5, 0x20

    .line 14
    .line 15
    const/4 v6, 0x2

    .line 16
    const/4 v7, 0x4

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x1

    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 25
    .line 26
    move-object/from16 v10, p2

    .line 27
    .line 28
    check-cast v10, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    move-object/from16 v11, p3

    .line 35
    .line 36
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 37
    .line 38
    move-object/from16 v12, p4

    .line 39
    .line 40
    check-cast v12, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    and-int/lit8 v13, v12, 0x6

    .line 47
    .line 48
    if-nez v13, :cond_1

    .line 49
    .line 50
    move-object v13, v11

    .line 51
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    move v6, v7

    .line 60
    :cond_0
    or-int v1, v12, v6

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v1, v12

    .line 64
    :goto_0
    and-int/lit8 v6, v12, 0x30

    .line 65
    .line 66
    if-nez v6, :cond_3

    .line 67
    .line 68
    move-object v6, v11

    .line 69
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 70
    .line 71
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    move v4, v5

    .line 78
    :cond_2
    or-int/2addr v1, v4

    .line 79
    :cond_3
    and-int/lit16 v4, v1, 0x93

    .line 80
    .line 81
    if-eq v4, v3, :cond_4

    .line 82
    .line 83
    move v3, v9

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move v3, v8

    .line 86
    :goto_1
    and-int/2addr v1, v9

    .line 87
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 88
    .line 89
    invoke-virtual {v11, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    check-cast v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;

    .line 102
    .line 103
    const v1, -0x6a130ac0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->title:Lorg/jetbrains/compose/resources/StringResource;

    .line 110
    .line 111
    invoke-static {v1, v11}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    iget-object v1, v0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->icon:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 116
    .line 117
    invoke-static {v1, v11}, Lorg/jetbrains/compose/resources/ImageResourcesKt;->painterResource(Lorg/jetbrains/compose/resources/DrawableResource;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    iget-object v15, v0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->onClick:Lkotlin/jvm/functions/Function0;

    .line 122
    .line 123
    const/16 v17, 0x200

    .line 124
    .line 125
    const/4 v13, 0x0

    .line 126
    move-object/from16 v16, v11

    .line 127
    .line 128
    invoke-static/range {v12 .. v17}, Lnet/newpipe/app/composable/TopAppBarKt;->PreferenceRow(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 136
    .line 137
    .line 138
    :goto_2
    return-object v2

    .line 139
    :pswitch_0
    move-object/from16 v1, p1

    .line 140
    .line 141
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 142
    .line 143
    move-object/from16 v10, p2

    .line 144
    .line 145
    check-cast v10, Ljava/lang/Number;

    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    move-object/from16 v11, p3

    .line 152
    .line 153
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 154
    .line 155
    move-object/from16 v12, p4

    .line 156
    .line 157
    check-cast v12, Ljava/lang/Number;

    .line 158
    .line 159
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result v12

    .line 163
    and-int/lit8 v13, v12, 0x6

    .line 164
    .line 165
    if-nez v13, :cond_7

    .line 166
    .line 167
    move-object v13, v11

    .line 168
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 169
    .line 170
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    move v6, v7

    .line 177
    :cond_6
    or-int v1, v12, v6

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_7
    move v1, v12

    .line 181
    :goto_3
    and-int/lit8 v6, v12, 0x30

    .line 182
    .line 183
    if-nez v6, :cond_9

    .line 184
    .line 185
    move-object v6, v11

    .line 186
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 187
    .line 188
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_8

    .line 193
    .line 194
    move v4, v5

    .line 195
    :cond_8
    or-int/2addr v1, v4

    .line 196
    :cond_9
    and-int/lit16 v4, v1, 0x93

    .line 197
    .line 198
    if-eq v4, v3, :cond_a

    .line 199
    .line 200
    move v3, v9

    .line 201
    goto :goto_4

    .line 202
    :cond_a
    move v3, v8

    .line 203
    :goto_4
    and-int/2addr v1, v9

    .line 204
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 205
    .line 206
    invoke-virtual {v11, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_b

    .line 211
    .line 212
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    move-object v12, v0

    .line 217
    check-cast v12, Ljava/lang/String;

    .line 218
    .line 219
    const v0, 0x60255e9f

    .line 220
    .line 221
    .line 222
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 223
    .line 224
    .line 225
    const/16 v29, 0x0

    .line 226
    .line 227
    const v30, 0x3fffe

    .line 228
    .line 229
    .line 230
    const/4 v13, 0x0

    .line 231
    const-wide/16 v14, 0x0

    .line 232
    .line 233
    const-wide/16 v16, 0x0

    .line 234
    .line 235
    const-wide/16 v18, 0x0

    .line 236
    .line 237
    const/16 v20, 0x0

    .line 238
    .line 239
    const-wide/16 v21, 0x0

    .line 240
    .line 241
    const/16 v23, 0x0

    .line 242
    .line 243
    const/16 v24, 0x0

    .line 244
    .line 245
    const/16 v25, 0x0

    .line 246
    .line 247
    const/16 v26, 0x0

    .line 248
    .line 249
    const/16 v27, 0x0

    .line 250
    .line 251
    move-object/from16 v28, v11

    .line 252
    .line 253
    invoke-static/range {v12 .. v30}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 261
    .line 262
    .line 263
    :goto_5
    return-object v2

    .line 264
    nop

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
