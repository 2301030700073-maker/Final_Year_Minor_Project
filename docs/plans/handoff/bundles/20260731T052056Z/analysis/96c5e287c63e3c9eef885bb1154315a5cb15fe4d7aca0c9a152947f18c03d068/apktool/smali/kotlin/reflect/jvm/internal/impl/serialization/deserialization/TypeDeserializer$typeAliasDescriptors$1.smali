.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/gson/GsonBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/gson/GsonBuilder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;->this$0:Lcom/google/gson/GsonBuilder;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;->this$0:Lcom/google/gson/GsonBuilder;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcom/hcaptcha/sdk/HCaptcha;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 21
    .line 22
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    .line 23
    .line 24
    and-int/lit16 v2, v0, 0x100

    .line 25
    .line 26
    const/16 v3, 0x100

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->outerType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 v2, 0x200

    .line 34
    .line 35
    and-int/2addr v0, v2

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->outerTypeId_:I

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_1
    :goto_0
    return-object v1

    .line 45
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lcom/hcaptcha/sdk/HCaptcha;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 58
    .line 59
    invoke-static {v0, p1}, Landroidx/room/Room;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->local:Z

    .line 64
    .line 65
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->toolbar:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    .line 74
    .line 75
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->BLACK_LIST:Ljava/util/Set;

    .line 76
    .line 77
    invoke-virtual {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIcon:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    .line 85
    .line 86
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->findClassifierAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :goto_1
    return-object p0

    .line 91
    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Lcom/hcaptcha/sdk/HCaptcha;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 104
    .line 105
    invoke-static {v0, p1}, Landroidx/room/Room;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->local:Z

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 117
    .line 118
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIcon:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->findClassifierAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    move-object v1, p0

    .line 134
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 135
    .line 136
    :cond_4
    :goto_2
    return-object v1

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
