.class public final Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $computeJavaType:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$r8$classId:I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$computeJavaType:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iput v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$r8$classId:I

    .line 4
    .line 5
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$computeJavaType:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0xa

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$computeJavaType:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v0, Lkotlin/Lazy;

    .line 23
    .line 24
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 29
    .line 30
    instance-of v1, v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    move-object v8, v0

    .line 35
    check-cast v8, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 36
    .line 37
    :cond_0
    if-eqz v8, :cond_1

    .line 38
    .line 39
    invoke-interface {v8}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    :cond_1
    check-cast v9, Lorg/wikipedia/commons/FilePageFragment;

    .line 46
    .line 47
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    return-object v0

    .line 52
    :pswitch_0
    check-cast v0, Lkotlin/Lazy;

    .line 53
    .line 54
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 59
    .line 60
    instance-of v1, v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    move-object v8, v0

    .line 65
    check-cast v8, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 66
    .line 67
    :cond_3
    if-eqz v8, :cond_4

    .line 68
    .line 69
    invoke-interface {v8}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    :cond_4
    check-cast v9, Lorg/wikipedia/categories/CategoryDialog;

    .line 76
    .line 77
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_5
    return-object v0

    .line 82
    :pswitch_1
    check-cast v0, Lkotlin/Lazy;

    .line 83
    .line 84
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 89
    .line 90
    instance-of v1, v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 91
    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    move-object v8, v0

    .line 95
    check-cast v8, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 96
    .line 97
    :cond_6
    if-eqz v8, :cond_7

    .line 98
    .line 99
    invoke-interface {v8}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-nez v0, :cond_8

    .line 104
    .line 105
    :cond_7
    check-cast v9, Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 106
    .line 107
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :cond_8
    return-object v0

    .line 112
    :pswitch_2
    new-instance v1, Lleakcanary/internal/ReferenceCleaner;

    .line 113
    .line 114
    check-cast v9, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;

    .line 115
    .line 116
    iget-object v2, v9, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 117
    .line 118
    iget-object v3, v9, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$mHField:Ljava/lang/reflect/Field;

    .line 119
    .line 120
    iget-object v4, v9, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$mServedViewField:Ljava/lang/reflect/Field;

    .line 121
    .line 122
    iget-object v5, v9, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;->$finishInputLockedMethod:Ljava/lang/reflect/Method;

    .line 123
    .line 124
    invoke-direct {v1, v2, v3, v4, v5}, Lleakcanary/internal/ReferenceCleaner;-><init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 125
    .line 126
    .line 127
    check-cast v0, Landroid/app/Activity;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 155
    .line 156
    .line 157
    return-object v7

    .line 158
    :pswitch_3
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    .line 159
    .line 160
    iget-object v1, v9, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;->_supertypes$delegate:Lkotlin/Lazy;

    .line 161
    .line 162
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Ljava/util/List;

    .line 167
    .line 168
    if-nez v1, :cond_9

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_9
    move-object v3, v1

    .line 172
    :goto_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    .line 173
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_a

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 198
    .line 199
    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_a
    return-object v1

    .line 208
    :pswitch_4
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 209
    .line 210
    iget-object v1, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 211
    .line 212
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 215
    .line 216
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    .line 219
    .line 220
    iget-object v2, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->thisAsProtoContainer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 221
    .line 222
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    .line 223
    .line 224
    invoke-interface {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadEnumEntryAnnotations(Landroidx/compose/runtime/AbstractApplier;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    return-object v0

    .line 233
    :pswitch_5
    check-cast v9, Lcom/google/gson/GsonBuilder;

    .line 234
    .line 235
    iget-object v1, v9, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v1, Lcom/hcaptcha/sdk/HCaptcha;

    .line 238
    .line 239
    iget-object v2, v1, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 242
    .line 243
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    .line 246
    .line 247
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 248
    .line 249
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 252
    .line 253
    invoke-interface {v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadTypeAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    return-object v0

    .line 258
    :pswitch_6
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    .line 259
    .line 260
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    .line 261
    .line 262
    iget-object v2, v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;->c:Lokhttp3/Request$Builder;

    .line 263
    .line 264
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPackage;

    .line 265
    .line 266
    invoke-direct {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;-><init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPackage;)V

    .line 267
    .line 268
    .line 269
    return-object v1

    .line 270
    :pswitch_7
    check-cast v9, Lokhttp3/Request$Builder;

    .line 271
    .line 272
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object v1, v9, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v1, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 283
    .line 284
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 287
    .line 288
    iget-object v2, v9, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v2, Lkotlin/Lazy;

    .line 291
    .line 292
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    .line 297
    .line 298
    invoke-virtual {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->extractAndMergeDefaultQualifiers(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    return-object v0

    .line 303
    :pswitch_8
    check-cast v9, Lokhttp3/Request$Builder;

    .line 304
    .line 305
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassOrPackageFragmentDescriptor;

    .line 306
    .line 307
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    iget-object v1, v9, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v1, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 320
    .line 321
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 324
    .line 325
    iget-object v2, v9, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v2, Lkotlin/Lazy;

    .line 328
    .line 329
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    .line 334
    .line 335
    invoke-virtual {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->extractAndMergeDefaultQualifiers(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    return-object v0

    .line 340
    :pswitch_9
    check-cast v9, Lokhttp3/Request$Builder;

    .line 341
    .line 342
    iget-object v1, v9, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v1, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 345
    .line 346
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 349
    .line 350
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 351
    .line 352
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationDescriptor;

    .line 353
    .line 354
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationDescriptor;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 355
    .line 356
    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    return-object v0

    .line 368
    :pswitch_a
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;

    .line 369
    .line 370
    move-object v13, v9

    .line 371
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;

    .line 372
    .line 373
    iget-object v10, v13, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 374
    .line 375
    iget-object v11, v13, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;->typeAliasDescriptor:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 376
    .line 377
    move-object v12, v0

    .line 378
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    .line 379
    .line 380
    invoke-virtual {v12}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 381
    .line 382
    .line 383
    move-result-object v14

    .line 384
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 385
    .line 386
    .line 387
    move-result-object v15

    .line 388
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    iget-object v0, v13, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;->typeAliasDescriptor:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 392
    .line 393
    move-object v2, v0

    .line 394
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;

    .line 395
    .line 396
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 397
    .line 398
    .line 399
    move-result-object v16

    .line 400
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    move-object v9, v1

    .line 404
    invoke-direct/range {v9 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 405
    .line 406
    .line 407
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptorImpl;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getClassDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    if-nez v2, :cond_b

    .line 417
    .line 418
    move-object v2, v8

    .line 419
    goto :goto_2

    .line 420
    :cond_b
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getExpandedType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    :goto_2
    if-nez v2, :cond_c

    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_c
    iget-object v3, v12, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 432
    .line 433
    if-eqz v3, :cond_d

    .line 434
    .line 435
    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    :cond_d
    move-object v3, v8

    .line 440
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getContextReceiverParameters()Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    new-instance v6, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .line 455
    .line 456
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    if-eqz v5, :cond_e

    .line 465
    .line 466
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 471
    .line 472
    invoke-virtual {v5, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    goto :goto_3

    .line 480
    :cond_e
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getDeclaredTypeParameters()Ljava/util/List;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    move-object v4, v6

    .line 485
    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    iget-object v7, v13, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->unsubstitutedReturnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 490
    .line 491
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 495
    .line 496
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->visibilityImpl:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 497
    .line 498
    const/4 v2, 0x0

    .line 499
    invoke-virtual/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)V

    .line 500
    .line 501
    .line 502
    move-object v8, v1

    .line 503
    :goto_4
    return-object v8

    .line 504
    :pswitch_b
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 505
    .line 506
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 507
    .line 508
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 509
    .line 510
    iget-object v2, v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Lokhttp3/Request$Builder;

    .line 511
    .line 512
    iget-object v3, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v3, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 515
    .line 516
    new-instance v10, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 517
    .line 518
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 519
    .line 520
    move-object v11, v4

    .line 521
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 522
    .line 523
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 524
    .line 525
    move-object v12, v4

    .line 526
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 527
    .line 528
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 529
    .line 530
    move-object v13, v4

    .line 531
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 532
    .line 533
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 534
    .line 535
    move-object v14, v4

    .line 536
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    .line 537
    .line 538
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->pageProgressBar:Ljava/lang/Object;

    .line 539
    .line 540
    move-object v15, v4

    .line 541
    check-cast v15, Lokio/ByteString$Companion;

    .line 542
    .line 543
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 544
    .line 545
    move-object/from16 v16, v4

    .line 546
    .line 547
    check-cast v16, Lokhttp3/ConnectionPool;

    .line 548
    .line 549
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbar:Ljava/lang/Object;

    .line 550
    .line 551
    move-object/from16 v17, v4

    .line 552
    .line 553
    check-cast v17, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    .line 554
    .line 555
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 556
    .line 557
    move-object/from16 v18, v4

    .line 558
    .line 559
    check-cast v18, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 560
    .line 561
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 562
    .line 563
    move-object/from16 v19, v4

    .line 564
    .line 565
    check-cast v19, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    .line 566
    .line 567
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 568
    .line 569
    move-object/from16 v20, v4

    .line 570
    .line 571
    check-cast v20, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 572
    .line 573
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 574
    .line 575
    move-object/from16 v21, v4

    .line 576
    .line 577
    check-cast v21, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;

    .line 578
    .line 579
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 580
    .line 581
    move-object/from16 v22, v4

    .line 582
    .line 583
    check-cast v22, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 584
    .line 585
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 586
    .line 587
    move-object/from16 v23, v4

    .line 588
    .line 589
    check-cast v23, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    .line 590
    .line 591
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 592
    .line 593
    move-object/from16 v24, v3

    .line 594
    .line 595
    check-cast v24, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    .line 596
    .line 597
    invoke-direct/range {v10 .. v24}, Lorg/wikipedia/databinding/ActivityPageBinding;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lokio/ByteString$Companion;Lokhttp3/ConnectionPool;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;)V

    .line 598
    .line 599
    .line 600
    new-instance v3, Lokhttp3/Request$Builder;

    .line 601
    .line 602
    iget-object v4, v2, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 603
    .line 604
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    .line 605
    .line 606
    iget-object v2, v2, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 607
    .line 608
    check-cast v2, Lkotlin/Lazy;

    .line 609
    .line 610
    invoke-direct {v3, v10, v4, v2}, Lokhttp3/Request$Builder;-><init>(Lorg/wikipedia/databinding/ActivityPageBinding;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    iget-object v4, v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->jClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 621
    .line 622
    invoke-direct {v1, v3, v2, v4, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;)V

    .line 623
    .line 624
    .line 625
    return-object v1

    .line 626
    :pswitch_c
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    .line 627
    .line 628
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->getSettings()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;->ownerModuleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 633
    .line 634
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;

    .line 635
    .line 636
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->CLONEABLE_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 640
    .line 641
    new-instance v3, Lcoil3/ImageLoader$Builder;

    .line 642
    .line 643
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 644
    .line 645
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->getSettings()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;

    .line 646
    .line 647
    .line 648
    move-result-object v4

    .line 649
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;->ownerModuleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 650
    .line 651
    invoke-direct {v3, v0, v4}, Lcoil3/ImageLoader$Builder;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V

    .line 652
    .line 653
    .line 654
    invoke-static {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->findNonGenericClassAcrossDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lcoil3/ImageLoader$Builder;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    return-object v0

    .line 663
    :pswitch_d
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    .line 664
    .line 665
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    .line 666
    .line 667
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInsModule()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 675
    .line 676
    new-instance v3, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 677
    .line 678
    const/16 v4, 0x1c

    .line 679
    .line 680
    invoke-direct {v3, v4, v9}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(ILjava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    invoke-direct {v1, v2, v0, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;)V

    .line 684
    .line 685
    .line 686
    return-object v1

    .line 687
    :pswitch_e
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl;

    .line 688
    .line 689
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;

    .line 690
    .line 691
    iget-object v1, v9, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->computeContainingDeclaration:Lkotlin/jvm/functions/Function1;

    .line 692
    .line 693
    iget-object v2, v9, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 694
    .line 695
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    move-object v11, v1

    .line 700
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 701
    .line 702
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->CLONEABLE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 703
    .line 704
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 705
    .line 706
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    .line 707
    .line 708
    iget-object v1, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 709
    .line 710
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 715
    .line 716
    .line 717
    move-result-object v15

    .line 718
    move-object/from16 v16, v0

    .line 719
    .line 720
    check-cast v16, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 721
    .line 722
    invoke-direct/range {v10 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    .line 723
    .line 724
    .line 725
    move-object/from16 v0, v16

    .line 726
    .line 727
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/CloneableClassScope;

    .line 728
    .line 729
    invoke-direct {v1, v0, v10}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;)V

    .line 730
    .line 731
    .line 732
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 733
    .line 734
    invoke-virtual {v10, v1, v0, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Ljava/util/Set;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;)V

    .line 735
    .line 736
    .line 737
    return-object v10

    .line 738
    :pswitch_f
    check-cast v9, Ljava/lang/Class;

    .line 739
    .line 740
    check-cast v0, Ljava/util/Map;

    .line 741
    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    .line 746
    .line 747
    const/16 v1, 0x40

    .line 748
    .line 749
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    move-object v1, v0

    .line 764
    check-cast v1, Ljava/lang/Iterable;

    .line 765
    .line 766
    sget-object v6, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$createAnnotationInstance$toString$2$1$1;->INSTANCE:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$createAnnotationInstance$toString$2$1$1;

    .line 767
    .line 768
    const/16 v7, 0x30

    .line 769
    .line 770
    const-string v3, ", "

    .line 771
    .line 772
    const-string v4, "("

    .line 773
    .line 774
    const-string v5, ")"

    .line 775
    .line 776
    invoke-static/range {v1 .. v7}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    return-object v0

    .line 784
    :pswitch_10
    check-cast v9, Lkotlin/reflect/jvm/internal/KFunctionImpl;

    .line 785
    .line 786
    iget-object v1, v9, Lkotlin/reflect/jvm/internal/KFunctionImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    .line 787
    .line 788
    check-cast v0, Ljava/lang/String;

    .line 789
    .line 790
    iget-object v2, v9, Lkotlin/reflect/jvm/internal/KFunctionImpl;->signature:Ljava/lang/String;

    .line 791
    .line 792
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    .line 797
    .line 798
    const-string v3, "<init>"

    .line 799
    .line 800
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v3

    .line 804
    if-eqz v3, :cond_f

    .line 805
    .line 806
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getConstructorDescriptors()Ljava/util/Collection;

    .line 807
    .line 808
    .line 809
    move-result-object v3

    .line 810
    check-cast v3, Ljava/lang/Iterable;

    .line 811
    .line 812
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    goto :goto_5

    .line 817
    :cond_f
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 818
    .line 819
    .line 820
    move-result-object v3

    .line 821
    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    :goto_5
    move-object v7, v3

    .line 826
    check-cast v7, Ljava/lang/Iterable;

    .line 827
    .line 828
    new-instance v3, Ljava/util/ArrayList;

    .line 829
    .line 830
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .line 832
    .line 833
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    :cond_10
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 838
    .line 839
    .line 840
    move-result v5

    .line 841
    if-eqz v5, :cond_11

    .line 842
    .line 843
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    move-object v8, v5

    .line 848
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 849
    .line 850
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/KPropertyImplKt;

    .line 851
    .line 852
    .line 853
    move-result-object v8

    .line 854
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->asString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v8

    .line 858
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 859
    .line 860
    .line 861
    move-result v8

    .line 862
    if-eqz v8, :cond_10

    .line 863
    .line 864
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    goto :goto_6

    .line 868
    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 869
    .line 870
    .line 871
    move-result v4

    .line 872
    if-eq v4, v6, :cond_13

    .line 873
    .line 874
    sget-object v11, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$4:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    .line 875
    .line 876
    const/16 v12, 0x1e

    .line 877
    .line 878
    const-string v8, "\n"

    .line 879
    .line 880
    const/4 v9, 0x0

    .line 881
    const/4 v10, 0x0

    .line 882
    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    new-instance v4, Lkotlinx/coroutines/CoroutinesInternalError;

    .line 887
    .line 888
    const-string v5, "\' (JVM signature: "

    .line 889
    .line 890
    const-string v6, ") not resolved in "

    .line 891
    .line 892
    const-string v7, "Function \'"

    .line 893
    .line 894
    invoke-static {v7, v0, v5, v2, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    const/16 v1, 0x3a

    .line 902
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 907
    .line 908
    .line 909
    move-result v1

    .line 910
    if-nez v1, :cond_12

    .line 911
    .line 912
    const-string v1, " no members found"

    .line 913
    .line 914
    goto :goto_7

    .line 915
    :cond_12
    const-string v1, "\n"

    .line 916
    .line 917
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v1

    .line 921
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    invoke-direct {v4, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    throw v4

    .line 932
    :cond_13
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 937
    .line 938
    return-object v0

    .line 939
    :pswitch_11
    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 940
    .line 941
    new-instance v1, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 942
    .line 943
    check-cast v0, Landroidx/glance/session/SessionWorker$doWork$2$1;

    .line 944
    .line 945
    const/16 v3, 0x11

    .line 946
    .line 947
    invoke-direct {v1, v3, v0, v8}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 948
    .line 949
    .line 950
    invoke-static {v9, v8, v8, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 951
    .line 952
    .line 953
    return-object v7

    .line 954
    :pswitch_12
    check-cast v9, Landroid/content/Context;

    .line 955
    .line 956
    check-cast v0, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    .line 957
    .line 958
    iget-object v0, v0, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;->name:Ljava/lang/String;

    .line 959
    .line 960
    invoke-static {v9, v0}, Lkotlin/ResultKt;->preferencesDataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    return-object v0

    .line 965
    :pswitch_13
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 966
    .line 967
    check-cast v0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;

    .line 968
    .line 969
    sget-object v1, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 970
    .line 971
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 976
    .line 977
    return-object v7

    .line 978
    :pswitch_14
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 979
    .line 980
    if-eqz v0, :cond_15

    .line 981
    .line 982
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 987
    .line 988
    if-nez v0, :cond_14

    .line 989
    .line 990
    goto :goto_8

    .line 991
    :cond_14
    move-object v8, v0

    .line 992
    goto :goto_a

    .line 993
    :cond_15
    :goto_8
    check-cast v9, Landroidx/compose/ui/node/NodeCoordinator;

    .line 994
    .line 995
    invoke-virtual {v9}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 1000
    .line 1001
    if-eqz v0, :cond_16

    .line 1002
    .line 1003
    goto :goto_9

    .line 1004
    :cond_16
    move-object v9, v8

    .line 1005
    :goto_9
    if-eqz v9, :cond_17

    .line 1006
    .line 1007
    iget-wide v0, v9, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 1008
    .line 1009
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->toSize-ozmzZPI(J)J

    .line 1010
    .line 1011
    .line 1012
    move-result-wide v0

    .line 1013
    const-wide/16 v2, 0x0

    .line 1014
    .line 1015
    invoke-static {v2, v3, v0, v1}, Lcoil3/util/UtilsKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v8

    .line 1019
    :cond_17
    :goto_a
    return-object v8

    .line 1020
    :pswitch_15
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 1021
    .line 1022
    check-cast v9, Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 1023
    .line 1024
    iget-object v1, v9, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1025
    .line 1026
    iget-object v2, v9, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1027
    .line 1028
    iget-object v3, v9, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    .line 1029
    .line 1030
    iget-object v4, v9, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    .line 1031
    .line 1032
    const/4 v5, 0x0

    .line 1033
    if-eqz v1, :cond_18

    .line 1034
    .line 1035
    if-eqz v3, :cond_18

    .line 1036
    .line 1037
    iget-object v6, v1, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/functions/Function0;

    .line 1038
    .line 1039
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v6

    .line 1043
    check-cast v6, Ljava/lang/Number;

    .line 1044
    .line 1045
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 1046
    .line 1047
    .line 1048
    move-result v6

    .line 1049
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 1050
    .line 1051
    .line 1052
    move-result v3

    .line 1053
    sub-float/2addr v6, v3

    .line 1054
    goto :goto_b

    .line 1055
    :cond_18
    move v6, v5

    .line 1056
    :goto_b
    if-eqz v2, :cond_19

    .line 1057
    .line 1058
    if-eqz v4, :cond_19

    .line 1059
    .line 1060
    iget-object v3, v2, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/functions/Function0;

    .line 1061
    .line 1062
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v3

    .line 1066
    check-cast v3, Ljava/lang/Number;

    .line 1067
    .line 1068
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 1069
    .line 1070
    .line 1071
    move-result v3

    .line 1072
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 1073
    .line 1074
    .line 1075
    move-result v4

    .line 1076
    sub-float/2addr v3, v4

    .line 1077
    goto :goto_c

    .line 1078
    :cond_19
    move v3, v5

    .line 1079
    :goto_c
    cmpg-float v4, v6, v5

    .line 1080
    .line 1081
    if-nez v4, :cond_1a

    .line 1082
    .line 1083
    cmpg-float v3, v3, v5

    .line 1084
    .line 1085
    if-nez v3, :cond_1a

    .line 1086
    .line 1087
    goto :goto_d

    .line 1088
    :cond_1a
    iget v3, v9, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    .line 1089
    .line 1090
    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    .line 1091
    .line 1092
    .line 1093
    move-result v3

    .line 1094
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v4

    .line 1098
    iget v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 1099
    .line 1100
    invoke-virtual {v4, v5}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v4

    .line 1104
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 1105
    .line 1106
    if-eqz v4, :cond_1b

    .line 1107
    .line 1108
    :try_start_0
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1109
    .line 1110
    if-eqz v5, :cond_1b

    .line 1111
    .line 1112
    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v4

    .line 1116
    invoke-virtual {v5, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    .line 1118
    .line 1119
    :catch_0
    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v4

    .line 1123
    iget v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 1124
    .line 1125
    invoke-virtual {v4, v5}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v4

    .line 1129
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 1130
    .line 1131
    if-eqz v4, :cond_1c

    .line 1132
    .line 1133
    :try_start_1
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1134
    .line 1135
    if-eqz v5, :cond_1c

    .line 1136
    .line 1137
    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v4

    .line 1141
    invoke-virtual {v5, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1142
    .line 1143
    .line 1144
    :catch_1
    :cond_1c
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1145
    .line 1146
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v4

    .line 1153
    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v4

    .line 1157
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 1158
    .line 1159
    if-eqz v4, :cond_1f

    .line 1160
    .line 1161
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1162
    .line 1163
    if-eqz v4, :cond_1f

    .line 1164
    .line 1165
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 1166
    .line 1167
    if-eqz v4, :cond_1f

    .line 1168
    .line 1169
    if-eqz v1, :cond_1d

    .line 1170
    .line 1171
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    .line 1172
    .line 1173
    invoke-virtual {v5, v3, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 1174
    .line 1175
    .line 1176
    :cond_1d
    if-eqz v2, :cond_1e

    .line 1177
    .line 1178
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    .line 1179
    .line 1180
    invoke-virtual {v5, v3, v2}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 1181
    .line 1182
    .line 1183
    :cond_1e
    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 1184
    .line 1185
    .line 1186
    :cond_1f
    :goto_d
    if-eqz v1, :cond_20

    .line 1187
    .line 1188
    iget-object v0, v1, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/functions/Function0;

    .line 1189
    .line 1190
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v0

    .line 1194
    check-cast v0, Ljava/lang/Float;

    .line 1195
    .line 1196
    iput-object v0, v9, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    .line 1197
    .line 1198
    :cond_20
    if-eqz v2, :cond_21

    .line 1199
    .line 1200
    iget-object v0, v2, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/functions/Function0;

    .line 1201
    .line 1202
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v0

    .line 1206
    check-cast v0, Ljava/lang/Float;

    .line 1207
    .line 1208
    iput-object v0, v9, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    .line 1209
    .line 1210
    :cond_21
    return-object v7

    .line 1211
    :pswitch_16
    check-cast v9, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1212
    .line 1213
    check-cast v0, Landroid/view/KeyEvent;

    .line 1214
    .line 1215
    invoke-static {v9, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->access$dispatchKeyEvent$s408734394(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/KeyEvent;)Z

    .line 1216
    .line 1217
    .line 1218
    move-result v0

    .line 1219
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v0

    .line 1223
    return-object v0

    .line 1224
    :pswitch_17
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 1225
    .line 1226
    sget-object v1, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 1227
    .line 1228
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    .line 1230
    .line 1231
    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 1232
    .line 1233
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 1234
    .line 1235
    iget-object v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 1236
    .line 1237
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1238
    .line 1239
    .line 1240
    move-result v2

    .line 1241
    iget-boolean v3, v0, Landroidx/compose/ui/node/NodeCoordinator;->lastClip:Z

    .line 1242
    .line 1243
    iget-boolean v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->clip:Z

    .line 1244
    .line 1245
    if-eq v3, v5, :cond_22

    .line 1246
    .line 1247
    move v4, v6

    .line 1248
    :cond_22
    if-eqz v2, :cond_23

    .line 1249
    .line 1250
    if-eqz v4, :cond_25

    .line 1251
    .line 1252
    :cond_23
    iget-object v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 1253
    .line 1254
    iput-object v3, v0, Landroidx/compose/ui/node/NodeCoordinator;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 1255
    .line 1256
    iput-boolean v5, v0, Landroidx/compose/ui/node/NodeCoordinator;->lastClip:Z

    .line 1257
    .line 1258
    iget-boolean v3, v0, Landroidx/compose/ui/node/NodeCoordinator;->wasLayerBlockInvoked:Z

    .line 1259
    .line 1260
    if-eqz v3, :cond_25

    .line 1261
    .line 1262
    if-nez v4, :cond_24

    .line 1263
    .line 1264
    if-eqz v5, :cond_25

    .line 1265
    .line 1266
    if-nez v2, :cond_25

    .line 1267
    .line 1268
    :cond_24
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 1269
    .line 1270
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui()V

    .line 1271
    .line 1272
    .line 1273
    :cond_25
    iput-boolean v6, v0, Landroidx/compose/ui/node/NodeCoordinator;->wasLayerBlockInvoked:Z

    .line 1274
    .line 1275
    iget-object v0, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 1276
    .line 1277
    iget-wide v2, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    .line 1278
    .line 1279
    iget-object v4, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1280
    .line 1281
    iget-object v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    .line 1282
    .line 1283
    invoke-interface {v0, v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v0

    .line 1287
    iput-object v0, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/ColorKt;

    .line 1288
    .line 1289
    return-object v7

    .line 1290
    :pswitch_18
    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    .line 1291
    .line 1292
    iget-object v1, v9, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 1293
    .line 1294
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1295
    .line 1296
    iget-object v2, v1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 1297
    .line 1298
    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1299
    .line 1300
    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 1301
    .line 1302
    and-int/lit8 v2, v2, 0x8

    .line 1303
    .line 1304
    if-eqz v2, :cond_30

    .line 1305
    .line 1306
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 1307
    .line 1308
    check-cast v1, Landroidx/compose/ui/node/TailModifierNode;

    .line 1309
    .line 1310
    :goto_e
    if-eqz v1, :cond_30

    .line 1311
    .line 1312
    iget v2, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 1313
    .line 1314
    and-int/lit8 v2, v2, 0x8

    .line 1315
    .line 1316
    if-eqz v2, :cond_2f

    .line 1317
    .line 1318
    move-object v2, v1

    .line 1319
    move-object v3, v8

    .line 1320
    :goto_f
    if-eqz v2, :cond_2f

    .line 1321
    .line 1322
    instance-of v5, v2, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 1323
    .line 1324
    if-eqz v5, :cond_28

    .line 1325
    .line 1326
    check-cast v2, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 1327
    .line 1328
    invoke-interface {v2}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldClearDescendantSemantics()Z

    .line 1329
    .line 1330
    .line 1331
    move-result v5

    .line 1332
    if-eqz v5, :cond_26

    .line 1333
    .line 1334
    new-instance v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1335
    .line 1336
    invoke-direct {v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 1337
    .line 1338
    .line 1339
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1340
    .line 1341
    iput-boolean v6, v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    .line 1342
    .line 1343
    :cond_26
    invoke-interface {v2}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldMergeDescendantSemantics()Z

    .line 1344
    .line 1345
    .line 1346
    move-result v5

    .line 1347
    if-eqz v5, :cond_27

    .line 1348
    .line 1349
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1350
    .line 1351
    check-cast v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1352
    .line 1353
    iput-boolean v6, v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 1354
    .line 1355
    :cond_27
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1356
    .line 1357
    check-cast v5, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1358
    .line 1359
    invoke-interface {v2, v5}, Landroidx/compose/ui/node/SemanticsModifierNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 1360
    .line 1361
    .line 1362
    goto :goto_12

    .line 1363
    :cond_28
    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 1364
    .line 1365
    and-int/lit8 v5, v5, 0x8

    .line 1366
    .line 1367
    if-eqz v5, :cond_2e

    .line 1368
    .line 1369
    instance-of v5, v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 1370
    .line 1371
    if-eqz v5, :cond_2e

    .line 1372
    .line 1373
    move-object v5, v2

    .line 1374
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 1375
    .line 1376
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 1377
    .line 1378
    move v9, v4

    .line 1379
    :goto_10
    if-eqz v5, :cond_2d

    .line 1380
    .line 1381
    iget v10, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 1382
    .line 1383
    and-int/lit8 v10, v10, 0x8

    .line 1384
    .line 1385
    if-eqz v10, :cond_2c

    .line 1386
    .line 1387
    add-int/lit8 v9, v9, 0x1

    .line 1388
    .line 1389
    if-ne v9, v6, :cond_29

    .line 1390
    .line 1391
    move-object v2, v5

    .line 1392
    goto :goto_11

    .line 1393
    :cond_29
    if-nez v3, :cond_2a

    .line 1394
    .line 1395
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 1396
    .line 1397
    const/16 v10, 0x10

    .line 1398
    .line 1399
    new-array v10, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 1400
    .line 1401
    invoke-direct {v3, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 1402
    .line 1403
    .line 1404
    :cond_2a
    if-eqz v2, :cond_2b

    .line 1405
    .line 1406
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1407
    .line 1408
    .line 1409
    move-object v2, v8

    .line 1410
    :cond_2b
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1411
    .line 1412
    .line 1413
    :cond_2c
    :goto_11
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 1414
    .line 1415
    goto :goto_10

    .line 1416
    :cond_2d
    if-ne v9, v6, :cond_2e

    .line 1417
    .line 1418
    goto :goto_f

    .line 1419
    :cond_2e
    :goto_12
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v2

    .line 1423
    goto :goto_f

    .line 1424
    :cond_2f
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 1425
    .line 1426
    goto :goto_e

    .line 1427
    :cond_30
    return-object v7

    .line 1428
    :pswitch_19
    check-cast v9, Lorg/wikipedia/page/PageViewModel;

    .line 1429
    .line 1430
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 1431
    .line 1432
    invoke-virtual {v9, v0}, Lorg/wikipedia/page/PageViewModel;->removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 1433
    .line 1434
    .line 1435
    return-object v7

    .line 1436
    :pswitch_1a
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1437
    .line 1438
    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 1439
    .line 1440
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v0

    .line 1444
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1445
    .line 1446
    return-object v7

    .line 1447
    :pswitch_1b
    check-cast v9, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    .line 1448
    .line 1449
    iget-object v1, v9, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->block:Lkotlin/jvm/functions/Function1;

    .line 1450
    .line 1451
    check-cast v0, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 1452
    .line 1453
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    .line 1455
    .line 1456
    return-object v7

    .line 1457
    :pswitch_1c
    check-cast v9, Lkotlin/reflect/jvm/internal/KTypeImpl;

    .line 1458
    .line 1459
    iget-object v1, v9, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 1460
    .line 1461
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v1

    .line 1465
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1466
    .line 1467
    .line 1468
    move-result v7

    .line 1469
    if-eqz v7, :cond_31

    .line 1470
    .line 1471
    goto/16 :goto_16

    .line 1472
    .line 1473
    :cond_31
    sget-object v3, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 1474
    .line 1475
    new-instance v7, Lkotlin/reflect/jvm/internal/KTypeImpl$classifier$2;

    .line 1476
    .line 1477
    invoke-direct {v7, v9, v6}, Lkotlin/reflect/jvm/internal/KTypeImpl$classifier$2;-><init>(Lkotlin/reflect/jvm/internal/KTypeImpl;I)V

    .line 1478
    .line 1479
    .line 1480
    invoke-static {v3, v7}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v3

    .line 1484
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1485
    .line 1486
    new-instance v7, Ljava/util/ArrayList;

    .line 1487
    .line 1488
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1489
    .line 1490
    .line 1491
    move-result v5

    .line 1492
    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1493
    .line 1494
    .line 1495
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v1

    .line 1499
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1500
    .line 1501
    .line 1502
    move-result v5

    .line 1503
    if-eqz v5, :cond_38

    .line 1504
    .line 1505
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v5

    .line 1509
    add-int/lit8 v10, v4, 0x1

    .line 1510
    .line 1511
    if-ltz v4, :cond_37

    .line 1512
    .line 1513
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 1514
    .line 1515
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    .line 1516
    .line 1517
    .line 1518
    move-result v11

    .line 1519
    if-eqz v11, :cond_32

    .line 1520
    .line 1521
    sget-object v4, Lkotlin/reflect/KTypeProjection;->star:Lkotlin/reflect/KTypeProjection;

    .line 1522
    .line 1523
    goto :goto_15

    .line 1524
    :cond_32
    new-instance v11, Lkotlin/reflect/jvm/internal/KTypeImpl;

    .line 1525
    .line 1526
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v12

    .line 1530
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1531
    .line 1532
    .line 1533
    if-nez v0, :cond_33

    .line 1534
    .line 1535
    move-object v13, v8

    .line 1536
    goto :goto_14

    .line 1537
    :cond_33
    new-instance v13, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;

    .line 1538
    .line 1539
    invoke-direct {v13, v9, v4, v3}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;-><init>(Lkotlin/reflect/jvm/internal/KTypeImpl;ILkotlin/Lazy;)V

    .line 1540
    .line 1541
    .line 1542
    :goto_14
    invoke-direct {v11, v12, v13}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v4

    .line 1549
    sget-object v5, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1550
    .line 1551
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1552
    .line 1553
    .line 1554
    move-result v4

    .line 1555
    aget v4, v5, v4

    .line 1556
    .line 1557
    if-eq v4, v6, :cond_36

    .line 1558
    .line 1559
    const/4 v5, 0x2

    .line 1560
    if-eq v4, v5, :cond_35

    .line 1561
    .line 1562
    if-ne v4, v2, :cond_34

    .line 1563
    .line 1564
    new-instance v4, Lkotlin/reflect/KTypeProjection;

    .line 1565
    .line 1566
    sget-object v5, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    .line 1567
    .line 1568
    invoke-direct {v4, v5, v11}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/jvm/internal/KTypeImpl;)V

    .line 1569
    .line 1570
    .line 1571
    goto :goto_15

    .line 1572
    :cond_34
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1573
    .line 1574
    .line 1575
    move-object v3, v8

    .line 1576
    goto :goto_16

    .line 1577
    :cond_35
    new-instance v4, Lkotlin/reflect/KTypeProjection;

    .line 1578
    .line 1579
    sget-object v5, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    .line 1580
    .line 1581
    invoke-direct {v4, v5, v11}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/jvm/internal/KTypeImpl;)V

    .line 1582
    .line 1583
    .line 1584
    goto :goto_15

    .line 1585
    :cond_36
    new-instance v4, Lkotlin/reflect/KTypeProjection;

    .line 1586
    .line 1587
    sget-object v5, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    .line 1588
    .line 1589
    invoke-direct {v4, v5, v11}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/jvm/internal/KTypeImpl;)V

    .line 1590
    .line 1591
    .line 1592
    :goto_15
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    .line 1594
    .line 1595
    move v4, v10

    .line 1596
    goto :goto_13

    .line 1597
    :cond_37
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 1598
    .line 1599
    .line 1600
    throw v8

    .line 1601
    :cond_38
    move-object v3, v7

    .line 1602
    :goto_16
    return-object v3

    .line 1603
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
