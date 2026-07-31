.class public abstract Lokio/internal/ZipFilesKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lokio/internal/ZipFilesKt;->HEX_DIGIT_CHARS:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final access$decodeHexDigit(C)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3a

    .line 6
    .line 7
    if-ge p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    const/16 v0, 0x61

    .line 12
    .line 13
    if-gt v0, p0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x67

    .line 16
    .line 17
    if-ge p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x57

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    const/16 v0, 0x41

    .line 23
    .line 24
    if-gt v0, p0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x47

    .line 27
    .line 28
    if-ge p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x37

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const-string v0, "Unexpected hex digit: "

    .line 34
    .line 35
    invoke-static {v0, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public static final buildIndex(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 22

    .line 1
    sget-object v0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "/"

    .line 4
    .line 5
    invoke-static {v0}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v1, Lokio/internal/ZipEntry;

    .line 10
    .line 11
    const/16 v18, 0x0

    .line 12
    .line 13
    const v19, 0xfffc

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    const-wide/16 v5, 0x0

    .line 19
    .line 20
    const-wide/16 v7, 0x0

    .line 21
    .line 22
    const-wide/16 v9, 0x0

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    const-wide/16 v12, 0x0

    .line 26
    .line 27
    const/4 v14, 0x0

    .line 28
    const/4 v15, 0x0

    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    const/16 v17, 0x0

    .line 32
    .line 33
    invoke-direct/range {v1 .. v19}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lkotlin/Pair;

    .line 37
    .line 38
    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    new-array v1, v1, [Lkotlin/Pair;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    aput-object v0, v1, v2

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Landroidx/viewpager/widget/ViewPager$1;

    .line 52
    .line 53
    const/16 v2, 0x19

    .line 54
    .line 55
    invoke-direct {v1, v2}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 56
    .line 57
    .line 58
    move-object/from16 v2, p0

    .line 59
    .line 60
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lokio/internal/ZipEntry;

    .line 79
    .line 80
    iget-object v3, v2, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 81
    .line 82
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lokio/internal/ZipEntry;

    .line 87
    .line 88
    if-nez v3, :cond_0

    .line 89
    .line 90
    :goto_1
    iget-object v2, v2, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 91
    .line 92
    invoke-virtual {v2}, Lokio/Path;->parent()Lokio/Path;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-nez v4, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lokio/internal/ZipEntry;

    .line 104
    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    iget-object v3, v3, Lokio/internal/ZipEntry;->children:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    new-instance v3, Lokio/internal/ZipEntry;

    .line 114
    .line 115
    const/16 v20, 0x0

    .line 116
    .line 117
    const v21, 0xfffc

    .line 118
    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    const/4 v6, 0x0

    .line 122
    const-wide/16 v7, 0x0

    .line 123
    .line 124
    const-wide/16 v9, 0x0

    .line 125
    .line 126
    const-wide/16 v11, 0x0

    .line 127
    .line 128
    const/4 v13, 0x0

    .line 129
    const-wide/16 v14, 0x0

    .line 130
    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    const/16 v17, 0x0

    .line 134
    .line 135
    const/16 v18, 0x0

    .line 136
    .line 137
    const/16 v19, 0x0

    .line 138
    .line 139
    invoke-direct/range {v3 .. v21}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    iget-object v4, v3, Lokio/internal/ZipEntry;->children:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-object v2, v3

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    return-object v0
.end method

.method public static final collectRecursively(Lkotlin/sequences/SequenceBuilderIterator;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    instance-of v4, v3, Lokio/internal/-FileSystem$collectRecursively$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lokio/internal/-FileSystem$collectRecursively$1;

    .line 15
    .line 16
    iget v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lokio/internal/-FileSystem$collectRecursively$1;

    .line 29
    .line 30
    invoke-direct {v4, v3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    iget v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    .line 36
    .line 37
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const/4 v8, 0x2

    .line 41
    const/4 v9, 0x1

    .line 42
    const/4 v10, 0x0

    .line 43
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    if-eqz v5, :cond_4

    .line 46
    .line 47
    if-eq v5, v9, :cond_3

    .line 48
    .line 49
    if-eq v5, v8, :cond_2

    .line 50
    .line 51
    if-ne v5, v7, :cond_1

    .line 52
    .line 53
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object v6

    .line 57
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v10

    .line 63
    :cond_2
    iget-boolean v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    .line 64
    .line 65
    iget-boolean v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    .line 66
    .line 67
    iget-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$4:Ljava/util/Iterator;

    .line 68
    .line 69
    iget-object v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Lokio/Path;

    .line 70
    .line 71
    iget-object v9, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Lkotlin/collections/ArrayDeque;

    .line 72
    .line 73
    iget-object v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Lokio/FileSystem;

    .line 74
    .line 75
    iget-object v13, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Lkotlin/sequences/SequenceBuilderIterator;

    .line 76
    .line 77
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    move v3, v1

    .line 81
    move v1, v0

    .line 82
    move v0, v3

    .line 83
    move-object v3, v5

    .line 84
    move-object v5, v9

    .line 85
    move-object v9, v12

    .line 86
    move-object v12, v13

    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto/16 :goto_7

    .line 91
    .line 92
    :cond_3
    iget-boolean v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    .line 93
    .line 94
    iget-boolean v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    .line 95
    .line 96
    iget-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Lokio/Path;

    .line 97
    .line 98
    iget-object v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Lkotlin/collections/ArrayDeque;

    .line 99
    .line 100
    iget-object v9, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Lokio/FileSystem;

    .line 101
    .line 102
    iget-object v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Lkotlin/sequences/SequenceBuilderIterator;

    .line 103
    .line 104
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    move-object/from16 v24, v2

    .line 108
    .line 109
    move v2, v0

    .line 110
    move v0, v1

    .line 111
    move-object/from16 v1, v24

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    if-nez v2, :cond_5

    .line 118
    .line 119
    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Lkotlin/sequences/SequenceBuilderIterator;

    .line 120
    .line 121
    move-object/from16 v3, p1

    .line 122
    .line 123
    iput-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Lokio/FileSystem;

    .line 124
    .line 125
    move-object/from16 v5, p2

    .line 126
    .line 127
    iput-object v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Lkotlin/collections/ArrayDeque;

    .line 128
    .line 129
    iput-object v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Lokio/Path;

    .line 130
    .line 131
    move/from16 v12, p4

    .line 132
    .line 133
    iput-boolean v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    .line 134
    .line 135
    iput-boolean v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    .line 136
    .line 137
    iput v9, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    .line 138
    .line 139
    invoke-virtual {v0, v1, v4}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 140
    .line 141
    .line 142
    return-object v11

    .line 143
    :cond_5
    move-object/from16 v3, p1

    .line 144
    .line 145
    move-object/from16 v5, p2

    .line 146
    .line 147
    move/from16 v12, p4

    .line 148
    .line 149
    move v9, v12

    .line 150
    move-object v12, v0

    .line 151
    move v0, v9

    .line 152
    move-object v9, v3

    .line 153
    :goto_1
    invoke-virtual {v9, v1}, Lokio/FileSystem;->listOrNull(Lokio/Path;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    if-nez v3, :cond_6

    .line 158
    .line 159
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 160
    .line 161
    :cond_6
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    if-nez v13, :cond_e

    .line 166
    .line 167
    const/4 v13, 0x0

    .line 168
    move-object v14, v1

    .line 169
    move v15, v13

    .line 170
    :goto_2
    if-eqz v0, :cond_8

    .line 171
    .line 172
    invoke-virtual {v5, v14}, Lkotlin/collections/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v16

    .line 176
    if-nez v16, :cond_7

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    const-string v0, "symlink cycle at "

    .line 180
    .line 181
    invoke-static {v1, v0}, Lkotlinx/io/Sink$-CC;->m(Lokio/Path;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-object v10

    .line 189
    :cond_8
    :goto_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, v14}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    iget-object v7, v7, Lokio/FileMetadata;->symlinkTarget:Lokio/Path;

    .line 197
    .line 198
    if-nez v7, :cond_9

    .line 199
    .line 200
    move-object v7, v10

    .line 201
    goto :goto_4

    .line 202
    :cond_9
    invoke-virtual {v14}, Lokio/Path;->parent()Lokio/Path;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {v10, v7, v13}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    :goto_4
    if-nez v7, :cond_d

    .line 214
    .line 215
    if-nez v0, :cond_a

    .line 216
    .line 217
    if-nez v15, :cond_e

    .line 218
    .line 219
    :cond_a
    invoke-virtual {v5, v14}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 226
    move-object/from16 v24, v3

    .line 227
    .line 228
    move-object v3, v1

    .line 229
    move v1, v2

    .line 230
    move-object/from16 v2, v24

    .line 231
    .line 232
    :goto_5
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-eqz v7, :cond_c

    .line 237
    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    move-object/from16 v20, v7

    .line 243
    .line 244
    check-cast v20, Lokio/Path;

    .line 245
    .line 246
    iput-object v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Lkotlin/sequences/SequenceBuilderIterator;

    .line 247
    .line 248
    iput-object v9, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Lokio/FileSystem;

    .line 249
    .line 250
    iput-object v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Lkotlin/collections/ArrayDeque;

    .line 251
    .line 252
    iput-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Lokio/Path;

    .line 253
    .line 254
    iput-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$4:Ljava/util/Iterator;

    .line 255
    .line 256
    iput-boolean v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    .line 257
    .line 258
    iput-boolean v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    .line 259
    .line 260
    iput v8, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 261
    .line 262
    move/from16 v21, v0

    .line 263
    .line 264
    move/from16 v22, v1

    .line 265
    .line 266
    move-object/from16 v23, v4

    .line 267
    .line 268
    move-object/from16 v19, v5

    .line 269
    .line 270
    move-object/from16 v18, v9

    .line 271
    .line 272
    move-object/from16 v17, v12

    .line 273
    .line 274
    :try_start_3
    invoke-static/range {v17 .. v23}, Lokio/internal/ZipFilesKt;->collectRecursively(Lkotlin/sequences/SequenceBuilderIterator;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 278
    if-ne v0, v11, :cond_b

    .line 279
    .line 280
    return-object v11

    .line 281
    :cond_b
    move-object/from16 v12, v17

    .line 282
    .line 283
    move-object/from16 v9, v18

    .line 284
    .line 285
    move-object/from16 v5, v19

    .line 286
    .line 287
    move/from16 v0, v21

    .line 288
    .line 289
    move/from16 v1, v22

    .line 290
    .line 291
    move-object/from16 v4, v23

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :catchall_1
    move-exception v0

    .line 295
    :goto_6
    move-object/from16 v9, v19

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :catchall_2
    move-exception v0

    .line 299
    move-object/from16 v19, v5

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_c
    move/from16 v22, v1

    .line 303
    .line 304
    move-object/from16 v23, v4

    .line 305
    .line 306
    move-object/from16 v19, v5

    .line 307
    .line 308
    move-object/from16 v17, v12

    .line 309
    .line 310
    invoke-virtual/range {v19 .. v19}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-object v1, v3

    .line 314
    move/from16 v2, v22

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :catchall_3
    move-exception v0

    .line 318
    move-object v9, v5

    .line 319
    :goto_7
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :cond_d
    add-int/lit8 v15, v15, 0x1

    .line 324
    .line 325
    move-object v14, v7

    .line 326
    const/4 v7, 0x3

    .line 327
    const/4 v10, 0x0

    .line 328
    goto/16 :goto_2

    .line 329
    .line 330
    :cond_e
    :goto_8
    if-eqz v2, :cond_f

    .line 331
    .line 332
    const/4 v0, 0x0

    .line 333
    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Lkotlin/sequences/SequenceBuilderIterator;

    .line 334
    .line 335
    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Lokio/FileSystem;

    .line 336
    .line 337
    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Lkotlin/collections/ArrayDeque;

    .line 338
    .line 339
    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Lokio/Path;

    .line 340
    .line 341
    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$4:Ljava/util/Iterator;

    .line 342
    .line 343
    const/4 v0, 0x3

    .line 344
    iput v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    .line 345
    .line 346
    invoke-virtual {v12, v1, v4}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 347
    .line 348
    .line 349
    return-object v11

    .line 350
    :cond_f
    return-object v6
.end method

.method public static final getHex(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/text/CharsKt__CharKt;->checkRadix(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v0, "0x"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static final openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "not a zip: size="

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    :try_start_0
    invoke-virtual {v3}, Lokio/FileHandle;->size()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    const-wide/16 v6, 0x16

    .line 16
    .line 17
    sub-long v6, v4, v6

    .line 18
    .line 19
    const-wide/16 v8, 0x0

    .line 20
    .line 21
    cmp-long v10, v6, v8

    .line 22
    .line 23
    if-ltz v10, :cond_e

    .line 24
    .line 25
    const-wide/32 v10, 0x10016

    .line 26
    .line 27
    .line 28
    sub-long/2addr v4, v10

    .line 29
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    :goto_0
    invoke-virtual {v3, v6, v7}, Lokio/FileHandle;->source(J)Lokio/FileHandle$FileHandleSource;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v10, Lokio/RealBufferedSource;

    .line 38
    .line 39
    invoke-direct {v10, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 40
    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v10}, Lokio/RealBufferedSource;->readIntLe()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const v11, 0x6054b50

    .line 47
    .line 48
    .line 49
    if-ne v0, v11, :cond_c

    .line 50
    .line 51
    invoke-virtual {v10}, Lokio/RealBufferedSource;->readShortLe()S

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const v4, 0xffff

    .line 56
    .line 57
    .line 58
    and-int/2addr v0, v4

    .line 59
    invoke-virtual {v10}, Lokio/RealBufferedSource;->readShortLe()S

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    and-int/2addr v5, v4

    .line 64
    invoke-virtual {v10}, Lokio/RealBufferedSource;->readShortLe()S

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    and-int/2addr v11, v4

    .line 69
    int-to-long v14, v11

    .line 70
    invoke-virtual {v10}, Lokio/RealBufferedSource;->readShortLe()S

    .line 71
    .line 72
    .line 73
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 74
    and-int/2addr v11, v4

    .line 75
    int-to-long v11, v11

    .line 76
    cmp-long v11, v14, v11

    .line 77
    .line 78
    const-string/jumbo v12, "unsupported zip: spanned"

    .line 79
    .line 80
    .line 81
    if-nez v11, :cond_b

    .line 82
    .line 83
    if-nez v0, :cond_b

    .line 84
    .line 85
    if-nez v5, :cond_b

    .line 86
    .line 87
    move v0, v4

    .line 88
    const-wide/16 v4, 0x4

    .line 89
    .line 90
    :try_start_2
    invoke-virtual {v10, v4, v5}, Lokio/RealBufferedSource;->skip(J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10}, Lokio/RealBufferedSource;->readIntLe()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    int-to-long v4, v4

    .line 98
    const-wide v16, 0xffffffffL

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    and-long v16, v4, v16

    .line 104
    .line 105
    invoke-virtual {v10}, Lokio/RealBufferedSource;->readShortLe()S

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    and-int v13, v4, v0

    .line 110
    .line 111
    move-object v0, v12

    .line 112
    new-instance v12, Lokio/internal/EocdRecord;

    .line 113
    .line 114
    invoke-direct/range {v12 .. v17}, Lokio/internal/EocdRecord;-><init>(IJJ)V

    .line 115
    .line 116
    .line 117
    int-to-long v4, v13

    .line 118
    invoke-virtual {v10, v4, v5}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 119
    .line 120
    .line 121
    :try_start_3
    invoke-virtual {v10}, Lokio/RealBufferedSource;->close()V

    .line 122
    .line 123
    .line 124
    const-wide/16 v4, 0x14

    .line 125
    .line 126
    sub-long/2addr v6, v4

    .line 127
    cmp-long v4, v6, v8

    .line 128
    .line 129
    if-lez v4, :cond_6

    .line 130
    .line 131
    invoke-virtual {v3, v6, v7}, Lokio/FileHandle;->source(J)Lokio/FileHandle$FileHandleSource;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    new-instance v6, Lokio/RealBufferedSource;

    .line 136
    .line 137
    invoke-direct {v6, v4}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 138
    .line 139
    .line 140
    :try_start_4
    invoke-virtual {v6}, Lokio/RealBufferedSource;->readIntLe()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    const v7, 0x7064b50

    .line 145
    .line 146
    .line 147
    if-ne v4, v7, :cond_4

    .line 148
    .line 149
    invoke-virtual {v6}, Lokio/RealBufferedSource;->readIntLe()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-virtual {v6}, Lokio/RealBufferedSource;->readLongLe()J

    .line 154
    .line 155
    .line 156
    move-result-wide v10

    .line 157
    invoke-virtual {v6}, Lokio/RealBufferedSource;->readIntLe()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    const/4 v14, 0x1

    .line 162
    if-ne v7, v14, :cond_3

    .line 163
    .line 164
    if-nez v4, :cond_3

    .line 165
    .line 166
    invoke-virtual {v3, v10, v11}, Lokio/FileHandle;->source(J)Lokio/FileHandle$FileHandleSource;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    new-instance v7, Lokio/RealBufferedSource;

    .line 171
    .line 172
    invoke-direct {v7, v4}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 173
    .line 174
    .line 175
    :try_start_5
    invoke-virtual {v7}, Lokio/RealBufferedSource;->readIntLe()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    const v10, 0x6064b50

    .line 180
    .line 181
    .line 182
    if-ne v4, v10, :cond_1

    .line 183
    .line 184
    const-wide/16 v10, 0xc

    .line 185
    .line 186
    invoke-virtual {v7, v10, v11}, Lokio/RealBufferedSource;->skip(J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Lokio/RealBufferedSource;->readIntLe()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    invoke-virtual {v7}, Lokio/RealBufferedSource;->readIntLe()I

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    invoke-virtual {v7}, Lokio/RealBufferedSource;->readLongLe()J

    .line 198
    .line 199
    .line 200
    move-result-wide v20

    .line 201
    invoke-virtual {v7}, Lokio/RealBufferedSource;->readLongLe()J

    .line 202
    .line 203
    .line 204
    move-result-wide v14

    .line 205
    cmp-long v11, v20, v14

    .line 206
    .line 207
    if-nez v11, :cond_0

    .line 208
    .line 209
    if-nez v4, :cond_0

    .line 210
    .line 211
    if-nez v10, :cond_0

    .line 212
    .line 213
    const-wide/16 v10, 0x8

    .line 214
    .line 215
    invoke-virtual {v7, v10, v11}, Lokio/RealBufferedSource;->skip(J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7}, Lokio/RealBufferedSource;->readLongLe()J

    .line 219
    .line 220
    .line 221
    move-result-wide v22

    .line 222
    new-instance v18, Lokio/internal/EocdRecord;

    .line 223
    .line 224
    move/from16 v19, v13

    .line 225
    .line 226
    invoke-direct/range {v18 .. v23}, Lokio/internal/EocdRecord;-><init>(IJJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 227
    .line 228
    .line 229
    :try_start_6
    invoke-virtual {v7}, Lokio/RealBufferedSource;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 230
    .line 231
    .line 232
    const/4 v0, 0x0

    .line 233
    goto :goto_1

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    :goto_1
    move-object/from16 v12, v18

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_0
    :try_start_7
    new-instance v4, Ljava/io/IOException;

    .line 239
    .line 240
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v4

    .line 244
    :goto_2
    move-object v4, v0

    .line 245
    goto :goto_3

    .line 246
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 247
    .line 248
    new-instance v11, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v13, "bad zip: expected "

    .line 254
    .line 255
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-static {v10}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v10, " but was "

    .line 266
    .line 267
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-static {v4}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 285
    :catchall_1
    move-exception v0

    .line 286
    goto :goto_2

    .line 287
    :goto_3
    :try_start_8
    invoke-virtual {v7}, Lokio/RealBufferedSource;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :catchall_2
    move-exception v0

    .line 292
    :try_start_9
    invoke-static {v4, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 293
    .line 294
    .line 295
    :goto_4
    move-object v0, v4

    .line 296
    :goto_5
    if-nez v0, :cond_2

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_2
    throw v0

    .line 300
    :catchall_3
    move-exception v0

    .line 301
    move-object v4, v0

    .line 302
    goto :goto_7

    .line 303
    :cond_3
    new-instance v4, Ljava/io/IOException;

    .line 304
    .line 305
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 309
    :cond_4
    :goto_6
    :try_start_a
    invoke-virtual {v6}, Lokio/RealBufferedSource;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 310
    .line 311
    .line 312
    const/4 v0, 0x0

    .line 313
    goto :goto_9

    .line 314
    :catchall_4
    move-exception v0

    .line 315
    goto :goto_9

    .line 316
    :goto_7
    :try_start_b
    invoke-virtual {v6}, Lokio/RealBufferedSource;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 317
    .line 318
    .line 319
    goto :goto_8

    .line 320
    :catchall_5
    move-exception v0

    .line 321
    :try_start_c
    invoke-static {v4, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 322
    .line 323
    .line 324
    :goto_8
    move-object v0, v4

    .line 325
    :goto_9
    if-nez v0, :cond_5

    .line 326
    .line 327
    goto :goto_a

    .line 328
    :cond_5
    throw v0

    .line 329
    :catchall_6
    move-exception v0

    .line 330
    move-object v1, v0

    .line 331
    goto/16 :goto_11

    .line 332
    .line 333
    :cond_6
    :goto_a
    new-instance v4, Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .line 337
    .line 338
    iget-wide v6, v12, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    .line 339
    .line 340
    invoke-virtual {v3, v6, v7}, Lokio/FileHandle;->source(J)Lokio/FileHandle$FileHandleSource;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    new-instance v6, Lokio/RealBufferedSource;

    .line 345
    .line 346
    invoke-direct {v6, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 347
    .line 348
    .line 349
    :try_start_d
    iget-wide v10, v12, Lokio/internal/EocdRecord;->entryCount:J

    .line 350
    .line 351
    :goto_b
    cmp-long v0, v8, v10

    .line 352
    .line 353
    if-gez v0, :cond_9

    .line 354
    .line 355
    invoke-static {v6}, Lokio/internal/ZipFilesKt;->readCentralDirectoryZipEntry(Lokio/RealBufferedSource;)Lokio/internal/ZipEntry;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    iget-wide v13, v0, Lokio/internal/ZipEntry;->offset:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 360
    .line 361
    move-object v15, v6

    .line 362
    :try_start_e
    iget-wide v5, v12, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    .line 363
    .line 364
    cmp-long v5, v13, v5

    .line 365
    .line 366
    if-gez v5, :cond_8

    .line 367
    .line 368
    move-object/from16 v13, p2

    .line 369
    .line 370
    invoke-interface {v13, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    check-cast v5, Ljava/lang/Boolean;

    .line 375
    .line 376
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    if-eqz v5, :cond_7

    .line 381
    .line 382
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    goto :goto_d

    .line 386
    :catchall_7
    move-exception v0

    .line 387
    :goto_c
    move-object v5, v0

    .line 388
    goto :goto_e

    .line 389
    :cond_7
    :goto_d
    const-wide/16 v5, 0x1

    .line 390
    .line 391
    add-long/2addr v8, v5

    .line 392
    move-object v6, v15

    .line 393
    goto :goto_b

    .line 394
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 395
    .line 396
    const-string v5, "bad zip: local file header offset >= central directory offset"

    .line 397
    .line 398
    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 402
    :catchall_8
    move-exception v0

    .line 403
    move-object v15, v6

    .line 404
    goto :goto_c

    .line 405
    :cond_9
    move-object v15, v6

    .line 406
    :try_start_f
    invoke-virtual {v15}, Lokio/RealBufferedSource;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 407
    .line 408
    .line 409
    const/4 v5, 0x0

    .line 410
    goto :goto_f

    .line 411
    :catchall_9
    move-exception v0

    .line 412
    move-object v5, v0

    .line 413
    goto :goto_f

    .line 414
    :goto_e
    :try_start_10
    invoke-virtual {v15}, Lokio/RealBufferedSource;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 415
    .line 416
    .line 417
    goto :goto_f

    .line 418
    :catchall_a
    move-exception v0

    .line 419
    :try_start_11
    invoke-static {v5, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 420
    .line 421
    .line 422
    :goto_f
    if-nez v5, :cond_a

    .line 423
    .line 424
    invoke-static {v4}, Lokio/internal/ZipFilesKt;->buildIndex(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    new-instance v4, Lokio/ZipFileSystem;

    .line 429
    .line 430
    invoke-direct {v4, v1, v2, v0}, Lokio/ZipFileSystem;-><init>(Lokio/Path;Lokio/FileSystem;Ljava/util/LinkedHashMap;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 431
    .line 432
    .line 433
    :try_start_12
    invoke-virtual {v3}, Lokio/FileHandle;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 434
    .line 435
    .line 436
    :catchall_b
    return-object v4

    .line 437
    :cond_a
    :try_start_13
    throw v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 438
    :catchall_c
    move-exception v0

    .line 439
    goto :goto_10

    .line 440
    :cond_b
    move-object v0, v12

    .line 441
    :try_start_14
    new-instance v1, Ljava/io/IOException;

    .line 442
    .line 443
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 447
    :cond_c
    move-object/from16 v13, p2

    .line 448
    .line 449
    :try_start_15
    invoke-virtual {v10}, Lokio/RealBufferedSource;->close()V

    .line 450
    .line 451
    .line 452
    const-wide/16 v10, -0x1

    .line 453
    .line 454
    add-long/2addr v6, v10

    .line 455
    cmp-long v0, v6, v4

    .line 456
    .line 457
    if-ltz v0, :cond_d

    .line 458
    .line 459
    goto/16 :goto_0

    .line 460
    .line 461
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 462
    .line 463
    const-string v1, "not a zip: end of central directory signature not found"

    .line 464
    .line 465
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v0

    .line 469
    :goto_10
    invoke-virtual {v10}, Lokio/RealBufferedSource;->close()V

    .line 470
    .line 471
    .line 472
    throw v0

    .line 473
    :cond_e
    new-instance v1, Ljava/io/IOException;

    .line 474
    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3}, Lokio/FileHandle;->size()J

    .line 481
    .line 482
    .line 483
    move-result-wide v4

    .line 484
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 495
    :goto_11
    if-eqz v3, :cond_f

    .line 496
    .line 497
    :try_start_16
    invoke-virtual {v3}, Lokio/FileHandle;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 498
    .line 499
    .line 500
    goto :goto_12

    .line 501
    :catchall_d
    move-exception v0

    .line 502
    invoke-static {v1, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 503
    .line 504
    .line 505
    :cond_f
    :goto_12
    throw v1
.end method

.method public static final readCentralDirectoryZipEntry(Lokio/RealBufferedSource;)Lokio/internal/ZipEntry;
    .locals 31

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readIntLe()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x2014b50

    .line 8
    .line 9
    .line 10
    if-ne v0, v1, :cond_7

    .line 11
    .line 12
    const-wide/16 v0, 0x4

    .line 13
    .line 14
    invoke-virtual {v5, v0, v1}, Lokio/RealBufferedSource;->skip(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readShortLe()S

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const v1, 0xffff

    .line 22
    .line 23
    .line 24
    and-int v2, v0, v1

    .line 25
    .line 26
    and-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    if-nez v0, :cond_6

    .line 30
    .line 31
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readShortLe()S

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    and-int v22, v0, v1

    .line 36
    .line 37
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readShortLe()S

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    and-int v26, v0, v1

    .line 42
    .line 43
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readShortLe()S

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    and-int v25, v0, v1

    .line 48
    .line 49
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readIntLe()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-long v2, v0

    .line 54
    const-wide v6, 0xffffffffL

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long v16, v2, v6

    .line 60
    .line 61
    move-wide v2, v6

    .line 62
    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    .line 63
    .line 64
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readIntLe()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    int-to-long v7, v0

    .line 72
    and-long/2addr v7, v2

    .line 73
    iput-wide v7, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 74
    .line 75
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readIntLe()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    int-to-long v7, v0

    .line 85
    and-long/2addr v7, v2

    .line 86
    iput-wide v7, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 87
    .line 88
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readShortLe()S

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    and-int/2addr v0, v1

    .line 93
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readShortLe()S

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    and-int v12, v7, v1

    .line 98
    .line 99
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readShortLe()S

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    and-int v13, v7, v1

    .line 104
    .line 105
    const-wide/16 v7, 0x8

    .line 106
    .line 107
    invoke-virtual {v5, v7, v8}, Lokio/RealBufferedSource;->skip(J)V

    .line 108
    .line 109
    .line 110
    move-wide v8, v7

    .line 111
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    .line 112
    .line 113
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Lokio/RealBufferedSource;->readIntLe()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    int-to-long v14, v1

    .line 121
    and-long/2addr v14, v2

    .line 122
    iput-wide v14, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 123
    .line 124
    int-to-long v0, v0

    .line 125
    invoke-virtual {v5, v0, v1}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    const/4 v15, 0x0

    .line 130
    invoke-static {v14, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_5

    .line 135
    .line 136
    iget-wide v0, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 137
    .line 138
    cmp-long v0, v0, v2

    .line 139
    .line 140
    const-wide/16 v18, 0x0

    .line 141
    .line 142
    if-nez v0, :cond_0

    .line 143
    .line 144
    move-wide v0, v8

    .line 145
    :goto_0
    move-wide/from16 v20, v2

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_0
    move-wide/from16 v0, v18

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :goto_1
    iget-wide v2, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 152
    .line 153
    cmp-long v2, v2, v20

    .line 154
    .line 155
    if-nez v2, :cond_1

    .line 156
    .line 157
    add-long/2addr v0, v8

    .line 158
    :cond_1
    iget-wide v2, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 159
    .line 160
    cmp-long v2, v2, v20

    .line 161
    .line 162
    if-nez v2, :cond_2

    .line 163
    .line 164
    add-long/2addr v0, v8

    .line 165
    :cond_2
    move-wide v2, v0

    .line 166
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 167
    .line 168
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 172
    .line 173
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 177
    .line 178
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 182
    .line 183
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 184
    .line 185
    .line 186
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda2;

    .line 187
    .line 188
    invoke-direct/range {v0 .. v10}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;JLkotlin/jvm/internal/Ref$LongRef;Lokio/RealBufferedSource;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v5, v12, v0}, Lokio/internal/ZipFilesKt;->readExtra(Lokio/RealBufferedSource;ILkotlin/jvm/functions/Function2;)V

    .line 192
    .line 193
    .line 194
    cmp-long v0, v2, v18

    .line 195
    .line 196
    if-lez v0, :cond_4

    .line 197
    .line 198
    iget-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 199
    .line 200
    if-eqz v0, :cond_3

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_3
    const-string v0, "bad zip: zip64 extra required but absent"

    .line 204
    .line 205
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-object v11

    .line 209
    :cond_4
    :goto_2
    int-to-long v0, v13

    .line 210
    invoke-virtual {v5, v0, v1}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    sget-object v1, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 215
    .line 216
    const-string v1, "/"

    .line 217
    .line 218
    invoke-static {v1}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v2, v14}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    invoke-static {v14, v1, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    new-instance v12, Lokio/internal/ZipEntry;

    .line 231
    .line 232
    iget-wide v1, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 233
    .line 234
    iget-wide v3, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 235
    .line 236
    iget-wide v5, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 237
    .line 238
    iget-object v7, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 239
    .line 240
    move-object/from16 v27, v7

    .line 241
    .line 242
    check-cast v27, Ljava/lang/Long;

    .line 243
    .line 244
    iget-object v7, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 245
    .line 246
    move-object/from16 v28, v7

    .line 247
    .line 248
    check-cast v28, Ljava/lang/Long;

    .line 249
    .line 250
    iget-object v7, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 251
    .line 252
    move-object/from16 v29, v7

    .line 253
    .line 254
    check-cast v29, Ljava/lang/Long;

    .line 255
    .line 256
    const v30, 0xe000

    .line 257
    .line 258
    .line 259
    move-object v15, v0

    .line 260
    move-wide/from16 v18, v1

    .line 261
    .line 262
    move-wide/from16 v20, v3

    .line 263
    .line 264
    move-wide/from16 v23, v5

    .line 265
    .line 266
    invoke-direct/range {v12 .. v30}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 267
    .line 268
    .line 269
    return-object v12

    .line 270
    :cond_5
    const-string v0, "bad zip: filename contains 0x00"

    .line 271
    .line 272
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return-object v11

    .line 276
    :cond_6
    invoke-static {v2}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const-string/jumbo v1, "unsupported zip: general purpose bit flag="

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-object v11

    .line 291
    :cond_7
    new-instance v2, Ljava/io/IOException;

    .line 292
    .line 293
    invoke-static {v1}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-static {v0}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string v4, "bad zip: expected "

    .line 304
    .line 305
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v1, " but was "

    .line 312
    .line 313
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw v2
.end method

.method public static final readExtra(Lokio/RealBufferedSource;ILkotlin/jvm/functions/Function2;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    :goto_0
    const-wide/16 v3, 0x0

    .line 5
    .line 6
    cmp-long p1, v1, v3

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    const-wide/16 v5, 0x4

    .line 11
    .line 12
    cmp-long p1, v1, v5

    .line 13
    .line 14
    if-ltz p1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Lokio/RealBufferedSource;->readShortLe()S

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const v7, 0xffff

    .line 21
    .line 22
    .line 23
    and-int/2addr p1, v7

    .line 24
    invoke-virtual {p0}, Lokio/RealBufferedSource;->readShortLe()S

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    int-to-long v7, v7

    .line 29
    const-wide/32 v9, 0xffff

    .line 30
    .line 31
    .line 32
    and-long/2addr v7, v9

    .line 33
    sub-long/2addr v1, v5

    .line 34
    cmp-long v5, v1, v7

    .line 35
    .line 36
    if-ltz v5, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v7, v8}, Lokio/RealBufferedSource;->require(J)V

    .line 39
    .line 40
    .line 41
    iget-wide v5, v0, Lokio/Buffer;->size:J

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-interface {p2, v9, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-wide v9, v0, Lokio/Buffer;->size:J

    .line 55
    .line 56
    add-long/2addr v9, v7

    .line 57
    sub-long/2addr v9, v5

    .line 58
    cmp-long v3, v9, v3

    .line 59
    .line 60
    if-ltz v3, :cond_1

    .line 61
    .line 62
    if-lez v3, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->skip(J)V

    .line 65
    .line 66
    .line 67
    :cond_0
    sub-long/2addr v1, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string/jumbo p0, "unsupported zip: too many bytes processed for "

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    const-string p0, "bad zip: truncated value in extra field"

    .line 81
    .line 82
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    const-string p0, "bad zip: truncated header in extra field"

    .line 87
    .line 88
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void
.end method

.method public static final readOrSkipLocalHeader(Lokio/RealBufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Lokio/RealBufferedSource;->readIntLe()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const v3, 0x4034b50

    .line 10
    .line 11
    .line 12
    if-ne v2, v3, :cond_2

    .line 13
    .line 14
    const-wide/16 v2, 0x2

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Lokio/RealBufferedSource;->skip(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lokio/RealBufferedSource;->readShortLe()S

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const v3, 0xffff

    .line 24
    .line 25
    .line 26
    and-int v4, v2, v3

    .line 27
    .line 28
    and-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const-wide/16 v6, 0x12

    .line 34
    .line 35
    invoke-virtual {v0, v6, v7}, Lokio/RealBufferedSource;->skip(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lokio/RealBufferedSource;->readShortLe()S

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-long v6, v2

    .line 43
    const-wide/32 v8, 0xffff

    .line 44
    .line 45
    .line 46
    and-long/2addr v6, v8

    .line 47
    invoke-virtual {v0}, Lokio/RealBufferedSource;->readShortLe()S

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    and-int/2addr v2, v3

    .line 52
    invoke-virtual {v0, v6, v7}, Lokio/RealBufferedSource;->skip(J)V

    .line 53
    .line 54
    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    int-to-long v1, v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->skip(J)V

    .line 59
    .line 60
    .line 61
    return-object v5

    .line 62
    :cond_0
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v6, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;

    .line 78
    .line 79
    invoke-direct {v6, v0, v3, v4, v5}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;-><init>(Lokio/RealBufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v2, v6}, Lokio/internal/ZipFilesKt;->readExtra(Lokio/RealBufferedSource;ILkotlin/jvm/functions/Function2;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 86
    .line 87
    move-object/from16 v24, v0

    .line 88
    .line 89
    check-cast v24, Ljava/lang/Integer;

    .line 90
    .line 91
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 92
    .line 93
    move-object/from16 v25, v0

    .line 94
    .line 95
    check-cast v25, Ljava/lang/Integer;

    .line 96
    .line 97
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 98
    .line 99
    move-object/from16 v26, v0

    .line 100
    .line 101
    check-cast v26, Ljava/lang/Integer;

    .line 102
    .line 103
    new-instance v6, Lokio/internal/ZipEntry;

    .line 104
    .line 105
    iget-object v7, v1, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 106
    .line 107
    iget-boolean v8, v1, Lokio/internal/ZipEntry;->isDirectory:Z

    .line 108
    .line 109
    iget-object v9, v1, Lokio/internal/ZipEntry;->comment:Ljava/lang/String;

    .line 110
    .line 111
    iget-wide v10, v1, Lokio/internal/ZipEntry;->crc:J

    .line 112
    .line 113
    iget-wide v12, v1, Lokio/internal/ZipEntry;->compressedSize:J

    .line 114
    .line 115
    iget-wide v14, v1, Lokio/internal/ZipEntry;->size:J

    .line 116
    .line 117
    iget v0, v1, Lokio/internal/ZipEntry;->compressionMethod:I

    .line 118
    .line 119
    iget-wide v2, v1, Lokio/internal/ZipEntry;->offset:J

    .line 120
    .line 121
    iget v4, v1, Lokio/internal/ZipEntry;->dosLastModifiedAtDate:I

    .line 122
    .line 123
    iget v5, v1, Lokio/internal/ZipEntry;->dosLastModifiedAtTime:I

    .line 124
    .line 125
    move/from16 v16, v0

    .line 126
    .line 127
    iget-object v0, v1, Lokio/internal/ZipEntry;->ntfsLastModifiedAtFiletime:Ljava/lang/Long;

    .line 128
    .line 129
    move-object/from16 v21, v0

    .line 130
    .line 131
    iget-object v0, v1, Lokio/internal/ZipEntry;->ntfsLastAccessedAtFiletime:Ljava/lang/Long;

    .line 132
    .line 133
    iget-object v1, v1, Lokio/internal/ZipEntry;->ntfsCreatedAtFiletime:Ljava/lang/Long;

    .line 134
    .line 135
    move-object/from16 v22, v0

    .line 136
    .line 137
    move-object/from16 v23, v1

    .line 138
    .line 139
    move-wide/from16 v17, v2

    .line 140
    .line 141
    move/from16 v19, v4

    .line 142
    .line 143
    move/from16 v20, v5

    .line 144
    .line 145
    invoke-direct/range {v6 .. v26}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 146
    .line 147
    .line 148
    return-object v6

    .line 149
    :cond_1
    invoke-static {v4}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string/jumbo v1, "unsupported zip: general purpose bit flag="

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v5

    .line 164
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 165
    .line 166
    invoke-static {v3}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v2}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v4, "bad zip: expected "

    .line 177
    .line 178
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, " but was "

    .line 185
    .line 186
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0
.end method

.method public static final segment(Lokio/SegmentedByteString;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 6
    .line 7
    array-length p0, p0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    add-int/lit8 p0, p0, -0x1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-gt v1, p0, :cond_1

    .line 15
    .line 16
    add-int v2, v1, p0

    .line 17
    .line 18
    ushr-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    aget v3, v0, v2

    .line 21
    .line 22
    if-ge v3, p1, :cond_0

    .line 23
    .line 24
    add-int/lit8 v1, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-le v3, p1, :cond_2

    .line 28
    .line 29
    add-int/lit8 p0, v2, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    neg-int p0, v1

    .line 33
    add-int/lit8 v2, p0, -0x1

    .line 34
    .line 35
    :cond_2
    if-ltz v2, :cond_3

    .line 36
    .line 37
    return v2

    .line 38
    :cond_3
    not-int p0, v2

    .line 39
    return p0
.end method
