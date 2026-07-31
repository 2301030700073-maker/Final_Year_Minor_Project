.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

.field public static final defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;


# instance fields
.field public bitField0_:I

.field public companionObjectName_:I

.field public constructor_:Ljava/util/List;

.field public contextReceiverTypeIdMemoizedSerializedSize:I

.field public contextReceiverTypeId_:Ljava/util/List;

.field public contextReceiverType_:Ljava/util/List;

.field public enumEntry_:Ljava/util/List;

.field public flags_:I

.field public fqName_:I

.field public function_:Ljava/util/List;

.field public inlineClassUnderlyingPropertyName_:I

.field public inlineClassUnderlyingTypeId_:I

.field public inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field public memoizedIsInitialized:B

.field public memoizedSerializedSize:I

.field public multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

.field public multiFieldValueClassUnderlyingName_:Ljava/util/List;

.field public multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

.field public multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

.field public multiFieldValueClassUnderlyingType_:Ljava/util/List;

.field public nestedClassNameMemoizedSerializedSize:I

.field public nestedClassName_:Ljava/util/List;

.field public property_:Ljava/util/List;

.field public sealedSubclassFqNameMemoizedSerializedSize:I

.field public sealedSubclassFqName_:Ljava/util/List;

.field public supertypeIdMemoizedSerializedSize:I

.field public supertypeId_:Ljava/util/List;

.field public supertype_:Ljava/util/List;

.field public typeAlias_:Ljava/util/List;

.field public typeParameter_:Ljava/util/List;

.field public typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

.field public final unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

.field public versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

.field public versionRequirement_:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 8
    .line 9
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 10
    .line 11
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 15
    .line 16
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->initFields$3()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1603
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 1604
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    .line 1605
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    .line 1606
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeIdMemoizedSerializedSize:I

    .line 1607
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    .line 1608
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

    .line 1609
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

    .line 1610
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 1611
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    .line 1612
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;)V
    .locals 1

    .line 1613
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    const/4 v0, -0x1

    .line 1614
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    .line 1615
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    .line 1616
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeIdMemoizedSerializedSize:I

    .line 1617
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    .line 1618
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

    .line 1619
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

    .line 1620
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 1621
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    .line 1622
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 1623
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    .line 12
    .line 13
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    .line 14
    .line 15
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeIdMemoizedSerializedSize:I

    .line 16
    .line 17
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    .line 18
    .line 19
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

    .line 20
    .line 21
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

    .line 22
    .line 23
    iput-byte v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 24
    .line 25
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    .line 26
    .line 27
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->initFields$3()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->newOutput()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->newInstance(Ljava/io/OutputStream;I)Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x0

    .line 40
    move v7, v6

    .line 41
    :goto_0
    const/high16 v13, 0x80000

    .line 42
    .line 43
    move/from16 v16, v4

    .line 44
    .line 45
    const/16 v17, 0x8

    .line 46
    .line 47
    const/high16 v8, 0x40000

    .line 48
    .line 49
    const/high16 v9, 0x100000

    .line 50
    .line 51
    const/high16 v10, 0x400000

    .line 52
    .line 53
    const/16 v11, 0x80

    .line 54
    .line 55
    const/16 v18, 0x20

    .line 56
    .line 57
    const/16 v12, 0x40

    .line 58
    .line 59
    if-nez v6, :cond_35

    .line 60
    .line 61
    :try_start_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readTag()I

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    const/16 v19, 0x10

    .line 66
    .line 67
    const/4 v4, 0x2

    .line 68
    const/16 v20, 0x0

    .line 69
    .line 70
    sparse-switch v15, :sswitch_data_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0, v5, v2, v15}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lcom/caverock/androidsvg/SVG$PathDefinition;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;I)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_24

    .line 78
    .line 79
    :sswitch_0
    move/from16 v6, v16

    .line 80
    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto/16 :goto_c

    .line 85
    .line 86
    :catch_0
    move-exception v0

    .line 87
    goto/16 :goto_a

    .line 88
    .line 89
    :catch_1
    move-exception v0

    .line 90
    goto/16 :goto_b

    .line 91
    .line 92
    :sswitch_1
    iget v15, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 93
    .line 94
    and-int/2addr v15, v11

    .line 95
    if-ne v15, v11, :cond_0

    .line 96
    .line 97
    iget-object v15, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 98
    .line 99
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;

    .line 103
    .line 104
    invoke-direct {v14, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;-><init>(I)V

    .line 105
    .line 106
    .line 107
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 108
    .line 109
    iput-object v4, v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->effect_:Ljava/util/List;

    .line 110
    .line 111
    invoke-virtual {v14, v15}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_0
    move-object/from16 v14, v20

    .line 116
    .line 117
    :goto_1
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 118
    .line 119
    invoke-virtual {v0, v4, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 124
    .line 125
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 126
    .line 127
    if-eqz v14, :cond_1

    .line 128
    .line 129
    invoke-virtual {v14, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 137
    .line 138
    :cond_1
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 139
    .line 140
    or-int/2addr v4, v11

    .line 141
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 142
    .line 143
    goto/16 :goto_9

    .line 144
    .line 145
    :sswitch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    and-int v14, v7, v10

    .line 154
    .line 155
    if-eq v14, v10, :cond_2

    .line 156
    .line 157
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-lez v14, :cond_2

    .line 162
    .line 163
    new-instance v14, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 169
    .line 170
    or-int/2addr v7, v10

    .line 171
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    if-lez v14, :cond_3

    .line 176
    .line 177
    iget-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 178
    .line 179
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v15

    .line 187
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_3
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_9

    .line 195
    .line 196
    :sswitch_3
    and-int v4, v7, v10

    .line 197
    .line 198
    if-eq v4, v10, :cond_4

    .line 199
    .line 200
    new-instance v4, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 206
    .line 207
    or-int/2addr v7, v10

    .line 208
    :cond_4
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 209
    .line 210
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v14

    .line 218
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto/16 :goto_9

    .line 222
    .line 223
    :sswitch_4
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 224
    .line 225
    and-int/2addr v4, v12

    .line 226
    if-ne v4, v12, :cond_5

    .line 227
    .line 228
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object v20

    .line 237
    :cond_5
    move-object/from16 v4, v20

    .line 238
    .line 239
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 240
    .line 241
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 246
    .line 247
    iput-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 248
    .line 249
    if-eqz v4, :cond_6

    .line 250
    .line 251
    invoke-virtual {v4, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 259
    .line 260
    :cond_6
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 261
    .line 262
    or-int/2addr v4, v12

    .line 263
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 264
    .line 265
    goto/16 :goto_9

    .line 266
    .line 267
    :sswitch_5
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    and-int v14, v7, v9

    .line 276
    .line 277
    if-eq v14, v9, :cond_7

    .line 278
    .line 279
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 280
    .line 281
    .line 282
    move-result v14

    .line 283
    if-lez v14, :cond_7

    .line 284
    .line 285
    new-instance v14, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    iput-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 291
    .line 292
    or-int/2addr v7, v9

    .line 293
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    if-lez v14, :cond_8

    .line 298
    .line 299
    iget-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 300
    .line 301
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 302
    .line 303
    .line 304
    move-result v15

    .line 305
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v15

    .line 309
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_8
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_9

    .line 317
    .line 318
    :sswitch_6
    and-int v4, v7, v9

    .line 319
    .line 320
    if-eq v4, v9, :cond_9

    .line 321
    .line 322
    new-instance v4, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .line 326
    .line 327
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 328
    .line 329
    or-int/2addr v7, v9

    .line 330
    :cond_9
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 331
    .line 332
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 333
    .line 334
    .line 335
    move-result v14

    .line 336
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v14

    .line 340
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    goto/16 :goto_9

    .line 344
    .line 345
    :sswitch_7
    and-int v4, v7, v13

    .line 346
    .line 347
    if-eq v4, v13, :cond_a

    .line 348
    .line 349
    new-instance v4, Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .line 353
    .line 354
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 355
    .line 356
    or-int/2addr v7, v13

    .line 357
    :cond_a
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 358
    .line 359
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 360
    .line 361
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 362
    .line 363
    .line 364
    move-result-object v14

    .line 365
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    goto/16 :goto_9

    .line 369
    .line 370
    :sswitch_8
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    and-int v14, v7, v8

    .line 379
    .line 380
    if-eq v14, v8, :cond_b

    .line 381
    .line 382
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 383
    .line 384
    .line 385
    move-result v14

    .line 386
    if-lez v14, :cond_b

    .line 387
    .line 388
    new-instance v14, Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .line 392
    .line 393
    iput-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 394
    .line 395
    or-int/2addr v7, v8

    .line 396
    :cond_b
    :goto_4
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 397
    .line 398
    .line 399
    move-result v14

    .line 400
    if-lez v14, :cond_c

    .line 401
    .line 402
    iget-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 403
    .line 404
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 405
    .line 406
    .line 407
    move-result v15

    .line 408
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v15

    .line 412
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_c
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_9

    .line 420
    .line 421
    :sswitch_9
    and-int v4, v7, v8

    .line 422
    .line 423
    if-eq v4, v8, :cond_d

    .line 424
    .line 425
    new-instance v4, Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .line 429
    .line 430
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 431
    .line 432
    or-int/2addr v7, v8

    .line 433
    :cond_d
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 434
    .line 435
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 436
    .line 437
    .line 438
    move-result v14

    .line 439
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    .line 441
    .line 442
    move-result-object v14

    .line 443
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    goto/16 :goto_9

    .line 447
    .line 448
    :sswitch_a
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    and-int/lit16 v14, v7, 0x100

    .line 457
    .line 458
    const/16 v15, 0x100

    .line 459
    .line 460
    if-eq v14, v15, :cond_e

    .line 461
    .line 462
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 463
    .line 464
    .line 465
    move-result v14

    .line 466
    if-lez v14, :cond_e

    .line 467
    .line 468
    new-instance v14, Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .line 472
    .line 473
    iput-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 474
    .line 475
    or-int/lit16 v7, v7, 0x100

    .line 476
    .line 477
    :cond_e
    :goto_5
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 478
    .line 479
    .line 480
    move-result v14

    .line 481
    if-lez v14, :cond_f

    .line 482
    .line 483
    iget-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 484
    .line 485
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 486
    .line 487
    .line 488
    move-result v15

    .line 489
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 490
    .line 491
    .line 492
    move-result-object v15

    .line 493
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    goto :goto_5

    .line 497
    :cond_f
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_9

    .line 501
    .line 502
    :sswitch_b
    and-int/lit16 v4, v7, 0x100

    .line 503
    .line 504
    const/16 v15, 0x100

    .line 505
    .line 506
    if-eq v4, v15, :cond_10

    .line 507
    .line 508
    new-instance v4, Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .line 512
    .line 513
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 514
    .line 515
    or-int/lit16 v7, v7, 0x100

    .line 516
    .line 517
    :cond_10
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 518
    .line 519
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 520
    .line 521
    .line 522
    move-result v14

    .line 523
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v14

    .line 527
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    goto/16 :goto_9

    .line 531
    .line 532
    :sswitch_c
    and-int/lit16 v4, v7, 0x80

    .line 533
    .line 534
    if-eq v4, v11, :cond_11

    .line 535
    .line 536
    new-instance v4, Ljava/util/ArrayList;

    .line 537
    .line 538
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .line 540
    .line 541
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 542
    .line 543
    or-int/lit16 v7, v7, 0x80

    .line 544
    .line 545
    :cond_11
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 546
    .line 547
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 548
    .line 549
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 550
    .line 551
    .line 552
    move-result-object v14

    .line 553
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    goto/16 :goto_9

    .line 557
    .line 558
    :sswitch_d
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 559
    .line 560
    or-int/lit8 v4, v4, 0x20

    .line 561
    .line 562
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 563
    .line 564
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    .line 569
    .line 570
    goto/16 :goto_9

    .line 571
    .line 572
    :sswitch_e
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 573
    .line 574
    and-int/lit8 v4, v4, 0x10

    .line 575
    .line 576
    move/from16 v14, v19

    .line 577
    .line 578
    if-ne v4, v14, :cond_12

    .line 579
    .line 580
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 581
    .line 582
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    .line 586
    .line 587
    .line 588
    move-result-object v20

    .line 589
    :cond_12
    move-object/from16 v4, v20

    .line 590
    .line 591
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 592
    .line 593
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 594
    .line 595
    .line 596
    move-result-object v14

    .line 597
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 598
    .line 599
    iput-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 600
    .line 601
    if-eqz v4, :cond_13

    .line 602
    .line 603
    invoke-virtual {v4, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 611
    .line 612
    :cond_13
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 613
    .line 614
    const/16 v19, 0x10

    .line 615
    .line 616
    or-int/lit8 v4, v4, 0x10

    .line 617
    .line 618
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 619
    .line 620
    goto/16 :goto_9

    .line 621
    .line 622
    :sswitch_f
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 623
    .line 624
    or-int/lit8 v4, v4, 0x8

    .line 625
    .line 626
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 627
    .line 628
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 629
    .line 630
    .line 631
    move-result v4

    .line 632
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    .line 633
    .line 634
    goto/16 :goto_9

    .line 635
    .line 636
    :sswitch_10
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    .line 641
    .line 642
    .line 643
    move-result v4

    .line 644
    and-int/lit16 v14, v7, 0x4000

    .line 645
    .line 646
    const/16 v15, 0x4000

    .line 647
    .line 648
    if-eq v14, v15, :cond_14

    .line 649
    .line 650
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 651
    .line 652
    .line 653
    move-result v14

    .line 654
    if-lez v14, :cond_14

    .line 655
    .line 656
    new-instance v14, Ljava/util/ArrayList;

    .line 657
    .line 658
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .line 660
    .line 661
    iput-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 662
    .line 663
    or-int/lit16 v7, v7, 0x4000

    .line 664
    .line 665
    :cond_14
    :goto_6
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 666
    .line 667
    .line 668
    move-result v14

    .line 669
    if-lez v14, :cond_15

    .line 670
    .line 671
    iget-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 672
    .line 673
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 674
    .line 675
    .line 676
    move-result v15

    .line 677
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 678
    .line 679
    .line 680
    move-result-object v15

    .line 681
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    goto :goto_6

    .line 685
    :cond_15
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_9

    .line 689
    .line 690
    :sswitch_11
    and-int/lit16 v4, v7, 0x4000

    .line 691
    .line 692
    const/16 v15, 0x4000

    .line 693
    .line 694
    if-eq v4, v15, :cond_16

    .line 695
    .line 696
    new-instance v4, Ljava/util/ArrayList;

    .line 697
    .line 698
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .line 700
    .line 701
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 702
    .line 703
    or-int/lit16 v7, v7, 0x4000

    .line 704
    .line 705
    :cond_16
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 706
    .line 707
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 708
    .line 709
    .line 710
    move-result v14

    .line 711
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 712
    .line 713
    .line 714
    move-result-object v14

    .line 715
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    goto/16 :goto_9

    .line 719
    .line 720
    :sswitch_12
    and-int/lit16 v4, v7, 0x2000

    .line 721
    .line 722
    const/16 v14, 0x2000

    .line 723
    .line 724
    if-eq v4, v14, :cond_17

    .line 725
    .line 726
    new-instance v4, Ljava/util/ArrayList;

    .line 727
    .line 728
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .line 730
    .line 731
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 732
    .line 733
    or-int/lit16 v7, v7, 0x2000

    .line 734
    .line 735
    :cond_17
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 736
    .line 737
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 738
    .line 739
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 740
    .line 741
    .line 742
    move-result-object v14

    .line 743
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    goto/16 :goto_9

    .line 747
    .line 748
    :sswitch_13
    and-int/lit16 v4, v7, 0x1000

    .line 749
    .line 750
    const/16 v14, 0x1000

    .line 751
    .line 752
    if-eq v4, v14, :cond_18

    .line 753
    .line 754
    new-instance v4, Ljava/util/ArrayList;

    .line 755
    .line 756
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .line 758
    .line 759
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 760
    .line 761
    or-int/lit16 v7, v7, 0x1000

    .line 762
    .line 763
    :cond_18
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 764
    .line 765
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 766
    .line 767
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 768
    .line 769
    .line 770
    move-result-object v14

    .line 771
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    goto/16 :goto_9

    .line 775
    .line 776
    :sswitch_14
    and-int/lit16 v4, v7, 0x800

    .line 777
    .line 778
    const/16 v14, 0x800

    .line 779
    .line 780
    if-eq v4, v14, :cond_19

    .line 781
    .line 782
    new-instance v4, Ljava/util/ArrayList;

    .line 783
    .line 784
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .line 786
    .line 787
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 788
    .line 789
    or-int/lit16 v7, v7, 0x800

    .line 790
    .line 791
    :cond_19
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 792
    .line 793
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 794
    .line 795
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 796
    .line 797
    .line 798
    move-result-object v14

    .line 799
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    goto/16 :goto_9

    .line 803
    .line 804
    :sswitch_15
    and-int/lit16 v4, v7, 0x400

    .line 805
    .line 806
    const/16 v14, 0x400

    .line 807
    .line 808
    if-eq v4, v14, :cond_1a

    .line 809
    .line 810
    new-instance v4, Ljava/util/ArrayList;

    .line 811
    .line 812
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .line 814
    .line 815
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 816
    .line 817
    or-int/lit16 v7, v7, 0x400

    .line 818
    .line 819
    :cond_1a
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 820
    .line 821
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 822
    .line 823
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 824
    .line 825
    .line 826
    move-result-object v14

    .line 827
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    goto/16 :goto_9

    .line 831
    .line 832
    :sswitch_16
    and-int/lit16 v4, v7, 0x200

    .line 833
    .line 834
    const/16 v14, 0x200

    .line 835
    .line 836
    if-eq v4, v14, :cond_1b

    .line 837
    .line 838
    new-instance v4, Ljava/util/ArrayList;

    .line 839
    .line 840
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .line 842
    .line 843
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 844
    .line 845
    or-int/lit16 v7, v7, 0x200

    .line 846
    .line 847
    :cond_1b
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 848
    .line 849
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 850
    .line 851
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 852
    .line 853
    .line 854
    move-result-object v14

    .line 855
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    goto/16 :goto_9

    .line 859
    .line 860
    :sswitch_17
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 861
    .line 862
    .line 863
    move-result v4

    .line 864
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    .line 865
    .line 866
    .line 867
    move-result v4

    .line 868
    and-int/lit8 v14, v7, 0x40

    .line 869
    .line 870
    if-eq v14, v12, :cond_1c

    .line 871
    .line 872
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 873
    .line 874
    .line 875
    move-result v14

    .line 876
    if-lez v14, :cond_1c

    .line 877
    .line 878
    new-instance v14, Ljava/util/ArrayList;

    .line 879
    .line 880
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .line 882
    .line 883
    iput-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 884
    .line 885
    or-int/lit8 v7, v7, 0x40

    .line 886
    .line 887
    :cond_1c
    :goto_7
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 888
    .line 889
    .line 890
    move-result v14

    .line 891
    if-lez v14, :cond_1d

    .line 892
    .line 893
    iget-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 894
    .line 895
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 896
    .line 897
    .line 898
    move-result v15

    .line 899
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 900
    .line 901
    .line 902
    move-result-object v15

    .line 903
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    goto :goto_7

    .line 907
    :cond_1d
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    .line 908
    .line 909
    .line 910
    goto/16 :goto_9

    .line 911
    .line 912
    :sswitch_18
    and-int/lit8 v4, v7, 0x40

    .line 913
    .line 914
    if-eq v4, v12, :cond_1e

    .line 915
    .line 916
    new-instance v4, Ljava/util/ArrayList;

    .line 917
    .line 918
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .line 920
    .line 921
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 922
    .line 923
    or-int/lit8 v7, v7, 0x40

    .line 924
    .line 925
    :cond_1e
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 926
    .line 927
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 928
    .line 929
    .line 930
    move-result v14

    .line 931
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 932
    .line 933
    .line 934
    move-result-object v14

    .line 935
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    .line 937
    .line 938
    goto/16 :goto_9

    .line 939
    .line 940
    :sswitch_19
    and-int/lit8 v4, v7, 0x10

    .line 941
    .line 942
    const/16 v14, 0x10

    .line 943
    .line 944
    if-eq v4, v14, :cond_1f

    .line 945
    .line 946
    new-instance v4, Ljava/util/ArrayList;

    .line 947
    .line 948
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .line 950
    .line 951
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 952
    .line 953
    or-int/lit8 v7, v7, 0x10

    .line 954
    .line 955
    :cond_1f
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 956
    .line 957
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 958
    .line 959
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 960
    .line 961
    .line 962
    move-result-object v14

    .line 963
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    .line 965
    .line 966
    goto/16 :goto_9

    .line 967
    .line 968
    :sswitch_1a
    and-int/lit8 v4, v7, 0x8

    .line 969
    .line 970
    move/from16 v14, v17

    .line 971
    .line 972
    if-eq v4, v14, :cond_20

    .line 973
    .line 974
    new-instance v4, Ljava/util/ArrayList;

    .line 975
    .line 976
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .line 978
    .line 979
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 980
    .line 981
    or-int/lit8 v7, v7, 0x8

    .line 982
    .line 983
    :cond_20
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 984
    .line 985
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    .line 986
    .line 987
    invoke-virtual {v0, v14, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 988
    .line 989
    .line 990
    move-result-object v14

    .line 991
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    .line 993
    .line 994
    goto/16 :goto_9

    .line 995
    .line 996
    :sswitch_1b
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 997
    .line 998
    or-int/lit8 v4, v4, 0x4

    .line 999
    .line 1000
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 1001
    .line 1002
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 1003
    .line 1004
    .line 1005
    move-result v4

    .line 1006
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    .line 1007
    .line 1008
    goto :goto_9

    .line 1009
    :sswitch_1c
    iget v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 1010
    .line 1011
    or-int/2addr v4, v14

    .line 1012
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 1013
    .line 1014
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 1015
    .line 1016
    .line 1017
    move-result v4

    .line 1018
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    .line 1019
    .line 1020
    goto :goto_9

    .line 1021
    :sswitch_1d
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 1022
    .line 1023
    .line 1024
    move-result v4

    .line 1025
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    .line 1026
    .line 1027
    .line 1028
    move-result v4

    .line 1029
    and-int/lit8 v14, v7, 0x20

    .line 1030
    .line 1031
    move/from16 v15, v18

    .line 1032
    .line 1033
    if-eq v14, v15, :cond_21

    .line 1034
    .line 1035
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 1036
    .line 1037
    .line 1038
    move-result v14

    .line 1039
    if-lez v14, :cond_21

    .line 1040
    .line 1041
    new-instance v14, Ljava/util/ArrayList;

    .line 1042
    .line 1043
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .line 1045
    .line 1046
    iput-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 1047
    .line 1048
    or-int/lit8 v7, v7, 0x20

    .line 1049
    .line 1050
    :cond_21
    :goto_8
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    .line 1051
    .line 1052
    .line 1053
    move-result v14

    .line 1054
    if-lez v14, :cond_22

    .line 1055
    .line 1056
    iget-object v14, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 1057
    .line 1058
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 1059
    .line 1060
    .line 1061
    move-result v15

    .line 1062
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v15

    .line 1066
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    .line 1068
    .line 1069
    goto :goto_8

    .line 1070
    :cond_22
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    .line 1071
    .line 1072
    .line 1073
    goto :goto_9

    .line 1074
    :sswitch_1e
    and-int/lit8 v4, v7, 0x20

    .line 1075
    .line 1076
    const/16 v15, 0x20

    .line 1077
    .line 1078
    if-eq v4, v15, :cond_23

    .line 1079
    .line 1080
    new-instance v4, Ljava/util/ArrayList;

    .line 1081
    .line 1082
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .line 1084
    .line 1085
    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 1086
    .line 1087
    or-int/lit8 v7, v7, 0x20

    .line 1088
    .line 1089
    :cond_23
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 1090
    .line 1091
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 1092
    .line 1093
    .line 1094
    move-result v14

    .line 1095
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v14

    .line 1099
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    .line 1101
    .line 1102
    goto :goto_9

    .line 1103
    :sswitch_1f
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 1104
    .line 1105
    or-int/lit8 v4, v4, 0x1

    .line 1106
    .line 1107
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 1108
    .line 1109
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    .line 1110
    .line 1111
    .line 1112
    move-result v4

    .line 1113
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    .line 1115
    :cond_24
    :goto_9
    move/from16 v4, v16

    .line 1116
    .line 1117
    goto/16 :goto_0

    .line 1118
    .line 1119
    :goto_a
    :try_start_1
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    .line 1120
    .line 1121
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    invoke-direct {v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 1126
    .line 1127
    .line 1128
    iput-object v1, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 1129
    .line 1130
    throw v2

    .line 1131
    :goto_b
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 1132
    .line 1133
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    :goto_c
    and-int/lit8 v2, v7, 0x20

    .line 1135
    .line 1136
    const/16 v15, 0x20

    .line 1137
    .line 1138
    if-ne v2, v15, :cond_25

    .line 1139
    .line 1140
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 1141
    .line 1142
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v2

    .line 1146
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 1147
    .line 1148
    :cond_25
    and-int/lit8 v2, v7, 0x8

    .line 1149
    .line 1150
    const/16 v14, 0x8

    .line 1151
    .line 1152
    if-ne v2, v14, :cond_26

    .line 1153
    .line 1154
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 1155
    .line 1156
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 1161
    .line 1162
    :cond_26
    and-int/lit8 v2, v7, 0x10

    .line 1163
    .line 1164
    const/16 v14, 0x10

    .line 1165
    .line 1166
    if-ne v2, v14, :cond_27

    .line 1167
    .line 1168
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 1169
    .line 1170
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v2

    .line 1174
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 1175
    .line 1176
    :cond_27
    and-int/lit8 v2, v7, 0x40

    .line 1177
    .line 1178
    if-ne v2, v12, :cond_28

    .line 1179
    .line 1180
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 1181
    .line 1182
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v2

    .line 1186
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 1187
    .line 1188
    :cond_28
    and-int/lit16 v2, v7, 0x200

    .line 1189
    .line 1190
    const/16 v14, 0x200

    .line 1191
    .line 1192
    if-ne v2, v14, :cond_29

    .line 1193
    .line 1194
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 1195
    .line 1196
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v2

    .line 1200
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 1201
    .line 1202
    :cond_29
    and-int/lit16 v2, v7, 0x400

    .line 1203
    .line 1204
    const/16 v14, 0x400

    .line 1205
    .line 1206
    if-ne v2, v14, :cond_2a

    .line 1207
    .line 1208
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 1209
    .line 1210
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v2

    .line 1214
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 1215
    .line 1216
    :cond_2a
    and-int/lit16 v2, v7, 0x800

    .line 1217
    .line 1218
    const/16 v14, 0x800

    .line 1219
    .line 1220
    if-ne v2, v14, :cond_2b

    .line 1221
    .line 1222
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 1223
    .line 1224
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v2

    .line 1228
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 1229
    .line 1230
    :cond_2b
    and-int/lit16 v2, v7, 0x1000

    .line 1231
    .line 1232
    const/16 v14, 0x1000

    .line 1233
    .line 1234
    if-ne v2, v14, :cond_2c

    .line 1235
    .line 1236
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 1237
    .line 1238
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v2

    .line 1242
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 1243
    .line 1244
    :cond_2c
    and-int/lit16 v2, v7, 0x2000

    .line 1245
    .line 1246
    const/16 v14, 0x2000

    .line 1247
    .line 1248
    if-ne v2, v14, :cond_2d

    .line 1249
    .line 1250
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 1251
    .line 1252
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v2

    .line 1256
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 1257
    .line 1258
    :cond_2d
    and-int/lit16 v2, v7, 0x4000

    .line 1259
    .line 1260
    const/16 v15, 0x4000

    .line 1261
    .line 1262
    if-ne v2, v15, :cond_2e

    .line 1263
    .line 1264
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 1265
    .line 1266
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v2

    .line 1270
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 1271
    .line 1272
    :cond_2e
    and-int/lit16 v2, v7, 0x80

    .line 1273
    .line 1274
    if-ne v2, v11, :cond_2f

    .line 1275
    .line 1276
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 1277
    .line 1278
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v2

    .line 1282
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 1283
    .line 1284
    :cond_2f
    and-int/lit16 v2, v7, 0x100

    .line 1285
    .line 1286
    const/16 v15, 0x100

    .line 1287
    .line 1288
    if-ne v2, v15, :cond_30

    .line 1289
    .line 1290
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 1291
    .line 1292
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v2

    .line 1296
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 1297
    .line 1298
    :cond_30
    and-int v2, v7, v8

    .line 1299
    .line 1300
    if-ne v2, v8, :cond_31

    .line 1301
    .line 1302
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 1303
    .line 1304
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v2

    .line 1308
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 1309
    .line 1310
    :cond_31
    and-int v2, v7, v13

    .line 1311
    .line 1312
    if-ne v2, v13, :cond_32

    .line 1313
    .line 1314
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 1315
    .line 1316
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v2

    .line 1320
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 1321
    .line 1322
    :cond_32
    and-int v2, v7, v9

    .line 1323
    .line 1324
    if-ne v2, v9, :cond_33

    .line 1325
    .line 1326
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 1327
    .line 1328
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v2

    .line 1332
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 1333
    .line 1334
    :cond_33
    and-int v2, v7, v10

    .line 1335
    .line 1336
    if-ne v2, v10, :cond_34

    .line 1337
    .line 1338
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 1339
    .line 1340
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 1345
    .line 1346
    :cond_34
    :try_start_2
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1347
    .line 1348
    .line 1349
    :catch_2
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v2

    .line 1353
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 1354
    .line 1355
    goto :goto_d

    .line 1356
    :catchall_1
    move-exception v0

    .line 1357
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v2

    .line 1361
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 1362
    .line 1363
    throw v0

    .line 1364
    :goto_d
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->makeExtensionsImmutable()V

    .line 1365
    .line 1366
    .line 1367
    throw v0

    .line 1368
    :cond_35
    and-int/lit8 v0, v7, 0x20

    .line 1369
    .line 1370
    const/16 v15, 0x20

    .line 1371
    .line 1372
    if-ne v0, v15, :cond_36

    .line 1373
    .line 1374
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 1375
    .line 1376
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v0

    .line 1380
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 1381
    .line 1382
    :cond_36
    and-int/lit8 v0, v7, 0x8

    .line 1383
    .line 1384
    const/16 v14, 0x8

    .line 1385
    .line 1386
    if-ne v0, v14, :cond_37

    .line 1387
    .line 1388
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 1389
    .line 1390
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v0

    .line 1394
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 1395
    .line 1396
    :cond_37
    and-int/lit8 v0, v7, 0x10

    .line 1397
    .line 1398
    const/16 v14, 0x10

    .line 1399
    .line 1400
    if-ne v0, v14, :cond_38

    .line 1401
    .line 1402
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 1403
    .line 1404
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v0

    .line 1408
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 1409
    .line 1410
    :cond_38
    and-int/lit8 v0, v7, 0x40

    .line 1411
    .line 1412
    if-ne v0, v12, :cond_39

    .line 1413
    .line 1414
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 1415
    .line 1416
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v0

    .line 1420
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 1421
    .line 1422
    :cond_39
    and-int/lit16 v0, v7, 0x200

    .line 1423
    .line 1424
    const/16 v14, 0x200

    .line 1425
    .line 1426
    if-ne v0, v14, :cond_3a

    .line 1427
    .line 1428
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 1429
    .line 1430
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v0

    .line 1434
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 1435
    .line 1436
    :cond_3a
    and-int/lit16 v0, v7, 0x400

    .line 1437
    .line 1438
    const/16 v14, 0x400

    .line 1439
    .line 1440
    if-ne v0, v14, :cond_3b

    .line 1441
    .line 1442
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 1443
    .line 1444
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v0

    .line 1448
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 1449
    .line 1450
    :cond_3b
    and-int/lit16 v0, v7, 0x800

    .line 1451
    .line 1452
    const/16 v14, 0x800

    .line 1453
    .line 1454
    if-ne v0, v14, :cond_3c

    .line 1455
    .line 1456
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 1457
    .line 1458
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v0

    .line 1462
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 1463
    .line 1464
    :cond_3c
    and-int/lit16 v0, v7, 0x1000

    .line 1465
    .line 1466
    const/16 v14, 0x1000

    .line 1467
    .line 1468
    if-ne v0, v14, :cond_3d

    .line 1469
    .line 1470
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 1471
    .line 1472
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 1477
    .line 1478
    :cond_3d
    and-int/lit16 v0, v7, 0x2000

    .line 1479
    .line 1480
    const/16 v14, 0x2000

    .line 1481
    .line 1482
    if-ne v0, v14, :cond_3e

    .line 1483
    .line 1484
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 1485
    .line 1486
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v0

    .line 1490
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 1491
    .line 1492
    :cond_3e
    and-int/lit16 v0, v7, 0x4000

    .line 1493
    .line 1494
    const/16 v15, 0x4000

    .line 1495
    .line 1496
    if-ne v0, v15, :cond_3f

    .line 1497
    .line 1498
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 1499
    .line 1500
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v0

    .line 1504
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 1505
    .line 1506
    :cond_3f
    and-int/lit16 v0, v7, 0x80

    .line 1507
    .line 1508
    if-ne v0, v11, :cond_40

    .line 1509
    .line 1510
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 1511
    .line 1512
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v0

    .line 1516
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 1517
    .line 1518
    :cond_40
    and-int/lit16 v0, v7, 0x100

    .line 1519
    .line 1520
    const/16 v15, 0x100

    .line 1521
    .line 1522
    if-ne v0, v15, :cond_41

    .line 1523
    .line 1524
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 1525
    .line 1526
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v0

    .line 1530
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 1531
    .line 1532
    :cond_41
    and-int v0, v7, v8

    .line 1533
    .line 1534
    if-ne v0, v8, :cond_42

    .line 1535
    .line 1536
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 1537
    .line 1538
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 1543
    .line 1544
    :cond_42
    and-int v0, v7, v13

    .line 1545
    .line 1546
    if-ne v0, v13, :cond_43

    .line 1547
    .line 1548
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 1549
    .line 1550
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 1555
    .line 1556
    :cond_43
    and-int v0, v7, v9

    .line 1557
    .line 1558
    if-ne v0, v9, :cond_44

    .line 1559
    .line 1560
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 1561
    .line 1562
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v0

    .line 1566
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 1567
    .line 1568
    :cond_44
    and-int v0, v7, v10

    .line 1569
    .line 1570
    if-ne v0, v10, :cond_45

    .line 1571
    .line 1572
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 1573
    .line 1574
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v0

    .line 1578
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 1579
    .line 1580
    :cond_45
    :try_start_3
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1581
    .line 1582
    .line 1583
    :catch_3
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v0

    .line 1587
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 1588
    .line 1589
    goto :goto_e

    .line 1590
    :catchall_2
    move-exception v0

    .line 1591
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v2

    .line 1595
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 1596
    .line 1597
    throw v0

    .line 1598
    :goto_e
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->makeExtensionsImmutable()V

    .line 1599
    .line 1600
    .line 1601
    return-void

    .line 1602
    nop

    .line 1603
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1f
        0x10 -> :sswitch_1e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_1c
        0x20 -> :sswitch_1b
        0x2a -> :sswitch_1a
        0x32 -> :sswitch_19
        0x38 -> :sswitch_18
        0x3a -> :sswitch_17
        0x42 -> :sswitch_16
        0x4a -> :sswitch_15
        0x52 -> :sswitch_14
        0x5a -> :sswitch_13
        0x6a -> :sswitch_12
        0x80 -> :sswitch_11
        0x82 -> :sswitch_10
        0x88 -> :sswitch_f
        0x92 -> :sswitch_e
        0x98 -> :sswitch_d
        0xa2 -> :sswitch_c
        0xa8 -> :sswitch_b
        0xaa -> :sswitch_a
        0xb0 -> :sswitch_9
        0xb2 -> :sswitch_8
        0xba -> :sswitch_7
        0xc0 -> :sswitch_6
        0xc2 -> :sswitch_5
        0xf2 -> :sswitch_4
        0xf8 -> :sswitch_3
        0xfa -> :sswitch_2
        0x102 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSerializedSize()I
    .locals 8

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v2

    .line 22
    :goto_0
    move v1, v2

    .line 23
    move v3, v1

    .line 24
    :goto_1
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 31
    .line 32
    if-ge v1, v4, :cond_2

    .line 33
    .line 34
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-static {v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/2addr v3, v4

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    add-int/2addr v0, v3

    .line 53
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    invoke-static {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    add-int/2addr v0, v1

    .line 66
    :cond_3
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    .line 67
    .line 68
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 69
    .line 70
    const/4 v3, 0x2

    .line 71
    and-int/2addr v1, v3

    .line 72
    if-ne v1, v3, :cond_4

    .line 73
    .line 74
    const/4 v1, 0x3

    .line 75
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    .line 76
    .line 77
    invoke-static {v1, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32Size(II)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v0, v1

    .line 82
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 83
    .line 84
    const/4 v4, 0x4

    .line 85
    and-int/2addr v1, v4

    .line 86
    if-ne v1, v4, :cond_5

    .line 87
    .line 88
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    .line 89
    .line 90
    invoke-static {v4, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32Size(II)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    add-int/2addr v0, v1

    .line 95
    :cond_5
    move v1, v2

    .line 96
    :goto_2
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-ge v1, v4, :cond_6

    .line 103
    .line 104
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 111
    .line 112
    const/4 v5, 0x5

    .line 113
    invoke-static {v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    add-int/2addr v0, v4

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    move v1, v2

    .line 122
    :goto_3
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-ge v1, v4, :cond_7

    .line 129
    .line 130
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 137
    .line 138
    const/4 v5, 0x6

    .line 139
    invoke-static {v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    add-int/2addr v0, v4

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    move v1, v2

    .line 148
    move v4, v1

    .line 149
    :goto_4
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 156
    .line 157
    if-ge v1, v5, :cond_8

    .line 158
    .line 159
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Ljava/lang/Integer;

    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    invoke-static {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    add-int/2addr v4, v5

    .line 174
    add-int/lit8 v1, v1, 0x1

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    add-int/2addr v0, v4

    .line 178
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_9

    .line 183
    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 185
    .line 186
    invoke-static {v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    add-int/2addr v0, v1

    .line 191
    :cond_9
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    .line 192
    .line 193
    move v1, v2

    .line 194
    :goto_5
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 195
    .line 196
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    const/16 v5, 0x8

    .line 201
    .line 202
    if-ge v1, v4, :cond_a

    .line 203
    .line 204
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 211
    .line 212
    invoke-static {v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    add-int/2addr v0, v4

    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_a
    move v1, v2

    .line 221
    :goto_6
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-ge v1, v4, :cond_b

    .line 228
    .line 229
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 230
    .line 231
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 236
    .line 237
    const/16 v6, 0x9

    .line 238
    .line 239
    invoke-static {v6, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    add-int/2addr v0, v4

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_b
    move v1, v2

    .line 248
    :goto_7
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 249
    .line 250
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-ge v1, v4, :cond_c

    .line 255
    .line 256
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 263
    .line 264
    const/16 v6, 0xa

    .line 265
    .line 266
    invoke-static {v6, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    add-int/2addr v0, v4

    .line 271
    add-int/lit8 v1, v1, 0x1

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_c
    move v1, v2

    .line 275
    :goto_8
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 276
    .line 277
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-ge v1, v4, :cond_d

    .line 282
    .line 283
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 284
    .line 285
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 290
    .line 291
    const/16 v6, 0xb

    .line 292
    .line 293
    invoke-static {v6, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    add-int/2addr v0, v4

    .line 298
    add-int/lit8 v1, v1, 0x1

    .line 299
    .line 300
    goto :goto_8

    .line 301
    :cond_d
    move v1, v2

    .line 302
    :goto_9
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 303
    .line 304
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-ge v1, v4, :cond_e

    .line 309
    .line 310
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 311
    .line 312
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 317
    .line 318
    const/16 v6, 0xd

    .line 319
    .line 320
    invoke-static {v6, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    add-int/2addr v0, v4

    .line 325
    add-int/lit8 v1, v1, 0x1

    .line 326
    .line 327
    goto :goto_9

    .line 328
    :cond_e
    move v1, v2

    .line 329
    move v4, v1

    .line 330
    :goto_a
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 331
    .line 332
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 337
    .line 338
    if-ge v1, v6, :cond_f

    .line 339
    .line 340
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    check-cast v6, Ljava/lang/Integer;

    .line 345
    .line 346
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    invoke-static {v6}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    add-int/2addr v4, v6

    .line 355
    add-int/lit8 v1, v1, 0x1

    .line 356
    .line 357
    goto :goto_a

    .line 358
    :cond_f
    add-int/2addr v0, v4

    .line 359
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-nez v1, :cond_10

    .line 364
    .line 365
    add-int/lit8 v0, v0, 0x2

    .line 366
    .line 367
    invoke-static {v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    add-int/2addr v0, v1

    .line 372
    :cond_10
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    .line 373
    .line 374
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 375
    .line 376
    and-int/2addr v1, v5

    .line 377
    if-ne v1, v5, :cond_11

    .line 378
    .line 379
    const/16 v1, 0x11

    .line 380
    .line 381
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    .line 382
    .line 383
    invoke-static {v1, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32Size(II)I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    add-int/2addr v0, v1

    .line 388
    :cond_11
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 389
    .line 390
    const/16 v4, 0x10

    .line 391
    .line 392
    and-int/2addr v1, v4

    .line 393
    if-ne v1, v4, :cond_12

    .line 394
    .line 395
    const/16 v1, 0x12

    .line 396
    .line 397
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 398
    .line 399
    invoke-static {v1, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    add-int/2addr v0, v1

    .line 404
    :cond_12
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 405
    .line 406
    const/16 v4, 0x20

    .line 407
    .line 408
    and-int/2addr v1, v4

    .line 409
    if-ne v1, v4, :cond_13

    .line 410
    .line 411
    const/16 v1, 0x13

    .line 412
    .line 413
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    .line 414
    .line 415
    invoke-static {v1, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32Size(II)I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    add-int/2addr v0, v1

    .line 420
    :cond_13
    move v1, v2

    .line 421
    :goto_b
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 422
    .line 423
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    if-ge v1, v5, :cond_14

    .line 428
    .line 429
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 430
    .line 431
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 436
    .line 437
    const/16 v6, 0x14

    .line 438
    .line 439
    invoke-static {v6, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    add-int/2addr v0, v5

    .line 444
    add-int/lit8 v1, v1, 0x1

    .line 445
    .line 446
    goto :goto_b

    .line 447
    :cond_14
    move v1, v2

    .line 448
    move v5, v1

    .line 449
    :goto_c
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 450
    .line 451
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 456
    .line 457
    if-ge v1, v6, :cond_15

    .line 458
    .line 459
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v6

    .line 463
    check-cast v6, Ljava/lang/Integer;

    .line 464
    .line 465
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    invoke-static {v6}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    add-int/2addr v5, v6

    .line 474
    add-int/lit8 v1, v1, 0x1

    .line 475
    .line 476
    goto :goto_c

    .line 477
    :cond_15
    add-int/2addr v0, v5

    .line 478
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-nez v1, :cond_16

    .line 483
    .line 484
    add-int/lit8 v0, v0, 0x2

    .line 485
    .line 486
    invoke-static {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    add-int/2addr v0, v1

    .line 491
    :cond_16
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeIdMemoizedSerializedSize:I

    .line 492
    .line 493
    move v1, v2

    .line 494
    move v5, v1

    .line 495
    :goto_d
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 496
    .line 497
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 498
    .line 499
    .line 500
    move-result v6

    .line 501
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 502
    .line 503
    if-ge v1, v6, :cond_17

    .line 504
    .line 505
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    check-cast v6, Ljava/lang/Integer;

    .line 510
    .line 511
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 512
    .line 513
    .line 514
    move-result v6

    .line 515
    invoke-static {v6}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 516
    .line 517
    .line 518
    move-result v6

    .line 519
    add-int/2addr v5, v6

    .line 520
    add-int/lit8 v1, v1, 0x1

    .line 521
    .line 522
    goto :goto_d

    .line 523
    :cond_17
    add-int/2addr v0, v5

    .line 524
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-nez v1, :cond_18

    .line 529
    .line 530
    add-int/lit8 v0, v0, 0x2

    .line 531
    .line 532
    invoke-static {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    add-int/2addr v0, v1

    .line 537
    :cond_18
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

    .line 538
    .line 539
    move v1, v2

    .line 540
    :goto_e
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 541
    .line 542
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    if-ge v1, v5, :cond_19

    .line 547
    .line 548
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 549
    .line 550
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 555
    .line 556
    const/16 v6, 0x17

    .line 557
    .line 558
    invoke-static {v6, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    add-int/2addr v0, v5

    .line 563
    add-int/lit8 v1, v1, 0x1

    .line 564
    .line 565
    goto :goto_e

    .line 566
    :cond_19
    move v1, v2

    .line 567
    move v5, v1

    .line 568
    :goto_f
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 569
    .line 570
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 571
    .line 572
    .line 573
    move-result v6

    .line 574
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 575
    .line 576
    if-ge v1, v6, :cond_1a

    .line 577
    .line 578
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    check-cast v6, Ljava/lang/Integer;

    .line 583
    .line 584
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 585
    .line 586
    .line 587
    move-result v6

    .line 588
    invoke-static {v6}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 589
    .line 590
    .line 591
    move-result v6

    .line 592
    add-int/2addr v5, v6

    .line 593
    add-int/lit8 v1, v1, 0x1

    .line 594
    .line 595
    goto :goto_f

    .line 596
    :cond_1a
    add-int/2addr v0, v5

    .line 597
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    if-nez v1, :cond_1b

    .line 602
    .line 603
    add-int/lit8 v0, v0, 0x2

    .line 604
    .line 605
    invoke-static {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    add-int/2addr v0, v1

    .line 610
    :cond_1b
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

    .line 611
    .line 612
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 613
    .line 614
    const/16 v5, 0x40

    .line 615
    .line 616
    and-int/2addr v1, v5

    .line 617
    if-ne v1, v5, :cond_1c

    .line 618
    .line 619
    const/16 v1, 0x1e

    .line 620
    .line 621
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 622
    .line 623
    invoke-static {v1, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    add-int/2addr v0, v1

    .line 628
    :cond_1c
    move v1, v2

    .line 629
    :goto_10
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 630
    .line 631
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 636
    .line 637
    if-ge v2, v5, :cond_1d

    .line 638
    .line 639
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    check-cast v5, Ljava/lang/Integer;

    .line 644
    .line 645
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    invoke-static {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeInt32SizeNoTag(I)I

    .line 650
    .line 651
    .line 652
    move-result v5

    .line 653
    add-int/2addr v1, v5

    .line 654
    add-int/lit8 v2, v2, 0x1

    .line 655
    .line 656
    goto :goto_10

    .line 657
    :cond_1d
    add-int/2addr v0, v1

    .line 658
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 659
    .line 660
    .line 661
    move-result v1

    .line 662
    mul-int/2addr v1, v3

    .line 663
    add-int/2addr v1, v0

    .line 664
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 665
    .line 666
    const/16 v2, 0x80

    .line 667
    .line 668
    and-int/2addr v0, v2

    .line 669
    if-ne v0, v2, :cond_1e

    .line 670
    .line 671
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 672
    .line 673
    invoke-static {v4, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    add-int/2addr v1, v0

    .line 678
    :cond_1e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensionsSerializedSize()I

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    add-int/2addr v0, v1

    .line 683
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 684
    .line 685
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    add-int/2addr v1, v0

    .line 690
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    .line 691
    .line 692
    return v1
.end method

.method public final initFields$3()V
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    .line 6
    .line 7
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    .line 8
    .line 9
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 10
    .line 11
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 12
    .line 13
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 14
    .line 15
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 16
    .line 17
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 18
    .line 19
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 20
    .line 21
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 22
    .line 23
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 24
    .line 25
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 26
    .line 27
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 28
    .line 29
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 30
    .line 31
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 32
    .line 33
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 34
    .line 35
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    .line 36
    .line 37
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 38
    .line 39
    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 40
    .line 41
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    .line 42
    .line 43
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 44
    .line 45
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 46
    .line 47
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 48
    .line 49
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 50
    .line 51
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 52
    .line 53
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 54
    .line 55
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 56
    .line 57
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 58
    .line 59
    return-void
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    and-int/2addr v0, v3

    .line 15
    if-ne v0, v3, :cond_17

    .line 16
    .line 17
    move v0, v2

    .line 18
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v0, v3, :cond_3

    .line 25
    .line 26
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    .line 33
    .line 34
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->isInitialized()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    move v0, v2

    .line 47
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ge v0, v3, :cond_5

    .line 54
    .line 55
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 62
    .line 63
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_4

    .line 68
    .line 69
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 70
    .line 71
    return v2

    .line 72
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    move v0, v2

    .line 76
    :goto_2
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ge v0, v3, :cond_7

    .line 83
    .line 84
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 91
    .line 92
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_6

    .line 97
    .line 98
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 99
    .line 100
    return v2

    .line 101
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_7
    move v0, v2

    .line 105
    :goto_3
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-ge v0, v3, :cond_9

    .line 112
    .line 113
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 120
    .line 121
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->isInitialized()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_8

    .line 126
    .line 127
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 128
    .line 129
    return v2

    .line 130
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_9
    move v0, v2

    .line 134
    :goto_4
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-ge v0, v3, :cond_b

    .line 141
    .line 142
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 149
    .line 150
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->isInitialized()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_a

    .line 155
    .line 156
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 157
    .line 158
    return v2

    .line 159
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_b
    move v0, v2

    .line 163
    :goto_5
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-ge v0, v3, :cond_d

    .line 170
    .line 171
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 172
    .line 173
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 178
    .line 179
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->isInitialized()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-nez v3, :cond_c

    .line 184
    .line 185
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 186
    .line 187
    return v2

    .line 188
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_d
    move v0, v2

    .line 192
    :goto_6
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-ge v0, v3, :cond_f

    .line 199
    .line 200
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    .line 207
    .line 208
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->isInitialized()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-nez v3, :cond_e

    .line 213
    .line 214
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 215
    .line 216
    return v2

    .line 217
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_f
    move v0, v2

    .line 221
    :goto_7
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-ge v0, v3, :cond_11

    .line 228
    .line 229
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 230
    .line 231
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    .line 236
    .line 237
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->isInitialized()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_10

    .line 242
    .line 243
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 244
    .line 245
    return v2

    .line 246
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_11
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 250
    .line 251
    const/16 v3, 0x10

    .line 252
    .line 253
    and-int/2addr v0, v3

    .line 254
    if-ne v0, v3, :cond_12

    .line 255
    .line 256
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 257
    .line 258
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_12

    .line 263
    .line 264
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 265
    .line 266
    return v2

    .line 267
    :cond_12
    move v0, v2

    .line 268
    :goto_8
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 269
    .line 270
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-ge v0, v3, :cond_14

    .line 275
    .line 276
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 277
    .line 278
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 283
    .line 284
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-nez v3, :cond_13

    .line 289
    .line 290
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 291
    .line 292
    return v2

    .line 293
    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_14
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 297
    .line 298
    const/16 v3, 0x40

    .line 299
    .line 300
    and-int/2addr v0, v3

    .line 301
    if-ne v0, v3, :cond_15

    .line 302
    .line 303
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 304
    .line 305
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->isInitialized()Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_15

    .line 310
    .line 311
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 312
    .line 313
    return v2

    .line 314
    :cond_15
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensionsAreInitialized()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-nez v0, :cond_16

    .line 319
    .line 320
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 321
    .line 322
    return v2

    .line 323
    :cond_16
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 324
    .line 325
    return v1

    .line 326
    :cond_17
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 327
    .line 328
    return v2
.end method

.method public final newBuilderForType()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final writeTo(Lcom/caverock/androidsvg/SVG$PathDefinition;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lokhttp3/FormBody$Builder;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    and-int/2addr v1, v2

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    .line 16
    .line 17
    invoke-virtual {p1, v2, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x12

    .line 27
    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    move v3, v1

    .line 40
    :goto_0
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ge v3, v4, :cond_2

    .line 47
    .line 48
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32NoTag(I)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 67
    .line 68
    const/4 v4, 0x2

    .line 69
    and-int/2addr v3, v4

    .line 70
    if-ne v3, v4, :cond_3

    .line 71
    .line 72
    const/4 v3, 0x3

    .line 73
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    .line 74
    .line 75
    invoke-virtual {p1, v3, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32(II)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 79
    .line 80
    const/4 v4, 0x4

    .line 81
    and-int/2addr v3, v4

    .line 82
    if-ne v3, v4, :cond_4

    .line 83
    .line 84
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    .line 85
    .line 86
    invoke-virtual {p1, v4, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32(II)V

    .line 87
    .line 88
    .line 89
    :cond_4
    move v3, v1

    .line 90
    :goto_1
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-ge v3, v4, :cond_5

    .line 97
    .line 98
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 105
    .line 106
    const/4 v5, 0x5

    .line 107
    invoke-virtual {p1, v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    move v3, v1

    .line 114
    :goto_2
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-ge v3, v4, :cond_6

    .line 121
    .line 122
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 129
    .line 130
    const/4 v5, 0x6

    .line 131
    invoke-virtual {p1, v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-lez v3, :cond_7

    .line 144
    .line 145
    const/16 v3, 0x3a

    .line 146
    .line 147
    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 148
    .line 149
    .line 150
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    .line 151
    .line 152
    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 153
    .line 154
    .line 155
    :cond_7
    move v3, v1

    .line 156
    :goto_3
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-ge v3, v4, :cond_8

    .line 163
    .line 164
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32NoTag(I)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v3, v3, 0x1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_8
    move v3, v1

    .line 183
    :goto_4
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 184
    .line 185
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    const/16 v5, 0x8

    .line 190
    .line 191
    if-ge v3, v4, :cond_9

    .line 192
    .line 193
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 194
    .line 195
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 200
    .line 201
    invoke-virtual {p1, v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 202
    .line 203
    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_9
    move v3, v1

    .line 208
    :goto_5
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 209
    .line 210
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-ge v3, v4, :cond_a

    .line 215
    .line 216
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 223
    .line 224
    const/16 v6, 0x9

    .line 225
    .line 226
    invoke-virtual {p1, v6, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 227
    .line 228
    .line 229
    add-int/lit8 v3, v3, 0x1

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_a
    move v3, v1

    .line 233
    :goto_6
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-ge v3, v4, :cond_b

    .line 240
    .line 241
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 242
    .line 243
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 248
    .line 249
    const/16 v6, 0xa

    .line 250
    .line 251
    invoke-virtual {p1, v6, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 252
    .line 253
    .line 254
    add-int/lit8 v3, v3, 0x1

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_b
    move v3, v1

    .line 258
    :goto_7
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 259
    .line 260
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-ge v3, v4, :cond_c

    .line 265
    .line 266
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 267
    .line 268
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 273
    .line 274
    const/16 v6, 0xb

    .line 275
    .line 276
    invoke-virtual {p1, v6, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 277
    .line 278
    .line 279
    add-int/lit8 v3, v3, 0x1

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_c
    move v3, v1

    .line 283
    :goto_8
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 284
    .line 285
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-ge v3, v4, :cond_d

    .line 290
    .line 291
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 292
    .line 293
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 298
    .line 299
    const/16 v6, 0xd

    .line 300
    .line 301
    invoke-virtual {p1, v6, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 302
    .line 303
    .line 304
    add-int/lit8 v3, v3, 0x1

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_d
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 308
    .line 309
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-lez v3, :cond_e

    .line 314
    .line 315
    const/16 v3, 0x82

    .line 316
    .line 317
    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 318
    .line 319
    .line 320
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    .line 321
    .line 322
    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 323
    .line 324
    .line 325
    :cond_e
    move v3, v1

    .line 326
    :goto_9
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 327
    .line 328
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-ge v3, v4, :cond_f

    .line 333
    .line 334
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 335
    .line 336
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    check-cast v4, Ljava/lang/Integer;

    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32NoTag(I)V

    .line 347
    .line 348
    .line 349
    add-int/lit8 v3, v3, 0x1

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_f
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 353
    .line 354
    and-int/2addr v3, v5

    .line 355
    if-ne v3, v5, :cond_10

    .line 356
    .line 357
    const/16 v3, 0x11

    .line 358
    .line 359
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    .line 360
    .line 361
    invoke-virtual {p1, v3, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32(II)V

    .line 362
    .line 363
    .line 364
    :cond_10
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 365
    .line 366
    const/16 v4, 0x10

    .line 367
    .line 368
    and-int/2addr v3, v4

    .line 369
    if-ne v3, v4, :cond_11

    .line 370
    .line 371
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 372
    .line 373
    invoke-virtual {p1, v2, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 374
    .line 375
    .line 376
    :cond_11
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 377
    .line 378
    const/16 v3, 0x20

    .line 379
    .line 380
    and-int/2addr v2, v3

    .line 381
    if-ne v2, v3, :cond_12

    .line 382
    .line 383
    const/16 v2, 0x13

    .line 384
    .line 385
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    .line 386
    .line 387
    invoke-virtual {p1, v2, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32(II)V

    .line 388
    .line 389
    .line 390
    :cond_12
    move v2, v1

    .line 391
    :goto_a
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 392
    .line 393
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-ge v2, v4, :cond_13

    .line 398
    .line 399
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 400
    .line 401
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 406
    .line 407
    const/16 v5, 0x14

    .line 408
    .line 409
    invoke-virtual {p1, v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 410
    .line 411
    .line 412
    add-int/lit8 v2, v2, 0x1

    .line 413
    .line 414
    goto :goto_a

    .line 415
    :cond_13
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 416
    .line 417
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-lez v2, :cond_14

    .line 422
    .line 423
    const/16 v2, 0xaa

    .line 424
    .line 425
    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 426
    .line 427
    .line 428
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeIdMemoizedSerializedSize:I

    .line 429
    .line 430
    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 431
    .line 432
    .line 433
    :cond_14
    move v2, v1

    .line 434
    :goto_b
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 435
    .line 436
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    if-ge v2, v4, :cond_15

    .line 441
    .line 442
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 443
    .line 444
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    check-cast v4, Ljava/lang/Integer;

    .line 449
    .line 450
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32NoTag(I)V

    .line 455
    .line 456
    .line 457
    add-int/lit8 v2, v2, 0x1

    .line 458
    .line 459
    goto :goto_b

    .line 460
    :cond_15
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 461
    .line 462
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-lez v2, :cond_16

    .line 467
    .line 468
    const/16 v2, 0xb2

    .line 469
    .line 470
    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 471
    .line 472
    .line 473
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingNameMemoizedSerializedSize:I

    .line 474
    .line 475
    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 476
    .line 477
    .line 478
    :cond_16
    move v2, v1

    .line 479
    :goto_c
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 480
    .line 481
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    if-ge v2, v4, :cond_17

    .line 486
    .line 487
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 488
    .line 489
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    check-cast v4, Ljava/lang/Integer;

    .line 494
    .line 495
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32NoTag(I)V

    .line 500
    .line 501
    .line 502
    add-int/lit8 v2, v2, 0x1

    .line 503
    .line 504
    goto :goto_c

    .line 505
    :cond_17
    move v2, v1

    .line 506
    :goto_d
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 507
    .line 508
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-ge v2, v4, :cond_18

    .line 513
    .line 514
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 515
    .line 516
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 521
    .line 522
    const/16 v5, 0x17

    .line 523
    .line 524
    invoke-virtual {p1, v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 525
    .line 526
    .line 527
    add-int/lit8 v2, v2, 0x1

    .line 528
    .line 529
    goto :goto_d

    .line 530
    :cond_18
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 531
    .line 532
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-lez v2, :cond_19

    .line 537
    .line 538
    const/16 v2, 0xc2

    .line 539
    .line 540
    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 541
    .line 542
    .line 543
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize:I

    .line 544
    .line 545
    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawVarint32(I)V

    .line 546
    .line 547
    .line 548
    :cond_19
    move v2, v1

    .line 549
    :goto_e
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 550
    .line 551
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    if-ge v2, v4, :cond_1a

    .line 556
    .line 557
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 558
    .line 559
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    check-cast v4, Ljava/lang/Integer;

    .line 564
    .line 565
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32NoTag(I)V

    .line 570
    .line 571
    .line 572
    add-int/lit8 v2, v2, 0x1

    .line 573
    .line 574
    goto :goto_e

    .line 575
    :cond_1a
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 576
    .line 577
    const/16 v4, 0x40

    .line 578
    .line 579
    and-int/2addr v2, v4

    .line 580
    if-ne v2, v4, :cond_1b

    .line 581
    .line 582
    const/16 v2, 0x1e

    .line 583
    .line 584
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 585
    .line 586
    invoke-virtual {p1, v2, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 587
    .line 588
    .line 589
    :cond_1b
    :goto_f
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 590
    .line 591
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-ge v1, v2, :cond_1c

    .line 596
    .line 597
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 598
    .line 599
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    check-cast v2, Ljava/lang/Integer;

    .line 604
    .line 605
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    const/16 v4, 0x1f

    .line 610
    .line 611
    invoke-virtual {p1, v4, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeInt32(II)V

    .line 612
    .line 613
    .line 614
    add-int/lit8 v1, v1, 0x1

    .line 615
    .line 616
    goto :goto_f

    .line 617
    :cond_1c
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 618
    .line 619
    const/16 v2, 0x80

    .line 620
    .line 621
    and-int/2addr v1, v2

    .line 622
    if-ne v1, v2, :cond_1d

    .line 623
    .line 624
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 625
    .line 626
    invoke-virtual {p1, v3, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    .line 627
    .line 628
    .line 629
    :cond_1d
    const/16 v1, 0x4a38

    .line 630
    .line 631
    invoke-virtual {v0, v1, p1}, Lokhttp3/FormBody$Builder;->writeUntil(ILcom/caverock/androidsvg/SVG$PathDefinition;)V

    .line 632
    .line 633
    .line 634
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 635
    .line 636
    invoke-virtual {p1, p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->writeRawBytes(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    .line 637
    .line 638
    .line 639
    return-void
.end method
