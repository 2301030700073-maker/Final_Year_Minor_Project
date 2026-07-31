.class public final synthetic Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion.ImageMetadata"

    .line 11
    .line 12
    const/16 v3, 0xe

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "descriptionUrl"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "thumbUrl"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "fullUrl"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "originalWidth"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "originalHeight"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "mediaType"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "description"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "author"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "license"

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v0, "date"

    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    const-string v0, "caption"

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    const-string v0, "categories"

    .line 74
    .line 75
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    const-string v0, "reason"

    .line 79
    .line 80
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    const-string v0, "contentLanguageName"

    .line 84
    .line 85
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    sput-object v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0xe

    .line 4
    .line 5
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    aput-object v2, v0, v3

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    aput-object v2, v0, v3

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    const/4 v2, 0x7

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    const/16 v2, 0x9

    .line 40
    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    const/16 v2, 0xa

    .line 44
    .line 45
    aput-object v1, v0, v2

    .line 46
    .line 47
    const/16 v2, 0xb

    .line 48
    .line 49
    aget-object p0, p0, v2

    .line 50
    .line 51
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    aput-object p0, v0, v2

    .line 56
    .line 57
    const/16 p0, 0xc

    .line 58
    .line 59
    aput-object v1, v0, p0

    .line 60
    .line 61
    const/16 p0, 0xd

    .line 62
    .line 63
    aput-object v1, v0, p0

    .line 64
    .line 65
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 23

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    move v6, v3

    .line 14
    move-object v7, v5

    .line 15
    move-object v9, v7

    .line 16
    move-object v10, v9

    .line 17
    move-object v11, v10

    .line 18
    move-object v14, v11

    .line 19
    move-object v15, v14

    .line 20
    move-object/from16 v16, v15

    .line 21
    .line 22
    move-object/from16 v17, v16

    .line 23
    .line 24
    move-object/from16 v18, v17

    .line 25
    .line 26
    move-object/from16 v19, v18

    .line 27
    .line 28
    move-object/from16 v21, v19

    .line 29
    .line 30
    move-object/from16 v22, v21

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v12, 0x0

    .line 34
    const/4 v13, 0x0

    .line 35
    :goto_0
    if-eqz v6, :cond_0

    .line 36
    .line 37
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 38
    .line 39
    .line 40
    move-result v20

    .line 41
    packed-switch v20, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    invoke-static/range {v20 .. v20}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 45
    .line 46
    .line 47
    return-object v5

    .line 48
    :pswitch_0
    const/16 v5, 0xd

    .line 49
    .line 50
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v22

    .line 54
    or-int/lit16 v8, v8, 0x2000

    .line 55
    .line 56
    :goto_1
    const/4 v5, 0x0

    .line 57
    goto :goto_0

    .line 58
    :pswitch_1
    const/16 v5, 0xc

    .line 59
    .line 60
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v21

    .line 64
    or-int/lit16 v8, v8, 0x1000

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :pswitch_2
    const/16 v5, 0xb

    .line 68
    .line 69
    aget-object v20, v2, v5

    .line 70
    .line 71
    invoke-interface/range {v20 .. v20}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v20

    .line 75
    move-object/from16 v4, v20

    .line 76
    .line 77
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 78
    .line 79
    invoke-interface {v1, v0, v5, v4, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    move-object v7, v4

    .line 84
    check-cast v7, Ljava/util/List;

    .line 85
    .line 86
    or-int/lit16 v8, v8, 0x800

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_3
    const/16 v4, 0xa

    .line 90
    .line 91
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v19

    .line 95
    or-int/lit16 v8, v8, 0x400

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :pswitch_4
    const/16 v4, 0x9

    .line 99
    .line 100
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v18

    .line 104
    or-int/lit16 v8, v8, 0x200

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_5
    const/16 v4, 0x8

    .line 108
    .line 109
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v17

    .line 113
    or-int/lit16 v8, v8, 0x100

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_6
    const/4 v4, 0x7

    .line 117
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v16

    .line 121
    or-int/lit16 v8, v8, 0x80

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :pswitch_7
    const/4 v4, 0x6

    .line 125
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    or-int/lit8 v8, v8, 0x40

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :pswitch_8
    const/4 v4, 0x5

    .line 133
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    or-int/lit8 v8, v8, 0x20

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :pswitch_9
    const/4 v4, 0x4

    .line 141
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    or-int/lit8 v8, v8, 0x10

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :pswitch_a
    const/4 v4, 0x3

    .line 149
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    or-int/lit8 v8, v8, 0x8

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :pswitch_b
    const/4 v4, 0x2

    .line 157
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    or-int/lit8 v8, v8, 0x4

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :pswitch_c
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    or-int/lit8 v8, v8, 0x2

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :pswitch_d
    const/4 v4, 0x0

    .line 172
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    or-int/lit8 v8, v8, 0x1

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :pswitch_e
    const/4 v4, 0x0

    .line 180
    move v6, v4

    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 184
    .line 185
    .line 186
    move-object/from16 v20, v7

    .line 187
    .line 188
    new-instance v7, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

    .line 189
    .line 190
    invoke-direct/range {v7 .. v22}, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-object v7

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch -0x1
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

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->contentLanguageName:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->reason:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->categories:Ljava/util/List;

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->caption:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->date:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v6, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->license:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v7, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->author:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v8, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->description:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v9, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->mediaType:Ljava/lang/String;

    .line 25
    .line 26
    iget v10, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->originalHeight:I

    .line 27
    .line 28
    iget v11, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->originalWidth:I

    .line 29
    .line 30
    iget-object v12, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->fullUrl:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v13, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->thumbUrl:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->descriptionUrl:Ljava/lang/String;

    .line 35
    .line 36
    sget-object v14, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 37
    .line 38
    move-object/from16 v15, p1

    .line 39
    .line 40
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    sget-object v16, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->$childSerializers:[Lkotlin/Lazy;

    .line 45
    .line 46
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 47
    .line 48
    .line 49
    move-result v17

    .line 50
    move-object/from16 p0, v1

    .line 51
    .line 52
    const-string v1, ""

    .line 53
    .line 54
    if-eqz v17, :cond_0

    .line 55
    .line 56
    :goto_0
    move-object/from16 v17, v2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v17

    .line 63
    if-nez v17, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_1
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v15, v14, v2, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    move-object/from16 v17, v2

    .line 72
    .line 73
    :goto_2
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    :goto_3
    const/4 v0, 0x1

    .line 87
    invoke-virtual {v15, v14, v0, v13}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    :goto_4
    const/4 v0, 0x2

    .line 104
    invoke-virtual {v15, v14, v0, v12}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_6
    if-eqz v11, :cond_7

    .line 115
    .line 116
    :goto_5
    const/4 v0, 0x3

    .line 117
    invoke-virtual {v15, v0, v11, v14}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_8
    if-eqz v10, :cond_9

    .line 128
    .line 129
    :goto_6
    const/4 v0, 0x4

    .line 130
    invoke-virtual {v15, v0, v10, v14}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 131
    .line 132
    .line 133
    :cond_9
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_a
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_b

    .line 145
    .line 146
    :goto_7
    const/4 v0, 0x5

    .line 147
    invoke-virtual {v15, v14, v0, v9}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_b
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_c

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_c
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_d

    .line 162
    .line 163
    :goto_8
    const/4 v0, 0x6

    .line 164
    invoke-virtual {v15, v14, v0, v8}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_d
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_e

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_e
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_f

    .line 179
    .line 180
    :goto_9
    const/4 v0, 0x7

    .line 181
    invoke-virtual {v15, v14, v0, v7}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_f
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_10

    .line 189
    .line 190
    goto :goto_a

    .line 191
    :cond_10
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_11

    .line 196
    .line 197
    :goto_a
    const/16 v0, 0x8

    .line 198
    .line 199
    invoke-virtual {v15, v14, v0, v6}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_11
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_12

    .line 207
    .line 208
    goto :goto_b

    .line 209
    :cond_12
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_13

    .line 214
    .line 215
    :goto_b
    const/16 v0, 0x9

    .line 216
    .line 217
    invoke-virtual {v15, v14, v0, v5}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_13
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_14

    .line 225
    .line 226
    goto :goto_c

    .line 227
    :cond_14
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_15

    .line 232
    .line 233
    :goto_c
    const/16 v0, 0xa

    .line 234
    .line 235
    invoke-virtual {v15, v14, v0, v4}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_15
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_16

    .line 243
    .line 244
    goto :goto_d

    .line 245
    :cond_16
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 246
    .line 247
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-nez v0, :cond_17

    .line 252
    .line 253
    :goto_d
    const/16 v0, 0xb

    .line 254
    .line 255
    aget-object v2, v16, v0

    .line 256
    .line 257
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 262
    .line 263
    invoke-virtual {v15, v14, v0, v2, v3}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_17
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_18

    .line 271
    .line 272
    move-object/from16 v0, v17

    .line 273
    .line 274
    goto :goto_e

    .line 275
    :cond_18
    move-object/from16 v0, v17

    .line 276
    .line 277
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-nez v2, :cond_19

    .line 282
    .line 283
    :goto_e
    const/16 v2, 0xc

    .line 284
    .line 285
    invoke-virtual {v15, v14, v2, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :cond_19
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_1a

    .line 293
    .line 294
    move-object/from16 v0, p0

    .line 295
    .line 296
    goto :goto_f

    .line 297
    :cond_1a
    move-object/from16 v0, p0

    .line 298
    .line 299
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-nez v1, :cond_1b

    .line 304
    .line 305
    :goto_f
    const/16 v1, 0xd

    .line 306
    .line 307
    invoke-virtual {v15, v14, v1, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :cond_1b
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 311
    .line 312
    .line 313
    return-void
.end method

.method public final typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/serialization/internal/TuplesKt;->EMPTY_SERIALIZER_ARRAY:[Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    return-object p0
.end method
