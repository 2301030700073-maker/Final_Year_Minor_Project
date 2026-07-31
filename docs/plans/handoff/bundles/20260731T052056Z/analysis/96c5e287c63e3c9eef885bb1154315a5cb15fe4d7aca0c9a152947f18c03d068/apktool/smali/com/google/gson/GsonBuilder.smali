.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;


# instance fields
.field public final synthetic $r8$classId:I

.field public excluder:Ljava/lang/Object;

.field public factories:Ljava/lang/Object;

.field public fieldNamingPolicy:Ljava/lang/Object;

.field public hierarchyFactories:Ljava/lang/Object;

.field public instanceCreators:Ljava/lang/Object;

.field public longSerializationPolicy:Ljava/lang/Object;

.field public reflectionFilters:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/gson/GsonBuilder;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object p1, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 133
    sget-object p1, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 134
    sget-object p1, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 135
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 138
    sget-object p1, Lcom/google/gson/Gson;->DEFAULT_OBJECT_TO_NUMBER_STRATEGY:Lcom/google/gson/ToNumberPolicy;

    .line 139
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    return-void

    .line 140
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/GsonBuilder;->$r8$classId:I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 109
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 110
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 111
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    const v2, 0x7f090407

    .line 114
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 115
    const-string p0, "TooltipPopup"

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 p0, 0x3ea

    .line 117
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p0, -0x2

    .line 118
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 119
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p0, -0x3

    .line 120
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p0, 0x7f130011

    .line 121
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p0, 0x18

    .line 122
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;Landroidx/work/impl/Processor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/gson/GsonBuilder;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 147
    iput-object p3, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 148
    iput-object p4, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 149
    iput-object p5, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 150
    iput-object p6, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 151
    iput-object p7, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 153
    new-instance p0, Landroidx/work/SystemClock;

    invoke-direct {p0}, Landroidx/work/SystemClock;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 106
    iput p8, p0, Lcom/google/gson/GsonBuilder;->$r8$classId:I

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 105
    iput p9, p0, Lcom/google/gson/GsonBuilder;->$r8$classId:I

    iput-object p2, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    iput-object p8, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/gson/GsonBuilder;->$r8$classId:I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 143
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 144
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/hcaptcha/sdk/HCaptcha;Lcom/google/gson/GsonBuilder;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/google/gson/GsonBuilder;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 25
    .line 26
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;

    .line 27
    .line 28
    const/4 p4, 0x1

    .line 29
    invoke-direct {p2, p0, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;-><init>(Lcom/google/gson/GsonBuilder;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lcoil3/size/ViewSizeResolver$size$3$1;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 37
    .line 38
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;

    .line 39
    .line 40
    const/4 p4, 0x0

    .line 41
    invoke-direct {p2, p0, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;-><init>(Lcom/google/gson/GsonBuilder;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lcoil3/size/ViewSizeResolver$size$3$1;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_1

    .line 73
    .line 74
    add-int/lit8 p3, p4, 0x1

    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p5

    .line 80
    check-cast p5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    .line 81
    .line 82
    iget v0, p5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->id_:I

    .line 83
    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v2, Lcom/hcaptcha/sdk/HCaptcha;

    .line 93
    .line 94
    invoke-direct {v1, v2, p5, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;-><init>(Lcom/hcaptcha/sdk/HCaptcha;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move p4, p3

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 103
    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/views/WikiSwipeRefreshLayout;Landroid/widget/FrameLayout;Lorg/wikipedia/page/PageActionTabLayout;Lorg/wikipedia/views/WikiErrorView;Lorg/wikipedia/page/leadimages/PageHeaderView;Landroid/widget/ImageView;Lorg/wikipedia/views/WikiSwipeRefreshLayout;Lorg/wikipedia/views/ObservableWebView;)V
    .locals 0

    const/16 p8, 0xc

    iput p8, p0, Lcom/google/gson/GsonBuilder;->$r8$classId:I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 125
    iput-object p2, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 126
    iput-object p3, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 127
    iput-object p4, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 128
    iput-object p5, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 129
    iput-object p6, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 130
    iput-object p7, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    return-void
.end method

.method public static createSimpleSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 7

    .line 1
    invoke-static {p0}, Landroidx/work/OperationKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p0}, Lcoil3/util/ContextsKt;->getReceiverTypeFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p0}, Lcoil3/util/ContextsKt;->getContextReceiverTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {p0}, Lcoil3/util/ContextsKt;->getValueParameterTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v5, v4

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    .line 27
    .line 28
    const/16 v6, 0xa

    .line 29
    .line 30
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 52
    .line 53
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v6, 0x1

    .line 62
    move-object v5, p1

    .line 63
    invoke-static/range {v0 .. v6}, Lcoil3/util/ContextsKt;->createFunctionType(Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public static final simpleType$collectAllArguments(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lcom/google/gson/GsonBuilder;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->argument_:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/hcaptcha/sdk/HCaptcha;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 13
    .line 14
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    .line 15
    .line 16
    and-int/lit16 v3, v2, 0x100

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/16 v5, 0x100

    .line 20
    .line 21
    if-ne v3, v5, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->outerType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v3, 0x200

    .line 27
    .line 28
    and-int/2addr v2, v3

    .line 29
    if-ne v2, v3, :cond_1

    .line 30
    .line 31
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->outerTypeId_:I

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p0, v4

    .line 39
    :goto_0
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/google/gson/GsonBuilder;->simpleType$collectAllArguments(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lcom/google/gson/GsonBuilder;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :cond_2
    if-nez v4, :cond_3

    .line 46
    .line 47
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 48
    .line 49
    :cond_3
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static toAttributes(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lokhttp3/FormBody$Builder;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lokhttp3/FormBody$Builder;

    .line 46
    .line 47
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    .line 48
    .line 49
    invoke-direct {v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lokhttp3/FormBody$Builder;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->flatten(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lokhttp3/FormBody$Builder;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Lokhttp3/FormBody$Builder;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public static final typeConstructor$notFoundClass(Lcom/google/gson/GsonBuilder;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;I)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/hcaptcha/sdk/HCaptcha;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 8
    .line 9
    invoke-static {v1, p2}, Landroidx/room/Room;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-direct {v1, p0, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;-><init>(Lcom/google/gson/GsonBuilder;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->argument_:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1;

    .line 62
    .line 63
    invoke-static {p2, p0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ge v1, p0, :cond_1

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    iget-object p0, v0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 89
    .line 90
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->ctaButtonText:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Lcoil3/ImageLoader$Builder;

    .line 93
    .line 94
    invoke-virtual {p0, p2, p1}, Lcoil3/ImageLoader$Builder;->getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method


# virtual methods
.method public create()Lcom/google/gson/Gson;
    .locals 9

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/2addr v3, v1

    .line 20
    add-int/lit8 v3, v3, 0x3

    .line 21
    .line 22
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    sget-boolean v1, Lcom/google/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Lcom/google/gson/internal/Excluder;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v4, Lcom/google/gson/FieldNamingPolicy;

    .line 54
    .line 55
    move-object v6, v1

    .line 56
    move-object v1, v3

    .line 57
    new-instance v3, Ljava/util/HashMap;

    .line 58
    .line 59
    iget-object v7, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v7, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    iget-object v7, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v7, Lcom/google/gson/LongSerializationPolicy;

    .line 69
    .line 70
    new-instance v8, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    .line 74
    .line 75
    new-instance v6, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .line 79
    .line 80
    new-instance v6, Ljava/util/ArrayList;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Ljava/util/LinkedList;

    .line 85
    .line 86
    invoke-direct {v6, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    .line 88
    .line 89
    move-object v2, v4

    .line 90
    move-object v4, v7

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingPolicy;Ljava/util/HashMap;Lcom/google/gson/LongSerializationPolicy;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method public getOwnTypeParameters()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public loadFromBackStack()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    .line 17
    .line 18
    iget-object v1, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lorg/wikipedia/page/PageBackStackItem;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v1, p0

    .line 33
    check-cast v1, Lorg/wikipedia/page/PageFragment;

    .line 34
    .line 35
    iget-object v2, v0, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    .line 36
    .line 37
    iget-object v3, v0, Lorg/wikipedia/page/PageBackStackItem;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 38
    .line 39
    iget v5, v0, Lorg/wikipedia/page/PageBackStackItem;->scrollY:I

    .line 40
    .line 41
    sget p0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual/range {v1 .. v6}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZIZ)V

    .line 46
    .line 47
    .line 48
    iget-object p0, v0, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "Loaded page "

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p0, " from backstack"

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public loadTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcom/google/gson/GsonBuilder;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/gson/GsonBuilder;->loadTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    return-object v0
.end method

.method public registerTypeAdapter(Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    .line 2
    .line 3
    const-class v1, Lorg/maplibre/geojson/BoundingBox;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 9
    .line 10
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v1, v0, p1, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTab(Lorg/wikipedia/page/tabs/Tab;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    xor-int/2addr v0, v1

    .line 15
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 16
    .line 17
    return v0
.end method

.method public simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/hcaptcha/sdk/HCaptcha;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 12
    .line 13
    iget-object v4, v2, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 16
    .line 17
    iget-object v5, v2, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 20
    .line 21
    iget-object v6, v2, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v6, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasClassName()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const/16 v8, 0x80

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    iget v7, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    .line 37
    .line 38
    iget-object v9, v2, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 41
    .line 42
    invoke-static {v9, v7}, Landroidx/room/Room;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget-boolean v7, v7, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->local:Z

    .line 47
    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    iget-object v2, v2, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 53
    .line 54
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->descriptionText:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget v7, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    .line 63
    .line 64
    and-int/2addr v7, v8

    .line 65
    if-ne v7, v8, :cond_1

    .line 66
    .line 67
    iget v7, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    .line 68
    .line 69
    iget-object v9, v2, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 72
    .line 73
    invoke-static {v9, v7}, Landroidx/room/Room;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-boolean v7, v7, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->local:Z

    .line 78
    .line 79
    if-eqz v7, :cond_1

    .line 80
    .line 81
    iget-object v2, v2, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 84
    .line 85
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->descriptionText:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasClassName()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const/4 v7, 0x0

    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Lcoil3/size/ViewSizeResolver$size$3$1;

    .line 102
    .line 103
    iget v8, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    .line 104
    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v2, v8}, Lcoil3/size/ViewSizeResolver$size$3$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 114
    .line 115
    if-nez v2, :cond_8

    .line 116
    .line 117
    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    .line 118
    .line 119
    invoke-static {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->typeConstructor$notFoundClass(Lcom/google/gson/GsonBuilder;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;I)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_2
    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    .line 126
    .line 127
    and-int/lit8 v9, v2, 0x20

    .line 128
    .line 129
    const/16 v11, 0x20

    .line 130
    .line 131
    if-ne v9, v11, :cond_3

    .line 132
    .line 133
    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameter_:I

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lcom/google/gson/GsonBuilder;->loadTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-nez v2, :cond_8

    .line 140
    .line 141
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    .line 142
    .line 143
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 144
    .line 145
    iget v8, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameter_:I

    .line 146
    .line 147
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    iget-object v9, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v9, Ljava/lang/String;

    .line 154
    .line 155
    filled-new-array {v8, v9}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-static {v2, v8}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeConstructor;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :cond_3
    and-int/lit8 v9, v2, 0x40

    .line 166
    .line 167
    const/16 v11, 0x40

    .line 168
    .line 169
    if-ne v9, v11, :cond_7

    .line 170
    .line 171
    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameterName_:I

    .line 172
    .line 173
    invoke-interface {v5, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->getOwnTypeParameters()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-eqz v9, :cond_5

    .line 190
    .line 191
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    move-object v11, v9

    .line 196
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 197
    .line 198
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_4

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_5
    const/4 v9, 0x0

    .line 214
    :goto_1
    move-object v8, v9

    .line 215
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 216
    .line 217
    if-nez v8, :cond_6

    .line 218
    .line 219
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    .line 220
    .line 221
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER_BY_NAME:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 222
    .line 223
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    filled-new-array {v2, v9}, [Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-static {v8, v2}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeConstructor;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    goto :goto_3

    .line 236
    :cond_6
    move-object v2, v8

    .line 237
    goto :goto_2

    .line 238
    :cond_7
    and-int/2addr v2, v8

    .line 239
    if-ne v2, v8, :cond_9

    .line 240
    .line 241
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v2, Lcoil3/size/ViewSizeResolver$size$3$1;

    .line 244
    .line 245
    iget v8, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    .line 246
    .line 247
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    invoke-virtual {v2, v8}, Lcoil3/size/ViewSizeResolver$size$3$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 256
    .line 257
    if-nez v2, :cond_8

    .line 258
    .line 259
    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    .line 260
    .line 261
    invoke-static {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->typeConstructor$notFoundClass(Lcom/google/gson/GsonBuilder;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;I)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    :cond_8
    :goto_2
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_9
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    .line 274
    .line 275
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNKNOWN_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 276
    .line 277
    new-array v8, v7, [Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {v2, v8}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeConstructor;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    :goto_3
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    const/4 v15, 0x1

    .line 292
    if-eqz v8, :cond_a

    .line 293
    .line 294
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    .line 295
    .line 296
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->TYPE_FOR_ERROR_TYPE_CONSTRUCTOR:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    filled-new-array {v1}, [Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-static {v1, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    check-cast v1, [Ljava/lang/String;

    .line 314
    .line 315
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 316
    .line 317
    invoke-static {v0, v3, v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeWithArguments(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    return-object v0

    .line 322
    :cond_a
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    .line 323
    .line 324
    iget-object v9, v6, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 327
    .line 328
    new-instance v11, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 329
    .line 330
    const/16 v12, 0x17

    .line 331
    .line 332
    invoke-direct {v11, v12, v0, v1}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    invoke-direct {v8, v9, v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 336
    .line 337
    .line 338
    iget-object v9, v6, Lorg/wikipedia/databinding/ActivityGalleryBinding;->progressBar:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v9, Ljava/util/List;

    .line 341
    .line 342
    invoke-static {v9, v8}, Lcom/google/gson/GsonBuilder;->toAttributes(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    invoke-static {v1, v0}, Lcom/google/gson/GsonBuilder;->simpleType$collectAllArguments(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lcom/google/gson/GsonBuilder;)Ljava/util/ArrayList;

    .line 347
    .line 348
    .line 349
    move-result-object v11

    .line 350
    new-instance v12, Ljava/util/ArrayList;

    .line 351
    .line 352
    const/16 v13, 0xa

    .line 353
    .line 354
    invoke-static {v11, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 355
    .line 356
    .line 357
    move-result v14

    .line 358
    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    move v14, v7

    .line 366
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v16

    .line 370
    const/16 v17, 0x0

    .line 371
    .line 372
    if-eqz v16, :cond_15

    .line 373
    .line 374
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v16

    .line 378
    add-int/lit8 v18, v14, 0x1

    .line 379
    .line 380
    const/16 v19, 0x0

    .line 381
    .line 382
    if-ltz v14, :cond_14

    .line 383
    .line 384
    move-object/from16 v10, v16

    .line 385
    .line 386
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;

    .line 387
    .line 388
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    invoke-static {v7, v14}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 400
    .line 401
    iget-object v14, v10, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->projection_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    .line 402
    .line 403
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->STAR:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    .line 404
    .line 405
    if-ne v14, v13, :cond_c

    .line 406
    .line 407
    if-nez v7, :cond_b

    .line 408
    .line 409
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;

    .line 410
    .line 411
    iget-object v10, v6, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIcon:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    .line 414
    .line 415
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 416
    .line 417
    .line 418
    move-result-object v10

    .line 419
    invoke-direct {v7, v10}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_8

    .line 423
    .line 424
    :cond_b
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 425
    .line 426
    invoke-direct {v10, v7}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    .line 427
    .line 428
    .line 429
    :goto_5
    move-object v7, v10

    .line 430
    goto :goto_8

    .line 431
    :cond_c
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$6:[I

    .line 435
    .line 436
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 437
    .line 438
    .line 439
    move-result v13

    .line 440
    aget v7, v7, v13

    .line 441
    .line 442
    const/4 v13, 0x2

    .line 443
    if-eq v7, v15, :cond_10

    .line 444
    .line 445
    if-eq v7, v13, :cond_f

    .line 446
    .line 447
    const/4 v15, 0x3

    .line 448
    if-eq v7, v15, :cond_e

    .line 449
    .line 450
    const/4 v15, 0x4

    .line 451
    if-eq v7, v15, :cond_d

    .line 452
    .line 453
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 454
    .line 455
    .line 456
    return-object v17

    .line 457
    :cond_d
    const-string v0, "Only IN, OUT and INV are supported. Actual argument: "

    .line 458
    .line 459
    invoke-static {v0, v14}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    return-object v17

    .line 463
    :cond_e
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 464
    .line 465
    goto :goto_6

    .line 466
    :cond_f
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 467
    .line 468
    goto :goto_6

    .line 469
    :cond_10
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 470
    .line 471
    :goto_6
    iget v14, v10, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->bitField0_:I

    .line 472
    .line 473
    and-int/lit8 v15, v14, 0x2

    .line 474
    .line 475
    if-ne v15, v13, :cond_11

    .line 476
    .line 477
    iget-object v13, v10, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->type_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 478
    .line 479
    goto :goto_7

    .line 480
    :cond_11
    and-int/lit8 v13, v14, 0x4

    .line 481
    .line 482
    const/4 v15, 0x4

    .line 483
    if-ne v13, v15, :cond_12

    .line 484
    .line 485
    iget v13, v10, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->typeId_:I

    .line 486
    .line 487
    invoke-virtual {v3, v13}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 488
    .line 489
    .line 490
    move-result-object v13

    .line 491
    goto :goto_7

    .line 492
    :cond_12
    move-object/from16 v13, v19

    .line 493
    .line 494
    :goto_7
    if-nez v13, :cond_13

    .line 495
    .line 496
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 497
    .line 498
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->NO_RECORDED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 499
    .line 500
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v10

    .line 504
    filled-new-array {v10}, [Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v10

    .line 508
    invoke-static {v13, v10}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 509
    .line 510
    .line 511
    move-result-object v10

    .line 512
    invoke-direct {v7, v10}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 513
    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_13
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 517
    .line 518
    invoke-virtual {v0, v13}, Lcom/google/gson/GsonBuilder;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 519
    .line 520
    .line 521
    move-result-object v13

    .line 522
    invoke-direct {v10, v13, v7}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 523
    .line 524
    .line 525
    goto :goto_5

    .line 526
    :goto_8
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move/from16 v14, v18

    .line 530
    .line 531
    const/4 v7, 0x0

    .line 532
    const/16 v13, 0xa

    .line 533
    .line 534
    const/4 v15, 0x1

    .line 535
    goto/16 :goto_4

    .line 536
    .line 537
    :cond_14
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 538
    .line 539
    .line 540
    throw v19

    .line 541
    :cond_15
    const/16 v19, 0x0

    .line 542
    .line 543
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 544
    .line 545
    .line 546
    move-result-object v12

    .line 547
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    if-eqz p2, :cond_1a

    .line 552
    .line 553
    instance-of v10, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 554
    .line 555
    if-eqz v10, :cond_1a

    .line 556
    .line 557
    move-object v11, v7

    .line 558
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 559
    .line 560
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    .line 561
    .line 562
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 563
    .line 564
    .line 565
    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;

    .line 566
    .line 567
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;->getParameters()Ljava/util/List;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    new-instance v4, Ljava/util/ArrayList;

    .line 572
    .line 573
    const/16 v7, 0xa

    .line 574
    .line 575
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 576
    .line 577
    .line 578
    move-result v7

    .line 579
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 580
    .line 581
    .line 582
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 587
    .line 588
    .line 589
    move-result v7

    .line 590
    if-eqz v7, :cond_16

    .line 591
    .line 592
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v7

    .line 596
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 597
    .line 598
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 599
    .line 600
    .line 601
    move-result-object v7

    .line 602
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    goto :goto_9

    .line 606
    :cond_16
    invoke-static {v4, v12}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 611
    .line 612
    .line 613
    move-result-object v13

    .line 614
    new-instance v21, Lokio/internal/DefaultSocket;

    .line 615
    .line 616
    const/4 v14, 0x4

    .line 617
    move-object/from16 v10, v19

    .line 618
    .line 619
    move-object/from16 v9, v21

    .line 620
    .line 621
    invoke-direct/range {v9 .. v14}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 622
    .line 623
    .line 624
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lokhttp3/FormBody$Builder;

    .line 625
    .line 626
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 627
    .line 628
    .line 629
    sget-object v22, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 630
    .line 631
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    const/16 v24, 0x0

    .line 635
    .line 636
    const/16 v25, 0x1

    .line 637
    .line 638
    const/16 v23, 0x0

    .line 639
    .line 640
    invoke-virtual/range {v20 .. v25}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandRecursively(Lokio/internal/DefaultSocket;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    iget-object v4, v6, Lorg/wikipedia/databinding/ActivityGalleryBinding;->progressBar:Ljava/lang/Object;

    .line 645
    .line 646
    check-cast v4, Ljava/util/List;

    .line 647
    .line 648
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 649
    .line 650
    .line 651
    move-result-object v7

    .line 652
    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 653
    .line 654
    .line 655
    move-result-object v7

    .line 656
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 657
    .line 658
    .line 659
    move-result v8

    .line 660
    if-eqz v8, :cond_17

    .line 661
    .line 662
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    .line 663
    .line 664
    goto :goto_a

    .line 665
    :cond_17
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 666
    .line 667
    const/4 v9, 0x0

    .line 668
    invoke-direct {v8, v9, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(ILjava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    move-object v7, v8

    .line 672
    :goto_a
    invoke-static {v4, v7}, Lcom/google/gson/GsonBuilder;->toAttributes(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 677
    .line 678
    .line 679
    move-result v7

    .line 680
    if-nez v7, :cond_19

    .line 681
    .line 682
    iget-boolean v7, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->nullable_:Z

    .line 683
    .line 684
    if-eqz v7, :cond_18

    .line 685
    .line 686
    goto :goto_b

    .line 687
    :cond_18
    const/4 v15, 0x0

    .line 688
    goto :goto_c

    .line 689
    :cond_19
    :goto_b
    const/4 v15, 0x1

    .line 690
    :goto_c
    invoke-virtual {v2, v15}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    goto/16 :goto_13

    .line 699
    .line 700
    :cond_1a
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->SUSPEND_TYPE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 701
    .line 702
    iget v8, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flags_:I

    .line 703
    .line 704
    invoke-virtual {v7, v8}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 705
    .line 706
    .line 707
    move-result-object v7

    .line 708
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 709
    .line 710
    .line 711
    move-result v7

    .line 712
    iget-boolean v8, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->nullable_:Z

    .line 713
    .line 714
    if-eqz v7, :cond_27

    .line 715
    .line 716
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 717
    .line 718
    .line 719
    move-result-object v7

    .line 720
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 721
    .line 722
    .line 723
    move-result v7

    .line 724
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 725
    .line 726
    .line 727
    move-result v10

    .line 728
    sub-int/2addr v7, v10

    .line 729
    if-eqz v7, :cond_1d

    .line 730
    .line 731
    const/4 v10, 0x1

    .line 732
    if-eq v7, v10, :cond_1c

    .line 733
    .line 734
    :cond_1b
    :goto_d
    move-object/from16 v10, v19

    .line 735
    .line 736
    goto/16 :goto_12

    .line 737
    .line 738
    :cond_1c
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 739
    .line 740
    .line 741
    move-result v4

    .line 742
    sub-int/2addr v4, v10

    .line 743
    if-ltz v4, :cond_1b

    .line 744
    .line 745
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 746
    .line 747
    .line 748
    move-result-object v7

    .line 749
    invoke-virtual {v7, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getSuspendFunction(I)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 750
    .line 751
    .line 752
    move-result-object v4

    .line 753
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    invoke-static {v12, v9, v4, v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 761
    .line 762
    .line 763
    move-result-object v10

    .line 764
    goto/16 :goto_12

    .line 765
    .line 766
    :cond_1d
    invoke-static {v12, v9, v2, v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 767
    .line 768
    .line 769
    move-result-object v10

    .line 770
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 771
    .line 772
    .line 773
    move-result-object v7

    .line 774
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 775
    .line 776
    .line 777
    move-result-object v7

    .line 778
    if-eqz v7, :cond_1e

    .line 779
    .line 780
    invoke-static {v7}, Lcoil3/util/ContextsKt;->getFunctionalClassKind(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    .line 781
    .line 782
    .line 783
    move-result-object v7

    .line 784
    goto :goto_e

    .line 785
    :cond_1e
    move-object/from16 v7, v19

    .line 786
    .line 787
    :goto_e
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    .line 788
    .line 789
    if-ne v7, v8, :cond_1b

    .line 790
    .line 791
    invoke-static {v10}, Lcoil3/util/ContextsKt;->getValueParameterTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    .line 792
    .line 793
    .line 794
    move-result-object v7

    .line 795
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v7

    .line 799
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 800
    .line 801
    if-eqz v7, :cond_1b

    .line 802
    .line 803
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 804
    .line 805
    .line 806
    move-result-object v7

    .line 807
    if-nez v7, :cond_1f

    .line 808
    .line 809
    goto :goto_d

    .line 810
    :cond_1f
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 811
    .line 812
    .line 813
    move-result-object v8

    .line 814
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 815
    .line 816
    .line 817
    move-result-object v8

    .line 818
    if-eqz v8, :cond_20

    .line 819
    .line 820
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 821
    .line 822
    .line 823
    move-result-object v8

    .line 824
    goto :goto_f

    .line 825
    :cond_20
    move-object/from16 v8, v19

    .line 826
    .line 827
    :goto_f
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 828
    .line 829
    .line 830
    move-result-object v9

    .line 831
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 832
    .line 833
    .line 834
    move-result v9

    .line 835
    const/4 v11, 0x1

    .line 836
    if-ne v9, v11, :cond_25

    .line 837
    .line 838
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->CONTINUATION_INTERFACE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 839
    .line 840
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v9

    .line 844
    if-nez v9, :cond_21

    .line 845
    .line 846
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializerKt;->EXPERIMENTAL_CONTINUATION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 847
    .line 848
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v8

    .line 852
    if-nez v8, :cond_21

    .line 853
    .line 854
    goto :goto_12

    .line 855
    :cond_21
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 856
    .line 857
    .line 858
    move-result-object v7

    .line 859
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v7

    .line 863
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 864
    .line 865
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 866
    .line 867
    .line 868
    move-result-object v7

    .line 869
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    .line 871
    .line 872
    instance-of v8, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    .line 873
    .line 874
    if-eqz v8, :cond_22

    .line 875
    .line 876
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    .line 877
    .line 878
    goto :goto_10

    .line 879
    :cond_22
    move-object/from16 v4, v19

    .line 880
    .line 881
    :goto_10
    if-eqz v4, :cond_23

    .line 882
    .line 883
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->fqNameOrNull(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 884
    .line 885
    .line 886
    move-result-object v4

    .line 887
    goto :goto_11

    .line 888
    :cond_23
    move-object/from16 v4, v19

    .line 889
    .line 890
    :goto_11
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/SuspendFunctionTypeUtilKt;->KOTLIN_SUSPEND_BUILT_IN_FUNCTION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 891
    .line 892
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    move-result v4

    .line 896
    if-eqz v4, :cond_24

    .line 897
    .line 898
    invoke-static {v10, v7}, Lcom/google/gson/GsonBuilder;->createSimpleSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 899
    .line 900
    .line 901
    move-result-object v10

    .line 902
    goto :goto_12

    .line 903
    :cond_24
    invoke-static {v10, v7}, Lcom/google/gson/GsonBuilder;->createSimpleSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 904
    .line 905
    .line 906
    move-result-object v10

    .line 907
    :cond_25
    :goto_12
    if-nez v10, :cond_26

    .line 908
    .line 909
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    .line 910
    .line 911
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->INCONSISTENT_SUSPEND_FUNCTION:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 912
    .line 913
    const/4 v9, 0x0

    .line 914
    new-array v7, v9, [Ljava/lang/String;

    .line 915
    .line 916
    invoke-static {v4, v12, v2, v7}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeWithArguments(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 917
    .line 918
    .line 919
    move-result-object v2

    .line 920
    goto :goto_13

    .line 921
    :cond_26
    move-object v2, v10

    .line 922
    goto :goto_13

    .line 923
    :cond_27
    invoke-static {v12, v9, v2, v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->DEFINITELY_NOT_NULL_TYPE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 928
    .line 929
    iget v7, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flags_:I

    .line 930
    .line 931
    invoke-virtual {v4, v7}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 932
    .line 933
    .line 934
    move-result-object v4

    .line 935
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 936
    .line 937
    .line 938
    move-result v4

    .line 939
    if-eqz v4, :cond_29

    .line 940
    .line 941
    const/4 v10, 0x1

    .line 942
    invoke-static {v2, v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->makeDefinitelyNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Z)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    .line 943
    .line 944
    .line 945
    move-result-object v4

    .line 946
    if-eqz v4, :cond_28

    .line 947
    .line 948
    move-object v2, v4

    .line 949
    goto :goto_13

    .line 950
    :cond_28
    const-string v0, "null DefinitelyNotNullType for \'"

    .line 951
    .line 952
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 953
    .line 954
    .line 955
    return-object v17

    .line 956
    :cond_29
    :goto_13
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    .line 957
    .line 958
    and-int/lit16 v7, v4, 0x400

    .line 959
    .line 960
    const/16 v8, 0x400

    .line 961
    .line 962
    if-ne v7, v8, :cond_2a

    .line 963
    .line 964
    iget-object v10, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->abbreviatedType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 965
    .line 966
    goto :goto_14

    .line 967
    :cond_2a
    const/16 v7, 0x800

    .line 968
    .line 969
    and-int/2addr v4, v7

    .line 970
    if-ne v4, v7, :cond_2b

    .line 971
    .line 972
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->abbreviatedTypeId_:I

    .line 973
    .line 974
    invoke-virtual {v3, v4}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 975
    .line 976
    .line 977
    move-result-object v10

    .line 978
    goto :goto_14

    .line 979
    :cond_2b
    move-object/from16 v10, v19

    .line 980
    .line 981
    :goto_14
    if-eqz v10, :cond_2c

    .line 982
    .line 983
    const/4 v9, 0x0

    .line 984
    invoke-virtual {v0, v10, v9}, Lcom/google/gson/GsonBuilder;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 989
    .line 990
    .line 991
    move-result-object v2

    .line 992
    :cond_2c
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasClassName()Z

    .line 993
    .line 994
    .line 995
    move-result v0

    .line 996
    if-eqz v0, :cond_2d

    .line 997
    .line 998
    iget v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    .line 999
    .line 1000
    invoke-static {v5, v0}, Landroidx/room/Room;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 1001
    .line 1002
    .line 1003
    iget-object v0, v6, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 1004
    .line 1005
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;

    .line 1006
    .line 1007
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1011
    .line 1012
    .line 1013
    :cond_2d
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/gson/GsonBuilder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lcom/google/gson/GsonBuilder;

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const-string p0, ""

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, ". Child of "

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/hcaptcha/sdk/HCaptcha;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    and-int/2addr v1, v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    iget-object v1, v0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 18
    .line 19
    iget v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleTypeCapabilitiesId_:I

    .line 20
    .line 21
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, p1, v3}, Lcom/google/gson/GsonBuilder;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v4, v0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 32
    .line 33
    iget v5, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    .line 34
    .line 35
    and-int/lit8 v6, v5, 0x4

    .line 36
    .line 37
    const/4 v7, 0x4

    .line 38
    if-ne v6, v7, :cond_0

    .line 39
    .line 40
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleUpperBound_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v6, 0x8

    .line 44
    .line 45
    and-int/2addr v5, v6

    .line 46
    if-ne v5, v6, :cond_1

    .line 47
    .line 48
    iget v5, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleUpperBoundId_:I

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v4, 0x0

    .line 56
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v4, v3}, Lcom/google/gson/GsonBuilder;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 66
    .line 67
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->infoContainer:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;

    .line 70
    .line 71
    invoke-interface {v0, p1, v1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;->create(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/google/gson/GsonBuilder;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public updateCurrentBackStackItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    .line 17
    .line 18
    iget-object v1, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lorg/wikipedia/page/PageBackStackItem;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lorg/wikipedia/views/ObservableWebView;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, v0, Lorg/wikipedia/page/PageBackStackItem;->scrollY:I

    .line 39
    .line 40
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lorg/wikipedia/page/PageViewModel;

    .line 43
    .line 44
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    iget-object v0, v0, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    .line 51
    .line 52
    iget-object v1, p0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v1, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p0, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->createConstantValue(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "Unsupported annotation argument: "

    .line 18
    .line 19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ErrorValue$ErrorValueWithMessage;

    .line 30
    .line 31
    invoke-direct {v0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ErrorValue$ErrorValueWithMessage;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object p2, v0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 9
    .line 10
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Ljava/util/List;)Lcom/google/gson/GsonBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lokhttp3/Request$Builder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, v1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p0, v1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p2, v1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v0, v1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 28
    .line 29
    iput-object p1, v1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 30
    .line 31
    return-object v1
.end method

.method public visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
    .locals 2

    .line 1
    new-instance v0, Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p0}, Lokio/internal/DefaultSocket;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lkotlin/reflect/jvm/internal/impl/name/Name;Lcom/google/gson/GsonBuilder;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    .line 2
    .line 3
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public visitEnd()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/HashMap;

    .line 12
    .line 13
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/SpecialJvmAnnotations;->JAVA_LANG_ANNOTATION_REPEATABLE:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const-string/jumbo v3, "value"

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    instance-of v5, v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v3, v6

    .line 43
    :goto_0
    if-nez v3, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    .line 47
    .line 48
    instance-of v5, v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    move-object v6, v3

    .line 53
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    .line 54
    .line 55
    :cond_3
    if-nez v6, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iget-object v3, v6, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    .line 59
    .line 60
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isImplicitRepeatableContainer(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    :goto_1
    if-eqz v4, :cond_5

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_5
    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isImplicitRepeatableContainer(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    :goto_2
    return-void

    .line 76
    :cond_6
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Ljava/util/List;

    .line 79
    .line 80
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 85
    .line 86
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 93
    .line 94
    invoke-direct {v1, v3, v2, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
