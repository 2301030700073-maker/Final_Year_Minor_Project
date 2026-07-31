.class public final Lokhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokio/Socket;
.implements Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;


# instance fields
.field public boundary:Ljava/lang/Object;

.field public parts:Ljava/lang/Object;

.field public type:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 28
    iput-object p2, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    iput-object p3, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    iput-object p4, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    iput-object p2, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    iput-object p3, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/ranges/IntRange;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    iput-object p2, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    iput-object p3, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;Ljava/util/List;Lokhttp3/MultipartBody$Builder;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 33
    iput-object p3, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokio/internal/DefaultSocket;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v0, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lokio/internal/DefaultSocket$SocketSource;

    .line 9
    .line 10
    invoke-static {v0}, Lokio/Okio__OkioKt;->buffer(Lokio/Source;)Lokio/RealBufferedSource;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p1, p1, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lokio/internal/DefaultSocket$SocketSink;

    .line 19
    .line 20
    invoke-static {p1}, Lokio/Okio__OkioKt;->buffer(Lokio/Sink;)Lokio/RealBufferedSink;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lokhttp3/MultipartBody$Builder;
    .locals 4

    .line 1
    const v0, 0x7f0c018d

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const v0, 0x7f0901b8

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/CheckBox;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const v0, 0x7f0901bc

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lorg/wikipedia/views/AppTextView;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 33
    .line 34
    check-cast p0, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-direct {v0, p0, v1, v3}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "Missing required view with ID: "

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v2
.end method


# virtual methods
.method public computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->howThisTypeIsUsed:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 10
    .line 11
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->flexibility:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    .line 12
    .line 13
    iget-boolean v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->isForAnnotationParameter:Z

    .line 14
    .line 15
    iget-object v7, v1, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v7, Lokhttp3/Request$Builder;

    .line 18
    .line 19
    iget-object v8, v7, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v8, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 27
    .line 28
    .line 29
    move-result-object v10

    .line 30
    if-nez v10, :cond_1

    .line 31
    .line 32
    :cond_0
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    .line 33
    .line 34
    invoke-direct {v10, v7, v5, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->toDefaultAttributes(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    :cond_1
    iget-object v11, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->classifier:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifier;

    .line 42
    .line 43
    instance-of v12, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 44
    .line 45
    const-class v13, Ljava/lang/Object;

    .line 46
    .line 47
    if-eqz v12, :cond_f

    .line 48
    .line 49
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 50
    .line 51
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    move/from16 v16, v9

    .line 56
    .line 57
    if-eqz v6, :cond_4

    .line 58
    .line 59
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt;->JAVA_LANG_CLASS_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 60
    .line 61
    invoke-virtual {v12, v9}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_4

    .line 66
    .line 67
    iget-object v9, v8, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    .line 70
    .line 71
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 72
    .line 73
    aget-object v12, v12, v16

    .line 74
    .line 75
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-interface {v12}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    invoke-static {v12}, Lkotlin/ResultKt;->capitalizeAsciiOnly(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    iget-object v15, v9, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->kotlinReflectScope$delegate:Lkotlin/Lazy;

    .line 93
    .line 94
    invoke-interface {v15}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v15

    .line 98
    check-cast v15, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 99
    .line 100
    const/16 v18, 0x1

    .line 101
    .line 102
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    .line 103
    .line 104
    invoke-interface {v15, v12, v14}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    instance-of v15, v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 109
    .line 110
    if-eqz v15, :cond_2

    .line 111
    .line 112
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    move-object/from16 v14, v17

    .line 116
    .line 117
    :goto_0
    if-nez v14, :cond_3

    .line 118
    .line 119
    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->notFoundClasses:Lcoil3/ImageLoader$Builder;

    .line 120
    .line 121
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 122
    .line 123
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_REFLECT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 124
    .line 125
    invoke-direct {v14, v15, v12}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    .line 126
    .line 127
    .line 128
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-static {v12}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    invoke-virtual {v9, v14, v12}, Lcoil3/ImageLoader$Builder;->getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    goto/16 :goto_4

    .line 141
    .line 142
    :cond_3
    move-object v9, v14

    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :cond_4
    const/16 v17, 0x0

    .line 146
    .line 147
    const/16 v18, 0x1

    .line 148
    .line 149
    iget-object v9, v8, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 152
    .line 153
    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 154
    .line 155
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mapJavaToKotlin(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    if-eqz v12, :cond_5

    .line 163
    .line 164
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    invoke-virtual {v9, v12}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    goto :goto_1

    .line 173
    :cond_5
    move-object/from16 v9, v17

    .line 174
    .line 175
    :goto_1
    if-nez v9, :cond_6

    .line 176
    .line 177
    move-object/from16 v9, v17

    .line 178
    .line 179
    goto/16 :goto_4

    .line 180
    .line 181
    :cond_6
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->readOnlyToMutable:Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    if-eqz v12, :cond_b

    .line 192
    .line 193
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    .line 194
    .line 195
    if-eq v4, v12, :cond_a

    .line 196
    .line 197
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 198
    .line 199
    if-eq v3, v12, :cond_a

    .line 200
    .line 201
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 210
    .line 211
    instance-of v15, v12, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    .line 212
    .line 213
    if-eqz v15, :cond_7

    .line 214
    .line 215
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_7
    move-object/from16 v12, v17

    .line 219
    .line 220
    :goto_2
    if-eqz v12, :cond_b

    .line 221
    .line 222
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 223
    .line 224
    .line 225
    move-result-object v15

    .line 226
    if-eqz v15, :cond_b

    .line 227
    .line 228
    iget-object v12, v12, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->reflectType:Ljava/lang/reflect/WildcardType;

    .line 229
    .line 230
    invoke-interface {v12}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {v12}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    if-eqz v12, :cond_b

    .line 246
    .line 247
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 258
    .line 259
    if-eqz v12, :cond_9

    .line 260
    .line 261
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    invoke-virtual {v14, v12}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 288
    .line 289
    if-eqz v12, :cond_b

    .line 290
    .line 291
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    if-nez v12, :cond_8

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_8
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 299
    .line 300
    if-eq v12, v14, :cond_b

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_9
    const-string v0, "Given class "

    .line 304
    .line 305
    const-string v1, " is not a read-only collection"

    .line 306
    .line 307
    invoke-static {v9, v1, v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-object v17

    .line 311
    :cond_a
    :goto_3
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;->convertReadOnlyToMutable(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    :cond_b
    :goto_4
    if-nez v9, :cond_d

    .line 316
    .line 317
    iget-object v9, v8, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v9, Lokhttp3/ConnectionPool;

    .line 320
    .line 321
    iget-object v9, v9, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v9, Lokhttp3/ConnectionPool;

    .line 324
    .line 325
    if-eqz v9, :cond_c

    .line 326
    .line 327
    invoke-virtual {v9, v11}, Lokhttp3/ConnectionPool;->resolveClass(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 328
    .line 329
    .line 330
    move-result-object v9

    .line 331
    goto :goto_5

    .line 332
    :cond_c
    const-string v0, "resolver"

    .line 333
    .line 334
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v17

    .line 338
    :cond_d
    :goto_5
    if-eqz v9, :cond_e

    .line 339
    .line 340
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    if-eqz v9, :cond_e

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 348
    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 350
    .line 351
    iget-object v1, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->reflectType:Ljava/lang/reflect/Type;

    .line 352
    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string v3, "Type not found: "

    .line 356
    .line 357
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :cond_f
    move/from16 v16, v9

    .line 372
    .line 373
    const/16 v17, 0x0

    .line 374
    .line 375
    const/16 v18, 0x1

    .line 376
    .line 377
    instance-of v9, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    .line 378
    .line 379
    if-eqz v9, :cond_29

    .line 380
    .line 381
    iget-object v9, v1, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    .line 384
    .line 385
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    .line 386
    .line 387
    invoke-interface {v9, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;->resolveTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    if-eqz v9, :cond_10

    .line 392
    .line 393
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    goto :goto_6

    .line 398
    :cond_10
    move-object/from16 v9, v17

    .line 399
    .line 400
    :goto_6
    if-nez v9, :cond_11

    .line 401
    .line 402
    return-object v17

    .line 403
    :cond_11
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    .line 404
    .line 405
    if-ne v4, v11, :cond_13

    .line 406
    .line 407
    :cond_12
    move/from16 v11, v16

    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_13
    if-nez v6, :cond_12

    .line 411
    .line 412
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 413
    .line 414
    if-eq v3, v4, :cond_12

    .line 415
    .line 416
    move/from16 v11, v18

    .line 417
    .line 418
    :goto_7
    if-eqz v2, :cond_14

    .line 419
    .line 420
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    goto :goto_8

    .line 425
    :cond_14
    move-object/from16 v3, v17

    .line 426
    .line 427
    :goto_8
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-eqz v3, :cond_15

    .line 432
    .line 433
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    if-nez v3, :cond_15

    .line 438
    .line 439
    if-eqz v11, :cond_15

    .line 440
    .line 441
    move/from16 v3, v18

    .line 442
    .line 443
    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    return-object v0

    .line 448
    :cond_15
    move/from16 v3, v18

    .line 449
    .line 450
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-nez v2, :cond_17

    .line 455
    .line 456
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eqz v2, :cond_16

    .line 465
    .line 466
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    if-nez v2, :cond_16

    .line 478
    .line 479
    goto :goto_9

    .line 480
    :cond_16
    move/from16 v14, v16

    .line 481
    .line 482
    goto :goto_a

    .line 483
    :cond_17
    :goto_9
    move v14, v3

    .line 484
    :goto_a
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    const/16 v3, 0xa

    .line 492
    .line 493
    if-eqz v14, :cond_19

    .line 494
    .line 495
    new-instance v7, Ljava/util/ArrayList;

    .line 496
    .line 497
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 502
    .line 503
    .line 504
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 505
    .line 506
    .line 507
    move-result-object v12

    .line 508
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    if-eqz v2, :cond_28

    .line 513
    .line 514
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 519
    .line 520
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->visitedTypeParameters:Ljava/util/Set;

    .line 521
    .line 522
    move-object/from16 v4, v17

    .line 523
    .line 524
    invoke-static {v2, v4, v3}, Landroidx/work/OperationKt;->hasTypeParameterRecursiveBounds(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/Set;)Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_18

    .line 529
    .line 530
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    move-object v6, v1

    .line 535
    goto :goto_c

    .line 536
    :cond_18
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    .line 537
    .line 538
    iget-object v3, v8, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 539
    .line 540
    move-object v14, v3

    .line 541
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 542
    .line 543
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3$1;

    .line 544
    .line 545
    const/4 v6, 0x1

    .line 546
    move-object/from16 v3, p2

    .line 547
    .line 548
    move-object v4, v9

    .line 549
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 550
    .line 551
    .line 552
    move-object v6, v1

    .line 553
    move-object v15, v2

    .line 554
    invoke-direct {v13, v14, v0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    .line 558
    .line 559
    .line 560
    move-result v2

    .line 561
    const/4 v4, 0x0

    .line 562
    const/16 v5, 0x3b

    .line 563
    .line 564
    const/4 v1, 0x0

    .line 565
    const/4 v3, 0x0

    .line 566
    move-object/from16 v0, p2

    .line 567
    .line 568
    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;ZLjava/util/Set;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    iget-object v0, v6, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 573
    .line 574
    check-cast v0, Lokhttp3/FormBody$Builder;

    .line 575
    .line 576
    invoke-static {v15, v1, v0, v13}, Landroidx/transition/Transition$1;->computeProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lokhttp3/FormBody$Builder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    :goto_c
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-object/from16 v5, p1

    .line 584
    .line 585
    move-object/from16 v0, p2

    .line 586
    .line 587
    move-object v1, v6

    .line 588
    const/16 v17, 0x0

    .line 589
    .line 590
    goto :goto_b

    .line 591
    :cond_19
    move-object v6, v1

    .line 592
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    if-eq v0, v1, :cond_1b

    .line 605
    .line 606
    new-instance v0, Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 609
    .line 610
    .line 611
    move-result v1

    .line 612
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .line 614
    .line 615
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    if-eqz v2, :cond_1a

    .line 624
    .line 625
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 630
    .line 631
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 632
    .line 633
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->MISSED_TYPE_ARGUMENT_FOR_TYPE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 634
    .line 635
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    .line 645
    .line 646
    filled-new-array {v2}, [Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    invoke-static {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    invoke-direct {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    goto :goto_d

    .line 661
    :cond_1a
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 662
    .line 663
    .line 664
    move-result-object v7

    .line 665
    goto/16 :goto_17

    .line 666
    .line 667
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->withIndex(Ljava/util/List;)Lkotlin/collections/IndexingIterable;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    new-instance v1, Ljava/util/ArrayList;

    .line 676
    .line 677
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v0}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    :goto_e
    move-object v3, v0

    .line 689
    check-cast v3, Lkotlin/collections/IndexingIterator;

    .line 690
    .line 691
    iget-object v4, v3, Lkotlin/collections/IndexingIterator;->iterator:Ljava/util/Iterator;

    .line 692
    .line 693
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 694
    .line 695
    .line 696
    move-result v4

    .line 697
    if-eqz v4, :cond_27

    .line 698
    .line 699
    invoke-virtual {v3}, Lkotlin/collections/IndexingIterator;->next()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    check-cast v3, Lkotlin/collections/IndexedValue;

    .line 704
    .line 705
    iget v4, v3, Lkotlin/collections/IndexedValue;->index:I

    .line 706
    .line 707
    iget-object v3, v3, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 710
    .line 711
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 712
    .line 713
    .line 714
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 719
    .line 720
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 721
    .line 722
    const/4 v8, 0x7

    .line 723
    move/from16 v12, v16

    .line 724
    .line 725
    const/4 v14, 0x0

    .line 726
    invoke-static {v5, v12, v14, v8}, Landroidx/work/OperationKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 727
    .line 728
    .line 729
    move-result-object v5

    .line 730
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    instance-of v12, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    .line 734
    .line 735
    if-eqz v12, :cond_26

    .line 736
    .line 737
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    .line 738
    .line 739
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 740
    .line 741
    .line 742
    move-result-object v12

    .line 743
    iget-object v14, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->reflectType:Ljava/lang/reflect/WildcardType;

    .line 744
    .line 745
    invoke-interface {v14}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 746
    .line 747
    .line 748
    move-result-object v14

    .line 749
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    invoke-static {v14}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v14

    .line 756
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v14

    .line 760
    if-nez v14, :cond_1c

    .line 761
    .line 762
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 763
    .line 764
    goto :goto_f

    .line 765
    :cond_1c
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 766
    .line 767
    :goto_f
    if-eqz v12, :cond_1e

    .line 768
    .line 769
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 770
    .line 771
    .line 772
    move-result-object v15

    .line 773
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 774
    .line 775
    if-ne v15, v8, :cond_1d

    .line 776
    .line 777
    goto :goto_10

    .line 778
    :cond_1d
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 779
    .line 780
    .line 781
    move-result-object v8

    .line 782
    if-eq v14, v8, :cond_1f

    .line 783
    .line 784
    :cond_1e
    move-object/from16 p2, v0

    .line 785
    .line 786
    move-object/from16 p3, v2

    .line 787
    .line 788
    const/4 v8, 0x0

    .line 789
    goto/16 :goto_15

    .line 790
    .line 791
    :cond_1f
    :goto_10
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 792
    .line 793
    .line 794
    move-result-object v5

    .line 795
    if-eqz v5, :cond_25

    .line 796
    .line 797
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    .line 798
    .line 799
    const/4 v8, 0x0

    .line 800
    invoke-direct {v5, v7, v3, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;Z)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;->iterator()Ljava/util/Iterator;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    :goto_11
    move-object v5, v3

    .line 808
    check-cast v5, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 809
    .line 810
    invoke-virtual {v5}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 811
    .line 812
    .line 813
    move-result v8

    .line 814
    if-eqz v8, :cond_22

    .line 815
    .line 816
    invoke-virtual {v5}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v5

    .line 820
    move-object v8, v5

    .line 821
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 822
    .line 823
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->RXJAVA3_ANNOTATIONS:[Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 824
    .line 825
    move-object/from16 p2, v0

    .line 826
    .line 827
    array-length v0, v15

    .line 828
    move-object/from16 p3, v2

    .line 829
    .line 830
    const/4 v2, 0x0

    .line 831
    :goto_12
    if-ge v2, v0, :cond_21

    .line 832
    .line 833
    move/from16 v18, v0

    .line 834
    .line 835
    aget-object v0, v15, v2

    .line 836
    .line 837
    move/from16 v19, v2

    .line 838
    .line 839
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-eqz v0, :cond_20

    .line 848
    .line 849
    goto :goto_13

    .line 850
    :cond_20
    add-int/lit8 v2, v19, 0x1

    .line 851
    .line 852
    move/from16 v0, v18

    .line 853
    .line 854
    goto :goto_12

    .line 855
    :cond_21
    move-object/from16 v0, p2

    .line 856
    .line 857
    move-object/from16 v2, p3

    .line 858
    .line 859
    goto :goto_11

    .line 860
    :cond_22
    move-object/from16 p2, v0

    .line 861
    .line 862
    move-object/from16 p3, v2

    .line 863
    .line 864
    const/4 v5, 0x0

    .line 865
    :goto_13
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 866
    .line 867
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 868
    .line 869
    const/4 v2, 0x7

    .line 870
    const/4 v3, 0x0

    .line 871
    const/4 v8, 0x0

    .line 872
    invoke-static {v0, v8, v3, v2}, Landroidx/work/OperationKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-virtual {v6, v12, v0}, Lokhttp3/MultipartBody$Builder;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    if-eqz v5, :cond_24

    .line 881
    .line 882
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 887
    .line 888
    .line 889
    move-result-object v2

    .line 890
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 891
    .line 892
    .line 893
    move-result v3

    .line 894
    if-eqz v3, :cond_23

    .line 895
    .line 896
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    .line 897
    .line 898
    goto :goto_14

    .line 899
    :cond_23
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 900
    .line 901
    invoke-direct {v3, v8, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(ILjava/lang/Object;)V

    .line 902
    .line 903
    .line 904
    move-object v2, v3

    .line 905
    :goto_14
    invoke-static {v0, v2}, Landroidx/work/OperationKt;->replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    :cond_24
    invoke-static {v0, v14, v4}, Landroidx/work/OperationKt;->createProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    goto :goto_16

    .line 914
    :cond_25
    const-string v0, "Nullability annotations on unbounded wildcards aren\'t supported"

    .line 915
    .line 916
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    const/16 v17, 0x0

    .line 920
    .line 921
    return-object v17

    .line 922
    :goto_15
    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    goto :goto_16

    .line 927
    :cond_26
    move-object/from16 p2, v0

    .line 928
    .line 929
    move-object/from16 p3, v2

    .line 930
    .line 931
    const/4 v8, 0x0

    .line 932
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 933
    .line 934
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 935
    .line 936
    invoke-virtual {v6, v3, v5}, Lokhttp3/MultipartBody$Builder;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 937
    .line 938
    .line 939
    move-result-object v3

    .line 940
    invoke-direct {v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 941
    .line 942
    .line 943
    :goto_16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    .line 945
    .line 946
    move-object/from16 v0, p2

    .line 947
    .line 948
    move-object/from16 v2, p3

    .line 949
    .line 950
    move/from16 v16, v8

    .line 951
    .line 952
    goto/16 :goto_e

    .line 953
    .line 954
    :cond_27
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 955
    .line 956
    .line 957
    move-result-object v7

    .line 958
    :cond_28
    :goto_17
    invoke-static {v7, v10, v9, v11}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    return-object v0

    .line 963
    :cond_29
    const-string v0, "Unknown classifier kind: "

    .line 964
    .line 965
    invoke-static {v0, v11}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    const/16 v17, 0x0

    .line 969
    .line 970
    return-object v17
.end method

.method public decode(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 7
    .line 8
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iget-object v1, p1, Lokhttp3/tls/internal/der/DerReader;->typeHintStack:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    array-length v4, v0

    .line 28
    if-ge v3, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    aget-object v3, v0, v3

    .line 35
    .line 36
    invoke-interface {v3, p1}, Lokhttp3/tls/internal/der/DerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    add-int/lit8 p1, p1, -0x1

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_1
    :try_start_1
    new-instance p0, Ljava/net/ProtocolException;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v2, "unexpected "

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, " at "

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    add-int/lit8 p1, p1, -0x1

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public encode(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Ljava/util/List;

    .line 13
    .line 14
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 17
    .line 18
    iget-object v0, p1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-ge v2, v1, :cond_0

    .line 32
    .line 33
    aget-object v3, p0, v2

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v3, p1, v4}, Lokhttp3/tls/internal/der/DerAdapter;->toDer(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    add-int/lit8 p0, p0, -0x1

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    add-int/lit8 p1, p1, -0x1

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public fetchMoreLike(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 12

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 4
    .line 5
    instance-of v1, p2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$fetchMoreLike$1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, p2

    .line 10
    check-cast v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$fetchMoreLike$1;

    .line 11
    .line 12
    iget v2, v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$fetchMoreLike$1;->label:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$fetchMoreLike$1;->label:I

    .line 22
    .line 23
    :goto_0
    move-object v9, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$fetchMoreLike$1;

    .line 26
    .line 27
    invoke-direct {v1, p0, p2}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$fetchMoreLike$1;-><init>(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object p0, v9, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$fetchMoreLike$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v1, v9, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$fetchMoreLike$1;->label:I

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v11, 0x0

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v11

    .line 53
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_3
    const/4 p0, 0x3

    .line 64
    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/4 v7, 0x0

    .line 69
    const/16 v8, 0x3e

    .line 70
    .line 71
    const-string/jumbo v4, "|"

    .line 72
    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "morelike:"

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 87
    .line 88
    move p0, v2

    .line 89
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iput p0, v9, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$fetchMoreLike$1;->label:I

    .line 94
    .line 95
    const/4 v4, 0x3

    .line 96
    const/4 v5, 0x3

    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/16 v10, 0x38

    .line 100
    .line 101
    invoke-static/range {v2 .. v10}, Lorg/wikipedia/dataclient/Service$-CC;->searchMoreLike$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;IILjava/lang/Integer;IILkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-ne p0, p2, :cond_4

    .line 106
    .line 107
    return-object p2

    .line 108
    :cond_4
    :goto_2
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 109
    .line 110
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 111
    .line 112
    if-eqz p0, :cond_6

    .line 113
    .line 114
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 115
    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    new-instance p1, Ljava/util/ArrayList;

    .line 119
    .line 120
    const/16 p2, 0xa

    .line 121
    .line 122
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_5

    .line 138
    .line 139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 144
    .line 145
    new-instance v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;

    .line 146
    .line 147
    iget-object v2, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p2, v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-object v3, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-direct {v1, v2, v3, p2, v11}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    return-object p1

    .line 167
    :cond_6
    :goto_4
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 168
    .line 169
    return-object p0
.end method

.method public getCommunityPreviewContent(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 12

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    iget-object v1, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    instance-of v2, p1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getCommunityPreviewContent$1;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    check-cast v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getCommunityPreviewContent$1;

    .line 15
    .line 16
    iget v3, v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getCommunityPreviewContent$1;->label:I

    .line 17
    .line 18
    const/high16 v4, -0x80000000

    .line 19
    .line 20
    and-int v5, v3, v4

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    iput v3, v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getCommunityPreviewContent$1;->label:I

    .line 26
    .line 27
    :goto_0
    move-object v8, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getCommunityPreviewContent$1;

    .line 30
    .line 31
    invoke-direct {v2, p0, p1}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getCommunityPreviewContent$1;-><init>(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object p0, v8, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getCommunityPreviewContent$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    iget v2, v8, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getCommunityPreviewContent$1;->label:I

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x1

    .line 43
    const/4 v11, 0x0

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    if-ne v2, v10, :cond_1

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v11

    .line 58
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 66
    .line 67
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {p0}, Lj$/time/LocalDate;->getMonthValue()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    new-instance v5, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 86
    .line 87
    .line 88
    new-array v2, v10, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object v5, v2, v9

    .line 91
    .line 92
    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v5, "%02d"

    .line 97
    .line 98
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    new-instance v6, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-direct {v6, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 109
    .line 110
    .line 111
    new-array p0, v10, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v6, p0, v9

    .line 114
    .line 115
    invoke-static {p0, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iget-object v7, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 124
    .line 125
    iput v10, v8, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getCommunityPreviewContent$1;->label:I

    .line 126
    .line 127
    move-object v5, v2

    .line 128
    invoke-interface/range {v3 .. v8}, Lorg/wikipedia/dataclient/RestService;->getFeedFeatured(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    if-ne p0, p1, :cond_3

    .line 133
    .line 134
    return-object p1

    .line 135
    :cond_3
    :goto_2
    check-cast p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;

    .line 136
    .line 137
    iget-object p1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->tfa:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 138
    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    new-instance v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;

    .line 142
    .line 143
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iget-object v4, p1, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v5, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 154
    .line 155
    const v6, 0x7f1209e5

    .line 156
    .line 157
    .line 158
    new-array v7, v9, [Ljava/lang/Object;

    .line 159
    .line 160
    invoke-static {v0, v5, v6, v7}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-direct {v2, v3, v4, p1, v5}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_4
    move-object v2, v11

    .line 169
    :goto_3
    iget-object p1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->potd:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 170
    .line 171
    if-eqz p1, :cond_5

    .line 172
    .line 173
    new-instance v3, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;

    .line 174
    .line 175
    iget-object v4, p1, Lorg/wikipedia/gallery/GalleryItem;->description:Lorg/wikipedia/gallery/TextInfo;

    .line 176
    .line 177
    iget-object v4, v4, Lorg/wikipedia/gallery/TextInfo;->text:Ljava/lang/String;

    .line 178
    .line 179
    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItem;->thumbnail:Lorg/wikipedia/gallery/ImageInfo;

    .line 180
    .line 181
    iget-object p1, p1, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v5, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 184
    .line 185
    const v6, 0x7f1209e8

    .line 186
    .line 187
    .line 188
    new-array v7, v9, [Ljava/lang/Object;

    .line 189
    .line 190
    invoke-static {v0, v5, v6, v7}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-direct {v3, v11, v4, p1, v5}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_5
    move-object v3, v11

    .line 199
    :goto_4
    iget-object p0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->news:Ljava/util/List;

    .line 200
    .line 201
    if-eqz p0, :cond_6

    .line 202
    .line 203
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    check-cast p0, Lorg/wikipedia/feed/news/NewsItem;

    .line 208
    .line 209
    if-eqz p0, :cond_6

    .line 210
    .line 211
    new-instance p1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;

    .line 212
    .line 213
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 214
    .line 215
    iget-object v4, p0, Lorg/wikipedia/feed/news/NewsItem;->story:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {p0}, Lorg/wikipedia/feed/news/NewsItem;->thumbUrl()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    iget-object v1, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 226
    .line 227
    const v5, 0x7f1209e2

    .line 228
    .line 229
    .line 230
    new-array v6, v9, [Ljava/lang/Object;

    .line 231
    .line 232
    invoke-static {v0, v1, v5, v6}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-direct {p1, v11, v4, p0, v0}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    move-object v11, p1

    .line 240
    :cond_6
    const/4 p0, 0x3

    .line 241
    new-array p0, p0, [Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;

    .line 242
    .line 243
    aput-object v2, p0, v9

    .line 244
    .line 245
    aput-object v3, p0, v10

    .line 246
    .line 247
    const/4 p1, 0x2

    .line 248
    aput-object v11, p0, p1

    .line 249
    .line 250
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    return-object p0
.end method

.method public getPersonalizedPreviewContent(Ljava/util/Set;Ljava/util/Map;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p3, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;-><init>(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/16 v4, 0xa

    .line 33
    .line 34
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 35
    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v8, 0x3

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-eq v2, v7, :cond_3

    .line 42
    .line 43
    if-eq v2, v6, :cond_2

    .line 44
    .line 45
    if-ne v2, v8, :cond_1

    .line 46
    .line 47
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object p3

    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v3

    .line 57
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-object p3

    .line 66
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-nez p3, :cond_9

    .line 74
    .line 75
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/lang/Iterable;

    .line 80
    .line 81
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    div-int p1, v8, p1

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    rem-int/2addr v8, p3

    .line 100
    new-instance p3, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const/4 v0, 0x0

    .line 110
    move v1, v0

    .line 111
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_8

    .line 116
    .line 117
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    add-int/lit8 v4, v1, 0x1

    .line 122
    .line 123
    if-ltz v1, :cond_7

    .line 124
    .line 125
    check-cast v2, Ljava/lang/String;

    .line 126
    .line 127
    if-ge v1, v8, :cond_5

    .line 128
    .line 129
    move v1, v7

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    move v1, v0

    .line 132
    :goto_2
    add-int/2addr v1, p1

    .line 133
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ljava/util/List;

    .line 138
    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    move-object v2, v5

    .line 142
    :cond_6
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 147
    .line 148
    .line 149
    move v1, v4

    .line 150
    goto :goto_1

    .line 151
    :cond_7
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 152
    .line 153
    .line 154
    throw v3

    .line 155
    :cond_8
    return-object p3

    .line 156
    :cond_9
    move-object p2, p1

    .line 157
    check-cast p2, Ljava/util/Collection;

    .line 158
    .line 159
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-nez p2, :cond_c

    .line 164
    .line 165
    check-cast p1, Ljava/lang/Iterable;

    .line 166
    .line 167
    new-instance p2, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 170
    .line 171
    .line 172
    move-result p3

    .line 173
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    if-eqz p3, :cond_a

    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    check-cast p3, Lorg/wikipedia/page/PageTitle;

    .line 191
    .line 192
    invoke-virtual {p3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_a
    iput v7, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;->label:I

    .line 201
    .line 202
    invoke-virtual {p0, p2, v0}, Lokhttp3/MultipartBody$Builder;->fetchMoreLike(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    if-ne p0, v1, :cond_b

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_b
    return-object p0

    .line 210
    :cond_c
    iget-object p1, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p1, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 213
    .line 214
    iput v6, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;->label:I

    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-static {p1, v8, v0}, Lorg/wikipedia/dataclient/Service$-CC;->getMostRecentEntriesWithImage$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    if-ne p3, v1, :cond_d

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_d
    :goto_4
    check-cast p3, Ljava/util/List;

    .line 227
    .line 228
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-lt p1, v8, :cond_10

    .line 233
    .line 234
    new-instance p1, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-static {p3, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 237
    .line 238
    .line 239
    move-result p2

    .line 240
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .line 242
    .line 243
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result p3

    .line 251
    if-eqz p3, :cond_e

    .line 252
    .line 253
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p3

    .line 257
    check-cast p3, Lorg/wikipedia/history/HistoryEntry;

    .line 258
    .line 259
    iget-object p3, p3, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_e
    iput v8, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceRepository$getPersonalizedPreviewContent$1;->label:I

    .line 266
    .line 267
    invoke-virtual {p0, p1, v0}, Lokhttp3/MultipartBody$Builder;->fetchMoreLike(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    if-ne p0, v1, :cond_f

    .line 272
    .line 273
    :goto_6
    return-object v1

    .line 274
    :cond_f
    return-object p0

    .line 275
    :cond_10
    return-object v5
.end method

.method public getSink()Lokio/Sink;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokio/RealBufferedSink;

    .line 4
    .line 5
    return-object p0
.end method

.method public getSource()Lokio/Source;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokio/RealBufferedSource;

    .line 4
    .line 5
    return-object p0
.end method

.method public transformArrayType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 7

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/Request$Builder;

    .line 4
    .line 5
    iget-object v1, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 8
    .line 9
    iget-boolean p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->isForAnnotationParameter:Z

    .line 10
    .line 11
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;->componentType:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 12
    .line 13
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    move-object v3, v2

    .line 19
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v3, v4

    .line 23
    :goto_0
    if-eqz v3, :cond_2

    .line 24
    .line 25
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;->reflectType:Ljava/lang/Class;

    .line 26
    .line 27
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    move-object v3, v4

    .line 50
    :goto_2
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    invoke-direct {v5, v0, p1, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;Z)V

    .line 54
    .line 55
    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    iget-object p0, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 61
    .line 62
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 63
    .line 64
    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveArrayKotlinType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 69
    .line 70
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    const/4 v0, 0x2

    .line 75
    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    aput-object p3, v0, v1

    .line 79
    .line 80
    aput-object v5, v0, v6

    .line 81
    .line 82
    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p0, p1}, Landroidx/work/OperationKt;->replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 93
    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_3
    invoke-virtual {p0, v6}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_4
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 107
    .line 108
    const/4 v0, 0x6

    .line 109
    invoke-static {p1, p2, v4, v0}, Landroidx/work/OperationKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, v2, p1}, Lokhttp3/MultipartBody$Builder;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-eqz p2, :cond_6

    .line 118
    .line 119
    if-eqz p3, :cond_5

    .line 120
    .line 121
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 125
    .line 126
    :goto_3
    iget-object p2, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 129
    .line 130
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 131
    .line 132
    invoke-virtual {p2, p1, p0, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :cond_6
    iget-object p1, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 140
    .line 141
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 142
    .line 143
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 144
    .line 145
    invoke-virtual {p1, p2, p0, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object p2, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 152
    .line 153
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 154
    .line 155
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 156
    .line 157
    invoke-virtual {p2, p3, p0, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0, v6}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0
.end method

.method public transformJavaType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/Request$Builder;

    .line 4
    .line 5
    iget-object v0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 8
    .line 9
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    .line 15
    .line 16
    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;->reflectType:Ljava/lang/Class;

    .line 17
    .line 18
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_0
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object p0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 44
    .line 45
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveKotlinType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    iget-object p0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 55
    .line 56
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 57
    .line 58
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getUnitType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_2
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v1, :cond_9

    .line 67
    .line 68
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    .line 69
    .line 70
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->reflectType:Ljava/lang/reflect/Type;

    .line 71
    .line 72
    iget-boolean v1, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->isForAnnotationParameter:Z

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    iget-object v1, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->howThisTypeIsUsed:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 77
    .line 78
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 79
    .line 80
    if-eq v1, v4, :cond_3

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_5

    .line 88
    .line 89
    if-nez v3, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0, p1, p2, v2}, Lokhttp3/MultipartBody$Builder;->computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-eqz p0, :cond_4

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNRESOLVED_JAVA_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    filled-new-array {p1}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_5
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    .line 114
    .line 115
    invoke-virtual {p2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->withFlexibility(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {p0, p1, v3, v2}, Lokhttp3/MultipartBody$Builder;->computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-nez v2, :cond_6

    .line 124
    .line 125
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNRESOLVED_JAVA_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    filled-new-array {p1}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    :cond_6
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_UPPER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    .line 141
    .line 142
    invoke-virtual {p2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->withFlexibility(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p0, p1, p2, v2}, Lokhttp3/MultipartBody$Builder;->computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-nez p0, :cond_7

    .line 151
    .line 152
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNRESOLVED_JAVA_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    filled-new-array {p1}, [Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0

    .line 167
    :cond_7
    if-eqz v1, :cond_8

    .line 168
    .line 169
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    .line 170
    .line 171
    invoke-direct {p1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    .line 172
    .line 173
    .line 174
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    .line 175
    .line 176
    invoke-virtual {p2, v2, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 177
    .line 178
    .line 179
    return-object p1

    .line 180
    :cond_8
    invoke-static {v2, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0

    .line 185
    :cond_9
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;

    .line 186
    .line 187
    if-eqz v1, :cond_a

    .line 188
    .line 189
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;

    .line 190
    .line 191
    invoke-virtual {p0, p1, p2, v3}, Lokhttp3/MultipartBody$Builder;->transformArrayType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :cond_a
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    .line 197
    .line 198
    if-eqz v1, :cond_c

    .line 199
    .line 200
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    .line 201
    .line 202
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    if-eqz p1, :cond_b

    .line 207
    .line 208
    invoke-virtual {p0, p1, p2}, Lokhttp3/MultipartBody$Builder;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0

    .line 213
    :cond_b
    iget-object p0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 216
    .line 217
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 218
    .line 219
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getDefaultBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    return-object p0

    .line 224
    :cond_c
    if-nez p1, :cond_d

    .line 225
    .line 226
    iget-object p0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 229
    .line 230
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 231
    .line 232
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getDefaultBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    return-object p0

    .line 237
    :cond_d
    const-string p0, "Unsupported type: "

    .line 238
    .line 239
    invoke-static {p0, p1}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$5(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    return-object v2
.end method
