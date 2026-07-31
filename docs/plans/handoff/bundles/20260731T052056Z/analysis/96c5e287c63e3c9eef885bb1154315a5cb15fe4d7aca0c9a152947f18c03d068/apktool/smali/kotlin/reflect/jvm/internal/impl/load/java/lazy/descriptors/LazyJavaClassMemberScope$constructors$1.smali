.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $c:Lokhttp3/Request$Builder;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Lokhttp3/Request$Builder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$r8$classId:I

    .line 13
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$c:Lokhttp3/Request$Builder;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$c:Lokhttp3/Request$Builder;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->$c:Lokhttp3/Request$Builder;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 13
    .line 14
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    .line 17
    .line 18
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :pswitch_0
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;->this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    .line 37
    .line 38
    iget-object v0, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->jClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 39
    .line 40
    iget-object v1, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->c:Lokhttp3/Request$Builder;

    .line 41
    .line 42
    iget-object v10, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 43
    .line 44
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->klass:Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass$constructors$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass$constructors$1;

    .line 58
    .line 59
    new-instance v6, Lkotlin/sequences/FilteringSequence;

    .line 60
    .line 61
    const/4 v11, 0x0

    .line 62
    invoke-direct {v6, v4, v11, v5}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass$constructors$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass$constructors$2;

    .line 66
    .line 67
    new-instance v5, Lkotlin/sequences/TransformingSequence;

    .line 68
    .line 69
    invoke-direct {v5, v6, v4}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v5}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    const/4 v12, 0x1

    .line 94
    if-eqz v6, :cond_5

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaConstructor;

    .line 101
    .line 102
    invoke-static {v1, v6}, Lkotlin/uuid/UuidKt;->resolveAnnotations(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-static {v10, v8, v11, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->createJavaConstructor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getDeclaredTypeParameters()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    iget-object v13, v1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v13, Lkotlin/Lazy;

    .line 125
    .line 126
    iget-object v14, v1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v14, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 129
    .line 130
    new-instance v15, Lokhttp3/Dispatcher;

    .line 131
    .line 132
    invoke-direct {v15, v1, v8, v6, v9}, Lokhttp3/Dispatcher;-><init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaTypeParameterListOwner;I)V

    .line 133
    .line 134
    .line 135
    new-instance v9, Lokhttp3/Request$Builder;

    .line 136
    .line 137
    invoke-direct {v9, v14, v15, v13}, Lokhttp3/Request$Builder;-><init>(Lorg/wikipedia/databinding/ActivityPageBinding;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    .line 138
    .line 139
    .line 140
    iget-object v13, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaConstructor;->member:Ljava/lang/reflect/Constructor;

    .line 141
    .line 142
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    array-length v15, v14

    .line 150
    if-nez v15, :cond_0

    .line 151
    .line 152
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    move-result-object v16

    .line 163
    if-eqz v16, :cond_1

    .line 164
    .line 165
    invoke-virtual {v15}, Ljava/lang/Class;->getModifiers()I

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    if-nez v15, :cond_1

    .line 174
    .line 175
    array-length v15, v14

    .line 176
    invoke-static {v14, v12, v15}, Lkotlin/collections/ArraysKt___ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    move-object v14, v12

    .line 181
    check-cast v14, [Ljava/lang/reflect/Type;

    .line 182
    .line 183
    :cond_1
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 184
    .line 185
    .line 186
    move-result-object v12

    .line 187
    array-length v15, v12

    .line 188
    array-length v7, v14

    .line 189
    if-lt v15, v7, :cond_4

    .line 190
    .line 191
    array-length v7, v12

    .line 192
    array-length v15, v14

    .line 193
    if-le v7, v15, :cond_2

    .line 194
    .line 195
    array-length v7, v12

    .line 196
    array-length v15, v14

    .line 197
    sub-int/2addr v7, v15

    .line 198
    array-length v15, v12

    .line 199
    invoke-static {v12, v7, v15}, Lkotlin/collections/ArraysKt___ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    move-object v12, v7

    .line 204
    check-cast v12, [[Ljava/lang/annotation/Annotation;

    .line 205
    .line 206
    :cond_2
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    invoke-virtual {v6, v14, v12, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getValueParameters([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/ArrayList;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    :goto_1
    invoke-static {v9, v8, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->resolveValueParameters(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;Ljava/util/List;)Lkotlinx/serialization/json/internal/Composer;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getDeclaredTypeParameters()Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaConstructor;->getTypeParameters()Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    new-instance v14, Ljava/util/ArrayList;

    .line 230
    .line 231
    const/16 v15, 0xa

    .line 232
    .line 233
    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 234
    .line 235
    .line 236
    move-result v15

    .line 237
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v15

    .line 248
    if-eqz v15, :cond_3

    .line 249
    .line 250
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    check-cast v15, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    .line 255
    .line 256
    iget-object v11, v9, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    .line 259
    .line 260
    invoke-interface {v11, v15}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;->resolveTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    const/4 v11, 0x0

    .line 271
    goto :goto_2

    .line 272
    :cond_3
    invoke-static {v12, v14}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    iget-object v11, v7, Lkotlinx/serialization/json/internal/Composer;->writer:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v11, Ljava/util/List;

    .line 279
    .line 280
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getVisibility()Landroidx/appcompat/view/ActionMode;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-static {v6}, Lkotlin/UnsignedKt;->toDescriptorVisibility(Landroidx/appcompat/view/ActionMode;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v8, v11, v6, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Ljava/util/List;)V

    .line 289
    .line 290
    .line 291
    const/4 v6, 0x0

    .line 292
    invoke-virtual {v8, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasStableParameterNames(Z)V

    .line 293
    .line 294
    .line 295
    iget-boolean v6, v7, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 296
    .line 297
    invoke-virtual {v8, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasSynthesizedParameterNames(Z)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    invoke-virtual {v8, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    const/4 v11, 0x0

    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :cond_4
    const-string v0, "Illegal generic signature: "

    .line 314
    .line 315
    invoke-static {v0, v13}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    const/4 v7, 0x0

    .line 319
    goto/16 :goto_d

    .line 320
    .line 321
    :cond_5
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->isRecord()Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->klass:Ljava/lang/Class;

    .line 326
    .line 327
    const/4 v7, 0x6

    .line 328
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    .line 329
    .line 330
    if-eqz v4, :cond_b

    .line 331
    .line 332
    iget-object v4, v1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 333
    .line 334
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-static {v10, v8, v12, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->createJavaConstructor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;

    .line 339
    .line 340
    .line 341
    move-result-object v18

    .line 342
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getRecordComponents()Ljava/util/ArrayList;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    new-instance v9, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 349
    .line 350
    .line 351
    move-result v11

    .line 352
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .line 354
    .line 355
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 356
    .line 357
    const/4 v13, 0x0

    .line 358
    const/4 v14, 0x0

    .line 359
    invoke-static {v11, v14, v13, v7}, Landroidx/work/OperationKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 360
    .line 361
    .line 362
    move-result-object v11

    .line 363
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    const/16 v20, 0x0

    .line 368
    .line 369
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v13

    .line 373
    if-eqz v13, :cond_6

    .line 374
    .line 375
    add-int/lit8 v13, v20, 0x1

    .line 376
    .line 377
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v14

    .line 381
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;

    .line 382
    .line 383
    iget-object v15, v1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v15, Lokhttp3/MultipartBody$Builder;

    .line 386
    .line 387
    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;->getType()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    invoke-virtual {v15, v7, v11}, Lokhttp3/MultipartBody$Builder;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 392
    .line 393
    .line 394
    move-result-object v23

    .line 395
    new-instance v17, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 396
    .line 397
    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 398
    .line 399
    .line 400
    move-result-object v22

    .line 401
    const/16 v26, 0x0

    .line 402
    .line 403
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    .line 404
    .line 405
    .line 406
    move-result-object v28

    .line 407
    const/16 v19, 0x0

    .line 408
    .line 409
    const/16 v24, 0x0

    .line 410
    .line 411
    const/16 v25, 0x0

    .line 412
    .line 413
    const/16 v27, 0x0

    .line 414
    .line 415
    move-object/from16 v21, v8

    .line 416
    .line 417
    invoke-direct/range {v17 .. v28}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;ILkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 418
    .line 419
    .line 420
    move-object/from16 v8, v17

    .line 421
    .line 422
    move-object/from16 v7, v18

    .line 423
    .line 424
    move-object/from16 v14, v21

    .line 425
    .line 426
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move/from16 v20, v13

    .line 430
    .line 431
    move-object v8, v14

    .line 432
    const/4 v7, 0x6

    .line 433
    goto :goto_3

    .line 434
    :cond_6
    move-object v14, v8

    .line 435
    move-object/from16 v7, v18

    .line 436
    .line 437
    const/4 v8, 0x0

    .line 438
    invoke-virtual {v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasSynthesizedParameterNames(Z)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities;->PROTECTED_STATIC_VISIBILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 449
    .line 450
    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v11

    .line 454
    if-eqz v11, :cond_7

    .line 455
    .line 456
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities;->PROTECTED_AND_PACKAGE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 457
    .line 458
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    :cond_7
    invoke-virtual {v7, v9, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasStableParameterNames(Z)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-virtual {v7, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    .line 472
    .line 473
    .line 474
    const/4 v4, 0x2

    .line 475
    invoke-static {v7, v4}, Lkotlin/text/RegexKt;->computeJvmDescriptor$default(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v9

    .line 483
    if-eqz v9, :cond_8

    .line 484
    .line 485
    goto :goto_4

    .line 486
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 491
    .line 492
    .line 493
    move-result v11

    .line 494
    if-eqz v11, :cond_a

    .line 495
    .line 496
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v11

    .line 500
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    .line 501
    .line 502
    invoke-static {v11, v4}, Lkotlin/text/RegexKt;->computeJvmDescriptor$default(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v11

    .line 506
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v11

    .line 510
    if-eqz v11, :cond_9

    .line 511
    .line 512
    goto :goto_5

    .line 513
    :cond_a
    :goto_4
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    iget-object v4, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 517
    .line 518
    goto :goto_5

    .line 519
    :cond_b
    move-object v14, v8

    .line 520
    :goto_5
    iget-object v4, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 521
    .line 522
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    iget-object v4, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v4, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 528
    .line 529
    iget-object v4, v4, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 530
    .line 531
    move-object v11, v4

    .line 532
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;

    .line 533
    .line 534
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 535
    .line 536
    .line 537
    move-result v4

    .line 538
    if-eqz v4, :cond_15

    .line 539
    .line 540
    invoke-virtual {v6}, Ljava/lang/Class;->isAnnotation()Z

    .line 541
    .line 542
    .line 543
    move-result v4

    .line 544
    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    .line 545
    .line 546
    .line 547
    if-nez v4, :cond_c

    .line 548
    .line 549
    const/4 v7, 0x0

    .line 550
    goto/16 :goto_c

    .line 551
    .line 552
    :cond_c
    iget-object v5, v1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 553
    .line 554
    iget-object v1, v1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v1, Lokhttp3/MultipartBody$Builder;

    .line 557
    .line 558
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    invoke-static {v10, v14, v12, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->createJavaConstructor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    if-eqz v4, :cond_13

    .line 567
    .line 568
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getMethods$1()Ljava/util/List;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    new-instance v4, Ljava/util/ArrayList;

    .line 573
    .line 574
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    .line 580
    .line 581
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 582
    .line 583
    const/4 v7, 0x6

    .line 584
    const/4 v13, 0x0

    .line 585
    invoke-static {v6, v12, v13, v7}, Landroidx/work/OperationKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 586
    .line 587
    .line 588
    move-result-object v14

    .line 589
    new-instance v6, Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .line 593
    .line 594
    new-instance v13, Ljava/util/ArrayList;

    .line 595
    .line 596
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .line 598
    .line 599
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 604
    .line 605
    .line 606
    move-result v7

    .line 607
    if-eqz v7, :cond_e

    .line 608
    .line 609
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v7

    .line 613
    move-object v8, v7

    .line 614
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;

    .line 615
    .line 616
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->DEFAULT_ANNOTATION_MEMBER_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 621
    .line 622
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v8

    .line 626
    if-eqz v8, :cond_d

    .line 627
    .line 628
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    goto :goto_6

    .line 632
    :cond_d
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    goto :goto_6

    .line 636
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 637
    .line 638
    .line 639
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    move-object v7, v0

    .line 644
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;

    .line 645
    .line 646
    if-eqz v7, :cond_10

    .line 647
    .line 648
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getReturnType$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    instance-of v6, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;

    .line 653
    .line 654
    if-eqz v6, :cond_f

    .line 655
    .line 656
    new-instance v6, Lkotlin/Pair;

    .line 657
    .line 658
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;

    .line 659
    .line 660
    invoke-virtual {v1, v0, v14, v12}, Lokhttp3/MultipartBody$Builder;->transformArrayType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 661
    .line 662
    .line 663
    move-result-object v8

    .line 664
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;->componentType:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 665
    .line 666
    invoke-virtual {v1, v0, v14}, Lokhttp3/MultipartBody$Builder;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-direct {v6, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    goto :goto_7

    .line 674
    :cond_f
    new-instance v6, Lkotlin/Pair;

    .line 675
    .line 676
    invoke-virtual {v1, v0, v14}, Lokhttp3/MultipartBody$Builder;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    const/4 v8, 0x0

    .line 681
    invoke-direct {v6, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    :goto_7
    iget-object v0, v6, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 685
    .line 686
    move-object v8, v0

    .line 687
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 688
    .line 689
    iget-object v0, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 690
    .line 691
    move-object v9, v0

    .line 692
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 693
    .line 694
    const/4 v6, 0x0

    .line 695
    invoke-virtual/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->addAnnotationValueParameter(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;ILkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 696
    .line 697
    .line 698
    :cond_10
    if-eqz v7, :cond_11

    .line 699
    .line 700
    move v0, v12

    .line 701
    goto :goto_8

    .line 702
    :cond_11
    const/4 v0, 0x0

    .line 703
    :goto_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 704
    .line 705
    .line 706
    move-result-object v13

    .line 707
    const/4 v6, 0x0

    .line 708
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 709
    .line 710
    .line 711
    move-result v7

    .line 712
    if-eqz v7, :cond_12

    .line 713
    .line 714
    add-int/lit8 v15, v6, 0x1

    .line 715
    .line 716
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v7

    .line 720
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;

    .line 721
    .line 722
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getReturnType$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 723
    .line 724
    .line 725
    move-result-object v8

    .line 726
    invoke-virtual {v1, v8, v14}, Lokhttp3/MultipartBody$Builder;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 727
    .line 728
    .line 729
    move-result-object v8

    .line 730
    add-int/2addr v6, v0

    .line 731
    const/4 v9, 0x0

    .line 732
    invoke-virtual/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->addAnnotationValueParameter(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;ILkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 733
    .line 734
    .line 735
    move v6, v15

    .line 736
    goto :goto_9

    .line 737
    :cond_12
    :goto_a
    const/4 v6, 0x0

    .line 738
    goto :goto_b

    .line 739
    :cond_13
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 740
    .line 741
    goto :goto_a

    .line 742
    :goto_b
    invoke-virtual {v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasSynthesizedParameterNames(Z)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities;->PROTECTED_STATIC_VISIBILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 753
    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    if-eqz v1, :cond_14

    .line 759
    .line 760
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities;->PROTECTED_AND_PACKAGE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    .line 764
    .line 765
    :cond_14
    invoke-virtual {v5, v4, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v5, v12}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor;->setHasStableParameterNames(Z)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-virtual {v5, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    .line 776
    .line 777
    .line 778
    move-object v7, v5

    .line 779
    :goto_c
    invoke-static {v7}, Landroidx/room/Room;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    .line 780
    .line 781
    .line 782
    move-result-object v5

    .line 783
    :cond_15
    invoke-virtual {v11, v2, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhanceSignatures(Lokhttp3/Request$Builder;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 788
    .line 789
    .line 790
    move-result-object v7

    .line 791
    :goto_d
    return-object v7

    .line 792
    nop

    .line 793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
