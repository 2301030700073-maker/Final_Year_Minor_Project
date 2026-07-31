.class public final synthetic Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;)V
    .locals 0

    .line 1
    const/16 p2, 0x9

    .line 2
    .line 3
    iput p2, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p2, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;
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
    .locals 8

    .line 1
    iget v0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const-string v0, "(this Map)"

    .line 11
    .line 12
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 15
    .line 16
    check-cast p1, Ljava/util/Map$Entry;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-ne v2, p0, :cond_0

    .line 31
    .line 32
    move-object v2, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v2, 0x3d

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, p0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_0
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Lkotlin/collections/AbstractCollection;

    .line 68
    .line 69
    if-ne p1, p0, :cond_2

    .line 70
    .line 71
    const-string p0, "(this Collection)"

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :goto_2
    return-object p0

    .line 79
    :pswitch_1
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 82
    .line 83
    check-cast p1, Lorg/schabi/newpipe/util/image/CoilHelper$loadScaledDownThumbnail$request$1;

    .line 84
    .line 85
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 86
    .line 87
    add-int/lit8 v1, v0, 0x1

    .line 88
    .line 89
    iput v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, ":COIL_PLAYER_THUMBNAIL_TRANSFORMATION_KEY"

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_2
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p0, Lokio/FileMetadata;

    .line 115
    .line 116
    check-cast p1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lokio/FileMetadata;->extras:Ljava/lang/Object;

    .line 122
    .line 123
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_3
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p0, Landroidx/navigationevent/compose/NavigationEventState;

    .line 129
    .line 130
    check-cast p1, Landroidx/navigationevent/NavigationEventTransitionState;

    .line 131
    .line 132
    iget-object p0, p0, Landroidx/navigationevent/compose/NavigationEventState;->transitionState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 138
    .line 139
    return-object p0

    .line 140
    :pswitch_4
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p0

    .line 150
    :pswitch_5
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p0, Landroidx/navigation3/runtime/NavEntry;

    .line 153
    .line 154
    check-cast p1, Landroidx/navigation3/runtime/NavEntry;

    .line 155
    .line 156
    iget-object p1, p1, Landroidx/navigation3/runtime/NavEntry;->contentKey:Ljava/lang/Object;

    .line 157
    .line 158
    iget-object p0, p0, Landroidx/navigation3/runtime/NavEntry;->contentKey:Ljava/lang/Object;

    .line 159
    .line 160
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :pswitch_6
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 172
    .line 173
    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateHolder;->removeState(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 177
    .line 178
    return-object p0

    .line 179
    :pswitch_7
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p0, Landroidx/navigation3/runtime/EntryProviderScope;

    .line 182
    .line 183
    iget-object v0, p0, Landroidx/navigation3/runtime/EntryProviderScope;->clazzProviders:Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    instance-of v1, v0, Landroidx/navigation3/runtime/EntryClassProvider;

    .line 198
    .line 199
    if-eqz v1, :cond_3

    .line 200
    .line 201
    check-cast v0, Landroidx/navigation3/runtime/EntryClassProvider;

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_3
    move-object v0, v3

    .line 205
    :goto_3
    iget-object p0, p0, Landroidx/navigation3/runtime/EntryProviderScope;->providers:Ljava/util/LinkedHashMap;

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    if-eqz v0, :cond_4

    .line 211
    .line 212
    new-instance v3, Landroidx/navigation3/runtime/NavEntry;

    .line 213
    .line 214
    iget-object p0, v0, Landroidx/navigation3/runtime/EntryClassProvider;->clazzContentKey:Lkotlin/jvm/functions/Function1;

    .line 215
    .line 216
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 221
    .line 222
    iget-object v0, v0, Landroidx/navigation3/runtime/EntryClassProvider;->content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 223
    .line 224
    invoke-direct {v3, p1, p0, v1, v0}, Landroidx/navigation3/runtime/NavEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_4
    const-string p0, "Unknown screen "

    .line 229
    .line 230
    invoke-static {p1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :goto_4
    return-object v3

    .line 238
    :pswitch_8
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 241
    .line 242
    invoke-virtual {p0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->getStateHolder()Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    iget-object v0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->entries:Landroidx/collection/MutableScatterMap;

    .line 247
    .line 248
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 253
    .line 254
    if-nez v0, :cond_5

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_5
    iput-boolean v4, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->isDisposable:Z

    .line 258
    .line 259
    iget v0, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->refCount:I

    .line 260
    .line 261
    if-gtz v0, :cond_6

    .line 262
    .line 263
    invoke-virtual {p0, p1}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->remove(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_6
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 267
    .line 268
    return-object p0

    .line 269
    :pswitch_9
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 272
    .line 273
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 274
    .line 275
    iget-object v2, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 276
    .line 277
    iget v3, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    .line 278
    .line 279
    iget v4, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontSynthesis:I

    .line 280
    .line 281
    iget-object v5, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->resourceLoaderCacheKey:Ljava/lang/Object;

    .line 282
    .line 283
    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 284
    .line 285
    const/4 v1, 0x0

    .line 286
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/TypefaceRequest;-><init>(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    .line 294
    .line 295
    return-object p0

    .line 296
    :pswitch_a
    invoke-direct {p0, p1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    return-object p0

    .line 301
    :pswitch_b
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 304
    .line 305
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->parentSaveableStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 306
    .line 307
    if-eqz p0, :cond_7

    .line 308
    .line 309
    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    :cond_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    return-object p0

    .line 318
    :pswitch_c
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast p0, Landroidx/cardview/widget/CardView$1;

    .line 321
    .line 322
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 323
    .line 324
    instance-of v0, p1, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 325
    .line 326
    if-eqz v0, :cond_9

    .line 327
    .line 328
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 329
    .line 330
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    if-eqz v0, :cond_8

    .line 335
    .line 336
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 346
    .line 347
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    :cond_8
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getPolicy()Landroidx/compose/runtime/NeverEqualPolicy;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 359
    .line 360
    invoke-direct {p1, v3, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 361
    .line 362
    .line 363
    move-object v3, p1

    .line 364
    goto :goto_6

    .line 365
    :cond_9
    const-string p0, "Failed requirement."

    .line 366
    .line 367
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :goto_6
    return-object v3

    .line 371
    :pswitch_d
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast p0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 374
    .line 375
    check-cast p1, Landroidx/compose/runtime/MovableContentStateReference;

    .line 376
    .line 377
    iget-object p1, p1, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 378
    .line 379
    invoke-static {p1}, Landroidx/sqlite/SQLite;->asGapAnchor(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 384
    .line 385
    .line 386
    move-result p0

    .line 387
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    return-object p0

    .line 392
    :pswitch_e
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    .line 395
    .line 396
    iget-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->subscribedChannel:Lkotlinx/coroutines/channels/SendChannel;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->subscribedChannel:Lkotlinx/coroutines/channels/SendChannel;

    .line 402
    .line 403
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-nez v0, :cond_a

    .line 408
    .line 409
    const-string v0, "Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions"

    .line 410
    .line 411
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    :cond_a
    iget-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingWatchSet:Landroidx/collection/MutableScatterSet;

    .line 415
    .line 416
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingSoleWatchedObject:Ljava/lang/Object;

    .line 417
    .line 418
    if-nez v0, :cond_c

    .line 419
    .line 420
    if-nez v1, :cond_b

    .line 421
    .line 422
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingSoleWatchedObject:Ljava/lang/Object;

    .line 423
    .line 424
    goto :goto_8

    .line 425
    :cond_b
    sget-object v0, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 426
    .line 427
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 428
    .line 429
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingWatchSet:Landroidx/collection/MutableScatterSet;

    .line 439
    .line 440
    iput-object v3, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingSoleWatchedObject:Ljava/lang/Object;

    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_c
    if-nez v1, :cond_d

    .line 444
    .line 445
    goto :goto_7

    .line 446
    :cond_d
    const-string/jumbo p0, "workingSoleWatchedObject must be null when workingWatchSet is non-null"

    .line 447
    .line 448
    .line 449
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :goto_7
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    :goto_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 456
    .line 457
    return-object p0

    .line 458
    :pswitch_f
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    .line 461
    .line 462
    check-cast p1, Ljava/lang/Throwable;

    .line 463
    .line 464
    const-string v0, "Recomposer effect job completed"

    .line 465
    .line 466
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 467
    .line 468
    invoke-direct {v1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 472
    .line 473
    .line 474
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 475
    .line 476
    monitor-enter v2

    .line 477
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    .line 478
    .line 479
    if-eqz v0, :cond_e

    .line 480
    .line 481
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 482
    .line 483
    sget-object v5, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 484
    .line 485
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v3, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 492
    .line 493
    .line 494
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 495
    .line 496
    new-instance v1, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 497
    .line 498
    const/16 v3, 0x19

    .line 499
    .line 500
    invoke-direct {v1, p0, p1, v3}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 501
    .line 502
    .line 503
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 504
    .line 505
    .line 506
    goto :goto_9

    .line 507
    :catchall_0
    move-exception v0

    .line 508
    move-object p0, v0

    .line 509
    goto :goto_a

    .line 510
    :cond_e
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 511
    .line 512
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 513
    .line 514
    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    .line 515
    .line 516
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    invoke-virtual {p0, v3, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    .line 521
    .line 522
    :goto_9
    monitor-exit v2

    .line 523
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 524
    .line 525
    return-object p0

    .line 526
    :goto_a
    monitor-exit v2

    .line 527
    throw p0

    .line 528
    :pswitch_10
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast p0, Landroidx/compose/runtime/CompositionImpl;

    .line 531
    .line 532
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->recordReadOf(Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 536
    .line 537
    return-object p0

    .line 538
    :pswitch_11
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    .line 541
    .line 542
    check-cast p1, Landroidx/compose/runtime/NestedMovableContent;

    .line 543
    .line 544
    iget-object p1, p1, Landroidx/compose/runtime/NestedMovableContent;->container:Landroidx/compose/runtime/MovableContentStateReference;

    .line 545
    .line 546
    if-eq p1, p0, :cond_f

    .line 547
    .line 548
    goto :goto_b

    .line 549
    :cond_f
    move v2, v4

    .line 550
    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 551
    .line 552
    .line 553
    move-result-object p0

    .line 554
    return-object p0

    .line 555
    :pswitch_12
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast p0, Landroidx/compose/runtime/State;

    .line 558
    .line 559
    move-object v0, p1

    .line 560
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 561
    .line 562
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object p0

    .line 566
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 567
    .line 568
    iget-wide v1, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 569
    .line 570
    sget-wide p0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 571
    .line 572
    invoke-static {v1, v2, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 573
    .line 574
    .line 575
    move-result p0

    .line 576
    if-nez p0, :cond_10

    .line 577
    .line 578
    const-wide/16 v3, 0x0

    .line 579
    .line 580
    const/16 v5, 0x7e

    .line 581
    .line 582
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/Owner$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJI)V

    .line 583
    .line 584
    .line 585
    :cond_10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 586
    .line 587
    return-object p0

    .line 588
    :pswitch_13
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 589
    .line 590
    check-cast p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    .line 591
    .line 592
    check-cast p1, Ljava/lang/Float;

    .line 593
    .line 594
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 595
    .line 596
    .line 597
    move-result p1

    .line 598
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 599
    .line 600
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-eqz v0, :cond_11

    .line 605
    .line 606
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    int-to-float v0, v0

    .line 611
    div-float v1, p1, v0

    .line 612
    .line 613
    :cond_11
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 614
    .line 615
    .line 616
    move-result p1

    .line 617
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    add-int/2addr v0, p1

    .line 622
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    .line 623
    .line 624
    .line 625
    move-result p1

    .line 626
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 627
    .line 628
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 629
    .line 630
    .line 631
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 632
    .line 633
    return-object p0

    .line 634
    :pswitch_14
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 637
    .line 638
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 639
    .line 640
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    check-cast p1, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;

    .line 644
    .line 645
    iget-object p1, p1, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 646
    .line 647
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast v0, Ljava/util/List;

    .line 650
    .line 651
    if-eqz v0, :cond_12

    .line 652
    .line 653
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    goto :goto_c

    .line 657
    :cond_12
    new-array v0, v4, [Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 658
    .line 659
    aput-object p1, v0, v2

    .line 660
    .line 661
    invoke-static {v0}, Lorg/jsoup/Jsoup;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    :goto_c
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 666
    .line 667
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->SkipSubtreeAndContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 668
    .line 669
    return-object p0

    .line 670
    :pswitch_15
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 673
    .line 674
    if-eqz p0, :cond_13

    .line 675
    .line 676
    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    :cond_13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 681
    .line 682
    .line 683
    move-result-object p0

    .line 684
    return-object p0

    .line 685
    :pswitch_16
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 686
    .line 687
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 688
    .line 689
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 690
    .line 691
    new-instance p1, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;

    .line 692
    .line 693
    const/4 v0, 0x4

    .line 694
    invoke-direct {p1, p0, v0}, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;I)V

    .line 695
    .line 696
    .line 697
    return-object p1

    .line 698
    :pswitch_17
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 699
    .line 700
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 701
    .line 702
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 703
    .line 704
    new-instance p1, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;

    .line 705
    .line 706
    const/4 v0, 0x2

    .line 707
    invoke-direct {p1, p0, v0}, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;I)V

    .line 708
    .line 709
    .line 710
    return-object p1

    .line 711
    :pswitch_18
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 714
    .line 715
    check-cast p1, Ljava/lang/Float;

    .line 716
    .line 717
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 718
    .line 719
    .line 720
    move-result p1

    .line 721
    neg-float p1, p1

    .line 722
    cmpg-float v0, p1, v1

    .line 723
    .line 724
    if-gez v0, :cond_14

    .line 725
    .line 726
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollForward()Z

    .line 727
    .line 728
    .line 729
    move-result v0

    .line 730
    if-eqz v0, :cond_1d

    .line 731
    .line 732
    :cond_14
    cmpl-float v0, p1, v1

    .line 733
    .line 734
    if-lez v0, :cond_15

    .line 735
    .line 736
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollBackward()Z

    .line 737
    .line 738
    .line 739
    move-result v0

    .line 740
    if-nez v0, :cond_15

    .line 741
    .line 742
    goto/16 :goto_10

    .line 743
    .line 744
    :cond_15
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 745
    .line 746
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 747
    .line 748
    .line 749
    move-result v0

    .line 750
    const/high16 v2, 0x3f000000    # 0.5f

    .line 751
    .line 752
    cmpg-float v0, v0, v2

    .line 753
    .line 754
    if-gtz v0, :cond_16

    .line 755
    .line 756
    goto :goto_d

    .line 757
    :cond_16
    const-string v0, "entered drag with non-zero pending scroll"

    .line 758
    .line 759
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    :goto_d
    iput-boolean v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->executeRequestsInHighPriorityMode:Z

    .line 763
    .line 764
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 765
    .line 766
    add-float/2addr v0, p1

    .line 767
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 768
    .line 769
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    cmpl-float v0, v0, v2

    .line 774
    .line 775
    if-lez v0, :cond_1b

    .line 776
    .line 777
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 778
    .line 779
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 780
    .line 781
    .line 782
    move-result v5

    .line 783
    iget-object v6, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 784
    .line 785
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v6

    .line 789
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 790
    .line 791
    iget-boolean v7, p0, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    .line 792
    .line 793
    xor-int/2addr v7, v4

    .line 794
    invoke-virtual {v6, v5, v7}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 795
    .line 796
    .line 797
    move-result-object v6

    .line 798
    if-eqz v6, :cond_17

    .line 799
    .line 800
    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyListState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 801
    .line 802
    if-eqz v7, :cond_17

    .line 803
    .line 804
    invoke-virtual {v7, v5, v4}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 805
    .line 806
    .line 807
    move-result-object v5

    .line 808
    if-eqz v5, :cond_18

    .line 809
    .line 810
    iput-object v5, p0, Landroidx/compose/foundation/lazy/LazyListState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 811
    .line 812
    :cond_17
    move-object v3, v6

    .line 813
    :cond_18
    if-eqz v3, :cond_19

    .line 814
    .line 815
    iget-boolean v5, p0, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    .line 816
    .line 817
    invoke-virtual {p0, v3, v5, v4}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    .line 818
    .line 819
    .line 820
    iget-object v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 821
    .line 822
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 823
    .line 824
    invoke-interface {v4, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 825
    .line 826
    .line 827
    iget v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 828
    .line 829
    sub-float/2addr v0, v4

    .line 830
    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/lazy/LazyListState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 831
    .line 832
    .line 833
    goto :goto_e

    .line 834
    :cond_19
    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    .line 835
    .line 836
    if-eqz v3, :cond_1a

    .line 837
    .line 838
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    .line 839
    .line 840
    .line 841
    :cond_1a
    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 842
    .line 843
    sub-float/2addr v0, v3

    .line 844
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 845
    .line 846
    .line 847
    move-result-object v3

    .line 848
    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/lazy/LazyListState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 849
    .line 850
    .line 851
    :cond_1b
    :goto_e
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 852
    .line 853
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    cmpg-float v0, v0, v2

    .line 858
    .line 859
    if-gtz v0, :cond_1c

    .line 860
    .line 861
    :goto_f
    move v1, p1

    .line 862
    goto :goto_10

    .line 863
    :cond_1c
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 864
    .line 865
    sub-float/2addr p1, v0

    .line 866
    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 867
    .line 868
    goto :goto_f

    .line 869
    :cond_1d
    :goto_10
    neg-float p0, v1

    .line 870
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 871
    .line 872
    .line 873
    move-result-object p0

    .line 874
    return-object p0

    .line 875
    :pswitch_19
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 876
    .line 877
    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 878
    .line 879
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 880
    .line 881
    iget-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 882
    .line 883
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 884
    .line 885
    :goto_11
    if-ge v2, p0, :cond_1e

    .line 886
    .line 887
    aget-object v0, p1, v2

    .line 888
    .line 889
    check-cast v0, Landroidx/compose/ui/layout/MeasureResult;

    .line 890
    .line 891
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    .line 892
    .line 893
    .line 894
    add-int/lit8 v2, v2, 0x1

    .line 895
    .line 896
    goto :goto_11

    .line 897
    :cond_1e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 898
    .line 899
    return-object p0

    .line 900
    :pswitch_1a
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 901
    .line 902
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 903
    .line 904
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 905
    .line 906
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 907
    .line 908
    iget-wide v1, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 909
    .line 910
    iget p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    .line 911
    .line 912
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 913
    .line 914
    .line 915
    move-result-wide p0

    .line 916
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 917
    .line 918
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 919
    .line 920
    .line 921
    return-object v0

    .line 922
    :pswitch_1b
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 925
    .line 926
    sget-object v0, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 927
    .line 928
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 929
    .line 930
    iget-object v1, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 931
    .line 932
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    iget-object v0, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    .line 937
    .line 938
    iget-object p1, p1, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 939
    .line 940
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object p1

    .line 944
    invoke-interface {p0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 948
    .line 949
    return-object p0

    .line 950
    :pswitch_1c
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 951
    .line 952
    check-cast p0, Lcoil3/disk/DiskLruCache;

    .line 953
    .line 954
    check-cast p1, Ljava/io/IOException;

    .line 955
    .line 956
    iput-boolean v4, p0, Lcoil3/disk/DiskLruCache;->hasJournalErrors:Z

    .line 957
    .line 958
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 959
    .line 960
    return-object p0

    .line 961
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
