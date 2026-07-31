.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final annotationDeserializer:Lokhttp3/FormBody$Builder;

.field public final c:Lcom/hcaptcha/sdk/HCaptcha;


# direct methods
.method public constructor <init>(Lcom/hcaptcha/sdk/HCaptcha;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 5
    .line 6
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 11
    .line 12
    iget-object v1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIcon:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    .line 15
    .line 16
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->ctaButtonText:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lcoil3/ImageLoader$Builder;

    .line 19
    .line 20
    invoke-direct {v0, v1, p1}, Lokhttp3/FormBody$Builder;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lcoil3/ImageLoader$Builder;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->annotationDeserializer:Lokhttp3/FormBody$Builder;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final asProtoContainer(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Landroidx/compose/runtime/AbstractApplier;
    .locals 3

    .line 1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;

    .line 6
    .line 7
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    .line 8
    .line 9
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;

    .line 10
    .line 11
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 12
    .line 13
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    .line 26
    .line 27
    invoke-direct {v0, p1, v1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 36
    .line 37
    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->thisAsProtoContainer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public final getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;

    .line 17
    .line 18
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 23
    .line 24
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 27
    .line 28
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, p0, p1, p3, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 35
    .line 36
    .line 37
    return-object p2
.end method

.method public final getPropertyFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 2
    .line 3
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;

    .line 19
    .line 20
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 25
    .line 26
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 29
    .line 30
    new-instance v2, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;

    .line 31
    .line 32
    invoke-direct {v2, p0, p2, p1}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;ZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final loadConstructor(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;
    .locals 14

    .line 1
    iget-object v12, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 2
    .line 3
    iget-object v1, v12, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 11
    .line 12
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;

    .line 13
    .line 14
    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->flags_:I

    .line 15
    .line 16
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v3, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 23
    .line 24
    iget-object v0, v12, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v7, v0

    .line 27
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 28
    .line 29
    iget-object v0, v12, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v8, v0

    .line 32
    check-cast v8, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 33
    .line 34
    iget-object v0, v12, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v9, v0

    .line 37
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 38
    .line 39
    iget-object v0, v12, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v10, v0

    .line 42
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    .line 43
    .line 44
    move-object v0, v2

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    move-object v6, p1

    .line 48
    move/from16 v4, p2

    .line 49
    .line 50
    invoke-direct/range {v0 .. v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 54
    .line 55
    invoke-static {v12, v0, v2}, Lcom/hcaptcha/sdk/HCaptcha;->childContext$default(Lcom/hcaptcha/sdk/HCaptcha;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lcom/hcaptcha/sdk/HCaptcha;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v2, v2, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    .line 62
    .line 63
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->valueParameter_:Ljava/util/List;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3, p1, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    .line 73
    .line 74
    iget v4, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->flags_:I

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    .line 81
    .line 82
    if-nez v3, :cond_0

    .line 83
    .line 84
    const/4 v3, -0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    aget v3, v4, v3

    .line 93
    .line 94
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :pswitch_0
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->LOCAL:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_1
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_2
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PROTECTED:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_3
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :pswitch_4
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_5
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->INTERNAL:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    :goto_1
    invoke-virtual {v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;->isExpect()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isExpect:Z

    .line 153
    .line 154
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONSTRUCTOR_WITH_NON_STABLE_PARAMETER_NAMES:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 155
    .line 156
    iget v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->flags_:I

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    xor-int/lit8 v1, v1, 0x1

    .line 167
    .line 168
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->hasStableParameterNames:Z

    .line 169
    .line 170
    return-object v0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final loadFunction(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedSimpleFunctionDescriptor;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 6
    .line 7
    iget-object v1, v12, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 10
    .line 11
    iget-object v2, v12, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v8, v2

    .line 14
    check-cast v8, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 15
    .line 16
    iget v2, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    .line 17
    .line 18
    const/4 v13, 0x1

    .line 19
    and-int/2addr v2, v13

    .line 20
    if-ne v2, v13, :cond_0

    .line 21
    .line 22
    iget v2, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->flags_:I

    .line 23
    .line 24
    :goto_0
    move v14, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget v2, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->oldFlags_:I

    .line 27
    .line 28
    and-int/lit8 v3, v2, 0x3f

    .line 29
    .line 30
    shr-int/lit8 v2, v2, 0x8

    .line 31
    .line 32
    shl-int/lit8 v2, v2, 0x6

    .line 33
    .line 34
    add-int/2addr v2, v3

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    .line 37
    .line 38
    invoke-virtual {v0, v6, v14, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget v4, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    .line 43
    .line 44
    and-int/lit8 v5, v4, 0x20

    .line 45
    .line 46
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    .line 47
    .line 48
    const/16 v7, 0x40

    .line 49
    .line 50
    const/16 v9, 0x20

    .line 51
    .line 52
    if-ne v5, v9, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    and-int/2addr v4, v7

    .line 56
    if-ne v4, v7, :cond_2

    .line 57
    .line 58
    :goto_2
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    .line 59
    .line 60
    iget-object v5, v12, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v5, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 63
    .line 64
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 67
    .line 68
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;

    .line 69
    .line 70
    invoke-direct {v10, v0, v6, v2, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;I)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v4, v5, v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    move-object v4, v15

    .line 78
    :goto_3
    iget-object v0, v12, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget v2, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->name_:I

    .line 87
    .line 88
    invoke-static {v1, v2}, Landroidx/room/Room;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/SuspendFunctionTypeUtilKt;->KOTLIN_SUSPEND_BUILT_IN_FUNCTION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->EMPTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_3
    iget-object v0, v12, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 110
    .line 111
    :goto_4
    new-instance v16, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedSimpleFunctionDescriptor;

    .line 112
    .line 113
    iget-object v2, v12, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 116
    .line 117
    iget v5, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->name_:I

    .line 118
    .line 119
    invoke-static {v1, v5}, Landroidx/room/Room;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    .line 124
    .line 125
    invoke-virtual {v5, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    .line 130
    .line 131
    if-nez v5, :cond_4

    .line 132
    .line 133
    const/4 v5, -0x1

    .line 134
    goto :goto_5

    .line 135
    :cond_4
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    aget v5, v10, v5

    .line 142
    .line 143
    :goto_5
    if-eq v5, v13, :cond_8

    .line 144
    .line 145
    const/4 v10, 0x2

    .line 146
    if-eq v5, v10, :cond_7

    .line 147
    .line 148
    const/4 v10, 0x3

    .line 149
    if-eq v5, v10, :cond_6

    .line 150
    .line 151
    const/4 v10, 0x4

    .line 152
    if-eq v5, v10, :cond_5

    .line 153
    .line 154
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_5
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_6
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DELEGATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_7
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_8
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 167
    .line 168
    :goto_6
    iget-object v10, v12, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 171
    .line 172
    iget-object v11, v12, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    .line 175
    .line 176
    move-object/from16 v17, v4

    .line 177
    .line 178
    move-object v4, v1

    .line 179
    move-object v1, v2

    .line 180
    const/4 v2, 0x0

    .line 181
    move/from16 v18, v7

    .line 182
    .line 183
    move-object v7, v10

    .line 184
    move-object v10, v11

    .line 185
    const/4 v11, 0x0

    .line 186
    move/from16 v26, v13

    .line 187
    .line 188
    move/from16 v27, v14

    .line 189
    .line 190
    move-object/from16 v13, v17

    .line 191
    .line 192
    move v14, v9

    .line 193
    move-object v9, v0

    .line 194
    move-object/from16 v0, v16

    .line 195
    .line 196
    invoke-direct/range {v0 .. v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedSimpleFunctionDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 197
    .line 198
    .line 199
    iget-object v1, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->typeParameter_:Ljava/util/List;

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {v12, v0, v1}, Lcom/hcaptcha/sdk/HCaptcha;->childContext$default(Lcom/hcaptcha/sdk/HCaptcha;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lcom/hcaptcha/sdk/HCaptcha;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    iget-object v2, v1, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v2, Lcom/google/gson/GsonBuilder;

    .line 211
    .line 212
    iget v3, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    .line 213
    .line 214
    and-int/lit8 v4, v3, 0x20

    .line 215
    .line 216
    const/4 v5, 0x0

    .line 217
    if-ne v4, v14, :cond_9

    .line 218
    .line 219
    iget-object v3, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_9
    and-int/lit8 v3, v3, 0x40

    .line 223
    .line 224
    move/from16 v4, v18

    .line 225
    .line 226
    if-ne v3, v4, :cond_a

    .line 227
    .line 228
    iget v3, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->receiverTypeId_:I

    .line 229
    .line 230
    invoke-virtual {v8, v3}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    goto :goto_7

    .line 235
    :cond_a
    move-object v3, v5

    .line 236
    :goto_7
    if-eqz v3, :cond_b

    .line 237
    .line 238
    invoke-virtual {v2, v3}, Lcom/google/gson/GsonBuilder;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    if-eqz v3, :cond_b

    .line 243
    .line 244
    invoke-static {v0, v3, v13}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createExtensionReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    move-object/from16 v17, v3

    .line 249
    .line 250
    goto :goto_8

    .line 251
    :cond_b
    move-object/from16 v17, v5

    .line 252
    .line 253
    :goto_8
    iget-object v3, v12, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 256
    .line 257
    instance-of v4, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 258
    .line 259
    if-eqz v4, :cond_c

    .line 260
    .line 261
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_c
    move-object v3, v5

    .line 265
    :goto_9
    if-eqz v3, :cond_d

    .line 266
    .line 267
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    move-object/from16 v18, v3

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_d
    move-object/from16 v18, v5

    .line 275
    .line 276
    :goto_a
    iget-object v3, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->contextReceiverType_:Ljava/util/List;

    .line 277
    .line 278
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-nez v4, :cond_e

    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_e
    move-object v3, v5

    .line 286
    :goto_b
    if-nez v3, :cond_10

    .line 287
    .line 288
    iget-object v3, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->contextReceiverTypeId_:Ljava/util/List;

    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    new-instance v4, Ljava/util/ArrayList;

    .line 294
    .line 295
    const/16 v7, 0xa

    .line 296
    .line 297
    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    if-eqz v7, :cond_f

    .line 313
    .line 314
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    check-cast v7, Ljava/lang/Integer;

    .line 319
    .line 320
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    invoke-virtual {v8, v7}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    goto :goto_c

    .line 335
    :cond_f
    move-object v3, v4

    .line 336
    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    const/4 v7, 0x0

    .line 346
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    if-eqz v9, :cond_13

    .line 351
    .line 352
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v9

    .line 356
    add-int/lit8 v10, v7, 0x1

    .line 357
    .line 358
    if-ltz v7, :cond_12

    .line 359
    .line 360
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 361
    .line 362
    invoke-virtual {v2, v9}, Lcom/google/gson/GsonBuilder;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    invoke-static {v0, v9, v5, v15, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createContextReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;I)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    if-eqz v7, :cond_11

    .line 371
    .line 372
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    :cond_11
    move v7, v10

    .line 376
    goto :goto_d

    .line 377
    :cond_12
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 378
    .line 379
    .line 380
    throw v5

    .line 381
    :cond_13
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->getOwnTypeParameters()Ljava/util/List;

    .line 382
    .line 383
    .line 384
    move-result-object v20

    .line 385
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    .line 388
    .line 389
    iget-object v3, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->valueParameter_:Ljava/util/List;

    .line 390
    .line 391
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    .line 395
    .line 396
    invoke-virtual {v1, v3, v6, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;

    .line 397
    .line 398
    .line 399
    move-result-object v21

    .line 400
    invoke-static {v6, v8}, Landroidx/compose/ui/unit/DpKt;->returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lokhttp3/Dispatcher$promoteAndExecute$Effects;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v2, v1}, Lcom/google/gson/GsonBuilder;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 405
    .line 406
    .line 407
    move-result-object v22

    .line 408
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    .line 409
    .line 410
    move/from16 v2, v27

    .line 411
    .line 412
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    .line 417
    .line 418
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 419
    .line 420
    .line 421
    move-result-object v23

    .line 422
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    .line 423
    .line 424
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    .line 429
    .line 430
    invoke-static {v1}, Lkotlin/text/UStringsKt;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 431
    .line 432
    .line 433
    move-result-object v24

    .line 434
    sget-object v25, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 435
    .line 436
    move-object/from16 v16, v0

    .line 437
    .line 438
    move-object/from16 v19, v4

    .line 439
    .line 440
    invoke-virtual/range {v16 .. v25}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    .line 441
    .line 442
    .line 443
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_OPERATOR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isOperator:Z

    .line 454
    .line 455
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_INFIX:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 456
    .line 457
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isInfix:Z

    .line 466
    .line 467
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXTERNAL_FUNCTION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 468
    .line 469
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isExternal:Z

    .line 478
    .line 479
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_INLINE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 480
    .line 481
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isInline:Z

    .line 490
    .line 491
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_TAILREC:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 492
    .line 493
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isTailrec:Z

    .line 502
    .line 503
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_SUSPEND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 504
    .line 505
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isSuspend:Z

    .line 514
    .line 515
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXPECT_FUNCTION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 516
    .line 517
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isExpect:Z

    .line 526
    .line 527
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_FUNCTION_WITH_NON_STABLE_PARAMETER_NAMES:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 528
    .line 529
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    xor-int/lit8 v1, v1, 0x1

    .line 538
    .line 539
    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->hasStableParameterNames:Z

    .line 540
    .line 541
    iget-object v1, v12, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 544
    .line 545
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->ctaContainer:Ljava/lang/Object;

    .line 546
    .line 547
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    .line 548
    .line 549
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    return-object v0
.end method

.method public final loadProperty(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 8
    .line 9
    move-object/from16 v17, v2

    .line 10
    .line 11
    check-cast v17, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 12
    .line 13
    iget v2, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    and-int/2addr v2, v3

    .line 17
    const/16 v20, 0x6

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    iget v2, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v2, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->oldFlags_:I

    .line 25
    .line 26
    and-int/lit8 v4, v2, 0x3f

    .line 27
    .line 28
    shr-int/lit8 v2, v2, 0x8

    .line 29
    .line 30
    shl-int/lit8 v2, v2, 0x6

    .line 31
    .line 32
    add-int/2addr v2, v4

    .line 33
    :goto_0
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;

    .line 34
    .line 35
    iget-object v4, v1, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 38
    .line 39
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    .line 40
    .line 41
    invoke-virtual {v0, v15, v2, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    .line 46
    .line 47
    invoke-virtual {v7, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    .line 52
    .line 53
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    .line 58
    .line 59
    invoke-virtual {v8, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    .line 64
    .line 65
    invoke-static {v8}, Lkotlin/text/UStringsKt;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_VAR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 70
    .line 71
    invoke-virtual {v9, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    iget-object v10, v1, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 82
    .line 83
    iget v11, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->name_:I

    .line 84
    .line 85
    invoke-static {v10, v11}, Landroidx/room/Room;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    .line 90
    .line 91
    invoke-virtual {v11, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    .line 96
    .line 97
    if-nez v11, :cond_1

    .line 98
    .line 99
    const/4 v11, -0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 102
    .line 103
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    aget v11, v12, v11

    .line 108
    .line 109
    :goto_1
    const/4 v12, 0x3

    .line 110
    if-eq v11, v3, :cond_5

    .line 111
    .line 112
    const/4 v13, 0x2

    .line 113
    if-eq v11, v13, :cond_4

    .line 114
    .line 115
    if-eq v11, v12, :cond_3

    .line 116
    .line 117
    const/4 v13, 0x4

    .line 118
    if-eq v11, v13, :cond_2

    .line 119
    .line 120
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DELEGATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 133
    .line 134
    :goto_2
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_LATEINIT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 135
    .line 136
    invoke-virtual {v13, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONST:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 145
    .line 146
    invoke-virtual {v14, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXTERNAL_PROPERTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 155
    .line 156
    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_DELEGATED:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 165
    .line 166
    invoke-virtual {v12, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    move/from16 v19, v3

    .line 175
    .line 176
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXPECT_PROPERTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 177
    .line 178
    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    move/from16 v21, v2

    .line 187
    .line 188
    iget-object v2, v1, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 191
    .line 192
    move-object/from16 v22, v2

    .line 193
    .line 194
    iget-object v2, v1, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 197
    .line 198
    move-object/from16 v23, v2

    .line 199
    .line 200
    iget-object v2, v1, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    .line 203
    .line 204
    move-object/from16 v24, v1

    .line 205
    .line 206
    move-object v1, v5

    .line 207
    move-object v5, v7

    .line 208
    move v7, v9

    .line 209
    move-object v9, v11

    .line 210
    move v11, v14

    .line 211
    move v14, v3

    .line 212
    const/4 v3, 0x0

    .line 213
    move/from16 v0, v19

    .line 214
    .line 215
    move-object/from16 v19, v2

    .line 216
    .line 217
    move-object v2, v4

    .line 218
    move-object v4, v6

    .line 219
    move-object v6, v8

    .line 220
    move-object v8, v10

    .line 221
    move v10, v13

    .line 222
    move v13, v12

    .line 223
    move v12, v0

    .line 224
    move-object/from16 v16, v22

    .line 225
    .line 226
    move-object/from16 v18, v23

    .line 227
    .line 228
    move-object/from16 v0, v24

    .line 229
    .line 230
    invoke-direct/range {v1 .. v19}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZZZZZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;)V

    .line 231
    .line 232
    .line 233
    move-object/from16 v2, v17

    .line 234
    .line 235
    iget-object v3, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->typeParameter_:Ljava/util/List;

    .line 236
    .line 237
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v1, v3}, Lcom/hcaptcha/sdk/HCaptcha;->childContext$default(Lcom/hcaptcha/sdk/HCaptcha;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lcom/hcaptcha/sdk/HCaptcha;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    iget-object v4, v3, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v4, Lcom/google/gson/GsonBuilder;

    .line 247
    .line 248
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_GETTER:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 249
    .line 250
    move/from16 v10, v21

    .line 251
    .line 252
    invoke-virtual {v5, v10}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    const/16 v5, 0x40

    .line 261
    .line 262
    const/16 v6, 0x20

    .line 263
    .line 264
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    .line 265
    .line 266
    if-eqz v11, :cond_7

    .line 267
    .line 268
    iget v8, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    .line 269
    .line 270
    and-int/lit8 v9, v8, 0x20

    .line 271
    .line 272
    if-ne v9, v6, :cond_6

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_6
    and-int/2addr v8, v5

    .line 276
    if-ne v8, v5, :cond_7

    .line 277
    .line 278
    :goto_3
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    .line 279
    .line 280
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    .line 281
    .line 282
    iget-object v12, v0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v12, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 285
    .line 286
    iget-object v12, v12, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 289
    .line 290
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;

    .line 291
    .line 292
    move-object/from16 v14, p0

    .line 293
    .line 294
    move/from16 v16, v5

    .line 295
    .line 296
    const/4 v5, 0x1

    .line 297
    invoke-direct {v13, v14, v15, v8, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;I)V

    .line 298
    .line 299
    .line 300
    invoke-direct {v9, v12, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_7
    move-object/from16 v14, p0

    .line 305
    .line 306
    move/from16 v16, v5

    .line 307
    .line 308
    const/4 v5, 0x1

    .line 309
    move-object v9, v7

    .line 310
    :goto_4
    invoke-static {v15, v2}, Landroidx/compose/ui/unit/DpKt;->returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lokhttp3/Dispatcher$promoteAndExecute$Effects;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    invoke-virtual {v4, v8}, Lcom/google/gson/GsonBuilder;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->getOwnTypeParameters()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v12

    .line 322
    iget-object v13, v0, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 325
    .line 326
    instance-of v5, v13, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 327
    .line 328
    move-object/from16 v17, v13

    .line 329
    .line 330
    if-eqz v5, :cond_8

    .line 331
    .line 332
    move-object/from16 v5, v17

    .line 333
    .line 334
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_8
    const/4 v5, 0x0

    .line 338
    :goto_5
    if-eqz v5, :cond_9

    .line 339
    .line 340
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    goto :goto_6

    .line 345
    :cond_9
    const/4 v5, 0x0

    .line 346
    :goto_6
    iget v13, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    .line 347
    .line 348
    move-object/from16 v18, v5

    .line 349
    .line 350
    and-int/lit8 v5, v13, 0x20

    .line 351
    .line 352
    if-ne v5, v6, :cond_a

    .line 353
    .line 354
    iget-object v5, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_a
    and-int/lit8 v5, v13, 0x40

    .line 358
    .line 359
    move/from16 v6, v16

    .line 360
    .line 361
    if-ne v5, v6, :cond_b

    .line 362
    .line 363
    iget v5, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->receiverTypeId_:I

    .line 364
    .line 365
    invoke-virtual {v2, v5}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    goto :goto_7

    .line 370
    :cond_b
    const/4 v5, 0x0

    .line 371
    :goto_7
    if-eqz v5, :cond_c

    .line 372
    .line 373
    invoke-virtual {v4, v5}, Lcom/google/gson/GsonBuilder;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    if-eqz v5, :cond_c

    .line 378
    .line 379
    invoke-static {v1, v5, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createExtensionReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    goto :goto_8

    .line 384
    :cond_c
    const/4 v5, 0x0

    .line 385
    :goto_8
    iget-object v6, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->contextReceiverType_:Ljava/util/List;

    .line 386
    .line 387
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    if-nez v9, :cond_d

    .line 392
    .line 393
    goto :goto_9

    .line 394
    :cond_d
    const/4 v6, 0x0

    .line 395
    :goto_9
    const/16 v13, 0xa

    .line 396
    .line 397
    if-nez v6, :cond_f

    .line 398
    .line 399
    iget-object v6, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->contextReceiverTypeId_:Ljava/util/List;

    .line 400
    .line 401
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    new-instance v9, Ljava/util/ArrayList;

    .line 405
    .line 406
    move-object/from16 v16, v5

    .line 407
    .line 408
    invoke-static {v6, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 413
    .line 414
    .line 415
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    if-eqz v6, :cond_e

    .line 424
    .line 425
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    check-cast v6, Ljava/lang/Integer;

    .line 430
    .line 431
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    invoke-virtual {v2, v6}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    goto :goto_a

    .line 446
    :cond_e
    move-object v6, v9

    .line 447
    goto :goto_b

    .line 448
    :cond_f
    move-object/from16 v16, v5

    .line 449
    .line 450
    :goto_b
    new-instance v9, Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-static {v6, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 457
    .line 458
    .line 459
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    const/4 v6, 0x0

    .line 464
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v19

    .line 468
    if-eqz v19, :cond_11

    .line 469
    .line 470
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v19

    .line 474
    add-int/lit8 v21, v6, 0x1

    .line 475
    .line 476
    if-ltz v6, :cond_10

    .line 477
    .line 478
    move-object/from16 v5, v19

    .line 479
    .line 480
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 481
    .line 482
    invoke-virtual {v4, v5}, Lcom/google/gson/GsonBuilder;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    move/from16 v19, v13

    .line 487
    .line 488
    const/4 v13, 0x0

    .line 489
    invoke-static {v1, v5, v13, v7, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createContextReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;I)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move/from16 v13, v19

    .line 497
    .line 498
    move/from16 v6, v21

    .line 499
    .line 500
    goto :goto_c

    .line 501
    :cond_10
    const/4 v13, 0x0

    .line 502
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 503
    .line 504
    .line 505
    throw v13

    .line 506
    :cond_11
    move-object v4, v1

    .line 507
    move-object v5, v8

    .line 508
    move-object v6, v12

    .line 509
    move/from16 v19, v13

    .line 510
    .line 511
    move-object/from16 v8, v16

    .line 512
    .line 513
    move-object/from16 v7, v18

    .line 514
    .line 515
    const/4 v1, 0x0

    .line 516
    const/4 v2, 0x1

    .line 517
    const/4 v13, 0x0

    .line 518
    invoke-virtual/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;)V

    .line 519
    .line 520
    .line 521
    move-object v5, v4

    .line 522
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 523
    .line 524
    invoke-virtual {v4, v10}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    .line 533
    .line 534
    invoke-virtual {v7, v10}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v8

    .line 538
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    .line 539
    .line 540
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    .line 541
    .line 542
    invoke-virtual {v9, v10}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v12

    .line 546
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    .line 547
    .line 548
    if-eqz v8, :cond_1f

    .line 549
    .line 550
    if-eqz v12, :cond_1e

    .line 551
    .line 552
    if-eqz v6, :cond_12

    .line 553
    .line 554
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 555
    .line 556
    shl-int v4, v2, v4

    .line 557
    .line 558
    goto :goto_d

    .line 559
    :cond_12
    move v4, v1

    .line 560
    :goto_d
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;->getNumber()I

    .line 561
    .line 562
    .line 563
    move-result v6

    .line 564
    iget v12, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 565
    .line 566
    shl-int/2addr v6, v12

    .line 567
    or-int/2addr v4, v6

    .line 568
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;->getNumber()I

    .line 569
    .line 570
    .line 571
    move-result v6

    .line 572
    iget v8, v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 573
    .line 574
    shl-int/2addr v6, v8

    .line 575
    or-int v16, v4, v6

    .line 576
    .line 577
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_NOT_DEFAULT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 578
    .line 579
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    .line 581
    .line 582
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXTERNAL_ACCESSOR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 583
    .line 584
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_INLINE_ACCESSOR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 588
    .line 589
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    .line 593
    .line 594
    if-eqz v11, :cond_15

    .line 595
    .line 596
    iget v11, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    .line 597
    .line 598
    const/16 v13, 0x100

    .line 599
    .line 600
    and-int/2addr v11, v13

    .line 601
    if-ne v11, v13, :cond_13

    .line 602
    .line 603
    iget v11, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getterFlags_:I

    .line 604
    .line 605
    goto :goto_e

    .line 606
    :cond_13
    move/from16 v11, v16

    .line 607
    .line 608
    :goto_e
    invoke-virtual {v4, v11}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 609
    .line 610
    .line 611
    move-result-object v13

    .line 612
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 613
    .line 614
    .line 615
    move-result v13

    .line 616
    invoke-virtual {v6, v11}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 617
    .line 618
    .line 619
    move-result-object v18

    .line 620
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    .line 621
    .line 622
    .line 623
    move-result v18

    .line 624
    invoke-virtual {v8, v11}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 625
    .line 626
    .line 627
    move-result-object v19

    .line 628
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    .line 629
    .line 630
    .line 631
    move-result v19

    .line 632
    move/from16 v25, v2

    .line 633
    .line 634
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    .line 635
    .line 636
    invoke-virtual {v14, v15, v11, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    if-eqz v13, :cond_14

    .line 641
    .line 642
    move-object/from16 v21, v4

    .line 643
    .line 644
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 645
    .line 646
    invoke-virtual {v9, v11}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v22

    .line 650
    check-cast v22, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    .line 651
    .line 652
    invoke-static/range {v22 .. v22}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 653
    .line 654
    .line 655
    move-result-object v22

    .line 656
    invoke-virtual {v7, v11}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v11

    .line 660
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    .line 661
    .line 662
    invoke-static {v11}, Lkotlin/text/UStringsKt;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 663
    .line 664
    .line 665
    move-result-object v11

    .line 666
    xor-int/lit8 v13, v13, 0x1

    .line 667
    .line 668
    move-object v14, v12

    .line 669
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 670
    .line 671
    .line 672
    move-result-object v12

    .line 673
    move-object/from16 v23, v9

    .line 674
    .line 675
    move v9, v13

    .line 676
    const/4 v13, 0x0

    .line 677
    move-object/from16 v24, v0

    .line 678
    .line 679
    move v1, v10

    .line 680
    move/from16 v10, v18

    .line 681
    .line 682
    move-object/from16 v0, v21

    .line 683
    .line 684
    const/16 v17, 0x0

    .line 685
    .line 686
    move-object/from16 v18, v3

    .line 687
    .line 688
    move-object v3, v6

    .line 689
    move-object v6, v2

    .line 690
    move-object v2, v8

    .line 691
    move-object v8, v11

    .line 692
    move/from16 v11, v19

    .line 693
    .line 694
    move-object/from16 v19, v7

    .line 695
    .line 696
    move-object/from16 v7, v22

    .line 697
    .line 698
    invoke-direct/range {v4 .. v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 699
    .line 700
    .line 701
    :goto_f
    move-object v13, v4

    .line 702
    goto :goto_10

    .line 703
    :cond_14
    move-object/from16 v24, v0

    .line 704
    .line 705
    move-object/from16 v18, v3

    .line 706
    .line 707
    move-object v0, v4

    .line 708
    move-object v3, v6

    .line 709
    move-object/from16 v19, v7

    .line 710
    .line 711
    move-object/from16 v23, v9

    .line 712
    .line 713
    move v1, v10

    .line 714
    move-object v14, v12

    .line 715
    const/16 v17, 0x0

    .line 716
    .line 717
    move-object v6, v2

    .line 718
    move-object v2, v8

    .line 719
    invoke-static {v5, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createDefaultGetter(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    goto :goto_f

    .line 724
    :goto_10
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    invoke-virtual {v13, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 729
    .line 730
    .line 731
    goto :goto_11

    .line 732
    :cond_15
    move-object/from16 v24, v0

    .line 733
    .line 734
    move/from16 v25, v2

    .line 735
    .line 736
    move-object/from16 v18, v3

    .line 737
    .line 738
    move-object v0, v4

    .line 739
    move-object v3, v6

    .line 740
    move-object/from16 v19, v7

    .line 741
    .line 742
    move-object v2, v8

    .line 743
    move-object/from16 v23, v9

    .line 744
    .line 745
    move v1, v10

    .line 746
    move-object v14, v12

    .line 747
    move-object/from16 v17, v13

    .line 748
    .line 749
    :goto_11
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_SETTER:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 750
    .line 751
    invoke-virtual {v4, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 756
    .line 757
    .line 758
    move-result v4

    .line 759
    if-eqz v4, :cond_19

    .line 760
    .line 761
    iget v4, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    .line 762
    .line 763
    const/16 v6, 0x200

    .line 764
    .line 765
    and-int/2addr v4, v6

    .line 766
    if-ne v4, v6, :cond_16

    .line 767
    .line 768
    iget v4, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->setterFlags_:I

    .line 769
    .line 770
    goto :goto_12

    .line 771
    :cond_16
    move/from16 v4, v16

    .line 772
    .line 773
    :goto_12
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 778
    .line 779
    .line 780
    move-result v0

    .line 781
    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 786
    .line 787
    .line 788
    move-result v10

    .line 789
    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 794
    .line 795
    .line 796
    move-result v11

    .line 797
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    .line 798
    .line 799
    move-object/from16 v3, p0

    .line 800
    .line 801
    invoke-virtual {v3, v15, v4, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 802
    .line 803
    .line 804
    move-result-object v6

    .line 805
    if-eqz v0, :cond_18

    .line 806
    .line 807
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 808
    .line 809
    move-object/from16 v8, v23

    .line 810
    .line 811
    invoke-virtual {v8, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v8

    .line 815
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    .line 816
    .line 817
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 818
    .line 819
    .line 820
    move-result-object v8

    .line 821
    move-object/from16 v9, v19

    .line 822
    .line 823
    invoke-virtual {v9, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v4

    .line 827
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    .line 828
    .line 829
    invoke-static {v4}, Lkotlin/text/UStringsKt;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 830
    .line 831
    .line 832
    move-result-object v4

    .line 833
    xor-int/lit8 v9, v0, 0x1

    .line 834
    .line 835
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 836
    .line 837
    .line 838
    move-result-object v12

    .line 839
    move-object v0, v13

    .line 840
    const/4 v13, 0x0

    .line 841
    move-object/from16 v26, v8

    .line 842
    .line 843
    move-object v8, v4

    .line 844
    move-object v4, v7

    .line 845
    move-object/from16 v7, v26

    .line 846
    .line 847
    invoke-direct/range {v4 .. v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 848
    .line 849
    .line 850
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 851
    .line 852
    move-object/from16 v7, v18

    .line 853
    .line 854
    invoke-static {v7, v4, v6}, Lcom/hcaptcha/sdk/HCaptcha;->childContext$default(Lcom/hcaptcha/sdk/HCaptcha;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lcom/hcaptcha/sdk/HCaptcha;

    .line 855
    .line 856
    .line 857
    move-result-object v6

    .line 858
    iget-object v6, v6, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    .line 859
    .line 860
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    .line 861
    .line 862
    iget-object v7, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    .line 863
    .line 864
    invoke-static {v7}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 865
    .line 866
    .line 867
    move-result-object v7

    .line 868
    invoke-virtual {v6, v7, v15, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v2

    .line 876
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 877
    .line 878
    if-eqz v2, :cond_17

    .line 879
    .line 880
    iput-object v2, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->parameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 881
    .line 882
    move-object v13, v4

    .line 883
    goto :goto_13

    .line 884
    :cond_17
    invoke-static/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 885
    .line 886
    .line 887
    throw v17

    .line 888
    :cond_18
    move-object v0, v13

    .line 889
    invoke-static {v5, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createDefaultSetter(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 890
    .line 891
    .line 892
    move-result-object v13

    .line 893
    goto :goto_13

    .line 894
    :cond_19
    move-object/from16 v3, p0

    .line 895
    .line 896
    move-object v0, v13

    .line 897
    move-object/from16 v13, v17

    .line 898
    .line 899
    :goto_13
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 900
    .line 901
    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 906
    .line 907
    .line 908
    move-result v1

    .line 909
    if-eqz v1, :cond_1a

    .line 910
    .line 911
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$4;

    .line 912
    .line 913
    const/4 v2, 0x0

    .line 914
    invoke-direct {v1, v3, v15, v5, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$4;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;I)V

    .line 915
    .line 916
    .line 917
    move-object/from16 v2, v17

    .line 918
    .line 919
    invoke-virtual {v5, v2, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setCompileTimeInitializer(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;Lkotlin/jvm/functions/Function0;)V

    .line 920
    .line 921
    .line 922
    :cond_1a
    move-object/from16 v1, v24

    .line 923
    .line 924
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 927
    .line 928
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 929
    .line 930
    if-eqz v2, :cond_1b

    .line 931
    .line 932
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 933
    .line 934
    goto :goto_14

    .line 935
    :cond_1b
    const/4 v1, 0x0

    .line 936
    :goto_14
    if-eqz v1, :cond_1c

    .line 937
    .line 938
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    goto :goto_15

    .line 943
    :cond_1c
    const/4 v1, 0x0

    .line 944
    :goto_15
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    .line 945
    .line 946
    if-ne v1, v2, :cond_1d

    .line 947
    .line 948
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$4;

    .line 949
    .line 950
    const/4 v2, 0x3

    .line 951
    invoke-direct {v1, v3, v15, v5, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$4;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;I)V

    .line 952
    .line 953
    .line 954
    const/4 v2, 0x0

    .line 955
    invoke-virtual {v5, v2, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setCompileTimeInitializer(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;Lkotlin/jvm/functions/Function0;)V

    .line 956
    .line 957
    .line 958
    :cond_1d
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    .line 959
    .line 960
    const/4 v2, 0x0

    .line 961
    invoke-virtual {v3, v15, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getPropertyFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 962
    .line 963
    .line 964
    move-result-object v2

    .line 965
    invoke-direct {v1, v2}, Lorg/wikipedia/settings/BasePreferenceLoader;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 966
    .line 967
    .line 968
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    .line 969
    .line 970
    move/from16 v4, v25

    .line 971
    .line 972
    invoke-virtual {v3, v15, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getPropertyFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    invoke-direct {v2, v3}, Lorg/wikipedia/settings/BasePreferenceLoader;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v5, v0, v13, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;)V

    .line 980
    .line 981
    .line 982
    return-object v5

    .line 983
    :cond_1e
    const/16 v0, 0xb

    .line 984
    .line 985
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->$$$reportNull$$$0(I)V

    .line 986
    .line 987
    .line 988
    const/16 v17, 0x0

    .line 989
    .line 990
    throw v17

    .line 991
    :cond_1f
    move-object/from16 v17, v13

    .line 992
    .line 993
    invoke-static/range {v19 .. v19}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->$$$reportNull$$$0(I)V

    .line 994
    .line 995
    .line 996
    throw v17
.end method

.method public final valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;
    .locals 26

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    iget-object v8, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 4
    .line 5
    iget-object v0, v8, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v9, v0

    .line 8
    check-cast v9, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 9
    .line 10
    iget-object v0, v8, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v10, v0

    .line 13
    check-cast v10, Lcom/google/gson/GsonBuilder;

    .line 14
    .line 15
    iget-object v0, v8, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-object v12, v0

    .line 23
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    .line 24
    .line 25
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->asProtoContainer(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Landroidx/compose/runtime/AbstractApplier;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    new-instance v11, Ljava/util/ArrayList;

    .line 37
    .line 38
    const/16 v0, 0xa

    .line 39
    .line 40
    move-object/from16 v1, p1

    .line 41
    .line 42
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v23

    .line 53
    const/16 v24, 0x0

    .line 54
    .line 55
    move/from16 v14, v24

    .line 56
    .line 57
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    add-int/lit8 v25, v14, 0x1

    .line 68
    .line 69
    if-ltz v14, :cond_5

    .line 70
    .line 71
    move-object v7, v0

    .line 72
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    .line 73
    .line 74
    iget v0, v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->bitField0_:I

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    and-int/2addr v0, v1

    .line 78
    if-ne v0, v1, :cond_0

    .line 79
    .line 80
    iget v0, v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->flags_:I

    .line 81
    .line 82
    move v15, v0

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    move/from16 v15, v24

    .line 85
    .line 86
    :goto_1
    if-eqz v4, :cond_1

    .line 87
    .line 88
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 89
    .line 90
    invoke-virtual {v0, v15}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;

    .line 101
    .line 102
    iget-object v1, v8, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 105
    .line 106
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 109
    .line 110
    move-object v2, v0

    .line 111
    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;

    .line 112
    .line 113
    move-object v5, v2

    .line 114
    const/4 v2, 0x1

    .line 115
    move-object/from16 v6, p3

    .line 116
    .line 117
    move-object v13, v1

    .line 118
    move v1, v14

    .line 119
    const/16 p1, 0x0

    .line 120
    .line 121
    move-object v14, v5

    .line 122
    move-object/from16 v5, p2

    .line 123
    .line 124
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v14, v13, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    move-object v0, v14

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    move v1, v14

    .line 133
    const/16 p1, 0x0

    .line 134
    .line 135
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    .line 136
    .line 137
    :goto_2
    iget-object v2, v8, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 140
    .line 141
    iget v3, v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->name_:I

    .line 142
    .line 143
    invoke-static {v2, v3}, Landroidx/room/Room;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 144
    .line 145
    .line 146
    move-result-object v16

    .line 147
    invoke-static {v7, v9}, Landroidx/compose/ui/unit/DpKt;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lokhttp3/Dispatcher$promoteAndExecute$Effects;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v10, v2}, Lcom/google/gson/GsonBuilder;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 152
    .line 153
    .line 154
    move-result-object v17

    .line 155
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->DECLARES_DEFAULT_VALUE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 156
    .line 157
    invoke-virtual {v2, v15}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result v18

    .line 165
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CROSSINLINE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 166
    .line 167
    invoke-virtual {v2, v15}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result v19

    .line 175
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_NOINLINE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    .line 176
    .line 177
    invoke-virtual {v2, v15}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    .line 183
    .line 184
    move-result v20

    .line 185
    iget v2, v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->bitField0_:I

    .line 186
    .line 187
    and-int/lit8 v3, v2, 0x10

    .line 188
    .line 189
    const/16 v5, 0x10

    .line 190
    .line 191
    if-ne v3, v5, :cond_2

    .line 192
    .line 193
    iget-object v2, v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->varargElementType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_2
    and-int/lit8 v2, v2, 0x20

    .line 197
    .line 198
    const/16 v3, 0x20

    .line 199
    .line 200
    if-ne v2, v3, :cond_3

    .line 201
    .line 202
    iget v2, v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->varargElementTypeId_:I

    .line 203
    .line 204
    invoke-virtual {v9, v2}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    goto :goto_3

    .line 209
    :cond_3
    move-object/from16 v2, p1

    .line 210
    .line 211
    :goto_3
    if-eqz v2, :cond_4

    .line 212
    .line 213
    invoke-virtual {v10, v2}, Lcom/google/gson/GsonBuilder;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    move-object/from16 v21, v13

    .line 218
    .line 219
    :goto_4
    move-object v2, v11

    .line 220
    goto :goto_5

    .line 221
    :cond_4
    move-object/from16 v21, p1

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :goto_5
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 225
    .line 226
    const/4 v13, 0x0

    .line 227
    sget-object v22, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    .line 228
    .line 229
    move-object v15, v0

    .line 230
    move v14, v1

    .line 231
    invoke-direct/range {v11 .. v22}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;ILkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-object/from16 v3, p0

    .line 238
    .line 239
    move-object v11, v2

    .line 240
    move/from16 v14, v25

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_5
    const/16 p1, 0x0

    .line 245
    .line 246
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 247
    .line 248
    .line 249
    throw p1

    .line 250
    :cond_6
    move-object v2, v11

    .line 251
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    return-object v0
.end method
