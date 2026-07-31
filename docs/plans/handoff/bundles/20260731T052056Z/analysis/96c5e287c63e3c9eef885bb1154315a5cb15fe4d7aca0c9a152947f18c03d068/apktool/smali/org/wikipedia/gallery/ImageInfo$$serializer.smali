.class public final synthetic Lorg/wikipedia/gallery/ImageInfo$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.gallery.ImageInfo"

    .line 11
    .line 12
    const/16 v3, 0x14

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "source"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "captions"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "short_name"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "descriptionshorturl"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "derivatives"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "codecs"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "name"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "descriptionurl"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "thumburl"

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v0, "thumbwidth"

    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    const-string v0, "thumbheight"

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v0, "url"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    const-string v0, "mime"

    .line 80
    .line 81
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    const-string v0, "metadata"

    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    const-string v0, "extmetadata"

    .line 90
    .line 91
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v0, "user"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    const-string v0, "timestamp"

    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    const-string v0, "size"

    .line 106
    .line 107
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v0, "width"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    const-string v0, "height"

    .line 117
    .line 118
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    sput-object v1, Lorg/wikipedia/gallery/ImageInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 122
    .line 123
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4

    .line 1
    sget-object p0, Lorg/wikipedia/gallery/ImageInfo;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0x14

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
    aget-object v3, p0, v2

    .line 14
    .line 15
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v0, v2

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    aput-object v3, v0, v2

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    aput-object v3, v0, v2

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    aget-object v3, p0, v2

    .line 37
    .line 38
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    aput-object v3, v0, v2

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    aget-object v3, p0, v2

    .line 46
    .line 47
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 52
    .line 53
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    aput-object v3, v0, v2

    .line 58
    .line 59
    const/4 v2, 0x6

    .line 60
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    aput-object v3, v0, v2

    .line 65
    .line 66
    const/4 v2, 0x7

    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    aput-object v1, v0, v2

    .line 72
    .line 73
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 74
    .line 75
    const/16 v3, 0x9

    .line 76
    .line 77
    aput-object v2, v0, v3

    .line 78
    .line 79
    const/16 v3, 0xa

    .line 80
    .line 81
    aput-object v2, v0, v3

    .line 82
    .line 83
    const/16 v3, 0xb

    .line 84
    .line 85
    aput-object v1, v0, v3

    .line 86
    .line 87
    const/16 v3, 0xc

    .line 88
    .line 89
    aput-object v1, v0, v3

    .line 90
    .line 91
    const/16 v3, 0xd

    .line 92
    .line 93
    aget-object p0, p0, v3

    .line 94
    .line 95
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    aput-object p0, v0, v3

    .line 100
    .line 101
    sget-object p0, Lorg/wikipedia/gallery/ExtMetadata$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ExtMetadata$$serializer;

    .line 102
    .line 103
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const/16 v3, 0xe

    .line 108
    .line 109
    aput-object p0, v0, v3

    .line 110
    .line 111
    const/16 p0, 0xf

    .line 112
    .line 113
    aput-object v1, v0, p0

    .line 114
    .line 115
    const/16 p0, 0x10

    .line 116
    .line 117
    aput-object v1, v0, p0

    .line 118
    .line 119
    const/16 p0, 0x11

    .line 120
    .line 121
    aput-object v2, v0, p0

    .line 122
    .line 123
    const/16 p0, 0x12

    .line 124
    .line 125
    aput-object v2, v0, p0

    .line 126
    .line 127
    const/16 p0, 0x13

    .line 128
    .line 129
    aput-object v2, v0, p0

    .line 130
    .line 131
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 29

    .line 1
    sget-object v0, Lorg/wikipedia/gallery/ImageInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/gallery/ImageInfo;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const/16 p0, 0x0

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x0

    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    const/16 v17, 0x0

    .line 27
    .line 28
    const/16 v18, 0x0

    .line 29
    .line 30
    const/16 v19, 0x0

    .line 31
    .line 32
    const/16 v20, 0x0

    .line 33
    .line 34
    const/16 v21, 0x0

    .line 35
    .line 36
    const/16 v24, 0x0

    .line 37
    .line 38
    const/16 v25, 0x0

    .line 39
    .line 40
    const/16 v26, 0x0

    .line 41
    .line 42
    const/16 v27, 0x0

    .line 43
    .line 44
    const/16 v28, 0x0

    .line 45
    .line 46
    :goto_0
    if-eqz v6, :cond_0

    .line 47
    .line 48
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 49
    .line 50
    .line 51
    move-result v22

    .line 52
    packed-switch v22, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    invoke-static/range {v22 .. v22}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_0
    const/16 v4, 0x13

    .line 60
    .line 61
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 62
    .line 63
    .line 64
    move-result v28

    .line 65
    const/high16 v4, 0x80000

    .line 66
    .line 67
    :goto_1
    or-int/2addr v8, v4

    .line 68
    goto :goto_0

    .line 69
    :pswitch_1
    const/16 v4, 0x12

    .line 70
    .line 71
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 72
    .line 73
    .line 74
    move-result v27

    .line 75
    const/high16 v4, 0x40000

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_2
    const/16 v4, 0x11

    .line 79
    .line 80
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 81
    .line 82
    .line 83
    move-result v26

    .line 84
    const/high16 v4, 0x20000

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_3
    const/16 v4, 0x10

    .line 88
    .line 89
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v25

    .line 93
    const/high16 v4, 0x10000

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :pswitch_4
    const/16 v4, 0xf

    .line 97
    .line 98
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v24

    .line 102
    const v4, 0x8000

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_5
    sget-object v4, Lorg/wikipedia/gallery/ExtMetadata$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ExtMetadata$$serializer;

    .line 107
    .line 108
    const/16 v22, 0x1

    .line 109
    .line 110
    const/16 v3, 0xe

    .line 111
    .line 112
    invoke-interface {v1, v0, v3, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object v5, v3

    .line 117
    check-cast v5, Lorg/wikipedia/gallery/ExtMetadata;

    .line 118
    .line 119
    or-int/lit16 v8, v8, 0x4000

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_6
    const/16 v22, 0x1

    .line 123
    .line 124
    const/16 v3, 0xd

    .line 125
    .line 126
    aget-object v4, v2, v3

    .line 127
    .line 128
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 133
    .line 134
    invoke-interface {v1, v0, v3, v4, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    move-object v7, v3

    .line 139
    check-cast v7, Ljava/util/List;

    .line 140
    .line 141
    or-int/lit16 v8, v8, 0x2000

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_7
    const/16 v22, 0x1

    .line 145
    .line 146
    const/16 v3, 0xc

    .line 147
    .line 148
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v21

    .line 152
    or-int/lit16 v8, v8, 0x1000

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :pswitch_8
    const/16 v22, 0x1

    .line 156
    .line 157
    const/16 v3, 0xb

    .line 158
    .line 159
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v20

    .line 163
    or-int/lit16 v8, v8, 0x800

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :pswitch_9
    const/16 v22, 0x1

    .line 167
    .line 168
    const/16 v3, 0xa

    .line 169
    .line 170
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 171
    .line 172
    .line 173
    move-result v19

    .line 174
    or-int/lit16 v8, v8, 0x400

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :pswitch_a
    const/16 v22, 0x1

    .line 179
    .line 180
    const/16 v3, 0x9

    .line 181
    .line 182
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 183
    .line 184
    .line 185
    move-result v18

    .line 186
    or-int/lit16 v8, v8, 0x200

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :pswitch_b
    const/16 v22, 0x1

    .line 191
    .line 192
    const/16 v3, 0x8

    .line 193
    .line 194
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v17

    .line 198
    or-int/lit16 v8, v8, 0x100

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :pswitch_c
    const/16 v22, 0x1

    .line 203
    .line 204
    const/4 v3, 0x7

    .line 205
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v16

    .line 209
    or-int/lit16 v8, v8, 0x80

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :pswitch_d
    const/16 v22, 0x1

    .line 214
    .line 215
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 216
    .line 217
    const/4 v4, 0x6

    .line 218
    invoke-interface {v1, v0, v4, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    move-object v15, v3

    .line 223
    check-cast v15, Ljava/lang/String;

    .line 224
    .line 225
    or-int/lit8 v8, v8, 0x40

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_e
    const/16 v22, 0x1

    .line 230
    .line 231
    const/4 v3, 0x5

    .line 232
    aget-object v4, v2, v3

    .line 233
    .line 234
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 239
    .line 240
    invoke-interface {v1, v0, v3, v4, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    move-object v14, v3

    .line 245
    check-cast v14, Ljava/util/List;

    .line 246
    .line 247
    or-int/lit8 v8, v8, 0x20

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :pswitch_f
    const/16 v22, 0x1

    .line 252
    .line 253
    const/4 v3, 0x4

    .line 254
    aget-object v4, v2, v3

    .line 255
    .line 256
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 261
    .line 262
    invoke-interface {v1, v0, v3, v4, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    move-object v13, v3

    .line 267
    check-cast v13, Ljava/util/List;

    .line 268
    .line 269
    or-int/lit8 v8, v8, 0x10

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :pswitch_10
    const/16 v22, 0x1

    .line 274
    .line 275
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 276
    .line 277
    const/4 v4, 0x3

    .line 278
    invoke-interface {v1, v0, v4, v3, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    move-object v12, v3

    .line 283
    check-cast v12, Ljava/lang/String;

    .line 284
    .line 285
    or-int/lit8 v8, v8, 0x8

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :pswitch_11
    const/16 v22, 0x1

    .line 290
    .line 291
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 292
    .line 293
    const/4 v4, 0x2

    .line 294
    invoke-interface {v1, v0, v4, v3, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    move-object v11, v3

    .line 299
    check-cast v11, Ljava/lang/String;

    .line 300
    .line 301
    or-int/lit8 v8, v8, 0x4

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :pswitch_12
    const/16 v22, 0x1

    .line 306
    .line 307
    aget-object v3, v2, v22

    .line 308
    .line 309
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 314
    .line 315
    move/from16 v4, v22

    .line 316
    .line 317
    invoke-interface {v1, v0, v4, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    move-object v10, v3

    .line 322
    check-cast v10, Ljava/util/Map;

    .line 323
    .line 324
    or-int/lit8 v8, v8, 0x2

    .line 325
    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :pswitch_13
    const/4 v3, 0x0

    .line 329
    const/4 v4, 0x1

    .line 330
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    or-int/lit8 v8, v8, 0x1

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :pswitch_14
    const/4 v3, 0x0

    .line 339
    const/4 v4, 0x1

    .line 340
    move v6, v3

    .line 341
    goto/16 :goto_0

    .line 342
    .line 343
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 344
    .line 345
    .line 346
    move-object/from16 v22, v7

    .line 347
    .line 348
    new-instance v7, Lorg/wikipedia/gallery/ImageInfo;

    .line 349
    .line 350
    move-object/from16 v23, v5

    .line 351
    .line 352
    invoke-direct/range {v7 .. v28}, Lorg/wikipedia/gallery/ImageInfo;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/wikipedia/gallery/ExtMetadata;Ljava/lang/String;Ljava/lang/String;III)V

    .line 353
    .line 354
    .line 355
    return-object v7

    .line 356
    nop

    .line 357
    :pswitch_data_0
    .packed-switch -0x1
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

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lorg/wikipedia/gallery/ImageInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 23

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/gallery/ImageInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/gallery/ImageInfo;->height:I

    .line 9
    .line 10
    iget v2, v0, Lorg/wikipedia/gallery/ImageInfo;->width:I

    .line 11
    .line 12
    iget v3, v0, Lorg/wikipedia/gallery/ImageInfo;->size:I

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/gallery/ImageInfo;->timestamp:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, v0, Lorg/wikipedia/gallery/ImageInfo;->user:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v6, v0, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 19
    .line 20
    iget-object v7, v0, Lorg/wikipedia/gallery/ImageInfo;->plainMetadata:Ljava/util/List;

    .line 21
    .line 22
    iget-object v8, v0, Lorg/wikipedia/gallery/ImageInfo;->mime:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v9, v0, Lorg/wikipedia/gallery/ImageInfo;->originalUrl:Ljava/lang/String;

    .line 25
    .line 26
    iget v10, v0, Lorg/wikipedia/gallery/ImageInfo;->thumbHeight:I

    .line 27
    .line 28
    iget v11, v0, Lorg/wikipedia/gallery/ImageInfo;->thumbWidth:I

    .line 29
    .line 30
    iget-object v12, v0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v13, v0, Lorg/wikipedia/gallery/ImageInfo;->commonsUrl:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v14, v0, Lorg/wikipedia/gallery/ImageInfo;->name:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v15, v0, Lorg/wikipedia/gallery/ImageInfo;->codecs:Ljava/util/List;

    .line 37
    .line 38
    move/from16 p0, v1

    .line 39
    .line 40
    iget-object v1, v0, Lorg/wikipedia/gallery/ImageInfo;->derivatives:Ljava/util/List;

    .line 41
    .line 42
    move/from16 p2, v2

    .line 43
    .line 44
    iget-object v2, v0, Lorg/wikipedia/gallery/ImageInfo;->descriptionShortUrl:Ljava/lang/String;

    .line 45
    .line 46
    move/from16 v16, v3

    .line 47
    .line 48
    iget-object v3, v0, Lorg/wikipedia/gallery/ImageInfo;->shortName:Ljava/lang/String;

    .line 49
    .line 50
    move-object/from16 v17, v4

    .line 51
    .line 52
    sget-object v4, Lorg/wikipedia/gallery/ImageInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 53
    .line 54
    move-object/from16 v18, v5

    .line 55
    .line 56
    move-object/from16 v5, p1

    .line 57
    .line 58
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    sget-object v19, Lorg/wikipedia/gallery/ImageInfo;->$childSerializers:[Lkotlin/Lazy;

    .line 63
    .line 64
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 65
    .line 66
    .line 67
    move-result v20

    .line 68
    move-object/from16 v21, v6

    .line 69
    .line 70
    const-string v6, ""

    .line 71
    .line 72
    if-eqz v20, :cond_0

    .line 73
    .line 74
    move-object/from16 v20, v7

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move-object/from16 v20, v7

    .line 78
    .line 79
    iget-object v7, v0, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-nez v7, :cond_1

    .line 86
    .line 87
    :goto_0
    iget-object v7, v0, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 88
    .line 89
    move-object/from16 v22, v8

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    invoke-virtual {v5, v4, v8, v7}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move-object/from16 v22, v8

    .line 97
    .line 98
    :goto_1
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v7, v0, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 106
    .line 107
    sget-object v8, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 108
    .line 109
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-nez v7, :cond_3

    .line 114
    .line 115
    :goto_2
    const/4 v7, 0x1

    .line 116
    aget-object v8, v19, v7

    .line 117
    .line 118
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    check-cast v8, Lkotlinx/serialization/KSerializer;

    .line 123
    .line 124
    iget-object v0, v0, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 125
    .line 126
    invoke-virtual {v5, v4, v7, v8, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_4
    if-eqz v3, :cond_5

    .line 137
    .line 138
    :goto_3
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 139
    .line 140
    const/4 v7, 0x2

    .line 141
    invoke-virtual {v5, v4, v7, v0, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_6
    if-eqz v2, :cond_7

    .line 152
    .line 153
    :goto_4
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 154
    .line 155
    const/4 v3, 0x3

    .line 156
    invoke-virtual {v5, v4, v3, v0, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 164
    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_9

    .line 173
    .line 174
    :goto_5
    const/4 v0, 0x4

    .line 175
    aget-object v3, v19, v0

    .line 176
    .line 177
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 182
    .line 183
    invoke-virtual {v5, v4, v0, v3, v1}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_9
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_a

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_a
    if-eqz v15, :cond_b

    .line 194
    .line 195
    :goto_6
    const/4 v0, 0x5

    .line 196
    aget-object v1, v19, v0

    .line 197
    .line 198
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 203
    .line 204
    invoke-virtual {v5, v4, v0, v1, v15}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_b
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_c

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_c
    if-eqz v14, :cond_d

    .line 215
    .line 216
    :goto_7
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 217
    .line 218
    const/4 v1, 0x6

    .line 219
    invoke-virtual {v5, v4, v1, v0, v14}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :cond_d
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_e

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_e
    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_f

    .line 234
    .line 235
    :goto_8
    const/4 v0, 0x7

    .line 236
    invoke-virtual {v5, v4, v0, v13}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_f
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_10

    .line 244
    .line 245
    goto :goto_9

    .line 246
    :cond_10
    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-nez v0, :cond_11

    .line 251
    .line 252
    :goto_9
    const/16 v0, 0x8

    .line 253
    .line 254
    invoke-virtual {v5, v4, v0, v12}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_11
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_12

    .line 262
    .line 263
    goto :goto_a

    .line 264
    :cond_12
    if-eqz v11, :cond_13

    .line 265
    .line 266
    :goto_a
    const/16 v0, 0x9

    .line 267
    .line 268
    invoke-virtual {v5, v0, v11, v4}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 269
    .line 270
    .line 271
    :cond_13
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_14

    .line 276
    .line 277
    goto :goto_b

    .line 278
    :cond_14
    if-eqz v10, :cond_15

    .line 279
    .line 280
    :goto_b
    const/16 v0, 0xa

    .line 281
    .line 282
    invoke-virtual {v5, v0, v10, v4}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 283
    .line 284
    .line 285
    :cond_15
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_16

    .line 290
    .line 291
    goto :goto_c

    .line 292
    :cond_16
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_17

    .line 297
    .line 298
    :goto_c
    const/16 v0, 0xb

    .line 299
    .line 300
    invoke-virtual {v5, v4, v0, v9}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :cond_17
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_18

    .line 308
    .line 309
    move-object/from16 v1, v22

    .line 310
    .line 311
    goto :goto_d

    .line 312
    :cond_18
    const-string v0, "*/*"

    .line 313
    .line 314
    move-object/from16 v1, v22

    .line 315
    .line 316
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-nez v0, :cond_19

    .line 321
    .line 322
    :goto_d
    const/16 v0, 0xc

    .line 323
    .line 324
    invoke-virtual {v5, v4, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :cond_19
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_1a

    .line 332
    .line 333
    move-object/from16 v0, v20

    .line 334
    .line 335
    goto :goto_e

    .line 336
    :cond_1a
    move-object/from16 v0, v20

    .line 337
    .line 338
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-nez v1, :cond_1b

    .line 343
    .line 344
    :goto_e
    const/16 v1, 0xd

    .line 345
    .line 346
    aget-object v2, v19, v1

    .line 347
    .line 348
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 353
    .line 354
    invoke-virtual {v5, v4, v1, v2, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    :cond_1b
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_1c

    .line 362
    .line 363
    goto :goto_f

    .line 364
    :cond_1c
    if-eqz v21, :cond_1d

    .line 365
    .line 366
    :goto_f
    sget-object v0, Lorg/wikipedia/gallery/ExtMetadata$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ExtMetadata$$serializer;

    .line 367
    .line 368
    const/16 v1, 0xe

    .line 369
    .line 370
    move-object/from16 v2, v21

    .line 371
    .line 372
    invoke-virtual {v5, v4, v1, v0, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    :cond_1d
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_1e

    .line 380
    .line 381
    move-object/from16 v0, v18

    .line 382
    .line 383
    goto :goto_10

    .line 384
    :cond_1e
    move-object/from16 v0, v18

    .line 385
    .line 386
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-nez v1, :cond_1f

    .line 391
    .line 392
    :goto_10
    const/16 v1, 0xf

    .line 393
    .line 394
    invoke-virtual {v5, v4, v1, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 395
    .line 396
    .line 397
    :cond_1f
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_20

    .line 402
    .line 403
    move-object/from16 v0, v17

    .line 404
    .line 405
    goto :goto_11

    .line 406
    :cond_20
    move-object/from16 v0, v17

    .line 407
    .line 408
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-nez v1, :cond_21

    .line 413
    .line 414
    :goto_11
    const/16 v1, 0x10

    .line 415
    .line 416
    invoke-virtual {v5, v4, v1, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :cond_21
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_22

    .line 424
    .line 425
    goto :goto_12

    .line 426
    :cond_22
    if-eqz v16, :cond_23

    .line 427
    .line 428
    :goto_12
    const/16 v0, 0x11

    .line 429
    .line 430
    move/from16 v1, v16

    .line 431
    .line 432
    invoke-virtual {v5, v0, v1, v4}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 433
    .line 434
    .line 435
    :cond_23
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-eqz v0, :cond_24

    .line 440
    .line 441
    goto :goto_13

    .line 442
    :cond_24
    if-eqz p2, :cond_25

    .line 443
    .line 444
    :goto_13
    const/16 v0, 0x12

    .line 445
    .line 446
    move/from16 v1, p2

    .line 447
    .line 448
    invoke-virtual {v5, v0, v1, v4}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 449
    .line 450
    .line 451
    :cond_25
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_26

    .line 456
    .line 457
    goto :goto_14

    .line 458
    :cond_26
    if-eqz p0, :cond_27

    .line 459
    .line 460
    :goto_14
    const/16 v0, 0x13

    .line 461
    .line 462
    move/from16 v1, p0

    .line 463
    .line 464
    invoke-virtual {v5, v0, v1, v4}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 465
    .line 466
    .line 467
    :cond_27
    invoke-virtual {v5, v4}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 468
    .line 469
    .line 470
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
