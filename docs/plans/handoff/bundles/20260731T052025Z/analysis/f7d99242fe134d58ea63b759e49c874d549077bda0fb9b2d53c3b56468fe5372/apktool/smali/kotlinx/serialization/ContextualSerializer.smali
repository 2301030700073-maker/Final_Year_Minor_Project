.class public final Lkotlinx/serialization/ContextualSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final fallbackSerializer:Lkotlinx/serialization/KSerializer;

.field public final serializableClass:Ljava/lang/Object;

.field public final typeArgumentsSerializers:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/PolymorphicSerializer;[Lkotlinx/serialization/KSerializer;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/serialization/ContextualSerializer;->$r8$classId:I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lkotlinx/serialization/ContextualSerializer;->serializableClass:Ljava/lang/Object;

    .line 67
    iput-object p2, p0, Lkotlinx/serialization/ContextualSerializer;->fallbackSerializer:Lkotlinx/serialization/KSerializer;

    .line 68
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iput-object p2, p0, Lkotlinx/serialization/ContextualSerializer;->typeArgumentsSerializers:Ljava/lang/Object;

    .line 71
    new-array p2, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance p3, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    const/16 v0, 0x1d

    invoke-direct {p3, v0, p0}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-string v0, "kotlinx.serialization.ContextualSerializer"

    sget-object v1, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    invoke-static {v0, v1, p2, p3}, Lokhttp3/Handshake$Companion;->buildSerialDescriptor(Ljava/lang/String;Lkotlin/ranges/RangesKt;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object p2

    .line 72
    new-instance p3, Lkotlinx/serialization/descriptors/ContextDescriptor;

    invoke-direct {p3, p2, p1}, Lkotlinx/serialization/descriptors/ContextDescriptor;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;Lkotlin/reflect/KClass;)V

    .line 73
    iput-object p3, p0, Lkotlinx/serialization/ContextualSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lkotlinx/serialization/ContextualSerializer;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkotlinx/serialization/ContextualSerializer;->serializableClass:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lkotlinx/serialization/ContextualSerializer;->fallbackSerializer:Lkotlinx/serialization/KSerializer;

    .line 10
    .line 11
    iput-object p3, p0, Lkotlinx/serialization/ContextualSerializer;->typeArgumentsSerializers:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 15
    .line 16
    new-instance p2, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 p3, 0x4

    .line 19
    invoke-direct {p2, p3, p0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "kotlin.Triple"

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    new-instance v5, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 31
    .line 32
    invoke-direct {v5, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 39
    .line 40
    sget-object v2, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$1:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 41
    .line 42
    iget-object p2, v5, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlin/ranges/RangesKt;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string p1, "Blank serial names are prohibited"

    .line 57
    .line 58
    invoke-static {p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    :goto_0
    iput-object v0, p0, Lkotlinx/serialization/ContextualSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lkotlinx/serialization/ContextualSerializer;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/ContextualSerializer;->serializableClass:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/serialization/ContextualSerializer;->fallbackSerializer:Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    iget-object v3, p0, Lkotlinx/serialization/ContextualSerializer;->typeArgumentsSerializers:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 13
    .line 14
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    iget-object p0, p0, Lkotlinx/serialization/ContextualSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 17
    .line 18
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 19
    .line 20
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lkotlinx/serialization/internal/TuplesKt;->NULL:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v4, v0

    .line 27
    move-object v5, v4

    .line 28
    move-object v6, v5

    .line 29
    :goto_0
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    const/4 v8, -0x1

    .line 34
    if-eq v7, v8, :cond_3

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    if-eqz v7, :cond_2

    .line 38
    .line 39
    const/4 v9, 0x1

    .line 40
    if-eq v7, v9, :cond_1

    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    if-ne v7, v6, :cond_0

    .line 44
    .line 45
    move-object v7, v3

    .line 46
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 47
    .line 48
    invoke-interface {p1, p0, v6, v7, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Lkotlinx/serialization/SerializationException;

    .line 54
    .line 55
    const-string p1, "Unexpected index "

    .line 56
    .line 57
    invoke-static {p1, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_1
    move-object v5, v2

    .line 66
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 67
    .line 68
    invoke-interface {p1, p0, v9, v5, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v4, 0x0

    .line 74
    move-object v7, v1

    .line 75
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 76
    .line 77
    invoke-interface {p1, p0, v4, v7, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 83
    .line 84
    .line 85
    if-eq v4, v0, :cond_6

    .line 86
    .line 87
    if-eq v5, v0, :cond_5

    .line 88
    .line 89
    if-eq v6, v0, :cond_4

    .line 90
    .line 91
    new-instance p0, Lkotlin/Triple;

    .line 92
    .line 93
    invoke-direct {p0, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_4
    new-instance p0, Lkotlinx/serialization/SerializationException;

    .line 98
    .line 99
    const-string p1, "Element \'third\' is missing"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_5
    new-instance p0, Lkotlinx/serialization/SerializationException;

    .line 106
    .line 107
    const-string p1, "Element \'second\' is missing"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_6
    new-instance p0, Lkotlinx/serialization/SerializationException;

    .line 114
    .line 115
    const-string p1, "Element \'first\' is missing"

    .line 116
    .line 117
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :pswitch_0
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->getSerializersModule()Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast v1, Lkotlin/jvm/internal/ClassReference;

    .line 126
    .line 127
    check-cast v3, Ljava/util/List;

    .line 128
    .line 129
    invoke-virtual {p0, v1, v3}, Lkotlinx/serialization/modules/SerialModuleImpl;->getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-nez p0, :cond_7

    .line 134
    .line 135
    move-object p0, v2

    .line 136
    check-cast p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 137
    .line 138
    :cond_7
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 139
    .line 140
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/serialization/ContextualSerializer;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lkotlinx/serialization/ContextualSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 7
    .line 8
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lkotlinx/serialization/ContextualSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 12
    .line 13
    check-cast p0, Lkotlinx/serialization/descriptors/ContextDescriptor;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final serialize(Lkotlin/text/CharsKt__CharKt;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lkotlinx/serialization/ContextualSerializer;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/ContextualSerializer;->typeArgumentsSerializers:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/serialization/ContextualSerializer;->fallbackSerializer:Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    iget-object v3, p0, Lkotlinx/serialization/ContextualSerializer;->serializableClass:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p2, Lkotlin/Triple;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lkotlinx/serialization/ContextualSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 18
    .line 19
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lkotlin/text/CharsKt__CharKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/text/CharsKt__CharKt;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 28
    .line 29
    iget-object v0, p2, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {p1, p0, v4, v3, v0}, Lkotlin/text/CharsKt__CharKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 36
    .line 37
    iget-object v0, p2, Lkotlin/Triple;->second:Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {p1, p0, v3, v2, v0}, Lkotlin/text/CharsKt__CharKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 44
    .line 45
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 46
    .line 47
    iget-object p2, p2, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    invoke-virtual {p1, p0, v0, v1, p2}, Lkotlin/text/CharsKt__CharKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lkotlin/text/CharsKt__CharKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lkotlin/text/CharsKt__CharKt;->getSerializersModule()Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast v3, Lkotlin/jvm/internal/ClassReference;

    .line 65
    .line 66
    check-cast v1, Ljava/util/List;

    .line 67
    .line 68
    invoke-virtual {p0, v3, v1}, Lkotlinx/serialization/modules/SerialModuleImpl;->getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-nez p0, :cond_0

    .line 73
    .line 74
    move-object p0, v2

    .line 75
    check-cast p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 76
    .line 77
    :cond_0
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 78
    .line 79
    invoke-virtual {p1, p0, p2}, Lkotlin/text/CharsKt__CharKt;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
