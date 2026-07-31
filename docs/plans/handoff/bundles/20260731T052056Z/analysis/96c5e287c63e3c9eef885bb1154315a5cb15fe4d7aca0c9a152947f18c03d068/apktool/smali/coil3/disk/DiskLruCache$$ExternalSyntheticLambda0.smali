.class public final synthetic Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 9
    iput p1, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/preference/PreferenceManager;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    new-instance v3, Landroidx/collection/MutableObjectIntMap;

    .line 27
    .line 28
    invoke-direct {v3}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    .line 34
    .line 35
    invoke-virtual {v4, v1, v3}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0, p1, v2, v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0

    .line 47
    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lokhttp3/internal/cache/DiskLruCache;

    .line 12
    .line 13
    check-cast p1, Ljava/io/IOException;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object p1, Lokhttp3/internal/_UtilJvmKt;->UTC:Ljava/util/TimeZone;

    .line 19
    .line 20
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_0
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lkotlinx/serialization/internal/TripleSerializer;

    .line 28
    .line 29
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string v0, "first"

    .line 35
    .line 36
    iget-object v1, p0, Lkotlinx/serialization/internal/TripleSerializer;->aSerializer:Lkotlinx/serialization/KSerializer;

    .line 37
    .line 38
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, v0, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "second"

    .line 46
    .line 47
    iget-object v1, p0, Lkotlinx/serialization/internal/TripleSerializer;->bSerializer:Lkotlinx/serialization/KSerializer;

    .line 48
    .line 49
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v0, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "third"

    .line 57
    .line 58
    iget-object p0, p0, Lkotlinx/serialization/internal/TripleSerializer;->cSerializer:Lkotlinx/serialization/KSerializer;

    .line 59
    .line 60
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1, v0, p0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 65
    .line 66
    .line 67
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_1
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 73
    .line 74
    check-cast p1, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ": "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_2
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 116
    .line 117
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lkotlinx/serialization/internal/ObjectSerializer;->_annotations:Ljava/util/List;

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iput-object p0, p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    .line 128
    .line 129
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_3
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 135
    .line 136
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const-string/jumbo v0, "type"

    .line 142
    .line 143
    .line 144
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 145
    .line 146
    invoke-virtual {p1, v0, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 147
    .line 148
    .line 149
    const-string/jumbo v0, "value"

    .line 150
    .line 151
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v3, "kotlinx.serialization.Polymorphic<"

    .line 155
    .line 156
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v3, p0, Lkotlinx/serialization/PolymorphicSerializer;->baseClass:Lkotlin/reflect/KClass;

    .line 160
    .line 161
    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const/16 v3, 0x3e

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    sget-object v3, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    .line 178
    .line 179
    new-array v1, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 180
    .line 181
    invoke-static {v2, v3, v1}, Lkotlin/text/RegexKt;->buildSerialDescriptor$default(Ljava/lang/String;Landroidx/room/Room;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p1, v0, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lkotlinx/serialization/PolymorphicSerializer;->_annotations:Ljava/util/List;

    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    iput-object p0, p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    .line 194
    .line 195
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 196
    .line 197
    return-object p0

    .line 198
    :pswitch_4
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 201
    .line 202
    check-cast p1, Ljava/lang/Throwable;

    .line 203
    .line 204
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 208
    .line 209
    return-object p0

    .line 210
    :pswitch_5
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p0, Lkotlin/text/MatcherMatchResult$groups$1;

    .line 213
    .line 214
    check-cast p1, Ljava/lang/Integer;

    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/MatchGroup;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    return-object p0

    .line 225
    :pswitch_6
    const-string v0, "(this Map)"

    .line 226
    .line 227
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 230
    .line 231
    check-cast p1, Ljava/util/Map$Entry;

    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    if-ne v2, p0, :cond_0

    .line 243
    .line 244
    move-object v2, v0

    .line 245
    goto :goto_0

    .line 246
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const/16 v2, 0x3d

    .line 254
    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    if-ne p1, p0, :cond_1

    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    return-object p0

    .line 277
    :pswitch_7
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p0, Lkotlin/collections/AbstractCollection;

    .line 280
    .line 281
    if-ne p1, p0, :cond_2

    .line 282
    .line 283
    const-string p0, "(this Collection)"

    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    :goto_2
    return-object p0

    .line 291
    :pswitch_8
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 294
    .line 295
    check-cast p1, Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 296
    .line 297
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 298
    .line 299
    add-int/lit8 v1, v0, 0x1

    .line 300
    .line 301
    iput v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 302
    .line 303
    invoke-virtual {p1}, Lorg/wikipedia/views/imageservice/DimImageTransformation;->getCacheKey()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v0, ":"

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    return-object p0

    .line 328
    :pswitch_9
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast p0, Lcoil3/Image;

    .line 331
    .line 332
    check-cast p1, Lcoil3/request/ImageRequest;

    .line 333
    .line 334
    return-object p0

    .line 335
    :pswitch_a
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast p0, Lokio/FileMetadata;

    .line 338
    .line 339
    check-cast p1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 340
    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    iput-object p1, p0, Lokio/FileMetadata;->extras:Ljava/lang/Object;

    .line 345
    .line 346
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 347
    .line 348
    return-object p0

    .line 349
    :pswitch_b
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast p0, Lkotlin/ranges/IntRange;

    .line 352
    .line 353
    check-cast p1, Landroidx/paging/TransformablePage;

    .line 354
    .line 355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    iget-object p1, p1, Landroidx/paging/TransformablePage;->originalPageOffsets:[I

    .line 359
    .line 360
    array-length v0, p1

    .line 361
    move v3, v1

    .line 362
    :goto_3
    if-ge v3, v0, :cond_4

    .line 363
    .line 364
    aget v4, p1, v3

    .line 365
    .line 366
    iget v5, p0, Lkotlin/ranges/IntProgression;->first:I

    .line 367
    .line 368
    if-gt v5, v4, :cond_3

    .line 369
    .line 370
    iget v5, p0, Lkotlin/ranges/IntProgression;->last:I

    .line 371
    .line 372
    if-gt v4, v5, :cond_3

    .line 373
    .line 374
    move v1, v2

    .line 375
    goto :goto_4

    .line 376
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_4
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    return-object p0

    .line 384
    :pswitch_c
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast p0, Landroidx/paging/LoadStateAdapter;

    .line 387
    .line 388
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 389
    .line 390
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 394
    .line 395
    invoke-virtual {p0, p1}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 396
    .line 397
    .line 398
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 399
    .line 400
    return-object p0

    .line 401
    :pswitch_d
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast p0, Landroidx/paging/SimpleProducerScopeImpl;

    .line 404
    .line 405
    check-cast p1, Ljava/lang/Throwable;

    .line 406
    .line 407
    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 408
    .line 409
    invoke-virtual {p0, v3, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 410
    .line 411
    .line 412
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 413
    .line 414
    return-object p0

    .line 415
    :pswitch_e
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast p0, Lokhttp3/Request$Builder;

    .line 418
    .line 419
    check-cast p1, Ljava/lang/Throwable;

    .line 420
    .line 421
    iget-object p0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast p0, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 424
    .line 425
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 429
    .line 430
    return-object p0

    .line 431
    :pswitch_f
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer;

    .line 434
    .line 435
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 436
    .line 437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 441
    .line 442
    iget-object v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerRunnable:Landroidx/core/app/ActivityRecreator$1;

    .line 443
    .line 444
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    check-cast v0, Ljava/lang/Boolean;

    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-nez v0, :cond_5

    .line 455
    .line 456
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 457
    .line 458
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 459
    .line 460
    .line 461
    move-result-object p0

    .line 462
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_6

    .line 467
    .line 468
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 473
    .line 474
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    goto :goto_5

    .line 478
    :cond_5
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerHandler$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 479
    .line 480
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object p0

    .line 484
    check-cast p0, Landroid/os/Handler;

    .line 485
    .line 486
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    .line 488
    .line 489
    iget-object v0, v1, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 492
    .line 493
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    .line 498
    .line 499
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 500
    .line 501
    return-object p0

    .line 502
    :pswitch_10
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast p0, Landroidx/navigation/Navigator;

    .line 505
    .line 506
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 507
    .line 508
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    iget-object v0, p1, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 512
    .line 513
    iget-object v1, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 514
    .line 515
    if-eqz v1, :cond_7

    .line 516
    .line 517
    goto :goto_6

    .line 518
    :cond_7
    move-object v1, v3

    .line 519
    :goto_6
    if-nez v1, :cond_8

    .line 520
    .line 521
    goto :goto_7

    .line 522
    :cond_8
    invoke-virtual {v0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    .line 523
    .line 524
    .line 525
    invoke-virtual {p0, v1}, Landroidx/navigation/Navigator;->navigate(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    if-nez v2, :cond_9

    .line 530
    .line 531
    goto :goto_7

    .line 532
    :cond_9
    invoke-virtual {v2, v1}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-eqz v1, :cond_a

    .line 537
    .line 538
    move-object v3, p1

    .line 539
    goto :goto_7

    .line 540
    :cond_a
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    invoke-virtual {v0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    invoke-virtual {v2, p1}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    invoke-virtual {p0, v2, p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->createBackStackEntry(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    :goto_7
    return-object v3

    .line 557
    :pswitch_11
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast p0, Landroidx/compose/ui/text/input/EditCommand;

    .line 560
    .line 561
    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    .line 562
    .line 563
    if-ne p0, p1, :cond_b

    .line 564
    .line 565
    const-string p0, " > "

    .line 566
    .line 567
    goto :goto_8

    .line 568
    :cond_b
    const-string p0, "   "

    .line 569
    .line 570
    :goto_8
    const-string v0, ", newCursorPosition="

    .line 571
    .line 572
    instance-of v1, p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 573
    .line 574
    const/16 v2, 0x29

    .line 575
    .line 576
    if-eqz v1, :cond_c

    .line 577
    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    const-string v3, "CommitTextCommand(text.length="

    .line 581
    .line 582
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    check-cast p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 586
    .line 587
    iget-object v3, p1, Landroidx/compose/ui/text/input/CommitTextCommand;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 588
    .line 589
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 590
    .line 591
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    iget p1, p1, Landroidx/compose/ui/text/input/CommitTextCommand;->newCursorPosition:I

    .line 602
    .line 603
    :goto_9
    invoke-static {v1, p1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    goto/16 :goto_a

    .line 608
    .line 609
    :cond_c
    instance-of v1, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    .line 610
    .line 611
    if-eqz v1, :cond_d

    .line 612
    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    const-string v3, "SetComposingTextCommand(text.length="

    .line 616
    .line 617
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    check-cast p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    .line 621
    .line 622
    iget-object v3, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 623
    .line 624
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 625
    .line 626
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    iget p1, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;->newCursorPosition:I

    .line 637
    .line 638
    goto :goto_9

    .line 639
    :cond_d
    instance-of v0, p1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    .line 640
    .line 641
    if-eqz v0, :cond_e

    .line 642
    .line 643
    check-cast p1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    .line 644
    .line 645
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetComposingRegionCommand;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    goto :goto_a

    .line 650
    :cond_e
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 651
    .line 652
    if-eqz v0, :cond_f

    .line 653
    .line 654
    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 655
    .line 656
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    goto :goto_a

    .line 661
    :cond_f
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    .line 662
    .line 663
    if-eqz v0, :cond_10

    .line 664
    .line 665
    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    .line 666
    .line 667
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    goto :goto_a

    .line 672
    :cond_10
    instance-of v0, p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 673
    .line 674
    if-eqz v0, :cond_11

    .line 675
    .line 676
    check-cast p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 677
    .line 678
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetSelectionCommand;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object p1

    .line 682
    goto :goto_a

    .line 683
    :cond_11
    instance-of v0, p1, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    .line 684
    .line 685
    if-eqz v0, :cond_12

    .line 686
    .line 687
    const-string p1, "FinishComposingTextCommand()"

    .line 688
    .line 689
    goto :goto_a

    .line 690
    :cond_12
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteAllCommand;

    .line 691
    .line 692
    if-eqz v0, :cond_13

    .line 693
    .line 694
    const-string p1, "DeleteAllCommand()"

    .line 695
    .line 696
    goto :goto_a

    .line 697
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    move-result-object p1

    .line 701
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 702
    .line 703
    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    if-nez p1, :cond_14

    .line 712
    .line 713
    const-string/jumbo p1, "{anonymous EditCommand}"

    .line 714
    .line 715
    .line 716
    :cond_14
    const-string v0, "Unknown EditCommand: "

    .line 717
    .line 718
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object p1

    .line 722
    :goto_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object p0

    .line 726
    return-object p0

    .line 727
    :pswitch_12
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 730
    .line 731
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 732
    .line 733
    iget-object v2, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 734
    .line 735
    iget v3, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    .line 736
    .line 737
    iget v4, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontSynthesis:I

    .line 738
    .line 739
    iget-object v5, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->resourceLoaderCacheKey:Ljava/lang/Object;

    .line 740
    .line 741
    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 742
    .line 743
    const/4 v1, 0x0

    .line 744
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/TypefaceRequest;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 748
    .line 749
    .line 750
    move-result-object p0

    .line 751
    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    .line 752
    .line 753
    return-object p0

    .line 754
    :pswitch_13
    invoke-direct {p0, p1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object p0

    .line 758
    return-object p0

    .line 759
    :pswitch_14
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 760
    .line 761
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 762
    .line 763
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->parentSaveableStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 764
    .line 765
    if-eqz p0, :cond_15

    .line 766
    .line 767
    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v2

    .line 771
    :cond_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 772
    .line 773
    .line 774
    move-result-object p0

    .line 775
    return-object p0

    .line 776
    :pswitch_15
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    .line 779
    .line 780
    iget-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->subscribedChannel:Lkotlinx/coroutines/channels/SendChannel;

    .line 781
    .line 782
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->subscribedChannel:Lkotlinx/coroutines/channels/SendChannel;

    .line 786
    .line 787
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    if-nez v0, :cond_16

    .line 792
    .line 793
    const-string v0, "Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions"

    .line 794
    .line 795
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    :cond_16
    iget-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingWatchSet:Landroidx/collection/MutableScatterSet;

    .line 799
    .line 800
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingSoleWatchedObject:Ljava/lang/Object;

    .line 801
    .line 802
    if-nez v0, :cond_18

    .line 803
    .line 804
    if-nez v1, :cond_17

    .line 805
    .line 806
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingSoleWatchedObject:Ljava/lang/Object;

    .line 807
    .line 808
    goto :goto_c

    .line 809
    :cond_17
    sget-object v0, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 810
    .line 811
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 812
    .line 813
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingWatchSet:Landroidx/collection/MutableScatterSet;

    .line 823
    .line 824
    iput-object v3, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingSoleWatchedObject:Ljava/lang/Object;

    .line 825
    .line 826
    goto :goto_c

    .line 827
    :cond_18
    if-nez v1, :cond_19

    .line 828
    .line 829
    goto :goto_b

    .line 830
    :cond_19
    const-string/jumbo p0, "workingSoleWatchedObject must be null when workingWatchSet is non-null"

    .line 831
    .line 832
    .line 833
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    :goto_b
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    :goto_c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 840
    .line 841
    return-object p0

    .line 842
    :pswitch_16
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 843
    .line 844
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    .line 845
    .line 846
    check-cast p1, Ljava/lang/Throwable;

    .line 847
    .line 848
    const-string v0, "Recomposer effect job completed"

    .line 849
    .line 850
    invoke-static {v0, p1}, Lkotlinx/coroutines/AwaitKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 855
    .line 856
    monitor-enter v1

    .line 857
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    .line 858
    .line 859
    if-eqz v2, :cond_1a

    .line 860
    .line 861
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 862
    .line 863
    sget-object v5, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 864
    .line 865
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 866
    .line 867
    .line 868
    invoke-interface {v2, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 869
    .line 870
    .line 871
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 872
    .line 873
    new-instance v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 874
    .line 875
    const/16 v3, 0x15

    .line 876
    .line 877
    invoke-direct {v0, v3, p0, p1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 878
    .line 879
    .line 880
    invoke-interface {v2, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 881
    .line 882
    .line 883
    goto :goto_d

    .line 884
    :catchall_0
    move-exception v0

    .line 885
    move-object p0, v0

    .line 886
    goto :goto_e

    .line 887
    :cond_1a
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 888
    .line 889
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 890
    .line 891
    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    .line 892
    .line 893
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    .line 895
    .line 896
    :goto_d
    monitor-exit v1

    .line 897
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 898
    .line 899
    return-object p0

    .line 900
    :goto_e
    monitor-exit v1

    .line 901
    throw p0

    .line 902
    :pswitch_17
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 903
    .line 904
    check-cast p0, Landroidx/compose/runtime/CompositionImpl;

    .line 905
    .line 906
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->recordReadOf(Ljava/lang/Object;)V

    .line 907
    .line 908
    .line 909
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 910
    .line 911
    return-object p0

    .line 912
    :pswitch_18
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 913
    .line 914
    check-cast p0, Landroidx/compose/material3/internal/FloatProducer;

    .line 915
    .line 916
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 917
    .line 918
    invoke-interface {p0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    .line 919
    .line 920
    .line 921
    move-result v0

    .line 922
    const/4 v1, 0x0

    .line 923
    cmpl-float v0, v0, v1

    .line 924
    .line 925
    if-lez v0, :cond_1b

    .line 926
    .line 927
    new-instance v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 928
    .line 929
    invoke-interface {p0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    .line 930
    .line 931
    .line 932
    move-result p0

    .line 933
    new-instance v1, Lkotlin/ranges/ClosedFloatRange;

    .line 934
    .line 935
    const/high16 v3, 0x3f800000    # 1.0f

    .line 936
    .line 937
    invoke-direct {v1, v3}, Lkotlin/ranges/ClosedFloatRange;-><init>(F)V

    .line 938
    .line 939
    .line 940
    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;-><init>(FLkotlin/ranges/ClosedFloatRange;)V

    .line 941
    .line 942
    .line 943
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 944
    .line 945
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 946
    .line 947
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 948
    .line 949
    aget-object v1, v1, v2

    .line 950
    .line 951
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 952
    .line 953
    .line 954
    :cond_1b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 955
    .line 956
    return-object p0

    .line 957
    :pswitch_19
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 958
    .line 959
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 960
    .line 961
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 962
    .line 963
    new-instance p1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 964
    .line 965
    const/16 v0, 0xa

    .line 966
    .line 967
    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 968
    .line 969
    .line 970
    return-object p1

    .line 971
    :pswitch_1a
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 972
    .line 973
    check-cast p0, Landroidx/compose/ui/text/TextLinkStyles;

    .line 974
    .line 975
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 976
    .line 977
    iget-object v0, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 978
    .line 979
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 980
    .line 981
    instance-of v2, v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 982
    .line 983
    const/16 v3, 0xe

    .line 984
    .line 985
    if-eqz v2, :cond_1c

    .line 986
    .line 987
    move-object v2, v0

    .line 988
    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 989
    .line 990
    iget-object v4, v2, Landroidx/compose/ui/text/LinkAnnotation$Url;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 991
    .line 992
    if-nez v4, :cond_1c

    .line 993
    .line 994
    iget-object v0, v2, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 995
    .line 996
    iget-object v2, v2, Landroidx/compose/ui/text/LinkAnnotation$Url;->linkInteractionListener:Landroidx/compose/ui/text/LinkInteractionListener;

    .line 997
    .line 998
    new-instance v4, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 999
    .line 1000
    invoke-direct {v4, v0, p0, v2}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-static {p1, v4, v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/AnnotatedString$Annotation;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1004
    .line 1005
    .line 1006
    move-result-object p1

    .line 1007
    goto :goto_f

    .line 1008
    :cond_1c
    instance-of v2, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1009
    .line 1010
    if-eqz v2, :cond_1d

    .line 1011
    .line 1012
    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1013
    .line 1014
    iget-object v2, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 1015
    .line 1016
    if-nez v2, :cond_1d

    .line 1017
    .line 1018
    iget-object v2, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->tag:Ljava/lang/String;

    .line 1019
    .line 1020
    iget-object v0, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->linkInteractionListener:Landroidx/compose/ui/text/LinkInteractionListener;

    .line 1021
    .line 1022
    new-instance v4, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1023
    .line 1024
    invoke-direct {v4, v2, p0, v0}, Landroidx/compose/ui/text/LinkAnnotation$Clickable;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-static {p1, v4, v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/AnnotatedString$Annotation;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1028
    .line 1029
    .line 1030
    move-result-object p1

    .line 1031
    :cond_1d
    :goto_f
    return-object p1

    .line 1032
    :pswitch_1b
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1033
    .line 1034
    check-cast p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 1035
    .line 1036
    check-cast p1, Landroidx/compose/material3/FadeInFadeOutAnimationItem;

    .line 1037
    .line 1038
    iget-object p1, p1, Landroidx/compose/material3/FadeInFadeOutAnimationItem;->key:Ljava/lang/Object;

    .line 1039
    .line 1040
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result p0

    .line 1044
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1045
    .line 1046
    .line 1047
    move-result-object p0

    .line 1048
    return-object p0

    .line 1049
    :pswitch_1c
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1050
    .line 1051
    check-cast p0, Lcoil3/disk/DiskLruCache;

    .line 1052
    .line 1053
    check-cast p1, Ljava/io/IOException;

    .line 1054
    .line 1055
    iput-boolean v2, p0, Lcoil3/disk/DiskLruCache;->hasJournalErrors:Z

    .line 1056
    .line 1057
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1058
    .line 1059
    return-object p0

    .line 1060
    nop

    .line 1061
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
