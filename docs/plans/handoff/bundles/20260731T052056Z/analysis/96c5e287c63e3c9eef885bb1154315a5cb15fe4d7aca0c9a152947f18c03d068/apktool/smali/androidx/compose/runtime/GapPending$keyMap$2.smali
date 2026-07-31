.class public final Landroidx/compose/runtime/GapPending$keyMap$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->this$0:Ljava/lang/Object;

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
    .locals 11

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
    check-cast p0, Ljava/util/List;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;

    .line 19
    .line 20
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;->enumMemberNames:Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;

    .line 21
    .line 22
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Set;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 43
    .line 44
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FOR_NON_TRACKED_SCOPE:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    .line 45
    .line 46
    invoke-virtual {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v0, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Ljava/util/Collection;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-object v0

    .line 62
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "Scope for type parameter "

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    check-cast p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 70
    .line 71
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 74
    .line 75
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    .line 89
    .line 90
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v0, p0}, Lkotlin/text/RegexKt;->create(Ljava/lang/String;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_2
    check-cast p0, [Lkotlinx/coroutines/flow/Flow;

    .line 100
    .line 101
    array-length p0, p0

    .line 102
    new-array p0, p0, [Landroidx/work/impl/constraints/ConstraintsState;

    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_3
    check-cast p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    .line 106
    .line 107
    iget-object v0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->scrollBehavior:Landroidx/compose/material3/PinnedScrollBehavior;

    .line 108
    .line 109
    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    iget-object v0, v0, Landroidx/compose/material3/PinnedScrollBehavior;->state:Landroidx/compose/material3/TopAppBarState;

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    iget v3, v0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    .line 119
    .line 120
    cmpg-float v4, v3, v2

    .line 121
    .line 122
    if-nez v4, :cond_1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    iget-object v4, v0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 126
    .line 127
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    sub-float/2addr v3, v4

    .line 132
    iget v4, v0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    .line 133
    .line 134
    invoke-static {v3, v4, v2}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    iget v0, v0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    .line 139
    .line 140
    div-float/2addr v3, v0

    .line 141
    sub-float v0, v1, v3

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    :goto_1
    move v0, v2

    .line 145
    :goto_2
    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->colors:Landroidx/compose/material3/TopAppBarColors;

    .line 146
    .line 147
    const v3, 0x3c23d70a    # 0.01f

    .line 148
    .line 149
    .line 150
    cmpl-float v0, v0, v3

    .line 151
    .line 152
    if-lez v0, :cond_3

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    move v1, v2

    .line 156
    :goto_3
    iget-wide v2, p0, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    .line 157
    .line 158
    iget-wide v4, p0, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    .line 159
    .line 160
    sget-object p0, Landroidx/compose/animation/core/EasingKt;->FastOutLinearInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Landroidx/compose/animation/core/CubicBezierEasing;->transform(F)F

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    invoke-static {v2, v3, v4, v5, p0}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    new-instance p0, Landroidx/compose/ui/graphics/Color;

    .line 171
    .line 172
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/GapPending;

    .line 177
    .line 178
    iget-object p0, p0, Landroidx/compose/runtime/GapPending;->keyInfos:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    new-instance v1, Landroidx/collection/MutableScatterMap;

    .line 185
    .line 186
    invoke-direct {v1, v0}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    const/4 v2, 0x0

    .line 194
    move v3, v2

    .line 195
    :goto_4
    if-ge v3, v0, :cond_a

    .line 196
    .line 197
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    check-cast v4, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 202
    .line 203
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    .line 204
    .line 205
    iget v6, v4, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->key:I

    .line 206
    .line 207
    if-eqz v5, :cond_4

    .line 208
    .line 209
    new-instance v5, Landroidx/compose/runtime/JoinedKey;

    .line 210
    .line 211
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    iget-object v7, v4, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    .line 216
    .line 217
    invoke-direct {v5, v6, v7}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    :goto_5
    invoke-virtual {v1, v5}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-gez v6, :cond_5

    .line 230
    .line 231
    const/4 v7, 0x1

    .line 232
    goto :goto_6

    .line 233
    :cond_5
    move v7, v2

    .line 234
    :goto_6
    if-eqz v7, :cond_6

    .line 235
    .line 236
    const/4 v8, 0x0

    .line 237
    goto :goto_7

    .line 238
    :cond_6
    iget-object v8, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 239
    .line 240
    aget-object v8, v8, v6

    .line 241
    .line 242
    :goto_7
    if-nez v8, :cond_7

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_7
    instance-of v9, v8, Landroidx/collection/MutableObjectList;

    .line 246
    .line 247
    if-eqz v9, :cond_8

    .line 248
    .line 249
    check-cast v8, Landroidx/collection/MutableObjectList;

    .line 250
    .line 251
    invoke-virtual {v8, v4}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    move-object v4, v8

    .line 255
    goto :goto_8

    .line 256
    :cond_8
    sget-object v9, Landroidx/collection/ObjectListKt;->EmptyArray:[Ljava/lang/Object;

    .line 257
    .line 258
    new-instance v9, Landroidx/collection/MutableObjectList;

    .line 259
    .line 260
    const/4 v10, 0x2

    .line 261
    invoke-direct {v9, v10}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9, v8}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v9, v4}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    move-object v4, v9

    .line 271
    :goto_8
    if-eqz v7, :cond_9

    .line 272
    .line 273
    not-int v6, v6

    .line 274
    iget-object v7, v1, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 275
    .line 276
    aput-object v5, v7, v6

    .line 277
    .line 278
    iget-object v5, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 279
    .line 280
    aput-object v4, v5, v6

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_9
    iget-object v5, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 284
    .line 285
    aput-object v4, v5, v6

    .line 286
    .line 287
    :goto_9
    add-int/lit8 v3, v3, 0x1

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_a
    new-instance p0, Landroidx/compose/runtime/collection/MultiValueMap;

    .line 291
    .line 292
    invoke-direct {p0, v1}, Landroidx/compose/runtime/collection/MultiValueMap;-><init>(Landroidx/collection/MutableScatterMap;)V

    .line 293
    .line 294
    .line 295
    return-object p0

    .line 296
    nop

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
