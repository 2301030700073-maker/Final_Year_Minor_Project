.class public final Landroidx/paging/PageEvent$Insert;
.super Landroidx/paging/PageEvent;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final loadType:Landroidx/paging/LoadType;

.field public final mediatorLoadStates:Landroidx/paging/LoadStates;

.field public final pages:Ljava/util/List;

.field public final placeholdersAfter:I

.field public final placeholdersBefore:I

.field public final sourceLoadStates:Landroidx/paging/LoadStates;


# direct methods
.method public constructor <init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 15
    .line 16
    sget-object p0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 17
    .line 18
    const/4 p5, 0x0

    .line 19
    if-eq p1, p0, :cond_1

    .line 20
    .line 21
    if-ltz p3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "Prepend insert defining placeholdersBefore must be > 0, but was "

    .line 25
    .line 26
    invoke-static {p3, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    throw p5

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 35
    .line 36
    if-eq p1, p0, :cond_3

    .line 37
    .line 38
    if-ltz p4, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string p0, "Append insert defining placeholdersAfter must be > 0, but was "

    .line 42
    .line 43
    invoke-static {p4, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw p5

    .line 51
    :cond_3
    :goto_1
    sget-object p0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 52
    .line 53
    if-ne p1, p0, :cond_5

    .line 54
    .line 55
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const-string p0, "Cannot create a REFRESH Insert event with no TransformablePages as this could permanently stall pagination. Note that this check does not prevent empty LoadResults and is instead usually an indication of an internal error in Paging itself."

    .line 63
    .line 64
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p5

    .line 68
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/paging/PageEvent$Insert;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Landroidx/paging/PageEvent$Insert;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 19
    .line 20
    iget-object v1, p1, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget v0, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 30
    .line 31
    iget v1, p1, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget v0, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 37
    .line 38
    iget v1, p1, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 39
    .line 40
    if-eq v0, v1, :cond_5

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_5
    iget-object v0, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 44
    .line 45
    iget-object v1, p1, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/paging/LoadStates;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 55
    .line 56
    iget-object p1, p1, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 57
    .line 58
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_7

    .line 63
    .line 64
    :goto_0
    const/4 p0, 0x0

    .line 65
    return p0

    .line 66
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public final filter(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/paging/PageEvent$Insert$filter$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroidx/paging/PageEvent$Insert$filter$1;

    .line 11
    .line 12
    iget v3, v2, Landroidx/paging/PageEvent$Insert$filter$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Landroidx/paging/PageEvent$Insert$filter$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Landroidx/paging/PageEvent$Insert$filter$1;

    .line 25
    .line 26
    check-cast v1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 27
    .line 28
    invoke-direct {v2, v0, v1}, Landroidx/paging/PageEvent$Insert$filter$1;-><init>(Landroidx/paging/PageEvent$Insert;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v1, v2, Landroidx/paging/PageEvent$Insert$filter$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v4, v2, Landroidx/paging/PageEvent$Insert$filter$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v6, :cond_1

    .line 41
    .line 42
    iget v0, v2, Landroidx/paging/PageEvent$Insert$filter$1;->I$1:I

    .line 43
    .line 44
    iget v4, v2, Landroidx/paging/PageEvent$Insert$filter$1;->I$0:I

    .line 45
    .line 46
    iget-object v7, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$10:Ljava/util/Collection;

    .line 47
    .line 48
    check-cast v7, Ljava/util/Collection;

    .line 49
    .line 50
    iget-object v8, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$9:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v9, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$8:Ljava/util/Iterator;

    .line 53
    .line 54
    iget-object v10, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$7:Ljava/util/List;

    .line 55
    .line 56
    iget-object v11, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$6:Ljava/util/List;

    .line 57
    .line 58
    iget-object v12, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$5:Landroidx/paging/TransformablePage;

    .line 59
    .line 60
    iget-object v13, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$4:Ljava/util/Iterator;

    .line 61
    .line 62
    iget-object v14, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$3:Ljava/util/Collection;

    .line 63
    .line 64
    check-cast v14, Ljava/util/Collection;

    .line 65
    .line 66
    iget-object v15, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$2:Landroidx/paging/LoadType;

    .line 67
    .line 68
    const/16 p2, 0x0

    .line 69
    .line 70
    iget-object v5, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$1:Landroidx/paging/PageEvent$Insert;

    .line 71
    .line 72
    iget-object v6, v2, Landroidx/paging/PageEvent$Insert$filter$1;->L$0:Lkotlin/jvm/functions/Function2;

    .line 73
    .line 74
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    move/from16 v16, v4

    .line 78
    .line 79
    move-object v4, v2

    .line 80
    move-object v2, v14

    .line 81
    move/from16 v14, v16

    .line 82
    .line 83
    move-object/from16 v16, v9

    .line 84
    .line 85
    move-object v9, v8

    .line 86
    move-object v8, v11

    .line 87
    move-object v11, v10

    .line 88
    move-object/from16 v10, v16

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_1
    const/16 p2, 0x0

    .line 93
    .line 94
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 95
    .line 96
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object p2

    .line 100
    :cond_2
    const/16 p2, 0x0

    .line 101
    .line 102
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    .line 106
    .line 107
    const/16 v4, 0xa

    .line 108
    .line 109
    iget-object v5, v0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 110
    .line 111
    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iget-object v5, v0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 123
    .line 124
    move-object v7, v5

    .line 125
    move-object v5, v4

    .line 126
    move-object v4, v2

    .line 127
    move-object v2, v1

    .line 128
    move-object/from16 v1, p1

    .line 129
    .line 130
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_8

    .line 135
    .line 136
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Landroidx/paging/TransformablePage;

    .line 141
    .line 142
    new-instance v8, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v9, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object v10, v6, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    const/4 v11, 0x0

    .line 159
    move-object v12, v10

    .line 160
    move-object v10, v9

    .line 161
    move-object v9, v12

    .line 162
    move-object v12, v6

    .line 163
    move-object v6, v7

    .line 164
    move-object v7, v2

    .line 165
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    if-eqz v13, :cond_7

    .line 170
    .line 171
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    add-int/lit8 v14, v11, 0x1

    .line 176
    .line 177
    if-ltz v11, :cond_6

    .line 178
    .line 179
    iput-object v1, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$0:Lkotlin/jvm/functions/Function2;

    .line 180
    .line 181
    iput-object v0, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$1:Landroidx/paging/PageEvent$Insert;

    .line 182
    .line 183
    iput-object v6, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$2:Landroidx/paging/LoadType;

    .line 184
    .line 185
    move-object v15, v2

    .line 186
    check-cast v15, Ljava/util/Collection;

    .line 187
    .line 188
    iput-object v15, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$3:Ljava/util/Collection;

    .line 189
    .line 190
    iput-object v5, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$4:Ljava/util/Iterator;

    .line 191
    .line 192
    iput-object v12, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$5:Landroidx/paging/TransformablePage;

    .line 193
    .line 194
    iput-object v8, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$6:Ljava/util/List;

    .line 195
    .line 196
    iput-object v10, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$7:Ljava/util/List;

    .line 197
    .line 198
    iput-object v9, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$8:Ljava/util/Iterator;

    .line 199
    .line 200
    iput-object v13, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$9:Ljava/lang/Object;

    .line 201
    .line 202
    move-object v15, v7

    .line 203
    check-cast v15, Ljava/util/Collection;

    .line 204
    .line 205
    iput-object v15, v4, Landroidx/paging/PageEvent$Insert$filter$1;->L$10:Ljava/util/Collection;

    .line 206
    .line 207
    iput v14, v4, Landroidx/paging/PageEvent$Insert$filter$1;->I$0:I

    .line 208
    .line 209
    iput v11, v4, Landroidx/paging/PageEvent$Insert$filter$1;->I$1:I

    .line 210
    .line 211
    const/4 v15, 0x1

    .line 212
    iput v15, v4, Landroidx/paging/PageEvent$Insert$filter$1;->label:I

    .line 213
    .line 214
    invoke-interface {v1, v13, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    if-ne v15, v3, :cond_3

    .line 219
    .line 220
    return-object v3

    .line 221
    :cond_3
    move-object/from16 v16, v5

    .line 222
    .line 223
    move-object v5, v0

    .line 224
    move v0, v11

    .line 225
    move-object v11, v10

    .line 226
    move-object v10, v9

    .line 227
    move-object v9, v13

    .line 228
    move-object/from16 v13, v16

    .line 229
    .line 230
    move-object/from16 v16, v6

    .line 231
    .line 232
    move-object v6, v1

    .line 233
    move-object v1, v15

    .line 234
    move-object/from16 v15, v16

    .line 235
    .line 236
    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_5

    .line 243
    .line 244
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    iget-object v1, v12, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 248
    .line 249
    if-eqz v1, :cond_4

    .line 250
    .line 251
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Ljava/lang/Number;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    :cond_4
    new-instance v1, Ljava/lang/Integer;

    .line 262
    .line 263
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :cond_5
    move-object v0, v5

    .line 270
    move-object v1, v6

    .line 271
    move-object v9, v10

    .line 272
    move-object v10, v11

    .line 273
    move-object v5, v13

    .line 274
    move v11, v14

    .line 275
    move-object v6, v15

    .line 276
    goto :goto_2

    .line 277
    :cond_6
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 278
    .line 279
    .line 280
    throw p2

    .line 281
    :cond_7
    new-instance v9, Landroidx/paging/TransformablePage;

    .line 282
    .line 283
    iget-object v11, v12, Landroidx/paging/TransformablePage;->originalPageOffsets:[I

    .line 284
    .line 285
    iget v12, v12, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 286
    .line 287
    invoke-direct {v9, v11, v8, v12, v10}, Landroidx/paging/TransformablePage;-><init>([ILjava/util/List;ILjava/util/List;)V

    .line 288
    .line 289
    .line 290
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-object v7, v6

    .line 294
    goto/16 :goto_1

    .line 295
    .line 296
    :cond_8
    move-object v8, v2

    .line 297
    check-cast v8, Ljava/util/List;

    .line 298
    .line 299
    iget v9, v0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 300
    .line 301
    iget v10, v0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 302
    .line 303
    iget-object v11, v0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 304
    .line 305
    iget-object v12, v0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 306
    .line 307
    new-instance v6, Landroidx/paging/PageEvent$Insert;

    .line 308
    .line 309
    invoke-direct/range {v6 .. v12}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 310
    .line 311
    .line 312
    return-object v6
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 17
    .line 18
    add-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget v2, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 21
    .line 22
    add-int/2addr v0, v2

    .line 23
    mul-int/2addr v0, v1

    .line 24
    iget-object v2, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/paging/LoadStates;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr v2, v0

    .line 31
    mul-int/2addr v2, v1

    .line 32
    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 33
    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/paging/LoadStates;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    :goto_0
    add-int/2addr v2, p0

    .line 43
    return v2
.end method

.method public final map(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/paging/PageEvent$Insert$map$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroidx/paging/PageEvent$Insert$map$1;

    .line 11
    .line 12
    iget v3, v2, Landroidx/paging/PageEvent$Insert$map$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Landroidx/paging/PageEvent$Insert$map$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Landroidx/paging/PageEvent$Insert$map$1;

    .line 25
    .line 26
    check-cast v1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 27
    .line 28
    invoke-direct {v2, v0, v1}, Landroidx/paging/PageEvent$Insert$map$1;-><init>(Landroidx/paging/PageEvent$Insert;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v1, v2, Landroidx/paging/PageEvent$Insert$map$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v4, v2, Landroidx/paging/PageEvent$Insert$map$1;->label:I

    .line 36
    .line 37
    const/16 v5, 0xa

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v6, :cond_1

    .line 43
    .line 44
    iget-object v0, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$10:Ljava/util/Collection;

    .line 45
    .line 46
    check-cast v0, Ljava/util/Collection;

    .line 47
    .line 48
    iget-object v4, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$9:Ljava/util/Collection;

    .line 49
    .line 50
    check-cast v4, Ljava/util/Collection;

    .line 51
    .line 52
    iget-object v7, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$8:Ljava/util/Iterator;

    .line 53
    .line 54
    iget-object v8, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$7:Ljava/util/Collection;

    .line 55
    .line 56
    check-cast v8, Ljava/util/Collection;

    .line 57
    .line 58
    iget-object v9, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$6:[I

    .line 59
    .line 60
    iget-object v10, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$5:Landroidx/paging/TransformablePage;

    .line 61
    .line 62
    iget-object v11, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$4:Ljava/util/Iterator;

    .line 63
    .line 64
    iget-object v12, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$3:Ljava/util/Collection;

    .line 65
    .line 66
    check-cast v12, Ljava/util/Collection;

    .line 67
    .line 68
    iget-object v13, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$2:Landroidx/paging/LoadType;

    .line 69
    .line 70
    iget-object v14, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$1:Landroidx/paging/PageEvent$Insert;

    .line 71
    .line 72
    iget-object v15, v2, Landroidx/paging/PageEvent$Insert$map$1;->L$0:Lkotlin/jvm/functions/Function2;

    .line 73
    .line 74
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    move-object/from16 v16, v7

    .line 78
    .line 79
    move-object v7, v2

    .line 80
    move-object v2, v15

    .line 81
    move-object v15, v10

    .line 82
    move-object v10, v13

    .line 83
    move-object v13, v8

    .line 84
    move-object v8, v11

    .line 85
    move-object/from16 v11, v16

    .line 86
    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 90
    .line 91
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    return-object v0

    .line 96
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Ljava/util/ArrayList;

    .line 100
    .line 101
    iget-object v4, v0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 102
    .line 103
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    iget-object v7, v0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 115
    .line 116
    move-object v9, v7

    .line 117
    move-object v7, v4

    .line 118
    move-object v4, v2

    .line 119
    move-object v2, v1

    .line 120
    move-object/from16 v1, p1

    .line 121
    .line 122
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_5

    .line 127
    .line 128
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    check-cast v8, Landroidx/paging/TransformablePage;

    .line 133
    .line 134
    iget-object v10, v8, Landroidx/paging/TransformablePage;->originalPageOffsets:[I

    .line 135
    .line 136
    iget-object v11, v8, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 137
    .line 138
    new-instance v12, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-static {v11, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    move-object v13, v10

    .line 152
    move-object v10, v9

    .line 153
    move-object v9, v13

    .line 154
    move-object v13, v8

    .line 155
    move-object v8, v7

    .line 156
    move-object v7, v4

    .line 157
    move-object v4, v2

    .line 158
    move-object v2, v1

    .line 159
    move-object v1, v0

    .line 160
    move-object v0, v4

    .line 161
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    if-eqz v14, :cond_4

    .line 166
    .line 167
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    iput-object v2, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$0:Lkotlin/jvm/functions/Function2;

    .line 172
    .line 173
    iput-object v1, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$1:Landroidx/paging/PageEvent$Insert;

    .line 174
    .line 175
    iput-object v10, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$2:Landroidx/paging/LoadType;

    .line 176
    .line 177
    move-object v15, v4

    .line 178
    check-cast v15, Ljava/util/Collection;

    .line 179
    .line 180
    iput-object v15, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$3:Ljava/util/Collection;

    .line 181
    .line 182
    iput-object v8, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$4:Ljava/util/Iterator;

    .line 183
    .line 184
    iput-object v13, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$5:Landroidx/paging/TransformablePage;

    .line 185
    .line 186
    iput-object v9, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$6:[I

    .line 187
    .line 188
    move-object v15, v12

    .line 189
    check-cast v15, Ljava/util/Collection;

    .line 190
    .line 191
    iput-object v15, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$7:Ljava/util/Collection;

    .line 192
    .line 193
    iput-object v11, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$8:Ljava/util/Iterator;

    .line 194
    .line 195
    iput-object v15, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$9:Ljava/util/Collection;

    .line 196
    .line 197
    move-object v15, v0

    .line 198
    check-cast v15, Ljava/util/Collection;

    .line 199
    .line 200
    iput-object v15, v7, Landroidx/paging/PageEvent$Insert$map$1;->L$10:Ljava/util/Collection;

    .line 201
    .line 202
    iput v6, v7, Landroidx/paging/PageEvent$Insert$map$1;->label:I

    .line 203
    .line 204
    invoke-interface {v2, v14, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v14

    .line 208
    if-ne v14, v3, :cond_3

    .line 209
    .line 210
    return-object v3

    .line 211
    :cond_3
    move-object v15, v14

    .line 212
    move-object v14, v1

    .line 213
    move-object v1, v15

    .line 214
    move-object v15, v13

    .line 215
    move-object v13, v12

    .line 216
    move-object v12, v4

    .line 217
    move-object v4, v13

    .line 218
    :goto_3
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-object v4, v12

    .line 222
    move-object v12, v13

    .line 223
    move-object v1, v14

    .line 224
    move-object v13, v15

    .line 225
    goto :goto_2

    .line 226
    :cond_4
    check-cast v12, Ljava/util/List;

    .line 227
    .line 228
    iget v11, v13, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 229
    .line 230
    iget-object v13, v13, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 231
    .line 232
    new-instance v14, Landroidx/paging/TransformablePage;

    .line 233
    .line 234
    invoke-direct {v14, v9, v12, v11, v13}, Landroidx/paging/TransformablePage;-><init>([ILjava/util/List;ILjava/util/List;)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-object v0, v1

    .line 241
    move-object v1, v2

    .line 242
    move-object v2, v4

    .line 243
    move-object v4, v7

    .line 244
    move-object v7, v8

    .line 245
    move-object v9, v10

    .line 246
    goto :goto_1

    .line 247
    :cond_5
    move-object v10, v2

    .line 248
    check-cast v10, Ljava/util/List;

    .line 249
    .line 250
    iget v11, v0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 251
    .line 252
    iget v12, v0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 253
    .line 254
    iget-object v13, v0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 255
    .line 256
    iget-object v14, v0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 257
    .line 258
    new-instance v8, Landroidx/paging/PageEvent$Insert;

    .line 259
    .line 260
    invoke-direct/range {v8 .. v14}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 261
    .line 262
    .line 263
    return-object v8
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroidx/paging/TransformablePage;

    .line 19
    .line 20
    iget-object v3, v3, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    add-int/2addr v2, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "none"

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    iget v4, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 32
    .line 33
    if-eq v4, v3, :cond_1

    .line 34
    .line 35
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v4, v1

    .line 41
    :goto_1
    iget v5, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 42
    .line 43
    if-eq v5, v3, :cond_2

    .line 44
    .line 45
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v5, "PageEvent.Insert for "

    .line 52
    .line 53
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, ", with "

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, " items (\n                    |   first item: "

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroidx/paging/TransformablePage;

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    iget-object v2, v2, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    move-object v2, v5

    .line 93
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, "\n                    |   last item: "

    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroidx/paging/TransformablePage;

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    iget-object v0, v0, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, "\n                    |   placeholdersBefore: "

    .line 121
    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, "\n                    |   placeholdersAfter: "

    .line 129
    .line 130
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, "\n                    |   sourceLoadStates: "

    .line 137
    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 142
    .line 143
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, "\n                    "

    .line 147
    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 156
    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v0, "|   mediatorLoadStates: "

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const/16 p0, 0xa

    .line 174
    .line 175
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :cond_5
    const-string/jumbo p0, "|)"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0
.end method
