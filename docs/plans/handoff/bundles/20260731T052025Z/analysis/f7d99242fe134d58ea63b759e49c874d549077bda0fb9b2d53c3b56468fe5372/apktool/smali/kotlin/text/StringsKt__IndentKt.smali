.class public abstract Lkotlin/text/StringsKt__IndentKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static android:Ljava/lang/Boolean;


# direct methods
.method public static final AccountList(Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v5, p4

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v13, p5

    .line 10
    .line 11
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x1dc37d86

    .line 14
    .line 15
    .line 16
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p0

    .line 20
    .line 21
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x4

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int v0, p6, v0

    .line 32
    .line 33
    move-object/from16 v9, p1

    .line 34
    .line 35
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0x20

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    move v3, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v3, 0x10

    .line 46
    .line 47
    :goto_1
    or-int/2addr v0, v3

    .line 48
    move-object/from16 v3, p2

    .line 49
    .line 50
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const/16 v7, 0x100

    .line 55
    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    move v6, v7

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v6, 0x80

    .line 61
    .line 62
    :goto_2
    or-int/2addr v0, v6

    .line 63
    move/from16 v10, p3

    .line 64
    .line 65
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const/16 v8, 0x800

    .line 70
    .line 71
    if-eqz v6, :cond_3

    .line 72
    .line 73
    move v6, v8

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/16 v6, 0x400

    .line 76
    .line 77
    :goto_3
    or-int/2addr v0, v6

    .line 78
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_4

    .line 83
    .line 84
    const/16 v6, 0x4000

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    const/16 v6, 0x2000

    .line 88
    .line 89
    :goto_4
    or-int/2addr v0, v6

    .line 90
    and-int/lit16 v6, v0, 0x2493

    .line 91
    .line 92
    const/16 v11, 0x2492

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v14, 0x1

    .line 96
    if-eq v6, v11, :cond_5

    .line 97
    .line 98
    move v6, v14

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    move v6, v12

    .line 101
    :goto_5
    and-int/lit8 v11, v0, 0x1

    .line 102
    .line 103
    invoke-virtual {v13, v11, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_c

    .line 108
    .line 109
    move v6, v12

    .line 110
    invoke-static {v13}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    sget-object v11, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 115
    .line 116
    invoke-interface {v5, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 117
    .line 118
    .line 119
    move-result-object v15

    .line 120
    sget-object v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 121
    .line 122
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 127
    .line 128
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const/4 v11, 0x0

    .line 132
    invoke-static {v14, v11}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 133
    .line 134
    .line 135
    move-result-object v16

    .line 136
    and-int/lit8 v11, v0, 0xe

    .line 137
    .line 138
    if-eq v11, v2, :cond_6

    .line 139
    .line 140
    move v2, v6

    .line 141
    goto :goto_6

    .line 142
    :cond_6
    move v2, v14

    .line 143
    :goto_6
    and-int/lit16 v11, v0, 0x380

    .line 144
    .line 145
    if-ne v11, v7, :cond_7

    .line 146
    .line 147
    move v7, v14

    .line 148
    goto :goto_7

    .line 149
    :cond_7
    move v7, v6

    .line 150
    :goto_7
    or-int/2addr v2, v7

    .line 151
    and-int/lit8 v7, v0, 0x70

    .line 152
    .line 153
    if-eq v7, v4, :cond_8

    .line 154
    .line 155
    move v4, v6

    .line 156
    goto :goto_8

    .line 157
    :cond_8
    move v4, v14

    .line 158
    :goto_8
    or-int/2addr v2, v4

    .line 159
    and-int/lit16 v0, v0, 0x1c00

    .line 160
    .line 161
    if-ne v0, v8, :cond_9

    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_9
    move v14, v6

    .line 165
    :goto_9
    or-int v0, v2, v14

    .line 166
    .line 167
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    if-nez v0, :cond_a

    .line 172
    .line 173
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 174
    .line 175
    if-ne v2, v0, :cond_b

    .line 176
    .line 177
    :cond_a
    new-instance v6, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;

    .line 178
    .line 179
    const/4 v11, 0x3

    .line 180
    move-object v7, v1

    .line 181
    move-object v8, v3

    .line 182
    invoke-direct/range {v6 .. v11}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    move-object v2, v6

    .line 189
    :cond_b
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 190
    .line 191
    const/4 v6, 0x0

    .line 192
    const/16 v7, 0x1f8

    .line 193
    .line 194
    const/4 v8, 0x0

    .line 195
    const/4 v9, 0x0

    .line 196
    const/4 v10, 0x0

    .line 197
    const/4 v14, 0x0

    .line 198
    const/16 v17, 0x0

    .line 199
    .line 200
    move-object/from16 v11, v16

    .line 201
    .line 202
    move-object/from16 v16, v2

    .line 203
    .line 204
    invoke-static/range {v6 .. v17}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 205
    .line 206
    .line 207
    goto :goto_a

    .line 208
    :cond_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 209
    .line 210
    .line 211
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    if-eqz v7, :cond_d

    .line 216
    .line 217
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;

    .line 218
    .line 219
    move-object/from16 v1, p0

    .line 220
    .line 221
    move-object/from16 v2, p1

    .line 222
    .line 223
    move-object/from16 v3, p2

    .line 224
    .line 225
    move/from16 v4, p3

    .line 226
    .line 227
    move/from16 v6, p6

    .line 228
    .line 229
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;-><init>(Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/Modifier;I)V

    .line 230
    .line 231
    .line 232
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 233
    .line 234
    :cond_d
    return-void
.end method

.method public static final AvatarIcon(Ljava/lang/String;Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v3, p4

    .line 5
    .line 6
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, 0x35e5229

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x4

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int v0, p5, v0

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v2, 0x10

    .line 40
    .line 41
    :goto_1
    or-int/2addr v0, v2

    .line 42
    or-int/lit16 v0, v0, 0x580

    .line 43
    .line 44
    and-int/lit16 v2, v0, 0x493

    .line 45
    .line 46
    const/16 v4, 0x492

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x1

    .line 50
    if-eq v2, v4, :cond_2

    .line 51
    .line 52
    move v2, v6

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v2, v5

    .line 55
    :goto_2
    and-int/lit8 v4, v0, 0x1

    .line 56
    .line 57
    invoke-virtual {v3, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_f

    .line 62
    .line 63
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 64
    .line 65
    .line 66
    and-int/lit8 v2, p5, 0x1

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 70
    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 81
    .line 82
    .line 83
    and-int/lit16 v0, v0, -0x1c01

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    :goto_3
    invoke-static {v3}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    or-int/2addr p3, v2

    .line 99
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-nez p3, :cond_5

    .line 104
    .line 105
    if-ne v2, v7, :cond_6

    .line 106
    .line 107
    :cond_5
    const-class p3, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;

    .line 108
    .line 109
    invoke-static {p3, p2, v4, v4, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :cond_6
    move-object p3, v2

    .line 114
    check-cast p3, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;

    .line 115
    .line 116
    and-int/lit16 v0, v0, -0x1c01

    .line 117
    .line 118
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 119
    .line 120
    :goto_4
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 121
    .line 122
    .line 123
    and-int/lit8 v0, v0, 0xe

    .line 124
    .line 125
    if-ne v0, v1, :cond_7

    .line 126
    .line 127
    move v0, v6

    .line 128
    goto :goto_5

    .line 129
    :cond_7
    move v0, v5

    .line 130
    :goto_5
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-nez v0, :cond_8

    .line 135
    .line 136
    if-ne v1, v7, :cond_c

    .line 137
    .line 138
    :cond_8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    sget-object v0, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 142
    .line 143
    invoke-virtual {v0}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_a

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move-object v2, v1

    .line 158
    check-cast v2, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;

    .line 159
    .line 160
    iget-object v2, v2, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->id:Ljava/lang/String;

    .line 161
    .line 162
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 163
    .line 164
    invoke-virtual {p0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_9

    .line 176
    .line 177
    move-object v4, v1

    .line 178
    :cond_a
    check-cast v4, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;

    .line 179
    .line 180
    if-eqz v4, :cond_b

    .line 181
    .line 182
    move-object v1, v4

    .line 183
    goto :goto_6

    .line 184
    :cond_b
    iget-object v0, p3, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;->defaultIcon:Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;

    .line 185
    .line 186
    move-object v1, v0

    .line 187
    :goto_6
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_c
    check-cast v1, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_e

    .line 197
    .line 198
    if-ne v0, v6, :cond_d

    .line 199
    .line 200
    const v0, 0x5b5e301a

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 204
    .line 205
    .line 206
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 207
    .line 208
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 218
    .line 219
    .line 220
    const/high16 v0, 0x42400000    # 48.0f

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_d
    const p0, 0x5b5e2271

    .line 224
    .line 225
    .line 226
    invoke-static {v3, p0, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    throw p0

    .line 231
    :cond_e
    const v0, 0x5b5e2959

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 235
    .line 236
    .line 237
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 238
    .line 239
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 249
    .line 250
    .line 251
    const/high16 v0, 0x42000000    # 32.0f

    .line 252
    .line 253
    :goto_7
    iget-object v1, v1, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 254
    .line 255
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 256
    .line 257
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 262
    .line 263
    iget-wide v4, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSecondary:J

    .line 264
    .line 265
    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 270
    .line 271
    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 272
    .line 273
    .line 274
    const/16 v4, 0x180

    .line 275
    .line 276
    const/4 v5, 0x0

    .line 277
    move-object v11, v1

    .line 278
    move-object v1, v0

    .line 279
    move-object v0, v11

    .line 280
    invoke-static/range {v0 .. v5}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 281
    .line 282
    .line 283
    :goto_8
    move-object v7, p2

    .line 284
    move-object v8, p3

    .line 285
    goto :goto_9

    .line 286
    :cond_f
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 287
    .line 288
    .line 289
    goto :goto_8

    .line 290
    :goto_9
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    if-eqz p2, :cond_10

    .line 295
    .line 296
    new-instance v4, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    const/16 v10, 0x10

    .line 299
    .line 300
    move-object v5, p0

    .line 301
    move-object v6, p1

    .line 302
    move/from16 v9, p5

    .line 303
    .line 304
    invoke-direct/range {v4 .. v10}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 305
    .line 306
    .line 307
    iput-object v4, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 308
    .line 309
    :cond_10
    return-void
.end method

.method public static final EmailCantBeArchivedDialogButtons(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move/from16 v6, p6

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-object/from16 v13, p5

    .line 20
    .line 21
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    const v0, 0x104b5302

    .line 24
    .line 25
    .line 26
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    .line 29
    and-int/lit8 v0, v6, 0x6

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    and-int/lit8 v0, v6, 0x8

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :goto_0
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v0, 0x2

    .line 51
    :goto_1
    or-int/2addr v0, v6

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v0, v6

    .line 54
    :goto_2
    and-int/lit8 v3, v6, 0x30

    .line 55
    .line 56
    if-nez v3, :cond_4

    .line 57
    .line 58
    move-object/from16 v3, p1

    .line 59
    .line 60
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    const/16 v7, 0x20

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/16 v7, 0x10

    .line 70
    .line 71
    :goto_3
    or-int/2addr v0, v7

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    move-object/from16 v3, p1

    .line 74
    .line 75
    :goto_4
    and-int/lit16 v7, v6, 0x180

    .line 76
    .line 77
    move-object/from16 v8, p2

    .line 78
    .line 79
    if-nez v7, :cond_6

    .line 80
    .line 81
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_5

    .line 86
    .line 87
    const/16 v7, 0x100

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_5
    const/16 v7, 0x80

    .line 91
    .line 92
    :goto_5
    or-int/2addr v0, v7

    .line 93
    :cond_6
    and-int/lit16 v7, v6, 0xc00

    .line 94
    .line 95
    if-nez v7, :cond_8

    .line 96
    .line 97
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_7

    .line 102
    .line 103
    const/16 v7, 0x800

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_7
    const/16 v7, 0x400

    .line 107
    .line 108
    :goto_6
    or-int/2addr v0, v7

    .line 109
    :cond_8
    or-int/lit16 v0, v0, 0x6000

    .line 110
    .line 111
    and-int/lit16 v7, v0, 0x2493

    .line 112
    .line 113
    const/16 v10, 0x2492

    .line 114
    .line 115
    const/4 v11, 0x0

    .line 116
    const/4 v12, 0x1

    .line 117
    if-eq v7, v10, :cond_9

    .line 118
    .line 119
    move v7, v12

    .line 120
    goto :goto_7

    .line 121
    :cond_9
    move v7, v11

    .line 122
    :goto_7
    and-int/lit8 v10, v0, 0x1

    .line 123
    .line 124
    invoke-virtual {v13, v10, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_13

    .line 129
    .line 130
    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 131
    .line 132
    sget-object v10, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 133
    .line 134
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    check-cast v14, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 139
    .line 140
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance v14, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 144
    .line 145
    new-instance v15, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    const/16 p5, 0x20

    .line 148
    .line 149
    const/4 v5, 0x7

    .line 150
    invoke-direct {v15, v5}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 151
    .line 152
    .line 153
    const/high16 v9, 0x41400000    # 12.0f

    .line 154
    .line 155
    invoke-direct {v14, v9, v12, v15}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 156
    .line 157
    .line 158
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 159
    .line 160
    invoke-static {v14, v9, v13, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 161
    .line 162
    .line 163
    move-result-object v14

    .line 164
    iget-wide v5, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 165
    .line 166
    ushr-long v17, v5, p5

    .line 167
    .line 168
    xor-long v5, v5, v17

    .line 169
    .line 170
    long-to-int v5, v5

    .line 171
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-static {v13, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 180
    .line 181
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 185
    .line 186
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 187
    .line 188
    .line 189
    iget-boolean v12, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 190
    .line 191
    if-eqz v12, :cond_a

    .line 192
    .line 193
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 194
    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 198
    .line 199
    .line 200
    :goto_8
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 201
    .line 202
    invoke-static {v13, v14, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 203
    .line 204
    .line 205
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 206
    .line 207
    invoke-static {v13, v6, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 215
    .line 216
    invoke-static {v13, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 217
    .line 218
    .line 219
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 220
    .line 221
    invoke-static {v13, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 222
    .line 223
    .line 224
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 225
    .line 226
    invoke-static {v13, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 227
    .line 228
    .line 229
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 230
    .line 231
    new-instance v11, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    .line 232
    .line 233
    invoke-direct {v11, v7}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    .line 234
    .line 235
    .line 236
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 237
    .line 238
    const/4 v3, 0x0

    .line 239
    invoke-static {v7, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    move-object v3, v9

    .line 244
    iget-wide v8, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 245
    .line 246
    ushr-long v20, v8, p5

    .line 247
    .line 248
    xor-long v8, v8, v20

    .line 249
    .line 250
    long-to-int v8, v8

    .line 251
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    invoke-static {v13, v11}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 260
    .line 261
    .line 262
    move-object/from16 v20, v3

    .line 263
    .line 264
    iget-boolean v3, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 265
    .line 266
    if-eqz v3, :cond_b

    .line 267
    .line 268
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 269
    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 273
    .line 274
    .line 275
    :goto_9
    invoke-static {v13, v7, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v13, v9, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v8, v13, v6, v13, v5}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v13, v11, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 285
    .line 286
    .line 287
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 288
    .line 289
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 290
    .line 291
    const/4 v8, 0x0

    .line 292
    invoke-static {v3, v7, v13, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    iget-wide v8, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 297
    .line 298
    ushr-long v21, v8, p5

    .line 299
    .line 300
    xor-long v8, v8, v21

    .line 301
    .line 302
    long-to-int v7, v8

    .line 303
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 308
    .line 309
    invoke-static {v13, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 314
    .line 315
    .line 316
    move-object/from16 v21, v9

    .line 317
    .line 318
    iget-boolean v9, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 319
    .line 320
    if-eqz v9, :cond_c

    .line 321
    .line 322
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 323
    .line 324
    .line 325
    goto :goto_a

    .line 326
    :cond_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 327
    .line 328
    .line 329
    :goto_a
    invoke-static {v13, v3, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 330
    .line 331
    .line 332
    invoke-static {v13, v8, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 333
    .line 334
    .line 335
    invoke-static {v7, v13, v6, v13, v5}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v13, v11, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 339
    .line 340
    .line 341
    const v3, 0x7f1205e3

    .line 342
    .line 343
    .line 344
    invoke-static {v13, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    shr-int/lit8 v3, v0, 0x3

    .line 349
    .line 350
    and-int/lit8 v3, v3, 0x70

    .line 351
    .line 352
    move-object v8, v15

    .line 353
    const/16 v15, 0x3c

    .line 354
    .line 355
    const/4 v9, 0x0

    .line 356
    move-object v11, v10

    .line 357
    const/4 v10, 0x0

    .line 358
    move-object/from16 v22, v11

    .line 359
    .line 360
    const/4 v11, 0x0

    .line 361
    move-object/from16 v23, v12

    .line 362
    .line 363
    const/4 v12, 0x0

    .line 364
    move-object/from16 v16, v2

    .line 365
    .line 366
    move-object/from16 v17, v5

    .line 367
    .line 368
    move-object v5, v8

    .line 369
    move-object/from16 v24, v14

    .line 370
    .line 371
    move-object/from16 v2, v20

    .line 372
    .line 373
    const/16 v19, 0x0

    .line 374
    .line 375
    move-object/from16 v8, p2

    .line 376
    .line 377
    move v14, v3

    .line 378
    move-object/from16 v20, v6

    .line 379
    .line 380
    move-object/from16 v3, v22

    .line 381
    .line 382
    const/4 v6, 0x1

    .line 383
    invoke-static/range {v7 .. v15}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 384
    .line 385
    .line 386
    const v7, 0x7f1205e2

    .line 387
    .line 388
    .line 389
    invoke-static {v13, v7}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    and-int/lit8 v14, v0, 0x70

    .line 394
    .line 395
    move-object/from16 v8, p1

    .line 396
    .line 397
    invoke-static/range {v7 .. v15}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 404
    .line 405
    .line 406
    new-instance v7, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    .line 407
    .line 408
    invoke-direct {v7, v2}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    .line 409
    .line 410
    .line 411
    iget-boolean v2, v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;->isDoNotShowDialogAgainChecked:Z

    .line 412
    .line 413
    new-instance v8, Landroidx/compose/ui/semantics/Role;

    .line 414
    .line 415
    invoke-direct {v8, v6}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 416
    .line 417
    .line 418
    and-int/lit16 v9, v0, 0x1c00

    .line 419
    .line 420
    const/16 v10, 0x800

    .line 421
    .line 422
    if-ne v9, v10, :cond_d

    .line 423
    .line 424
    move v11, v6

    .line 425
    goto :goto_b

    .line 426
    :cond_d
    move/from16 v11, v19

    .line 427
    .line 428
    :goto_b
    and-int/lit8 v9, v0, 0xe

    .line 429
    .line 430
    const/16 v10, 0x8

    .line 431
    .line 432
    const/4 v12, 0x4

    .line 433
    if-eq v9, v12, :cond_e

    .line 434
    .line 435
    and-int/2addr v0, v10

    .line 436
    if-eqz v0, :cond_f

    .line 437
    .line 438
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_f

    .line 443
    .line 444
    :cond_e
    move/from16 v19, v6

    .line 445
    .line 446
    :cond_f
    or-int v0, v11, v19

    .line 447
    .line 448
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v9

    .line 452
    if-nez v0, :cond_10

    .line 453
    .line 454
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 455
    .line 456
    if-ne v9, v0, :cond_11

    .line 457
    .line 458
    :cond_10
    new-instance v9, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;

    .line 459
    .line 460
    invoke-direct {v9, v10, v4, v1}, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    :cond_11
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 467
    .line 468
    invoke-static {v7, v2, v8, v9}, Landroidx/compose/foundation/selection/SelectableKt;->toggleable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 473
    .line 474
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 479
    .line 480
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    new-instance v3, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 484
    .line 485
    new-instance v7, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 486
    .line 487
    const/4 v8, 0x7

    .line 488
    invoke-direct {v7, v8}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 489
    .line 490
    .line 491
    const/high16 v8, 0x40800000    # 4.0f

    .line 492
    .line 493
    invoke-direct {v3, v8, v6, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 494
    .line 495
    .line 496
    const/16 v7, 0x30

    .line 497
    .line 498
    invoke-static {v3, v2, v13, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    iget-wide v7, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 503
    .line 504
    ushr-long v9, v7, p5

    .line 505
    .line 506
    xor-long/2addr v7, v9

    .line 507
    long-to-int v3, v7

    .line 508
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 509
    .line 510
    .line 511
    move-result-object v7

    .line 512
    invoke-static {v13, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 517
    .line 518
    .line 519
    iget-boolean v8, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 520
    .line 521
    if-eqz v8, :cond_12

    .line 522
    .line 523
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 524
    .line 525
    .line 526
    :goto_c
    move-object/from16 v5, v23

    .line 527
    .line 528
    goto :goto_d

    .line 529
    :cond_12
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 530
    .line 531
    .line 532
    goto :goto_c

    .line 533
    :goto_d
    invoke-static {v13, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 534
    .line 535
    .line 536
    move-object/from16 v2, v24

    .line 537
    .line 538
    invoke-static {v13, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 539
    .line 540
    .line 541
    move-object/from16 v5, v17

    .line 542
    .line 543
    move-object/from16 v2, v20

    .line 544
    .line 545
    invoke-static {v3, v13, v2, v13, v5}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 546
    .line 547
    .line 548
    move-object/from16 v2, v16

    .line 549
    .line 550
    invoke-static {v13, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 551
    .line 552
    .line 553
    iget-boolean v7, v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;->isDoNotShowDialogAgainChecked:Z

    .line 554
    .line 555
    const/4 v10, 0x0

    .line 556
    const/16 v12, 0x30

    .line 557
    .line 558
    const/4 v8, 0x0

    .line 559
    const/4 v9, 0x0

    .line 560
    move-object v11, v13

    .line 561
    invoke-static/range {v7 .. v12}, Landroidx/room/util/RelationUtil;->Checkbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V

    .line 562
    .line 563
    .line 564
    const v0, 0x7f1205de

    .line 565
    .line 566
    .line 567
    invoke-static {v13, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v7

    .line 571
    const/4 v14, 0x0

    .line 572
    const/16 v15, 0x3e

    .line 573
    .line 574
    const-wide/16 v9, 0x0

    .line 575
    .line 576
    const/4 v11, 0x0

    .line 577
    const/4 v12, 0x0

    .line 578
    invoke-static/range {v7 .. v15}, Lorg/slf4j/helpers/Util;->TextLabelSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 585
    .line 586
    .line 587
    move-object/from16 v5, v21

    .line 588
    .line 589
    goto :goto_e

    .line 590
    :cond_13
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 591
    .line 592
    .line 593
    move-object/from16 v5, p4

    .line 594
    .line 595
    :goto_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 596
    .line 597
    .line 598
    move-result-object v8

    .line 599
    if-eqz v8, :cond_14

    .line 600
    .line 601
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;

    .line 602
    .line 603
    const/16 v7, 0xd

    .line 604
    .line 605
    move-object/from16 v2, p1

    .line 606
    .line 607
    move-object/from16 v3, p2

    .line 608
    .line 609
    move/from16 v6, p6

    .line 610
    .line 611
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/Modifier;II)V

    .line 612
    .line 613
    .line 614
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 615
    .line 616
    :cond_14
    return-void
.end method

.method public static final ErrorNotificationsDialog(Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object v0, p5

    .line 11
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v4, -0x72c9e2ea

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    move v4, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x2

    .line 29
    :goto_0
    or-int v4, p6, v4

    .line 30
    .line 31
    and-int/lit8 v6, p6, 0x30

    .line 32
    .line 33
    if-nez v6, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    const/16 v6, 0x20

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v6, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v4, v6

    .line 47
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    const/16 v6, 0x100

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/16 v6, 0x80

    .line 57
    .line 58
    :goto_2
    or-int/2addr v4, v6

    .line 59
    or-int/lit16 v4, v4, 0x6000

    .line 60
    .line 61
    and-int/lit16 v6, v4, 0x2493

    .line 62
    .line 63
    const/16 v7, 0x2492

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x1

    .line 67
    if-eq v6, v7, :cond_4

    .line 68
    .line 69
    move v6, v9

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    move v6, v8

    .line 72
    :goto_3
    and-int/lit8 v7, v4, 0x1

    .line 73
    .line 74
    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_9

    .line 79
    .line 80
    sget-object v6, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogDefaults;->defaultProperties:Landroidx/compose/ui/window/DialogProperties;

    .line 81
    .line 82
    and-int/lit8 v7, v4, 0xe

    .line 83
    .line 84
    if-ne v7, v5, :cond_5

    .line 85
    .line 86
    move v5, v9

    .line 87
    goto :goto_4

    .line 88
    :cond_5
    move v5, v8

    .line 89
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    if-nez v5, :cond_6

    .line 94
    .line 95
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 96
    .line 97
    if-ne v7, v5, :cond_7

    .line 98
    .line 99
    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    xor-int/2addr v5, v9

    .line 104
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_7
    check-cast v7, Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_8

    .line 118
    .line 119
    const v5, -0x13b7620d

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 123
    .line 124
    .line 125
    new-instance v5, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    invoke-direct {v5, p0, p1, p2, p3}, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;)V

    .line 128
    .line 129
    .line 130
    const v9, -0x3da5ae5c

    .line 131
    .line 132
    .line 133
    invoke-static {v9, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    shr-int/lit8 v4, v4, 0x3

    .line 138
    .line 139
    and-int/lit8 v4, v4, 0xe

    .line 140
    .line 141
    or-int/lit16 v4, v4, 0x1b0

    .line 142
    .line 143
    invoke-static {p1, v6, v5, v0, v4}, Landroidx/core/util/DebugUtils;->Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_8
    const v4, -0x13b1dad4

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 157
    .line 158
    .line 159
    :goto_5
    move-object v5, v6

    .line 160
    goto :goto_6

    .line 161
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 162
    .line 163
    .line 164
    move-object v5, p4

    .line 165
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    if-eqz v8, :cond_a

    .line 170
    .line 171
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;

    .line 172
    .line 173
    const/16 v7, 0xe

    .line 174
    .line 175
    move-object v1, p0

    .line 176
    move-object v2, p1

    .line 177
    move-object v3, p2

    .line 178
    move-object v4, p3

    .line 179
    move/from16 v6, p6

    .line 180
    .line 181
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Landroidx/compose/ui/Modifier;Ljava/lang/Object;II)V

    .line 182
    .line 183
    .line 184
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 185
    .line 186
    :cond_a
    return-void
.end method

.method public static final ErrorNotificationsDialogContent(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableSet;)V
    .locals 15

    .line 1
    move-object/from16 v2, p3

    .line 2
    .line 3
    move-object/from16 v3, p4

    .line 4
    .line 5
    move-object/from16 v1, p5

    .line 6
    .line 7
    move-object/from16 v12, p1

    .line 8
    .line 9
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x436dc3a0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int/2addr v0, p0

    .line 27
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    const/16 v4, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v4, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v4

    .line 39
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    const/16 v4, 0x100

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v4, 0x80

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v4

    .line 51
    move-object/from16 v4, p2

    .line 52
    .line 53
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    const/16 v5, 0x800

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/16 v5, 0x400

    .line 63
    .line 64
    :goto_3
    or-int/2addr v0, v5

    .line 65
    and-int/lit16 v5, v0, 0x493

    .line 66
    .line 67
    const/16 v6, 0x492

    .line 68
    .line 69
    if-eq v5, v6, :cond_4

    .line 70
    .line 71
    const/4 v5, 0x1

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    const/4 v5, 0x0

    .line 74
    :goto_4
    and-int/lit8 v6, v0, 0x1

    .line 75
    .line 76
    invoke-virtual {v12, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_5

    .line 81
    .line 82
    new-instance v5, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 83
    .line 84
    const/16 v6, 0x1d

    .line 85
    .line 86
    invoke-direct {v5, v1, v3, v2, v6}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    const v6, -0x5546a61d

    .line 90
    .line 91
    .line 92
    invoke-static {v6, v5, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    shr-int/lit8 v0, v0, 0x9

    .line 97
    .line 98
    and-int/lit8 v0, v0, 0xe

    .line 99
    .line 100
    const/high16 v5, 0x30000

    .line 101
    .line 102
    or-int v13, v0, v5

    .line 103
    .line 104
    const/16 v14, 0x1e

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    const-wide/16 v6, 0x0

    .line 108
    .line 109
    const-wide/16 v8, 0x0

    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    invoke-static/range {v4 .. v14}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 117
    .line 118
    .line 119
    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    if-eqz v6, :cond_6

    .line 124
    .line 125
    new-instance v0, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    move v5, p0

    .line 128
    move-object/from16 v4, p2

    .line 129
    .line 130
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;I)V

    .line 131
    .line 132
    .line 133
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 134
    .line 135
    :cond_6
    return-void
.end method

.method public static final SearchSettingsScreen(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;Lnet/thunderbird/core/common/provider/AppNameProvider;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v10, p6

    .line 12
    .line 13
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, 0x2e8a19bd

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int v0, p7, v0

    .line 31
    .line 32
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/16 v3, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v3, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v3

    .line 44
    const v3, 0x12480

    .line 45
    .line 46
    .line 47
    or-int/2addr v0, v3

    .line 48
    const v3, 0x12493

    .line 49
    .line 50
    .line 51
    and-int/2addr v3, v0

    .line 52
    const v4, 0x12492

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    const/4 v6, 0x0

    .line 57
    if-eq v3, v4, :cond_2

    .line 58
    .line 59
    move v3, v5

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v3, v6

    .line 62
    :goto_2
    and-int/lit8 v4, v0, 0x1

    .line 63
    .line 64
    invoke-virtual {v10, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_14

    .line 69
    .line 70
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 71
    .line 72
    .line 73
    and-int/lit8 v3, p7, 0x1

    .line 74
    .line 75
    const v4, -0x7ff81

    .line 76
    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 80
    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 91
    .line 92
    .line 93
    and-int/2addr v0, v4

    .line 94
    move-object/from16 v9, p3

    .line 95
    .line 96
    move-object/from16 v11, p4

    .line 97
    .line 98
    move-object/from16 v12, p5

    .line 99
    .line 100
    move v3, v0

    .line 101
    move-object/from16 v0, p2

    .line 102
    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_4
    :goto_3
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    if-nez v3, :cond_5

    .line 114
    .line 115
    if-ne v9, v8, :cond_6

    .line 116
    .line 117
    :cond_5
    new-instance v9, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    const/16 v3, 0x9

    .line 120
    .line 121
    invoke-direct {v9, v1, v3}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    move-object/from16 v16, v9

    .line 128
    .line 129
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 130
    .line 131
    invoke-static {v10}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    if-eqz v3, :cond_13

    .line 136
    .line 137
    invoke-static {v3}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    invoke-static {v10}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 142
    .line 143
    .line 144
    move-result-object v15

    .line 145
    const-class v9, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 146
    .line 147
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    invoke-interface {v3}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    const/4 v14, 0x0

    .line 156
    invoke-static/range {v11 .. v16}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 161
    .line 162
    invoke-static {v10}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    or-int/2addr v11, v12

    .line 175
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    if-nez v11, :cond_7

    .line 180
    .line 181
    if-ne v12, v8, :cond_8

    .line 182
    .line 183
    :cond_7
    const-class v11, Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;

    .line 184
    .line 185
    invoke-static {v11, v9, v7, v7, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    :cond_8
    move-object v9, v12

    .line 190
    check-cast v9, Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;

    .line 191
    .line 192
    invoke-static {v10}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    or-int/2addr v12, v13

    .line 205
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    if-nez v12, :cond_9

    .line 210
    .line 211
    if-ne v13, v8, :cond_a

    .line 212
    .line 213
    :cond_9
    const-class v12, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;

    .line 214
    .line 215
    invoke-static {v12, v11, v7, v7, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v13

    .line 219
    :cond_a
    move-object v11, v13

    .line 220
    check-cast v11, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;

    .line 221
    .line 222
    invoke-static {v10}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v13

    .line 230
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    or-int/2addr v13, v14

    .line 235
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    if-nez v13, :cond_b

    .line 240
    .line 241
    if-ne v14, v8, :cond_c

    .line 242
    .line 243
    :cond_b
    const-class v13, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 244
    .line 245
    invoke-static {v13, v12, v7, v7, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    :cond_c
    move-object v12, v14

    .line 250
    check-cast v12, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 251
    .line 252
    and-int/2addr v0, v4

    .line 253
    move-object/from16 v17, v3

    .line 254
    .line 255
    move v3, v0

    .line 256
    move-object/from16 v0, v17

    .line 257
    .line 258
    :goto_4
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 259
    .line 260
    .line 261
    iget-object v4, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 262
    .line 263
    invoke-static {v4, v10}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v13

    .line 271
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v14

    .line 275
    if-nez v13, :cond_d

    .line 276
    .line 277
    if-ne v14, v8, :cond_e

    .line 278
    .line 279
    :cond_d
    new-instance v14, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 280
    .line 281
    const/16 v13, 0xc

    .line 282
    .line 283
    invoke-direct {v14, v13, v0}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_e
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 290
    .line 291
    iget-object v13, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 292
    .line 293
    new-instance v15, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 294
    .line 295
    invoke-direct {v15, v0, v7, v2, v5}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;I)V

    .line 296
    .line 297
    .line 298
    invoke-static {v10, v13, v15}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    sget-object v7, Landroidx/activity/compose/LocalActivityKt;->LocalActivity:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 308
    .line 309
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    check-cast v7, Landroidx/activity/ComponentActivity;

    .line 317
    .line 318
    and-int/lit8 v3, v3, 0x70

    .line 319
    .line 320
    invoke-static {v6, v2, v10, v3, v5}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 328
    .line 329
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    if-nez v4, :cond_f

    .line 338
    .line 339
    if-ne v5, v8, :cond_10

    .line 340
    .line 341
    :cond_f
    new-instance v5, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 342
    .line 343
    const/16 v4, 0xa

    .line 344
    .line 345
    invoke-direct {v5, v4, v14}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_10
    move-object v4, v5

    .line 352
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 353
    .line 354
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    if-nez v5, :cond_11

    .line 363
    .line 364
    if-ne v6, v8, :cond_12

    .line 365
    .line 366
    :cond_11
    new-instance v6, Lapp/k9mail/feature/launcher/ui/FeatureLauncherAppKt$$ExternalSyntheticLambda3;

    .line 367
    .line 368
    const/4 v5, 0x3

    .line 369
    invoke-direct {v6, v7, v5}, Lapp/k9mail/feature/launcher/ui/FeatureLauncherAppKt$$ExternalSyntheticLambda3;-><init>(Landroidx/activity/ComponentActivity;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    :cond_12
    move-object v5, v6

    .line 376
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 377
    .line 378
    move-object v6, v9

    .line 379
    const/4 v9, 0x0

    .line 380
    move-object v8, v11

    .line 381
    const/4 v11, 0x0

    .line 382
    move-object v7, v12

    .line 383
    invoke-static/range {v3 .. v11}, Lorg/minidns/util/Hex;->SearchSettingContent(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/core/common/provider/AppNameProvider;Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingBuilder;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 384
    .line 385
    .line 386
    move-object v3, v0

    .line 387
    move-object v4, v6

    .line 388
    move-object v6, v7

    .line 389
    move-object v5, v8

    .line 390
    goto :goto_5

    .line 391
    :cond_13
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 392
    .line 393
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    return-void

    .line 397
    :cond_14
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 398
    .line 399
    .line 400
    move-object/from16 v3, p2

    .line 401
    .line 402
    move-object/from16 v4, p3

    .line 403
    .line 404
    move-object/from16 v5, p4

    .line 405
    .line 406
    move-object/from16 v6, p5

    .line 407
    .line 408
    :goto_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    if-eqz v9, :cond_15

    .line 413
    .line 414
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda14;

    .line 415
    .line 416
    const/4 v8, 0x5

    .line 417
    move/from16 v7, p7

    .line 418
    .line 419
    invoke-direct/range {v0 .. v8}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 420
    .line 421
    .line 422
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 423
    .line 424
    :cond_15
    return-void
.end method

.method public static final SettingDialog(Lnet/thunderbird/core/ui/setting/Setting;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object v6, p5

    .line 14
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const v0, -0x767fbead

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int v0, p6, v0

    .line 32
    .line 33
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v2, 0x10

    .line 43
    .line 44
    :goto_1
    or-int/2addr v0, v2

    .line 45
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    const/16 v2, 0x100

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v2, 0x80

    .line 55
    .line 56
    :goto_2
    or-int/2addr v0, v2

    .line 57
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    const/16 v2, 0x800

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/16 v2, 0x400

    .line 67
    .line 68
    :goto_3
    or-int/2addr v0, v2

    .line 69
    or-int/lit16 v0, v0, 0x6000

    .line 70
    .line 71
    and-int/lit16 v2, v0, 0x2493

    .line 72
    .line 73
    const/16 v7, 0x2492

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    if-eq v2, v7, :cond_4

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    move v2, v8

    .line 81
    :goto_4
    and-int/lit8 v7, v0, 0x1

    .line 82
    .line 83
    invoke-virtual {v6, v7, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_b

    .line 88
    .line 89
    instance-of v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue;

    .line 90
    .line 91
    if-eqz v2, :cond_a

    .line 92
    .line 93
    move-object v2, p0

    .line 94
    check-cast v2, Lnet/thunderbird/core/ui/setting/SettingValue;

    .line 95
    .line 96
    instance-of v7, v2, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 97
    .line 98
    const v9, 0xfffe

    .line 99
    .line 100
    .line 101
    if-eqz v7, :cond_5

    .line 102
    .line 103
    const v2, 0x2437819b

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 107
    .line 108
    .line 109
    move-object v2, p0

    .line 110
    check-cast v2, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 111
    .line 112
    and-int v7, v0, v9

    .line 113
    .line 114
    move-object v3, p1

    .line 115
    move-object v4, p2

    .line 116
    move-object v5, p3

    .line 117
    invoke-static/range {v2 .. v7}, Lkotlinx/atomicfu/AtomicFU;->TextDialogView(Lnet/thunderbird/core/ui/setting/SettingValue$Text;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 121
    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_5
    instance-of v3, v2, Lnet/thunderbird/core/ui/setting/SettingValue$Color;

    .line 125
    .line 126
    if-eqz v3, :cond_6

    .line 127
    .line 128
    const v2, 0x243c36da

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 132
    .line 133
    .line 134
    move-object v2, p0

    .line 135
    check-cast v2, Lnet/thunderbird/core/ui/setting/SettingValue$Color;

    .line 136
    .line 137
    and-int v7, v0, v9

    .line 138
    .line 139
    move-object v3, p1

    .line 140
    move-object v4, p2

    .line 141
    move-object v5, p3

    .line 142
    invoke-static/range {v2 .. v7}, Lorg/jsoup/nodes/NodeUtils;->ColorDialogView(Lnet/thunderbird/core/ui/setting/SettingValue$Color;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 146
    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_6
    instance-of v3, v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 150
    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    const v2, 0x2440f3d9

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 157
    .line 158
    .line 159
    move-object v2, p0

    .line 160
    check-cast v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 161
    .line 162
    and-int v7, v0, v9

    .line 163
    .line 164
    move-object v3, p1

    .line 165
    move-object v4, p2

    .line 166
    move-object v5, p3

    .line 167
    invoke-static/range {v2 .. v7}, Lkotlin/uuid/UuidKt;->SelectDialogView(Lnet/thunderbird/core/ui/setting/SettingValue$Select;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 171
    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_7
    instance-of v0, v2, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 175
    .line 176
    if-nez v0, :cond_9

    .line 177
    .line 178
    instance-of v0, v2, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;

    .line 179
    .line 180
    if-nez v0, :cond_9

    .line 181
    .line 182
    instance-of v0, v2, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 183
    .line 184
    if-nez v0, :cond_9

    .line 185
    .line 186
    instance-of v0, v2, Lnet/thunderbird/core/ui/setting/SettingValue$ActionText;

    .line 187
    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_8
    const v0, 0x2a75648f

    .line 192
    .line 193
    .line 194
    invoke-static {v6, v0, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    throw v0

    .line 199
    :cond_9
    :goto_5
    const v0, 0x2a75ee57

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 206
    .line 207
    .line 208
    :goto_6
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 209
    .line 210
    move-object v5, v0

    .line 211
    goto :goto_7

    .line 212
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const-string v1, "Unsupported setting type: "

    .line 221
    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_b
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 231
    .line 232
    .line 233
    move-object v5, p4

    .line 234
    :goto_7
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    if-eqz v8, :cond_c

    .line 239
    .line 240
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 241
    .line 242
    const/16 v7, 0xf

    .line 243
    .line 244
    move-object v1, p0

    .line 245
    move-object v2, p1

    .line 246
    move-object v3, p2

    .line 247
    move-object v4, p3

    .line 248
    move/from16 v6, p6

    .line 249
    .line 250
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 251
    .line 252
    .line 253
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 254
    .line 255
    :cond_c
    return-void
.end method

.method public static final access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p2, Lokhttp3/internal/concurrent/TaskQueue;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 p2, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    new-array v1, p2, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p3, v1, v2

    .line 21
    .line 22
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string p3, "%-22s"

    .line 27
    .line 28
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p2, ": "

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Lokhttp3/internal/concurrent/Task;->name:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static final alternativeParsing(Lkotlinx/datetime/format/DateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;

    .line 9
    .line 10
    array-length v0, p1

    .line 11
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, [Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {v0, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, p1, p2}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->appendAlternativeParsingImpl([Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p0, "impossible"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    .line 18
    .line 19
    :goto_0
    if-eqz p2, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/CharSequence;

    .line 22
    .line 23
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Character;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static final apptAttr(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/w3c/dom/Node;

    .line 4
    .line 5
    const-string v1, "http://schemas.android.com/apk/res/android"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, v2}, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;-><init>(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-direct {p0, v3, v1}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1;->INSTANCE:Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1;

    .line 27
    .line 28
    new-instance v3, Lkotlin/sequences/FilteringSequence;

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-direct {v3, p0, v4, v1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 35
    .line 36
    invoke-direct {p0, v3}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v3, v1

    .line 50
    check-cast v3, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 51
    .line 52
    iget-object v4, v3, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v4, Lorg/w3c/dom/Node;

    .line 55
    .line 56
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const-string v5, "http://schemas.android.com/aapt"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    iget-object v4, v3, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v4, Lorg/w3c/dom/Node;

    .line 74
    .line 75
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const-string v5, "attr"

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_0

    .line 89
    .line 90
    const-string v4, "name"

    .line 91
    .line 92
    iget-object v3, v3, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;->element:Lorg/w3c/dom/Element;

    .line 93
    .line 94
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v5, ":"

    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_0

    .line 126
    .line 127
    move-object v2, v1

    .line 128
    :cond_1
    check-cast v2, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 129
    .line 130
    return-object v2
.end method

.method public static final attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;->element:Lorg/w3c/dom/Element;

    .line 5
    .line 6
    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 7
    .line 8
    invoke-interface {p0, v0, p1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public static varargs builtInParams([Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final calculateResponsiveWidthPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;
    .locals 6

    .line 1
    invoke-static {p0}, Lorg/jsoup/Jsoup;->calculateWindowSizeInfo(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->sizeClass:Lnet/thunderbird/core/ui/common/window/WindowSizeClass;

    .line 6
    .line 7
    iget-wide v1, p0, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->size:J

    .line 8
    .line 9
    iget-object p0, v0, Lnet/thunderbird/core/ui/common/window/WindowSizeClass;->widthSizeClass:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v0, 0x2

    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq p0, v3, :cond_2

    .line 20
    .line 21
    sget-object v3, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Companion:Landroidx/transition/Transition$1;

    .line 22
    .line 23
    const/high16 v4, 0x40000000    # 2.0f

    .line 24
    .line 25
    if-eq p0, v0, :cond_1

    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    if-ne p0, v5, :cond_0

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget v1, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->BREAKPOINT_MEDIUM:F

    .line 38
    .line 39
    :goto_0
    sub-float/2addr p0, v1

    .line 40
    div-float/2addr p0, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_1
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget v1, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->BREAKPOINT_COMPACT:F

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 p0, 0x0

    .line 58
    :goto_1
    invoke-static {v0, p0}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static final char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p0, p1}, Lkotlinx/datetime/format/DateTimeFormatBuilder;->chars(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    const-string v3, "additional parameter keys cannot be null"

    .line 39
    .line 40
    invoke-static {v2, v3}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v3, "additional parameter values cannot be null"

    .line 44
    .line 45
    invoke-static {v1, v3}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string p0, "Parameter "

    .line 59
    .line 60
    const-string p1, " is directly supported via the authorization request builder, use the builder method instead"

    .line 61
    .line 62
    invoke-static {p0, v2, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    return-object p0

    .line 71
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public static final formatDuration(J)Ljava/lang/String;
    .locals 18

    .line 1
    const-wide/32 v0, -0x3b9328e0

    .line 2
    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    const-string v1, " s "

    .line 7
    .line 8
    const-wide/32 v2, 0x3b9aca00

    .line 9
    .line 10
    .line 11
    const-wide/32 v4, 0x1dcd6500

    .line 12
    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    sub-long v4, p0, v4

    .line 22
    .line 23
    div-long/2addr v4, v2

    .line 24
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_0
    const-wide/32 v6, -0xf404c

    .line 37
    .line 38
    .line 39
    cmp-long v0, p0, v6

    .line 40
    .line 41
    const-string v6, " ms"

    .line 42
    .line 43
    const-wide/32 v7, 0xf4240

    .line 44
    .line 45
    .line 46
    const-wide/32 v9, 0x7a120

    .line 47
    .line 48
    .line 49
    if-gtz v0, :cond_1

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    sub-long v1, p0, v9

    .line 57
    .line 58
    div-long/2addr v1, v7

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-wide/16 v11, 0x0

    .line 71
    .line 72
    cmp-long v0, p0, v11

    .line 73
    .line 74
    const-string v11, " \u00b5s"

    .line 75
    .line 76
    const-wide/16 v12, 0x3e8

    .line 77
    .line 78
    const-wide/16 v14, 0x1f4

    .line 79
    .line 80
    if-gtz v0, :cond_2

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    sub-long v1, p0, v14

    .line 88
    .line 89
    div-long/2addr v1, v12

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const-wide/32 v16, 0xf404c

    .line 102
    .line 103
    .line 104
    cmp-long v0, p0, v16

    .line 105
    .line 106
    if-gez v0, :cond_3

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    add-long v1, p0, v14

    .line 114
    .line 115
    div-long/2addr v1, v12

    .line 116
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    const-wide/32 v11, 0x3b9328e0

    .line 128
    .line 129
    .line 130
    cmp-long v0, p0, v11

    .line 131
    .line 132
    if-gez v0, :cond_4

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    add-long v1, p0, v9

    .line 140
    .line 141
    div-long/2addr v1, v7

    .line 142
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    goto :goto_0

    .line 153
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    add-long v4, p0, v4

    .line 159
    .line 160
    div-long/2addr v4, v2

    .line 161
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    :goto_0
    const/4 v1, 0x1

    .line 172
    new-array v2, v1, [Ljava/lang/Object;

    .line 173
    .line 174
    const/4 v3, 0x0

    .line 175
    aput-object v0, v2, v3

    .line 176
    .line 177
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "%6s"

    .line 182
    .line 183
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    return-object v0
.end method

.method public static isAndroid()Z
    .locals 1

    .line 1
    sget-object v0, Lkotlin/text/StringsKt__IndentKt;->android:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "android.Manifest"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    sput-object v0, Lkotlin/text/StringsKt__IndentKt;->android:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    sput-object v0, Lkotlin/text/StringsKt__IndentKt;->android:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/text/StringsKt__IndentKt;->android:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public static final optional(Lkotlinx/datetime/format/DateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {v0, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->appendOptionalImpl(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p0, "impossible"

    .line 19
    .line 20
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final parseColorStops(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;)[Lkotlin/Pair;
    .locals 11

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;-><init>(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    invoke-direct {v2, v3, v0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1;->INSTANCE$1:Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1;

    .line 14
    .line 15
    new-instance v3, Lkotlin/sequences/FilteringSequence;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v3, v2, v4, v0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    invoke-direct {v0, v2}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lkotlin/sequences/FilteringSequence;

    .line 29
    .line 30
    invoke-direct {v2, v3, v4, v0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v5, 0x0

    .line 47
    move v6, v5

    .line 48
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_5

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    add-int/lit8 v8, v6, 0x1

    .line 59
    .line 60
    if-ltz v6, :cond_4

    .line 61
    .line 62
    check-cast v7, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 63
    .line 64
    int-to-float v6, v6

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    sub-int/2addr v9, v4

    .line 70
    if-ge v9, v4, :cond_0

    .line 71
    .line 72
    move v9, v4

    .line 73
    :cond_0
    int-to-float v9, v9

    .line 74
    div-float/2addr v6, v9

    .line 75
    const-string v9, "offset"

    .line 76
    .line 77
    invoke-static {v7, v9}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    if-eqz v9, :cond_1

    .line 82
    .line 83
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    :cond_1
    const-string v9, "color"

    .line 88
    .line 89
    invoke-static {v7, v9}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    if-eqz v7, :cond_2

    .line 94
    .line 95
    invoke-static {v7}, Lorg/minidns/util/Hex;->parseColorValue(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 104
    .line 105
    .line 106
    move-result-wide v9

    .line 107
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 108
    .line 109
    invoke-direct {v7, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 110
    .line 111
    .line 112
    new-instance v9, Lkotlin/Pair;

    .line 113
    .line 114
    invoke-direct {v9, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move-object v9, v1

    .line 119
    :goto_1
    if-eqz v9, :cond_3

    .line 120
    .line 121
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_3
    move v6, v8

    .line 125
    goto :goto_0

    .line 126
    :cond_4
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 127
    .line 128
    .line 129
    throw v1

    .line 130
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_b

    .line 135
    .line 136
    const-string v0, "startColor"

    .line 137
    .line 138
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    invoke-static {v0}, Lorg/minidns/util/Hex;->parseColorValue(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    goto :goto_2

    .line 153
    :cond_6
    move-object v0, v1

    .line 154
    :goto_2
    const-string v3, "centerColor"

    .line 155
    .line 156
    invoke-static {p0, v3}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    if-eqz v3, :cond_7

    .line 161
    .line 162
    invoke-static {v3}, Lorg/minidns/util/Hex;->parseColorValue(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    goto :goto_3

    .line 171
    :cond_7
    move-object v3, v1

    .line 172
    :goto_3
    const-string v4, "endColor"

    .line 173
    .line 174
    invoke-static {p0, v4}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    if-eqz p0, :cond_8

    .line 179
    .line 180
    invoke-static {p0}, Lorg/minidns/util/Hex;->parseColorValue(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    :cond_8
    if-eqz v0, :cond_9

    .line 189
    .line 190
    const/4 p0, 0x0

    .line 191
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 200
    .line 201
    .line 202
    move-result-wide v6

    .line 203
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 204
    .line 205
    invoke-direct {v0, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 206
    .line 207
    .line 208
    new-instance v4, Lkotlin/Pair;

    .line 209
    .line 210
    invoke-direct {v4, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :cond_9
    if-eqz v3, :cond_a

    .line 217
    .line 218
    const/high16 p0, 0x3f000000    # 0.5f

    .line 219
    .line 220
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 229
    .line 230
    .line 231
    move-result-wide v3

    .line 232
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 233
    .line 234
    invoke-direct {v0, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 235
    .line 236
    .line 237
    new-instance v3, Lkotlin/Pair;

    .line 238
    .line 239
    invoke-direct {v3, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    :cond_a
    if-eqz v1, :cond_b

    .line 246
    .line 247
    const/high16 p0, 0x3f800000    # 1.0f

    .line 248
    .line 249
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 258
    .line 259
    .line 260
    move-result-wide v0

    .line 261
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 262
    .line 263
    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 264
    .line 265
    .line 266
    new-instance v0, Lkotlin/Pair;

    .line 267
    .line 268
    invoke-direct {v0, p0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    :cond_b
    new-array p0, v5, [Lkotlin/Pair;

    .line 275
    .line 276
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    check-cast p0, [Lkotlin/Pair;

    .line 281
    .line 282
    return-object p0
.end method

.method public static final parseElementBrush(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;)Landroidx/compose/ui/graphics/ShaderBrush;
    .locals 21

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object/from16 v2, p0

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;-><init>(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    invoke-direct {v2, v3, v0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1;->INSTANCE$2:Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1;

    .line 16
    .line 17
    new-instance v3, Lkotlin/sequences/FilteringSequence;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v3, v2, v4, v0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 24
    .line 25
    invoke-direct {v0, v3}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    move-object v3, v2

    .line 39
    check-cast v3, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 40
    .line 41
    iget-object v3, v3, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lorg/w3c/dom/Node;

    .line 44
    .line 45
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v4, "gradient"

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object v2, v1

    .line 62
    :goto_0
    check-cast v2, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 63
    .line 64
    if-eqz v2, :cond_18

    .line 65
    .line 66
    const-string v0, "type"

    .line 67
    .line 68
    invoke-static {v2, v0}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_18

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    const v4, -0x41b970db

    .line 79
    .line 80
    .line 81
    const-string v5, "tileMode"

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    const-wide v7, 0xffffffffL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    const/16 v9, 0x20

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    if-eq v3, v4, :cond_10

    .line 93
    .line 94
    const v4, -0x37f195e1

    .line 95
    .line 96
    .line 97
    const-string v11, "centerY"

    .line 98
    .line 99
    const-string v12, "centerX"

    .line 100
    .line 101
    if-eq v3, v4, :cond_8

    .line 102
    .line 103
    const v4, 0x68c2eec

    .line 104
    .line 105
    .line 106
    if-eq v3, v4, :cond_2

    .line 107
    .line 108
    goto/16 :goto_f

    .line 109
    .line 110
    :cond_2
    const-string v3, "sweep"

    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    goto/16 :goto_f

    .line 119
    .line 120
    :cond_3
    invoke-static {v2}, Lkotlin/text/StringsKt__IndentKt;->parseColorStops(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;)[Lkotlin/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    array-length v1, v0

    .line 125
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, [Lkotlin/Pair;

    .line 130
    .line 131
    invoke-static {v2, v12}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-eqz v1, :cond_4

    .line 136
    .line 137
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    move v1, v10

    .line 143
    :goto_1
    invoke-static {v2, v11}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    :cond_5
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    int-to-long v1, v1

    .line 158
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    int-to-long v3, v3

    .line 163
    shl-long/2addr v1, v9

    .line 164
    and-long/2addr v3, v7

    .line 165
    or-long/2addr v1, v3

    .line 166
    array-length v3, v0

    .line 167
    new-instance v4, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .line 171
    .line 172
    move v5, v6

    .line 173
    :goto_2
    if-ge v5, v3, :cond_6

    .line 174
    .line 175
    aget-object v7, v0, v5

    .line 176
    .line 177
    iget-object v7, v7, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v7, Landroidx/compose/ui/graphics/Color;

    .line 180
    .line 181
    iget-wide v7, v7, Landroidx/compose/ui/graphics/Color;->value:J

    .line 182
    .line 183
    new-instance v9, Landroidx/compose/ui/graphics/Color;

    .line 184
    .line 185
    invoke-direct {v9, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    add-int/lit8 v5, v5, 0x1

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    array-length v3, v0

    .line 195
    new-instance v5, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .line 199
    .line 200
    :goto_3
    if-ge v6, v3, :cond_7

    .line 201
    .line 202
    aget-object v7, v0, v6

    .line 203
    .line 204
    iget-object v7, v7, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v7, Ljava/lang/Number;

    .line 207
    .line 208
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    add-int/lit8 v6, v6, 0x1

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_7
    new-instance v0, Landroidx/compose/ui/graphics/SweepGradient;

    .line 223
    .line 224
    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/compose/ui/graphics/SweepGradient;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 225
    .line 226
    .line 227
    return-object v0

    .line 228
    :cond_8
    const-string v3, "radial"

    .line 229
    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_9

    .line 235
    .line 236
    goto/16 :goto_f

    .line 237
    .line 238
    :cond_9
    invoke-static {v2}, Lkotlin/text/StringsKt__IndentKt;->parseColorStops(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;)[Lkotlin/Pair;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    array-length v1, v0

    .line 243
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, [Lkotlin/Pair;

    .line 248
    .line 249
    invoke-static {v2, v12}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    if-eqz v1, :cond_a

    .line 254
    .line 255
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    goto :goto_4

    .line 260
    :cond_a
    move v1, v10

    .line 261
    :goto_4
    invoke-static {v2, v11}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    if-eqz v3, :cond_b

    .line 266
    .line 267
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    goto :goto_5

    .line 272
    :cond_b
    move v3, v10

    .line 273
    :goto_5
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    int-to-long v11, v1

    .line 278
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    int-to-long v3, v1

    .line 283
    shl-long/2addr v11, v9

    .line 284
    and-long/2addr v3, v7

    .line 285
    or-long v16, v11, v3

    .line 286
    .line 287
    const-string v1, "gradientRadius"

    .line 288
    .line 289
    invoke-static {v2, v1}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    if-eqz v1, :cond_c

    .line 294
    .line 295
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 296
    .line 297
    .line 298
    move-result v10

    .line 299
    :cond_c
    move/from16 v18, v10

    .line 300
    .line 301
    invoke-static {v2, v5}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    if-eqz v1, :cond_d

    .line 306
    .line 307
    invoke-static {v1}, Lorg/minidns/util/Hex;->parseTileMode(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    move/from16 v19, v1

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_d
    move/from16 v19, v6

    .line 315
    .line 316
    :goto_6
    array-length v1, v0

    .line 317
    new-instance v14, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .line 321
    .line 322
    move v2, v6

    .line 323
    :goto_7
    if-ge v2, v1, :cond_e

    .line 324
    .line 325
    aget-object v3, v0, v2

    .line 326
    .line 327
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 330
    .line 331
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 332
    .line 333
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 334
    .line 335
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    add-int/lit8 v2, v2, 0x1

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_e
    array-length v1, v0

    .line 345
    new-instance v15, Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    .line 349
    .line 350
    :goto_8
    if-ge v6, v1, :cond_f

    .line 351
    .line 352
    aget-object v2, v0, v6

    .line 353
    .line 354
    iget-object v2, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v2, Ljava/lang/Number;

    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    add-int/lit8 v6, v6, 0x1

    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_f
    new-instance v13, Landroidx/compose/ui/graphics/RadialGradient;

    .line 373
    .line 374
    invoke-direct/range {v13 .. v19}, Landroidx/compose/ui/graphics/RadialGradient;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;JFI)V

    .line 375
    .line 376
    .line 377
    return-object v13

    .line 378
    :cond_10
    const-string v3, "linear"

    .line 379
    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-eqz v0, :cond_18

    .line 385
    .line 386
    invoke-static {v2}, Lkotlin/text/StringsKt__IndentKt;->parseColorStops(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;)[Lkotlin/Pair;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    array-length v1, v0

    .line 391
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    check-cast v0, [Lkotlin/Pair;

    .line 396
    .line 397
    const-string v1, "startX"

    .line 398
    .line 399
    invoke-static {v2, v1}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    if-eqz v1, :cond_11

    .line 404
    .line 405
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    goto :goto_9

    .line 410
    :cond_11
    move v1, v10

    .line 411
    :goto_9
    const-string v3, "startY"

    .line 412
    .line 413
    invoke-static {v2, v3}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    if-eqz v3, :cond_12

    .line 418
    .line 419
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    goto :goto_a

    .line 424
    :cond_12
    move v3, v10

    .line 425
    :goto_a
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    int-to-long v11, v1

    .line 430
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    int-to-long v3, v1

    .line 435
    shl-long/2addr v11, v9

    .line 436
    and-long/2addr v3, v7

    .line 437
    or-long v16, v11, v3

    .line 438
    .line 439
    const-string v1, "endX"

    .line 440
    .line 441
    invoke-static {v2, v1}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    if-eqz v1, :cond_13

    .line 446
    .line 447
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    goto :goto_b

    .line 452
    :cond_13
    move v1, v10

    .line 453
    :goto_b
    const-string v3, "endY"

    .line 454
    .line 455
    invoke-static {v2, v3}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    if-eqz v3, :cond_14

    .line 460
    .line 461
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 462
    .line 463
    .line 464
    move-result v10

    .line 465
    :cond_14
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    int-to-long v3, v1

    .line 470
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    int-to-long v10, v1

    .line 475
    shl-long/2addr v3, v9

    .line 476
    and-long/2addr v7, v10

    .line 477
    or-long v18, v3, v7

    .line 478
    .line 479
    invoke-static {v2, v5}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    if-eqz v1, :cond_15

    .line 484
    .line 485
    invoke-static {v1}, Lorg/minidns/util/Hex;->parseTileMode(Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    move/from16 v20, v1

    .line 490
    .line 491
    goto :goto_c

    .line 492
    :cond_15
    move/from16 v20, v6

    .line 493
    .line 494
    :goto_c
    array-length v1, v0

    .line 495
    new-instance v14, Ljava/util/ArrayList;

    .line 496
    .line 497
    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 498
    .line 499
    .line 500
    move v2, v6

    .line 501
    :goto_d
    if-ge v2, v1, :cond_16

    .line 502
    .line 503
    aget-object v3, v0, v2

    .line 504
    .line 505
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 508
    .line 509
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 510
    .line 511
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 512
    .line 513
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    add-int/lit8 v2, v2, 0x1

    .line 520
    .line 521
    goto :goto_d

    .line 522
    :cond_16
    array-length v1, v0

    .line 523
    new-instance v15, Ljava/util/ArrayList;

    .line 524
    .line 525
    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 526
    .line 527
    .line 528
    :goto_e
    if-ge v6, v1, :cond_17

    .line 529
    .line 530
    aget-object v2, v0, v6

    .line 531
    .line 532
    iget-object v2, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v2, Ljava/lang/Number;

    .line 535
    .line 536
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    add-int/lit8 v6, v6, 0x1

    .line 548
    .line 549
    goto :goto_e

    .line 550
    :cond_17
    new-instance v13, Landroidx/compose/ui/graphics/LinearGradient;

    .line 551
    .line 552
    invoke-direct/range {v13 .. v20}, Landroidx/compose/ui/graphics/LinearGradient;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;JJI)V

    .line 553
    .line 554
    .line 555
    return-object v13

    .line 556
    :cond_18
    :goto_f
    return-object v1
.end method

.method public static final parseVectorNodes(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Lokhttp3/Headers$Builder;)V
    .locals 22

    .line 1
    move-object/from16 v15, p2

    .line 2
    .line 3
    iget-object v10, v15, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;

    .line 6
    .line 7
    const/4 v11, 0x0

    .line 8
    move-object/from16 v1, p0

    .line 9
    .line 10
    invoke-direct {v0, v1, v11}, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;-><init>(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v1, v2, v0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1;->INSTANCE$3:Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1;

    .line 20
    .line 21
    new-instance v2, Lkotlin/sequences/FilteringSequence;

    .line 22
    .line 23
    const/4 v12, 0x1

    .line 24
    invoke-direct {v2, v1, v12, v0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    new-instance v13, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 28
    .line 29
    invoke-direct {v13, v2}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v13}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_27

    .line 37
    .line 38
    invoke-virtual {v13}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v14, v0

    .line 43
    check-cast v14, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 44
    .line 45
    iget-object v0, v14, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lorg/w3c/dom/Node;

    .line 48
    .line 49
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const v2, -0x624e8b7e

    .line 61
    .line 62
    .line 63
    sget-object v3, Lorg/jetbrains/compose/resources/vector/BuildContext$Group;->Virtual:Lorg/jetbrains/compose/resources/vector/BuildContext$Group;

    .line 64
    .line 65
    const-string v4, "pathData"

    .line 66
    .line 67
    const-string v5, ""

    .line 68
    .line 69
    const-string v6, "name"

    .line 70
    .line 71
    if-eq v1, v2, :cond_24

    .line 72
    .line 73
    const v2, 0x346425

    .line 74
    .line 75
    .line 76
    if-eq v1, v2, :cond_b

    .line 77
    .line 78
    const v2, 0x5e0f67f

    .line 79
    .line 80
    .line 81
    if-eq v1, v2, :cond_0

    .line 82
    .line 83
    :goto_1
    move-object/from16 v1, p1

    .line 84
    .line 85
    move-object v15, v10

    .line 86
    move-object/from16 v17, v11

    .line 87
    .line 88
    move/from16 v19, v12

    .line 89
    .line 90
    move-object/from16 v16, v13

    .line 91
    .line 92
    goto/16 :goto_1e

    .line 93
    .line 94
    :cond_0
    const-string v1, "group"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-static {v14, v6}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-nez v0, :cond_2

    .line 108
    .line 109
    move-object v1, v5

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move-object v1, v0

    .line 112
    :goto_2
    const-string v0, "rotation"

    .line 113
    .line 114
    invoke-static {v14, v0}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    move v2, v0

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    const/4 v2, 0x0

    .line 127
    :goto_3
    const-string v0, "pivotX"

    .line 128
    .line 129
    invoke-static {v14, v0}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    goto :goto_4

    .line 140
    :cond_4
    const/4 v0, 0x0

    .line 141
    :goto_4
    const-string v4, "pivotY"

    .line 142
    .line 143
    invoke-static {v14, v4}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    if-eqz v4, :cond_5

    .line 148
    .line 149
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    goto :goto_5

    .line 154
    :cond_5
    const/4 v4, 0x0

    .line 155
    :goto_5
    const-string v5, "scaleX"

    .line 156
    .line 157
    invoke-static {v14, v5}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-eqz v5, :cond_6

    .line 162
    .line 163
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    goto :goto_6

    .line 168
    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    .line 169
    .line 170
    :goto_6
    const-string v6, "scaleY"

    .line 171
    .line 172
    invoke-static {v14, v6}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    if-eqz v6, :cond_7

    .line 177
    .line 178
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    move v6, v8

    .line 183
    goto :goto_7

    .line 184
    :cond_7
    const/high16 v6, 0x3f800000    # 1.0f

    .line 185
    .line 186
    :goto_7
    const-string v8, "translateX"

    .line 187
    .line 188
    invoke-static {v14, v8}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    if-eqz v8, :cond_8

    .line 193
    .line 194
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    goto :goto_8

    .line 199
    :cond_8
    const/4 v8, 0x0

    .line 200
    :goto_8
    const-string v9, "translateY"

    .line 201
    .line 202
    invoke-static {v14, v9}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    if-eqz v9, :cond_9

    .line 207
    .line 208
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    goto :goto_9

    .line 213
    :cond_9
    const/4 v7, 0x0

    .line 214
    :goto_9
    sget v9, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 215
    .line 216
    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 217
    .line 218
    move v11, v8

    .line 219
    move v8, v7

    .line 220
    move v7, v11

    .line 221
    move-object v11, v3

    .line 222
    move v3, v0

    .line 223
    move-object/from16 v0, p1

    .line 224
    .line 225
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup(Ljava/lang/String;FFFFFFFLjava/util/List;)V

    .line 226
    .line 227
    .line 228
    move-object v1, v0

    .line 229
    sget-object v0, Lorg/jetbrains/compose/resources/vector/BuildContext$Group;->Real:Lorg/jetbrains/compose/resources/vector/BuildContext$Group;

    .line 230
    .line 231
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    invoke-static {v14, v1, v15}, Lkotlin/text/StringsKt__IndentKt;->parseVectorNodes(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Lokhttp3/Headers$Builder;)V

    .line 235
    .line 236
    .line 237
    :cond_a
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/AbstractList;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Lorg/jetbrains/compose/resources/vector/BuildContext$Group;

    .line 242
    .line 243
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->clearGroup()V

    .line 244
    .line 245
    .line 246
    if-eq v0, v11, :cond_a

    .line 247
    .line 248
    :goto_a
    move-object v15, v10

    .line 249
    move/from16 v19, v12

    .line 250
    .line 251
    move-object/from16 v16, v13

    .line 252
    .line 253
    const/16 v17, 0x0

    .line 254
    .line 255
    goto/16 :goto_1e

    .line 256
    .line 257
    :cond_b
    move-object/from16 v1, p1

    .line 258
    .line 259
    const-string v2, "path"

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_c

    .line 266
    .line 267
    goto :goto_a

    .line 268
    :cond_c
    invoke-static {v14, v4}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/VectorKt;->addPathNodes(Ljava/lang/String;)Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    const-string v2, "fillType"

    .line 277
    .line 278
    invoke-static {v14, v2}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    if-eqz v2, :cond_f

    .line 283
    .line 284
    const-string v4, "nonZero"

    .line 285
    .line 286
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-eqz v4, :cond_d

    .line 291
    .line 292
    goto :goto_b

    .line 293
    :cond_d
    const-string v4, "evenOdd"

    .line 294
    .line 295
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-eqz v4, :cond_e

    .line 300
    .line 301
    move v2, v12

    .line 302
    goto :goto_c

    .line 303
    :cond_e
    const-string v0, "unknown fillType: "

    .line 304
    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_f
    :goto_b
    const/4 v2, 0x0

    .line 314
    :goto_c
    invoke-static {v14, v6}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    if-nez v4, :cond_10

    .line 319
    .line 320
    goto :goto_d

    .line 321
    :cond_10
    move-object v5, v4

    .line 322
    :goto_d
    const-string v4, "fillColor"

    .line 323
    .line 324
    invoke-static {v14, v4}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    if-eqz v6, :cond_11

    .line 329
    .line 330
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    .line 331
    .line 332
    invoke-static {v6}, Lorg/minidns/util/Hex;->parseColorValue(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v7

    .line 340
    invoke-direct {v4, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 341
    .line 342
    .line 343
    :goto_e
    move-object v11, v4

    .line 344
    goto :goto_f

    .line 345
    :cond_11
    invoke-static {v14, v4}, Lkotlin/text/StringsKt__IndentKt;->apptAttr(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    if-eqz v4, :cond_12

    .line 350
    .line 351
    invoke-static {v4}, Lkotlin/text/StringsKt__IndentKt;->parseElementBrush(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;)Landroidx/compose/ui/graphics/ShaderBrush;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    goto :goto_e

    .line 356
    :cond_12
    const/4 v11, 0x0

    .line 357
    :goto_f
    const-string v4, "fillAlpha"

    .line 358
    .line 359
    invoke-static {v14, v4}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    if-eqz v4, :cond_13

    .line 364
    .line 365
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    goto :goto_10

    .line 370
    :cond_13
    const/high16 v4, 0x3f800000    # 1.0f

    .line 371
    .line 372
    :goto_10
    const-string v6, "strokeColor"

    .line 373
    .line 374
    invoke-static {v14, v6}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    if-eqz v7, :cond_14

    .line 379
    .line 380
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    .line 381
    .line 382
    invoke-static {v7}, Lorg/minidns/util/Hex;->parseColorValue(Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    invoke-static {v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 387
    .line 388
    .line 389
    move-result-wide v7

    .line 390
    invoke-direct {v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 391
    .line 392
    .line 393
    goto :goto_11

    .line 394
    :cond_14
    invoke-static {v14, v6}, Lkotlin/text/StringsKt__IndentKt;->apptAttr(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    if-eqz v6, :cond_15

    .line 399
    .line 400
    invoke-static {v6}, Lkotlin/text/StringsKt__IndentKt;->parseElementBrush(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;)Landroidx/compose/ui/graphics/ShaderBrush;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    goto :goto_11

    .line 405
    :cond_15
    const/4 v6, 0x0

    .line 406
    :goto_11
    const-string v7, "strokeAlpha"

    .line 407
    .line 408
    invoke-static {v14, v7}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    if-eqz v7, :cond_16

    .line 413
    .line 414
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    goto :goto_12

    .line 419
    :cond_16
    const/high16 v7, 0x3f800000    # 1.0f

    .line 420
    .line 421
    :goto_12
    const-string v8, "strokeWidth"

    .line 422
    .line 423
    invoke-static {v14, v8}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    if-eqz v8, :cond_17

    .line 428
    .line 429
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 430
    .line 431
    .line 432
    move-result v8

    .line 433
    goto :goto_13

    .line 434
    :cond_17
    const/high16 v8, 0x3f800000    # 1.0f

    .line 435
    .line 436
    :goto_13
    const-string v3, "strokeLineCap"

    .line 437
    .line 438
    invoke-static {v14, v3}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    const/16 v18, 0x2

    .line 443
    .line 444
    const-string v9, "round"

    .line 445
    .line 446
    if-eqz v3, :cond_1b

    .line 447
    .line 448
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 449
    .line 450
    .line 451
    move-result v12

    .line 452
    move-object/from16 v20, v0

    .line 453
    .line 454
    const v0, -0x3553a6e3    # -5647502.5f

    .line 455
    .line 456
    .line 457
    if-eq v12, v0, :cond_19

    .line 458
    .line 459
    const v0, 0x2e5213

    .line 460
    .line 461
    .line 462
    if-eq v12, v0, :cond_18

    .line 463
    .line 464
    const v0, 0x67ab18e

    .line 465
    .line 466
    .line 467
    if-ne v12, v0, :cond_1a

    .line 468
    .line 469
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-eqz v0, :cond_1a

    .line 474
    .line 475
    const/4 v0, 0x1

    .line 476
    goto :goto_15

    .line 477
    :cond_18
    const-string v0, "butt"

    .line 478
    .line 479
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_1a

    .line 484
    .line 485
    goto :goto_14

    .line 486
    :cond_19
    const-string v0, "square"

    .line 487
    .line 488
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_1a

    .line 493
    .line 494
    move/from16 v0, v18

    .line 495
    .line 496
    goto :goto_15

    .line 497
    :cond_1a
    const-string v0, "unknown strokeCap: "

    .line 498
    .line 499
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :cond_1b
    move-object/from16 v20, v0

    .line 508
    .line 509
    :goto_14
    const/4 v0, 0x0

    .line 510
    :goto_15
    const-string v3, "strokeLineJoin"

    .line 511
    .line 512
    invoke-static {v14, v3}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    if-eqz v3, :cond_1f

    .line 517
    .line 518
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 519
    .line 520
    .line 521
    move-result v12

    .line 522
    move/from16 v21, v0

    .line 523
    .line 524
    const v0, 0x594b07a

    .line 525
    .line 526
    .line 527
    if-eq v12, v0, :cond_1d

    .line 528
    .line 529
    const v0, 0x6317d05

    .line 530
    .line 531
    .line 532
    if-eq v12, v0, :cond_1c

    .line 533
    .line 534
    const v0, 0x67ab18e

    .line 535
    .line 536
    .line 537
    if-ne v12, v0, :cond_1e

    .line 538
    .line 539
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_1e

    .line 544
    .line 545
    const/4 v3, 0x1

    .line 546
    goto :goto_17

    .line 547
    :cond_1c
    const-string v0, "miter"

    .line 548
    .line 549
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    if-eqz v0, :cond_1e

    .line 554
    .line 555
    goto :goto_16

    .line 556
    :cond_1d
    const-string v0, "bevel"

    .line 557
    .line 558
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    if-eqz v0, :cond_1e

    .line 563
    .line 564
    move/from16 v3, v18

    .line 565
    .line 566
    goto :goto_17

    .line 567
    :cond_1e
    const-string v0, "unknown strokeJoin: "

    .line 568
    .line 569
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    return-void

    .line 577
    :cond_1f
    move/from16 v21, v0

    .line 578
    .line 579
    :goto_16
    const/4 v3, 0x0

    .line 580
    :goto_17
    const-string v0, "strokeMiterLimit"

    .line 581
    .line 582
    invoke-static {v14, v0}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    if-eqz v0, :cond_20

    .line 587
    .line 588
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    goto :goto_18

    .line 593
    :cond_20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 594
    .line 595
    :goto_18
    const-string v9, "trimPathStart"

    .line 596
    .line 597
    invoke-static {v14, v9}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v9

    .line 601
    if-eqz v9, :cond_21

    .line 602
    .line 603
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 604
    .line 605
    .line 606
    move-result v9

    .line 607
    goto :goto_19

    .line 608
    :cond_21
    const/4 v9, 0x0

    .line 609
    :goto_19
    const-string v12, "trimPathEnd"

    .line 610
    .line 611
    invoke-static {v14, v12}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v12

    .line 615
    if-eqz v12, :cond_22

    .line 616
    .line 617
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 618
    .line 619
    .line 620
    move-result v12

    .line 621
    :goto_1a
    move/from16 p0, v0

    .line 622
    .line 623
    goto :goto_1b

    .line 624
    :cond_22
    const/high16 v12, 0x3f800000    # 1.0f

    .line 625
    .line 626
    goto :goto_1a

    .line 627
    :goto_1b
    const-string v0, "trimPathOffset"

    .line 628
    .line 629
    invoke-static {v14, v0}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    if-eqz v0, :cond_23

    .line 634
    .line 635
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    move v14, v12

    .line 640
    move-object v12, v6

    .line 641
    move v6, v14

    .line 642
    move-object v15, v10

    .line 643
    move v10, v3

    .line 644
    move v3, v8

    .line 645
    move v8, v2

    .line 646
    move v2, v7

    .line 647
    move v7, v0

    .line 648
    move-object/from16 v16, v13

    .line 649
    .line 650
    move-object/from16 v14, v20

    .line 651
    .line 652
    const/16 v17, 0x0

    .line 653
    .line 654
    const/16 v19, 0x1

    .line 655
    .line 656
    move-object v13, v5

    .line 657
    move v5, v9

    .line 658
    move/from16 v9, v21

    .line 659
    .line 660
    move-object v0, v1

    .line 661
    move v1, v4

    .line 662
    move/from16 v4, p0

    .line 663
    .line 664
    goto :goto_1c

    .line 665
    :cond_23
    move v0, v12

    .line 666
    move-object v12, v6

    .line 667
    move v6, v0

    .line 668
    move-object v15, v10

    .line 669
    move v10, v3

    .line 670
    move v3, v8

    .line 671
    move v8, v2

    .line 672
    move v2, v7

    .line 673
    const/4 v7, 0x0

    .line 674
    move-object v0, v1

    .line 675
    move v1, v4

    .line 676
    move-object/from16 v16, v13

    .line 677
    .line 678
    move-object/from16 v14, v20

    .line 679
    .line 680
    const/16 v17, 0x0

    .line 681
    .line 682
    const/16 v19, 0x1

    .line 683
    .line 684
    move/from16 v4, p0

    .line 685
    .line 686
    move-object v13, v5

    .line 687
    move v5, v9

    .line 688
    move/from16 v9, v21

    .line 689
    .line 690
    :goto_1c
    invoke-virtual/range {v0 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM(FFFFFFFIIILandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Brush;Ljava/lang/String;Ljava/util/List;)V

    .line 691
    .line 692
    .line 693
    move-object v1, v0

    .line 694
    goto :goto_1e

    .line 695
    :cond_24
    move-object/from16 v1, p1

    .line 696
    .line 697
    move-object v15, v10

    .line 698
    move-object/from16 v17, v11

    .line 699
    .line 700
    move/from16 v19, v12

    .line 701
    .line 702
    move-object/from16 v16, v13

    .line 703
    .line 704
    move-object v11, v3

    .line 705
    const-string v2, "clip-path"

    .line 706
    .line 707
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    if-nez v0, :cond_25

    .line 712
    .line 713
    goto :goto_1e

    .line 714
    :cond_25
    invoke-static {v14, v6}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    if-nez v0, :cond_26

    .line 719
    .line 720
    goto :goto_1d

    .line 721
    :cond_26
    move-object v5, v0

    .line 722
    :goto_1d
    invoke-static {v14, v4}, Lkotlin/text/StringsKt__IndentKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/VectorKt;->addPathNodes(Ljava/lang/String;)Ljava/util/List;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-static {v1, v5, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;Ljava/util/List;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    :goto_1e
    move-object v10, v15

    .line 737
    move-object/from16 v13, v16

    .line 738
    .line 739
    move-object/from16 v11, v17

    .line 740
    .line 741
    move/from16 v12, v19

    .line 742
    .line 743
    move-object/from16 v15, p2

    .line 744
    .line 745
    goto/16 :goto_0

    .line 746
    .line 747
    :cond_27
    return-void
.end method

.method public static prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, p0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {p0, p1, v1}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lkotlin/sequences/TakeWhileSequence;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-direct {p1, v0, p0, v1}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 19
    .line 20
    .line 21
    const-string p0, "\n"

    .line 22
    .line 23
    const/16 v0, 0x3e

    .line 24
    .line 25
    invoke-static {p1, p0, v0}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v4, v3

    .line 25
    check-cast v4, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/16 v3, 0xa

    .line 40
    .line 41
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x0

    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    :goto_2
    const/4 v6, -0x1

    .line 70
    if-ge v4, v5, :cond_3

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-static {v7}, Lkotlin/text/CharsKt__CharKt;->isWhitespace(C)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-nez v7, :cond_2

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    move v4, v6

    .line 87
    :goto_3
    if-ne v4, v6, :cond_4

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    const/4 v3, 0x0

    .line 110
    if-nez v2, :cond_6

    .line 111
    .line 112
    move-object v2, v3

    .line 113
    goto :goto_5

    .line 114
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/Comparable;

    .line 119
    .line 120
    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_8

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Ljava/lang/Comparable;

    .line 131
    .line 132
    invoke-interface {v2, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-lez v6, :cond_7

    .line 137
    .line 138
    move-object v2, v5

    .line 139
    goto :goto_4

    .line 140
    :cond_8
    :goto_5
    check-cast v2, Ljava/lang/Integer;

    .line 141
    .line 142
    if-eqz v2, :cond_9

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    goto :goto_6

    .line 149
    :cond_9
    move v1, v4

    .line 150
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    add-int/lit8 v2, v2, -0x1

    .line 162
    .line 163
    new-instance v5, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_10

    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    add-int/lit8 v7, v4, 0x1

    .line 183
    .line 184
    if-ltz v4, :cond_f

    .line 185
    .line 186
    check-cast v6, Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v4, :cond_a

    .line 189
    .line 190
    if-ne v4, v2, :cond_b

    .line 191
    .line 192
    :cond_a
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_b

    .line 197
    .line 198
    move-object v4, v3

    .line 199
    goto :goto_9

    .line 200
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    if-ltz v1, :cond_e

    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-le v1, v4, :cond_c

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_c
    move v4, v1

    .line 213
    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    :goto_9
    if-eqz v4, :cond_d

    .line 218
    .line 219
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :cond_d
    move v4, v7

    .line 223
    goto :goto_7

    .line 224
    :cond_e
    const-string p0, "Requested character count "

    .line 225
    .line 226
    const-string v0, " is less than zero."

    .line 227
    .line 228
    invoke-static {v1, p0, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    return-object v3

    .line 236
    :cond_f
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 237
    .line 238
    .line 239
    throw v3

    .line 240
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 243
    .line 244
    .line 245
    const/4 v10, 0x0

    .line 246
    const/16 v11, 0x7c

    .line 247
    .line 248
    const-string v7, "\n"

    .line 249
    .line 250
    const/4 v8, 0x0

    .line 251
    const/4 v9, 0x0

    .line 252
    invoke-static/range {v5 .. v11}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    return-object p0
.end method

.method public static trimMargin$default(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    const-string/jumbo v0, "|"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_a

    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    add-int/lit8 v3, v3, -0x1

    .line 27
    .line 28
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v5, 0x0

    .line 38
    move v6, v5

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_9

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    add-int/lit8 v8, v6, 0x1

    .line 50
    .line 51
    if-ltz v6, :cond_8

    .line 52
    .line 53
    check-cast v7, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    if-ne v6, v3, :cond_1

    .line 58
    .line 59
    :cond_0
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    move-object v7, v2

    .line 66
    goto :goto_4

    .line 67
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    move v9, v5

    .line 72
    :goto_1
    const/4 v10, -0x1

    .line 73
    if-ge v9, v6, :cond_3

    .line 74
    .line 75
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    invoke-static {v11}, Lkotlin/text/CharsKt__CharKt;->isWhitespace(C)Z

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-nez v11, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move v9, v10

    .line 90
    :goto_2
    if-ne v9, v10, :cond_5

    .line 91
    .line 92
    :cond_4
    move-object v6, v2

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    invoke-static {v9, v7, v0, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_4

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    add-int/2addr v6, v9

    .line 105
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    :goto_3
    if-eqz v6, :cond_6

    .line 110
    .line 111
    move-object v7, v6

    .line 112
    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    .line 113
    .line 114
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_7
    move v6, v8

    .line 118
    goto :goto_0

    .line 119
    :cond_8
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 120
    .line 121
    .line 122
    throw v2

    .line 123
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    const/16 v10, 0x7c

    .line 130
    .line 131
    const-string v6, "\n"

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    const/4 v8, 0x0

    .line 135
    invoke-static/range {v4 .. v10}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :cond_a
    const-string p0, "marginPrefix must be non-blank string."

    .line 144
    .line 145
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object v2
.end method
