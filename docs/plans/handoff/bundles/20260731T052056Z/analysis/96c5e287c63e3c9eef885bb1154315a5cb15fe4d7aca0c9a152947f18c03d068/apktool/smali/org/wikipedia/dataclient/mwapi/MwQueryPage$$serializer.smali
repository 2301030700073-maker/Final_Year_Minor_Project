.class public final synthetic Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.mwapi.MwQueryPage"

    .line 11
    .line 12
    const/16 v3, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "descriptionsource"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "imageinfo"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v0, "videoinfo"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v0, "watchlistexpiry"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "pageviews"

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v0, "pageid"

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const-string v0, "pageprops"

    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    const-string v0, "entityterms"

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string v0, "categories"

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string v0, "ns"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const-string v0, "coordinates"

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    const-string v0, "thumbnail"

    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v0, "varianttitles"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    const-string v0, "actions"

    .line 87
    .line 88
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    const-string v0, "editintro"

    .line 92
    .line 93
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    const-string v0, "index"

    .line 97
    .line 98
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    const-string v0, "title"

    .line 102
    .line 103
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    const-string v0, "langlinks"

    .line 107
    .line 108
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    const-string v0, "revisions"

    .line 112
    .line 113
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    const-string v0, "protection"

    .line 117
    .line 118
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    const-string v0, "extract"

    .line 122
    .line 123
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    const-string v0, "snippet"

    .line 127
    .line 128
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    const-string v0, "sectiontitle"

    .line 132
    .line 133
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    const-string v0, "description"

    .line 137
    .line 138
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    const-string v0, "imagerepository"

    .line 142
    .line 143
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    const-string v0, "redirectFrom"

    .line 147
    .line 148
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    const-string v0, "convertedFrom"

    .line 152
    .line 153
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    const-string v0, "convertedTo"

    .line 157
    .line 158
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    const-string/jumbo v0, "watched"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 165
    .line 166
    .line 167
    const-string v0, "lastrevid"

    .line 168
    .line 169
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 170
    .line 171
    .line 172
    const-string v0, "tasktype"

    .line 173
    .line 174
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 175
    .line 176
    .line 177
    const-string v0, "difficulty"

    .line 178
    .line 179
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    const-string v0, "qualityGateIds"

    .line 183
    .line 184
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    const-string v0, "growthimagesuggestiondata"

    .line 188
    .line 189
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 190
    .line 191
    .line 192
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 193
    .line 194
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 5

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0x22

    .line 4
    .line 5
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v0, v3

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    aget-object v3, p0, v2

    .line 18
    .line 19
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 24
    .line 25
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v0, v2

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    aget-object v3, p0, v2

    .line 33
    .line 34
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 39
    .line 40
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    aput-object v3, v0, v2

    .line 45
    .line 46
    const/4 v2, 0x3

    .line 47
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    aput-object v3, v0, v2

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    aget-object v3, p0, v2

    .line 55
    .line 56
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    aput-object v3, v0, v2

    .line 61
    .line 62
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 63
    .line 64
    const/4 v3, 0x5

    .line 65
    aput-object v2, v0, v3

    .line 66
    .line 67
    sget-object v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps$$serializer;

    .line 68
    .line 69
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v4, 0x6

    .line 74
    aput-object v3, v0, v4

    .line 75
    .line 76
    sget-object v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms$$serializer;

    .line 77
    .line 78
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v4, 0x7

    .line 83
    aput-object v3, v0, v4

    .line 84
    .line 85
    const/16 v3, 0x8

    .line 86
    .line 87
    aget-object v4, p0, v3

    .line 88
    .line 89
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 94
    .line 95
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    aput-object v4, v0, v3

    .line 100
    .line 101
    const/16 v3, 0x9

    .line 102
    .line 103
    aput-object v2, v0, v3

    .line 104
    .line 105
    const/16 v3, 0xa

    .line 106
    .line 107
    aget-object v4, p0, v3

    .line 108
    .line 109
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 114
    .line 115
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    aput-object v4, v0, v3

    .line 120
    .line 121
    sget-object v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail$$serializer;

    .line 122
    .line 123
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const/16 v4, 0xb

    .line 128
    .line 129
    aput-object v3, v0, v4

    .line 130
    .line 131
    const/16 v3, 0xc

    .line 132
    .line 133
    aget-object v4, p0, v3

    .line 134
    .line 135
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 140
    .line 141
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    aput-object v4, v0, v3

    .line 146
    .line 147
    const/16 v3, 0xd

    .line 148
    .line 149
    aget-object v4, p0, v3

    .line 150
    .line 151
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 156
    .line 157
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    aput-object v4, v0, v3

    .line 162
    .line 163
    sget-object v3, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 164
    .line 165
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const/16 v4, 0xe

    .line 170
    .line 171
    aput-object v3, v0, v4

    .line 172
    .line 173
    const/16 v3, 0xf

    .line 174
    .line 175
    aput-object v2, v0, v3

    .line 176
    .line 177
    const/16 v2, 0x10

    .line 178
    .line 179
    aput-object v1, v0, v2

    .line 180
    .line 181
    const/16 v2, 0x11

    .line 182
    .line 183
    aget-object v3, p0, v2

    .line 184
    .line 185
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    aput-object v3, v0, v2

    .line 190
    .line 191
    const/16 v2, 0x12

    .line 192
    .line 193
    aget-object v3, p0, v2

    .line 194
    .line 195
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    aput-object v3, v0, v2

    .line 200
    .line 201
    const/16 v2, 0x13

    .line 202
    .line 203
    aget-object v3, p0, v2

    .line 204
    .line 205
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    aput-object v3, v0, v2

    .line 210
    .line 211
    const/16 v2, 0x14

    .line 212
    .line 213
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    aput-object v3, v0, v2

    .line 218
    .line 219
    const/16 v2, 0x15

    .line 220
    .line 221
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    aput-object v3, v0, v2

    .line 226
    .line 227
    const/16 v2, 0x16

    .line 228
    .line 229
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    aput-object v3, v0, v2

    .line 234
    .line 235
    const/16 v2, 0x17

    .line 236
    .line 237
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    aput-object v3, v0, v2

    .line 242
    .line 243
    const/16 v2, 0x18

    .line 244
    .line 245
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    aput-object v3, v0, v2

    .line 250
    .line 251
    const/16 v2, 0x19

    .line 252
    .line 253
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    aput-object v3, v0, v2

    .line 258
    .line 259
    const/16 v2, 0x1a

    .line 260
    .line 261
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    aput-object v3, v0, v2

    .line 266
    .line 267
    const/16 v2, 0x1b

    .line 268
    .line 269
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    aput-object v3, v0, v2

    .line 274
    .line 275
    const/16 v2, 0x1c

    .line 276
    .line 277
    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 278
    .line 279
    aput-object v3, v0, v2

    .line 280
    .line 281
    const/16 v2, 0x1d

    .line 282
    .line 283
    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 284
    .line 285
    aput-object v3, v0, v2

    .line 286
    .line 287
    const/16 v2, 0x1e

    .line 288
    .line 289
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    aput-object v3, v0, v2

    .line 294
    .line 295
    const/16 v2, 0x1f

    .line 296
    .line 297
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    aput-object v1, v0, v2

    .line 302
    .line 303
    const/16 v1, 0x20

    .line 304
    .line 305
    aget-object v2, p0, v1

    .line 306
    .line 307
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 312
    .line 313
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    aput-object v2, v0, v1

    .line 318
    .line 319
    const/16 v1, 0x21

    .line 320
    .line 321
    aget-object p0, p0, v1

    .line 322
    .line 323
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 328
    .line 329
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    aput-object p0, v0, v1

    .line 334
    .line 335
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 48

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    move-object/from16 v18, v2

    .line 14
    .line 15
    move-wide/from16 v40, v6

    .line 16
    .line 17
    const/16 p0, 0x0

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x0

    .line 31
    const/4 v14, 0x0

    .line 32
    const/4 v15, 0x0

    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    const/16 v19, 0x1

    .line 36
    .line 37
    const/16 v20, 0x0

    .line 38
    .line 39
    const/16 v21, 0x0

    .line 40
    .line 41
    const/16 v22, 0x0

    .line 42
    .line 43
    const/16 v23, 0x0

    .line 44
    .line 45
    const/16 v24, 0x0

    .line 46
    .line 47
    const/16 v25, 0x0

    .line 48
    .line 49
    const/16 v26, 0x0

    .line 50
    .line 51
    const/16 v27, 0x0

    .line 52
    .line 53
    const/16 v28, 0x0

    .line 54
    .line 55
    const/16 v29, 0x0

    .line 56
    .line 57
    const/16 v30, 0x0

    .line 58
    .line 59
    const/16 v31, 0x0

    .line 60
    .line 61
    const/16 v32, 0x0

    .line 62
    .line 63
    const/16 v33, 0x0

    .line 64
    .line 65
    const/16 v34, 0x0

    .line 66
    .line 67
    const/16 v35, 0x0

    .line 68
    .line 69
    const/16 v36, 0x0

    .line 70
    .line 71
    const/16 v37, 0x0

    .line 72
    .line 73
    const/16 v38, 0x0

    .line 74
    .line 75
    const/16 v39, 0x0

    .line 76
    .line 77
    :goto_0
    const/16 v17, 0x1

    .line 78
    .line 79
    if-eqz v19, :cond_0

    .line 80
    .line 81
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 82
    .line 83
    .line 84
    move-result v42

    .line 85
    packed-switch v42, :pswitch_data_0

    .line 86
    .line 87
    .line 88
    invoke-static/range {v42 .. v42}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 89
    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_0
    move-object/from16 v42, v12

    .line 93
    .line 94
    const/16 v12, 0x21

    .line 95
    .line 96
    aget-object v43, v18, v12

    .line 97
    .line 98
    invoke-interface/range {v43 .. v43}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v43

    .line 102
    move-object/from16 v44, v13

    .line 103
    .line 104
    move-object/from16 v13, v43

    .line 105
    .line 106
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 107
    .line 108
    invoke-interface {v1, v0, v12, v13, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    check-cast v11, Ljava/util/List;

    .line 113
    .line 114
    or-int/lit8 v12, v21, 0x2

    .line 115
    .line 116
    :goto_1
    move/from16 v21, v12

    .line 117
    .line 118
    move-object/from16 v17, v22

    .line 119
    .line 120
    move-object/from16 v12, v42

    .line 121
    .line 122
    move-object/from16 v13, v44

    .line 123
    .line 124
    move-object/from16 v22, v4

    .line 125
    .line 126
    move-wide/from16 v41, v40

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    move/from16 v40, v39

    .line 130
    .line 131
    move-object/from16 v39, v38

    .line 132
    .line 133
    :goto_2
    move-object/from16 v38, v37

    .line 134
    .line 135
    move/from16 v37, v36

    .line 136
    .line 137
    move-object/from16 v36, v35

    .line 138
    .line 139
    move-object/from16 v35, v34

    .line 140
    .line 141
    :goto_3
    move-object/from16 v34, v33

    .line 142
    .line 143
    move-object/from16 v33, v32

    .line 144
    .line 145
    move-object/from16 v32, v31

    .line 146
    .line 147
    :goto_4
    move-object/from16 v31, v30

    .line 148
    .line 149
    :goto_5
    move-object/from16 v30, v29

    .line 150
    .line 151
    move-object/from16 v29, v28

    .line 152
    .line 153
    :goto_6
    move-object/from16 v28, v27

    .line 154
    .line 155
    :goto_7
    move/from16 v27, v26

    .line 156
    .line 157
    :goto_8
    move-object/from16 v26, v25

    .line 158
    .line 159
    move-object/from16 v25, v24

    .line 160
    .line 161
    move-object/from16 v24, v23

    .line 162
    .line 163
    goto/16 :goto_10

    .line 164
    .line 165
    :pswitch_1
    move-object/from16 v42, v12

    .line 166
    .line 167
    move-object/from16 v44, v13

    .line 168
    .line 169
    const/16 v12, 0x20

    .line 170
    .line 171
    aget-object v13, v18, v12

    .line 172
    .line 173
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 178
    .line 179
    invoke-interface {v1, v0, v12, v13, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    check-cast v10, Ljava/util/List;

    .line 184
    .line 185
    or-int/lit8 v12, v21, 0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :pswitch_2
    move-object/from16 v42, v12

    .line 189
    .line 190
    move-object/from16 v44, v13

    .line 191
    .line 192
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 193
    .line 194
    const/16 v13, 0x1f

    .line 195
    .line 196
    invoke-interface {v1, v0, v13, v12, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    check-cast v9, Ljava/lang/String;

    .line 201
    .line 202
    const/high16 v12, -0x80000000

    .line 203
    .line 204
    :goto_9
    or-int v12, v36, v12

    .line 205
    .line 206
    move-object/from16 v13, v37

    .line 207
    .line 208
    move/from16 v37, v12

    .line 209
    .line 210
    move-object/from16 v12, v42

    .line 211
    .line 212
    move-wide/from16 v41, v40

    .line 213
    .line 214
    move/from16 v40, v39

    .line 215
    .line 216
    move-object/from16 v39, v38

    .line 217
    .line 218
    move-object/from16 v38, v13

    .line 219
    .line 220
    move-object/from16 v17, v22

    .line 221
    .line 222
    move-object/from16 v36, v35

    .line 223
    .line 224
    move-object/from16 v13, v44

    .line 225
    .line 226
    move-object/from16 v22, v4

    .line 227
    .line 228
    move-object/from16 v35, v34

    .line 229
    .line 230
    const/4 v4, 0x0

    .line 231
    goto :goto_3

    .line 232
    :pswitch_3
    move-object/from16 v42, v12

    .line 233
    .line 234
    move-object/from16 v44, v13

    .line 235
    .line 236
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 237
    .line 238
    const/16 v13, 0x1e

    .line 239
    .line 240
    invoke-interface {v1, v0, v13, v12, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    check-cast v6, Ljava/lang/String;

    .line 245
    .line 246
    const/high16 v12, 0x40000000    # 2.0f

    .line 247
    .line 248
    goto :goto_9

    .line 249
    :pswitch_4
    move-object/from16 v42, v12

    .line 250
    .line 251
    move-object/from16 v44, v13

    .line 252
    .line 253
    const/16 v12, 0x1d

    .line 254
    .line 255
    invoke-interface {v1, v0, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 256
    .line 257
    .line 258
    move-result-wide v12

    .line 259
    const/high16 v40, 0x20000000

    .line 260
    .line 261
    or-int v36, v36, v40

    .line 262
    .line 263
    move-wide/from16 v46, v12

    .line 264
    .line 265
    move-object/from16 v12, v42

    .line 266
    .line 267
    move-wide/from16 v41, v46

    .line 268
    .line 269
    move-object/from16 v17, v22

    .line 270
    .line 271
    move/from16 v40, v39

    .line 272
    .line 273
    move-object/from16 v13, v44

    .line 274
    .line 275
    move-object/from16 v22, v4

    .line 276
    .line 277
    move-object/from16 v39, v38

    .line 278
    .line 279
    const/4 v4, 0x0

    .line 280
    goto/16 :goto_2

    .line 281
    .line 282
    :pswitch_5
    move-object/from16 v42, v12

    .line 283
    .line 284
    move-object/from16 v44, v13

    .line 285
    .line 286
    const/16 v12, 0x1c

    .line 287
    .line 288
    invoke-interface {v1, v0, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 289
    .line 290
    .line 291
    move-result v39

    .line 292
    const/high16 v12, 0x10000000

    .line 293
    .line 294
    goto :goto_9

    .line 295
    :pswitch_6
    move-object/from16 v42, v12

    .line 296
    .line 297
    move-object/from16 v44, v13

    .line 298
    .line 299
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 300
    .line 301
    const/16 v13, 0x1b

    .line 302
    .line 303
    invoke-interface {v1, v0, v13, v12, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Ljava/lang/String;

    .line 308
    .line 309
    const/high16 v12, 0x8000000

    .line 310
    .line 311
    goto :goto_9

    .line 312
    :pswitch_7
    move-object/from16 v42, v12

    .line 313
    .line 314
    move-object/from16 v44, v13

    .line 315
    .line 316
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 317
    .line 318
    const/16 v13, 0x1a

    .line 319
    .line 320
    invoke-interface {v1, v0, v13, v12, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    check-cast v3, Ljava/lang/String;

    .line 325
    .line 326
    const/high16 v12, 0x4000000

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :pswitch_8
    move-object/from16 v42, v12

    .line 330
    .line 331
    move-object/from16 v44, v13

    .line 332
    .line 333
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 334
    .line 335
    const/16 v13, 0x19

    .line 336
    .line 337
    invoke-interface {v1, v0, v13, v12, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    check-cast v4, Ljava/lang/String;

    .line 342
    .line 343
    const/high16 v12, 0x2000000

    .line 344
    .line 345
    goto/16 :goto_9

    .line 346
    .line 347
    :pswitch_9
    move-object/from16 v42, v12

    .line 348
    .line 349
    move-object/from16 v44, v13

    .line 350
    .line 351
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 352
    .line 353
    const/16 v13, 0x18

    .line 354
    .line 355
    invoke-interface {v1, v0, v13, v12, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    check-cast v5, Ljava/lang/String;

    .line 360
    .line 361
    const/high16 v12, 0x1000000

    .line 362
    .line 363
    goto/16 :goto_9

    .line 364
    .line 365
    :pswitch_a
    move-object/from16 v42, v12

    .line 366
    .line 367
    move-object/from16 v44, v13

    .line 368
    .line 369
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 370
    .line 371
    const/16 v13, 0x17

    .line 372
    .line 373
    invoke-interface {v1, v0, v13, v12, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    check-cast v8, Ljava/lang/String;

    .line 378
    .line 379
    const/high16 v12, 0x800000

    .line 380
    .line 381
    goto/16 :goto_9

    .line 382
    .line 383
    :pswitch_b
    move-object/from16 v42, v12

    .line 384
    .line 385
    move-object/from16 v44, v13

    .line 386
    .line 387
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 388
    .line 389
    const/16 v13, 0x16

    .line 390
    .line 391
    invoke-interface {v1, v0, v13, v12, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    check-cast v7, Ljava/lang/String;

    .line 396
    .line 397
    const/high16 v12, 0x400000

    .line 398
    .line 399
    goto/16 :goto_9

    .line 400
    .line 401
    :pswitch_c
    move-object/from16 v42, v12

    .line 402
    .line 403
    move-object/from16 v44, v13

    .line 404
    .line 405
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 406
    .line 407
    const/16 v13, 0x15

    .line 408
    .line 409
    invoke-interface {v1, v0, v13, v12, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v12

    .line 413
    move-object v15, v12

    .line 414
    check-cast v15, Ljava/lang/String;

    .line 415
    .line 416
    const/high16 v12, 0x200000

    .line 417
    .line 418
    goto/16 :goto_9

    .line 419
    .line 420
    :pswitch_d
    move-object/from16 v42, v12

    .line 421
    .line 422
    move-object/from16 v44, v13

    .line 423
    .line 424
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 425
    .line 426
    const/16 v13, 0x14

    .line 427
    .line 428
    invoke-interface {v1, v0, v13, v12, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v12

    .line 432
    move-object v14, v12

    .line 433
    check-cast v14, Ljava/lang/String;

    .line 434
    .line 435
    const/high16 v12, 0x100000

    .line 436
    .line 437
    goto/16 :goto_9

    .line 438
    .line 439
    :pswitch_e
    move-object/from16 v42, v12

    .line 440
    .line 441
    move-object/from16 v44, v13

    .line 442
    .line 443
    const/16 v12, 0x13

    .line 444
    .line 445
    aget-object v13, v18, v12

    .line 446
    .line 447
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v13

    .line 451
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 452
    .line 453
    move-object/from16 v43, v2

    .line 454
    .line 455
    move-object/from16 v2, v44

    .line 456
    .line 457
    invoke-interface {v1, v0, v12, v13, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    move-object v13, v2

    .line 462
    check-cast v13, Ljava/util/List;

    .line 463
    .line 464
    const/high16 v2, 0x80000

    .line 465
    .line 466
    or-int v2, v36, v2

    .line 467
    .line 468
    move-object/from16 v17, v22

    .line 469
    .line 470
    move-object/from16 v36, v35

    .line 471
    .line 472
    move-object/from16 v12, v42

    .line 473
    .line 474
    move-object/from16 v22, v4

    .line 475
    .line 476
    move-object/from16 v35, v34

    .line 477
    .line 478
    move-wide/from16 v41, v40

    .line 479
    .line 480
    const/4 v4, 0x0

    .line 481
    move-object/from16 v34, v33

    .line 482
    .line 483
    move/from16 v40, v39

    .line 484
    .line 485
    move-object/from16 v33, v32

    .line 486
    .line 487
    move-object/from16 v39, v38

    .line 488
    .line 489
    move-object/from16 v32, v31

    .line 490
    .line 491
    move-object/from16 v38, v37

    .line 492
    .line 493
    move/from16 v37, v2

    .line 494
    .line 495
    move-object/from16 v31, v30

    .line 496
    .line 497
    move-object/from16 v2, v43

    .line 498
    .line 499
    goto/16 :goto_5

    .line 500
    .line 501
    :pswitch_f
    move-object/from16 v43, v2

    .line 502
    .line 503
    move-object/from16 v42, v12

    .line 504
    .line 505
    move-object v2, v13

    .line 506
    const/16 v12, 0x12

    .line 507
    .line 508
    aget-object v13, v18, v12

    .line 509
    .line 510
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v13

    .line 514
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 515
    .line 516
    move-object/from16 v44, v2

    .line 517
    .line 518
    move-object/from16 v2, v42

    .line 519
    .line 520
    invoke-interface {v1, v0, v12, v13, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    move-object v12, v2

    .line 525
    check-cast v12, Ljava/util/List;

    .line 526
    .line 527
    const/high16 v2, 0x40000

    .line 528
    .line 529
    or-int v2, v36, v2

    .line 530
    .line 531
    move-object/from16 v17, v22

    .line 532
    .line 533
    move-object/from16 v36, v35

    .line 534
    .line 535
    move-wide/from16 v41, v40

    .line 536
    .line 537
    move-object/from16 v13, v44

    .line 538
    .line 539
    move-object/from16 v22, v4

    .line 540
    .line 541
    move-object/from16 v35, v34

    .line 542
    .line 543
    move/from16 v40, v39

    .line 544
    .line 545
    const/4 v4, 0x0

    .line 546
    move-object/from16 v34, v33

    .line 547
    .line 548
    move-object/from16 v39, v38

    .line 549
    .line 550
    move-object/from16 v33, v32

    .line 551
    .line 552
    move-object/from16 v38, v37

    .line 553
    .line 554
    move/from16 v37, v2

    .line 555
    .line 556
    :goto_a
    move-object/from16 v32, v31

    .line 557
    .line 558
    move-object/from16 v2, v43

    .line 559
    .line 560
    goto/16 :goto_4

    .line 561
    .line 562
    :pswitch_10
    move-object/from16 v43, v2

    .line 563
    .line 564
    move-object v2, v12

    .line 565
    move-object/from16 v44, v13

    .line 566
    .line 567
    const/16 v12, 0x11

    .line 568
    .line 569
    aget-object v13, v18, v12

    .line 570
    .line 571
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v13

    .line 575
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 576
    .line 577
    move-object/from16 v42, v2

    .line 578
    .line 579
    move-object/from16 v2, v38

    .line 580
    .line 581
    invoke-interface {v1, v0, v12, v13, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    check-cast v2, Ljava/util/List;

    .line 586
    .line 587
    const/high16 v12, 0x20000

    .line 588
    .line 589
    or-int v12, v36, v12

    .line 590
    .line 591
    move-object/from16 v17, v22

    .line 592
    .line 593
    move-object/from16 v36, v35

    .line 594
    .line 595
    move-object/from16 v38, v37

    .line 596
    .line 597
    move-object/from16 v13, v44

    .line 598
    .line 599
    :goto_b
    move-object/from16 v22, v4

    .line 600
    .line 601
    move/from16 v37, v12

    .line 602
    .line 603
    move-object/from16 v35, v34

    .line 604
    .line 605
    move-object/from16 v12, v42

    .line 606
    .line 607
    const/4 v4, 0x0

    .line 608
    move-object/from16 v34, v33

    .line 609
    .line 610
    move-wide/from16 v41, v40

    .line 611
    .line 612
    move-object/from16 v33, v32

    .line 613
    .line 614
    move/from16 v40, v39

    .line 615
    .line 616
    move-object/from16 v39, v2

    .line 617
    .line 618
    goto :goto_a

    .line 619
    :pswitch_11
    move-object/from16 v43, v2

    .line 620
    .line 621
    move-object/from16 v42, v12

    .line 622
    .line 623
    move-object/from16 v44, v13

    .line 624
    .line 625
    move-object/from16 v2, v38

    .line 626
    .line 627
    const/16 v12, 0x10

    .line 628
    .line 629
    invoke-interface {v1, v0, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v27

    .line 633
    const/high16 v12, 0x10000

    .line 634
    .line 635
    :goto_c
    or-int v12, v36, v12

    .line 636
    .line 637
    move-object/from16 v17, v22

    .line 638
    .line 639
    move-object/from16 v36, v35

    .line 640
    .line 641
    move-object/from16 v38, v37

    .line 642
    .line 643
    goto :goto_b

    .line 644
    :pswitch_12
    move-object/from16 v43, v2

    .line 645
    .line 646
    move-object/from16 v42, v12

    .line 647
    .line 648
    move-object/from16 v44, v13

    .line 649
    .line 650
    move-object/from16 v2, v38

    .line 651
    .line 652
    const/16 v12, 0xf

    .line 653
    .line 654
    invoke-interface {v1, v0, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 655
    .line 656
    .line 657
    move-result v26

    .line 658
    const v12, 0x8000

    .line 659
    .line 660
    .line 661
    goto :goto_c

    .line 662
    :pswitch_13
    move-object/from16 v43, v2

    .line 663
    .line 664
    move-object/from16 v42, v12

    .line 665
    .line 666
    move-object/from16 v44, v13

    .line 667
    .line 668
    move-object/from16 v2, v38

    .line 669
    .line 670
    sget-object v12, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 671
    .line 672
    const/16 v13, 0xe

    .line 673
    .line 674
    move-object/from16 v2, v37

    .line 675
    .line 676
    invoke-interface {v1, v0, v13, v12, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    .line 681
    .line 682
    move/from16 v12, v36

    .line 683
    .line 684
    or-int/lit16 v12, v12, 0x4000

    .line 685
    .line 686
    move/from16 v37, v12

    .line 687
    .line 688
    move-object/from16 v17, v22

    .line 689
    .line 690
    move-object/from16 v36, v35

    .line 691
    .line 692
    move-object/from16 v12, v42

    .line 693
    .line 694
    move-object/from16 v13, v44

    .line 695
    .line 696
    move-object/from16 v22, v4

    .line 697
    .line 698
    move-object/from16 v35, v34

    .line 699
    .line 700
    move-wide/from16 v41, v40

    .line 701
    .line 702
    const/4 v4, 0x0

    .line 703
    move-object/from16 v34, v33

    .line 704
    .line 705
    move/from16 v40, v39

    .line 706
    .line 707
    move-object/from16 v33, v32

    .line 708
    .line 709
    move-object/from16 v39, v38

    .line 710
    .line 711
    move-object/from16 v38, v2

    .line 712
    .line 713
    goto/16 :goto_a

    .line 714
    .line 715
    :pswitch_14
    move-object/from16 v43, v2

    .line 716
    .line 717
    move-object/from16 v42, v12

    .line 718
    .line 719
    move-object/from16 v44, v13

    .line 720
    .line 721
    move/from16 v12, v36

    .line 722
    .line 723
    move-object/from16 v2, v37

    .line 724
    .line 725
    const/16 v13, 0xd

    .line 726
    .line 727
    aget-object v36, v18, v13

    .line 728
    .line 729
    invoke-interface/range {v36 .. v36}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v36

    .line 733
    move-object/from16 v2, v36

    .line 734
    .line 735
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 736
    .line 737
    move-object/from16 v36, v3

    .line 738
    .line 739
    move-object/from16 v3, v35

    .line 740
    .line 741
    invoke-interface {v1, v0, v13, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    check-cast v2, Ljava/util/Map;

    .line 746
    .line 747
    or-int/lit16 v3, v12, 0x2000

    .line 748
    .line 749
    move-object/from16 v17, v22

    .line 750
    .line 751
    move-object/from16 v35, v34

    .line 752
    .line 753
    move-object/from16 v12, v42

    .line 754
    .line 755
    move-object/from16 v13, v44

    .line 756
    .line 757
    move-object/from16 v22, v4

    .line 758
    .line 759
    move-object/from16 v34, v33

    .line 760
    .line 761
    move-wide/from16 v41, v40

    .line 762
    .line 763
    const/4 v4, 0x0

    .line 764
    move-object/from16 v33, v32

    .line 765
    .line 766
    move/from16 v40, v39

    .line 767
    .line 768
    move-object/from16 v32, v31

    .line 769
    .line 770
    move-object/from16 v39, v38

    .line 771
    .line 772
    move-object/from16 v31, v30

    .line 773
    .line 774
    move-object/from16 v38, v37

    .line 775
    .line 776
    move/from16 v37, v3

    .line 777
    .line 778
    move-object/from16 v30, v29

    .line 779
    .line 780
    move-object/from16 v3, v36

    .line 781
    .line 782
    move-object/from16 v36, v2

    .line 783
    .line 784
    move-object/from16 v29, v28

    .line 785
    .line 786
    move-object/from16 v2, v43

    .line 787
    .line 788
    goto/16 :goto_6

    .line 789
    .line 790
    :pswitch_15
    move-object/from16 v43, v2

    .line 791
    .line 792
    move-object/from16 v42, v12

    .line 793
    .line 794
    move-object/from16 v44, v13

    .line 795
    .line 796
    move/from16 v12, v36

    .line 797
    .line 798
    move-object/from16 v36, v3

    .line 799
    .line 800
    move-object/from16 v3, v35

    .line 801
    .line 802
    const/16 v2, 0xc

    .line 803
    .line 804
    aget-object v13, v18, v2

    .line 805
    .line 806
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v13

    .line 810
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 811
    .line 812
    move-object/from16 v3, v34

    .line 813
    .line 814
    invoke-interface {v1, v0, v2, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v2

    .line 818
    check-cast v2, Ljava/util/Map;

    .line 819
    .line 820
    or-int/lit16 v3, v12, 0x1000

    .line 821
    .line 822
    move-object/from16 v17, v22

    .line 823
    .line 824
    move-object/from16 v34, v33

    .line 825
    .line 826
    move-object/from16 v12, v42

    .line 827
    .line 828
    move-object/from16 v13, v44

    .line 829
    .line 830
    move-object/from16 v22, v4

    .line 831
    .line 832
    move-object/from16 v33, v32

    .line 833
    .line 834
    move-wide/from16 v41, v40

    .line 835
    .line 836
    const/4 v4, 0x0

    .line 837
    move-object/from16 v32, v31

    .line 838
    .line 839
    move/from16 v40, v39

    .line 840
    .line 841
    move-object/from16 v31, v30

    .line 842
    .line 843
    move-object/from16 v39, v38

    .line 844
    .line 845
    move-object/from16 v30, v29

    .line 846
    .line 847
    move-object/from16 v38, v37

    .line 848
    .line 849
    move/from16 v37, v3

    .line 850
    .line 851
    move-object/from16 v29, v28

    .line 852
    .line 853
    move-object/from16 v3, v36

    .line 854
    .line 855
    move-object/from16 v28, v27

    .line 856
    .line 857
    move-object/from16 v36, v35

    .line 858
    .line 859
    move-object/from16 v35, v2

    .line 860
    .line 861
    :goto_d
    move/from16 v27, v26

    .line 862
    .line 863
    move-object/from16 v2, v43

    .line 864
    .line 865
    goto/16 :goto_8

    .line 866
    .line 867
    :pswitch_16
    move-object/from16 v43, v2

    .line 868
    .line 869
    move-object/from16 v42, v12

    .line 870
    .line 871
    move-object/from16 v44, v13

    .line 872
    .line 873
    move/from16 v12, v36

    .line 874
    .line 875
    move-object/from16 v36, v3

    .line 876
    .line 877
    move-object/from16 v3, v34

    .line 878
    .line 879
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail$$serializer;

    .line 880
    .line 881
    const/16 v13, 0xb

    .line 882
    .line 883
    move-object/from16 v3, v33

    .line 884
    .line 885
    invoke-interface {v1, v0, v13, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    move-object v3, v2

    .line 890
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;

    .line 891
    .line 892
    or-int/lit16 v2, v12, 0x800

    .line 893
    .line 894
    move-object/from16 v12, v34

    .line 895
    .line 896
    move-object/from16 v34, v3

    .line 897
    .line 898
    move-object/from16 v3, v36

    .line 899
    .line 900
    move-object/from16 v36, v35

    .line 901
    .line 902
    move-object/from16 v35, v12

    .line 903
    .line 904
    move-object/from16 v17, v22

    .line 905
    .line 906
    move-object/from16 v33, v32

    .line 907
    .line 908
    move-object/from16 v12, v42

    .line 909
    .line 910
    move-object/from16 v13, v44

    .line 911
    .line 912
    move-object/from16 v22, v4

    .line 913
    .line 914
    move-object/from16 v32, v31

    .line 915
    .line 916
    move-wide/from16 v41, v40

    .line 917
    .line 918
    const/4 v4, 0x0

    .line 919
    move-object/from16 v31, v30

    .line 920
    .line 921
    move/from16 v40, v39

    .line 922
    .line 923
    move-object/from16 v30, v29

    .line 924
    .line 925
    move-object/from16 v39, v38

    .line 926
    .line 927
    move-object/from16 v29, v28

    .line 928
    .line 929
    move-object/from16 v38, v37

    .line 930
    .line 931
    move/from16 v37, v2

    .line 932
    .line 933
    move-object/from16 v28, v27

    .line 934
    .line 935
    move-object/from16 v2, v43

    .line 936
    .line 937
    goto/16 :goto_7

    .line 938
    .line 939
    :pswitch_17
    move-object/from16 v43, v2

    .line 940
    .line 941
    move-object/from16 v42, v12

    .line 942
    .line 943
    move-object/from16 v44, v13

    .line 944
    .line 945
    move/from16 v12, v36

    .line 946
    .line 947
    move-object/from16 v36, v3

    .line 948
    .line 949
    move-object/from16 v3, v33

    .line 950
    .line 951
    const/16 v2, 0xa

    .line 952
    .line 953
    aget-object v13, v18, v2

    .line 954
    .line 955
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v13

    .line 959
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 960
    .line 961
    move-object/from16 v3, v32

    .line 962
    .line 963
    invoke-interface {v1, v0, v2, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v2

    .line 967
    check-cast v2, Ljava/util/List;

    .line 968
    .line 969
    or-int/lit16 v3, v12, 0x400

    .line 970
    .line 971
    move-object/from16 v17, v22

    .line 972
    .line 973
    move-object/from16 v32, v31

    .line 974
    .line 975
    move-object/from16 v12, v42

    .line 976
    .line 977
    move-object/from16 v13, v44

    .line 978
    .line 979
    move-object/from16 v22, v4

    .line 980
    .line 981
    move-object/from16 v31, v30

    .line 982
    .line 983
    move-wide/from16 v41, v40

    .line 984
    .line 985
    const/4 v4, 0x0

    .line 986
    move-object/from16 v30, v29

    .line 987
    .line 988
    move/from16 v40, v39

    .line 989
    .line 990
    move-object/from16 v29, v28

    .line 991
    .line 992
    move-object/from16 v39, v38

    .line 993
    .line 994
    move-object/from16 v28, v27

    .line 995
    .line 996
    move-object/from16 v38, v37

    .line 997
    .line 998
    move/from16 v37, v3

    .line 999
    .line 1000
    move/from16 v27, v26

    .line 1001
    .line 1002
    move-object/from16 v3, v36

    .line 1003
    .line 1004
    move-object/from16 v26, v25

    .line 1005
    .line 1006
    move-object/from16 v36, v35

    .line 1007
    .line 1008
    move-object/from16 v25, v24

    .line 1009
    .line 1010
    move-object/from16 v35, v34

    .line 1011
    .line 1012
    move-object/from16 v24, v23

    .line 1013
    .line 1014
    move-object/from16 v34, v33

    .line 1015
    .line 1016
    move-object/from16 v33, v2

    .line 1017
    .line 1018
    :goto_e
    move-object/from16 v2, v43

    .line 1019
    .line 1020
    goto/16 :goto_10

    .line 1021
    .line 1022
    :pswitch_18
    move-object/from16 v43, v2

    .line 1023
    .line 1024
    move-object/from16 v42, v12

    .line 1025
    .line 1026
    move-object/from16 v44, v13

    .line 1027
    .line 1028
    move/from16 v12, v36

    .line 1029
    .line 1030
    move-object/from16 v36, v3

    .line 1031
    .line 1032
    move-object/from16 v3, v32

    .line 1033
    .line 1034
    const/16 v2, 0x9

    .line 1035
    .line 1036
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 1037
    .line 1038
    .line 1039
    move-result v20

    .line 1040
    or-int/lit16 v2, v12, 0x200

    .line 1041
    .line 1042
    move-object/from16 v12, v33

    .line 1043
    .line 1044
    move-object/from16 v33, v3

    .line 1045
    .line 1046
    move-object/from16 v3, v36

    .line 1047
    .line 1048
    move-object/from16 v36, v35

    .line 1049
    .line 1050
    move-object/from16 v35, v34

    .line 1051
    .line 1052
    move-object/from16 v34, v12

    .line 1053
    .line 1054
    move-object/from16 v17, v22

    .line 1055
    .line 1056
    move-object/from16 v32, v31

    .line 1057
    .line 1058
    move-object/from16 v12, v42

    .line 1059
    .line 1060
    move-object/from16 v22, v4

    .line 1061
    .line 1062
    move-object/from16 v31, v30

    .line 1063
    .line 1064
    move-wide/from16 v41, v40

    .line 1065
    .line 1066
    const/4 v4, 0x0

    .line 1067
    move-object/from16 v30, v29

    .line 1068
    .line 1069
    move/from16 v40, v39

    .line 1070
    .line 1071
    move-object/from16 v29, v28

    .line 1072
    .line 1073
    move-object/from16 v39, v38

    .line 1074
    .line 1075
    move-object/from16 v28, v27

    .line 1076
    .line 1077
    move-object/from16 v38, v37

    .line 1078
    .line 1079
    move/from16 v37, v2

    .line 1080
    .line 1081
    goto/16 :goto_d

    .line 1082
    .line 1083
    :pswitch_19
    move-object/from16 v43, v2

    .line 1084
    .line 1085
    move-object/from16 v42, v12

    .line 1086
    .line 1087
    move-object/from16 v44, v13

    .line 1088
    .line 1089
    move/from16 v12, v36

    .line 1090
    .line 1091
    move-object/from16 v36, v3

    .line 1092
    .line 1093
    move-object/from16 v3, v32

    .line 1094
    .line 1095
    const/16 v2, 0x8

    .line 1096
    .line 1097
    aget-object v13, v18, v2

    .line 1098
    .line 1099
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v13

    .line 1103
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 1104
    .line 1105
    move-object/from16 v3, v31

    .line 1106
    .line 1107
    invoke-interface {v1, v0, v2, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v2

    .line 1111
    check-cast v2, Ljava/util/List;

    .line 1112
    .line 1113
    or-int/lit16 v3, v12, 0x100

    .line 1114
    .line 1115
    move-object/from16 v17, v22

    .line 1116
    .line 1117
    move-object/from16 v31, v30

    .line 1118
    .line 1119
    move-object/from16 v12, v42

    .line 1120
    .line 1121
    move-object/from16 v13, v44

    .line 1122
    .line 1123
    move-object/from16 v22, v4

    .line 1124
    .line 1125
    move-object/from16 v30, v29

    .line 1126
    .line 1127
    move-wide/from16 v41, v40

    .line 1128
    .line 1129
    const/4 v4, 0x0

    .line 1130
    move-object/from16 v29, v28

    .line 1131
    .line 1132
    move/from16 v40, v39

    .line 1133
    .line 1134
    move-object/from16 v28, v27

    .line 1135
    .line 1136
    move-object/from16 v39, v38

    .line 1137
    .line 1138
    move/from16 v27, v26

    .line 1139
    .line 1140
    move-object/from16 v38, v37

    .line 1141
    .line 1142
    move/from16 v37, v3

    .line 1143
    .line 1144
    move-object/from16 v26, v25

    .line 1145
    .line 1146
    move-object/from16 v3, v36

    .line 1147
    .line 1148
    move-object/from16 v25, v24

    .line 1149
    .line 1150
    move-object/from16 v36, v35

    .line 1151
    .line 1152
    move-object/from16 v24, v23

    .line 1153
    .line 1154
    move-object/from16 v35, v34

    .line 1155
    .line 1156
    move-object/from16 v34, v33

    .line 1157
    .line 1158
    move-object/from16 v33, v32

    .line 1159
    .line 1160
    move-object/from16 v32, v2

    .line 1161
    .line 1162
    goto/16 :goto_e

    .line 1163
    .line 1164
    :pswitch_1a
    move-object/from16 v43, v2

    .line 1165
    .line 1166
    move-object/from16 v42, v12

    .line 1167
    .line 1168
    move-object/from16 v44, v13

    .line 1169
    .line 1170
    move/from16 v12, v36

    .line 1171
    .line 1172
    move-object/from16 v36, v3

    .line 1173
    .line 1174
    move-object/from16 v3, v31

    .line 1175
    .line 1176
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms$$serializer;

    .line 1177
    .line 1178
    const/4 v13, 0x7

    .line 1179
    move-object/from16 v3, v30

    .line 1180
    .line 1181
    invoke-interface {v1, v0, v13, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v2

    .line 1185
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;

    .line 1186
    .line 1187
    or-int/lit16 v3, v12, 0x80

    .line 1188
    .line 1189
    move-object/from16 v17, v22

    .line 1190
    .line 1191
    move-object/from16 v30, v29

    .line 1192
    .line 1193
    move-object/from16 v12, v42

    .line 1194
    .line 1195
    move-object/from16 v13, v44

    .line 1196
    .line 1197
    move-object/from16 v22, v4

    .line 1198
    .line 1199
    move-object/from16 v29, v28

    .line 1200
    .line 1201
    move-wide/from16 v41, v40

    .line 1202
    .line 1203
    const/4 v4, 0x0

    .line 1204
    move-object/from16 v28, v27

    .line 1205
    .line 1206
    move/from16 v40, v39

    .line 1207
    .line 1208
    move/from16 v27, v26

    .line 1209
    .line 1210
    move-object/from16 v39, v38

    .line 1211
    .line 1212
    move-object/from16 v26, v25

    .line 1213
    .line 1214
    move-object/from16 v38, v37

    .line 1215
    .line 1216
    move/from16 v37, v3

    .line 1217
    .line 1218
    move-object/from16 v25, v24

    .line 1219
    .line 1220
    move-object/from16 v3, v36

    .line 1221
    .line 1222
    move-object/from16 v24, v23

    .line 1223
    .line 1224
    move-object/from16 v36, v35

    .line 1225
    .line 1226
    move-object/from16 v35, v34

    .line 1227
    .line 1228
    move-object/from16 v34, v33

    .line 1229
    .line 1230
    move-object/from16 v33, v32

    .line 1231
    .line 1232
    move-object/from16 v32, v31

    .line 1233
    .line 1234
    move-object/from16 v31, v2

    .line 1235
    .line 1236
    goto/16 :goto_e

    .line 1237
    .line 1238
    :pswitch_1b
    move-object/from16 v43, v2

    .line 1239
    .line 1240
    move-object/from16 v42, v12

    .line 1241
    .line 1242
    move-object/from16 v44, v13

    .line 1243
    .line 1244
    move/from16 v12, v36

    .line 1245
    .line 1246
    move-object/from16 v36, v3

    .line 1247
    .line 1248
    move-object/from16 v3, v30

    .line 1249
    .line 1250
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps$$serializer;

    .line 1251
    .line 1252
    const/4 v13, 0x6

    .line 1253
    move-object/from16 v3, v29

    .line 1254
    .line 1255
    invoke-interface {v1, v0, v13, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v2

    .line 1259
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    .line 1260
    .line 1261
    or-int/lit8 v3, v12, 0x40

    .line 1262
    .line 1263
    move-object/from16 v17, v22

    .line 1264
    .line 1265
    move-object/from16 v29, v28

    .line 1266
    .line 1267
    move-object/from16 v12, v42

    .line 1268
    .line 1269
    move-object/from16 v13, v44

    .line 1270
    .line 1271
    move-object/from16 v22, v4

    .line 1272
    .line 1273
    move-object/from16 v28, v27

    .line 1274
    .line 1275
    move-wide/from16 v41, v40

    .line 1276
    .line 1277
    const/4 v4, 0x0

    .line 1278
    move/from16 v27, v26

    .line 1279
    .line 1280
    move/from16 v40, v39

    .line 1281
    .line 1282
    move-object/from16 v26, v25

    .line 1283
    .line 1284
    move-object/from16 v39, v38

    .line 1285
    .line 1286
    move-object/from16 v25, v24

    .line 1287
    .line 1288
    move-object/from16 v38, v37

    .line 1289
    .line 1290
    move/from16 v37, v3

    .line 1291
    .line 1292
    move-object/from16 v24, v23

    .line 1293
    .line 1294
    move-object/from16 v3, v36

    .line 1295
    .line 1296
    move-object/from16 v36, v35

    .line 1297
    .line 1298
    move-object/from16 v35, v34

    .line 1299
    .line 1300
    move-object/from16 v34, v33

    .line 1301
    .line 1302
    move-object/from16 v33, v32

    .line 1303
    .line 1304
    move-object/from16 v32, v31

    .line 1305
    .line 1306
    move-object/from16 v31, v30

    .line 1307
    .line 1308
    move-object/from16 v30, v2

    .line 1309
    .line 1310
    goto/16 :goto_e

    .line 1311
    .line 1312
    :pswitch_1c
    move-object/from16 v43, v2

    .line 1313
    .line 1314
    move-object/from16 v42, v12

    .line 1315
    .line 1316
    move-object/from16 v44, v13

    .line 1317
    .line 1318
    move/from16 v12, v36

    .line 1319
    .line 1320
    move-object/from16 v36, v3

    .line 1321
    .line 1322
    move-object/from16 v3, v29

    .line 1323
    .line 1324
    const/4 v2, 0x5

    .line 1325
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 1326
    .line 1327
    .line 1328
    move-result v16

    .line 1329
    or-int/lit8 v2, v12, 0x20

    .line 1330
    .line 1331
    move-object/from16 v12, v30

    .line 1332
    .line 1333
    move-object/from16 v30, v3

    .line 1334
    .line 1335
    move-object/from16 v3, v36

    .line 1336
    .line 1337
    move-object/from16 v36, v35

    .line 1338
    .line 1339
    move-object/from16 v35, v34

    .line 1340
    .line 1341
    move-object/from16 v34, v33

    .line 1342
    .line 1343
    move-object/from16 v33, v32

    .line 1344
    .line 1345
    move-object/from16 v32, v31

    .line 1346
    .line 1347
    move-object/from16 v31, v12

    .line 1348
    .line 1349
    move-object/from16 v17, v22

    .line 1350
    .line 1351
    move-object/from16 v29, v28

    .line 1352
    .line 1353
    move-object/from16 v12, v42

    .line 1354
    .line 1355
    move-object/from16 v22, v4

    .line 1356
    .line 1357
    move-object/from16 v28, v27

    .line 1358
    .line 1359
    move-wide/from16 v41, v40

    .line 1360
    .line 1361
    const/4 v4, 0x0

    .line 1362
    move/from16 v27, v26

    .line 1363
    .line 1364
    move/from16 v40, v39

    .line 1365
    .line 1366
    move-object/from16 v26, v25

    .line 1367
    .line 1368
    move-object/from16 v39, v38

    .line 1369
    .line 1370
    move-object/from16 v25, v24

    .line 1371
    .line 1372
    move-object/from16 v38, v37

    .line 1373
    .line 1374
    move/from16 v37, v2

    .line 1375
    .line 1376
    move-object/from16 v24, v23

    .line 1377
    .line 1378
    goto/16 :goto_e

    .line 1379
    .line 1380
    :pswitch_1d
    move-object/from16 v43, v2

    .line 1381
    .line 1382
    move-object/from16 v42, v12

    .line 1383
    .line 1384
    move-object/from16 v44, v13

    .line 1385
    .line 1386
    move/from16 v12, v36

    .line 1387
    .line 1388
    move-object/from16 v36, v3

    .line 1389
    .line 1390
    move-object/from16 v3, v29

    .line 1391
    .line 1392
    const/4 v2, 0x4

    .line 1393
    aget-object v13, v18, v2

    .line 1394
    .line 1395
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v13

    .line 1399
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 1400
    .line 1401
    move-object/from16 v3, v28

    .line 1402
    .line 1403
    invoke-interface {v1, v0, v2, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v2

    .line 1407
    check-cast v2, Ljava/util/Map;

    .line 1408
    .line 1409
    or-int/lit8 v3, v12, 0x10

    .line 1410
    .line 1411
    move-object/from16 v17, v22

    .line 1412
    .line 1413
    move-object/from16 v28, v27

    .line 1414
    .line 1415
    move-object/from16 v12, v42

    .line 1416
    .line 1417
    move-object/from16 v13, v44

    .line 1418
    .line 1419
    move-object/from16 v22, v4

    .line 1420
    .line 1421
    move/from16 v27, v26

    .line 1422
    .line 1423
    move-wide/from16 v41, v40

    .line 1424
    .line 1425
    const/4 v4, 0x0

    .line 1426
    move-object/from16 v26, v25

    .line 1427
    .line 1428
    move/from16 v40, v39

    .line 1429
    .line 1430
    move-object/from16 v25, v24

    .line 1431
    .line 1432
    move-object/from16 v39, v38

    .line 1433
    .line 1434
    move-object/from16 v24, v23

    .line 1435
    .line 1436
    move-object/from16 v38, v37

    .line 1437
    .line 1438
    move/from16 v37, v3

    .line 1439
    .line 1440
    move-object/from16 v3, v36

    .line 1441
    .line 1442
    move-object/from16 v36, v35

    .line 1443
    .line 1444
    move-object/from16 v35, v34

    .line 1445
    .line 1446
    move-object/from16 v34, v33

    .line 1447
    .line 1448
    move-object/from16 v33, v32

    .line 1449
    .line 1450
    move-object/from16 v32, v31

    .line 1451
    .line 1452
    move-object/from16 v31, v30

    .line 1453
    .line 1454
    move-object/from16 v30, v29

    .line 1455
    .line 1456
    move-object/from16 v29, v2

    .line 1457
    .line 1458
    goto/16 :goto_e

    .line 1459
    .line 1460
    :pswitch_1e
    move-object/from16 v43, v2

    .line 1461
    .line 1462
    move-object/from16 v42, v12

    .line 1463
    .line 1464
    move-object/from16 v44, v13

    .line 1465
    .line 1466
    move/from16 v12, v36

    .line 1467
    .line 1468
    move-object/from16 v36, v3

    .line 1469
    .line 1470
    move-object/from16 v3, v28

    .line 1471
    .line 1472
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 1473
    .line 1474
    const/4 v13, 0x3

    .line 1475
    move-object/from16 v3, v25

    .line 1476
    .line 1477
    invoke-interface {v1, v0, v13, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v2

    .line 1481
    check-cast v2, Ljava/lang/String;

    .line 1482
    .line 1483
    or-int/lit8 v3, v12, 0x8

    .line 1484
    .line 1485
    move-object/from16 v17, v22

    .line 1486
    .line 1487
    move-object/from16 v25, v24

    .line 1488
    .line 1489
    move-object/from16 v12, v42

    .line 1490
    .line 1491
    move-object/from16 v13, v44

    .line 1492
    .line 1493
    move-object/from16 v22, v4

    .line 1494
    .line 1495
    move-object/from16 v24, v23

    .line 1496
    .line 1497
    move-wide/from16 v41, v40

    .line 1498
    .line 1499
    const/4 v4, 0x0

    .line 1500
    move/from16 v40, v39

    .line 1501
    .line 1502
    move-object/from16 v39, v38

    .line 1503
    .line 1504
    move-object/from16 v38, v37

    .line 1505
    .line 1506
    move/from16 v37, v3

    .line 1507
    .line 1508
    move-object/from16 v3, v36

    .line 1509
    .line 1510
    move-object/from16 v36, v35

    .line 1511
    .line 1512
    move-object/from16 v35, v34

    .line 1513
    .line 1514
    move-object/from16 v34, v33

    .line 1515
    .line 1516
    move-object/from16 v33, v32

    .line 1517
    .line 1518
    move-object/from16 v32, v31

    .line 1519
    .line 1520
    move-object/from16 v31, v30

    .line 1521
    .line 1522
    move-object/from16 v30, v29

    .line 1523
    .line 1524
    move-object/from16 v29, v28

    .line 1525
    .line 1526
    move-object/from16 v28, v27

    .line 1527
    .line 1528
    move/from16 v27, v26

    .line 1529
    .line 1530
    move-object/from16 v26, v2

    .line 1531
    .line 1532
    goto/16 :goto_e

    .line 1533
    .line 1534
    :pswitch_1f
    move-object/from16 v43, v2

    .line 1535
    .line 1536
    move-object/from16 v42, v12

    .line 1537
    .line 1538
    move-object/from16 v44, v13

    .line 1539
    .line 1540
    move/from16 v12, v36

    .line 1541
    .line 1542
    move-object/from16 v36, v3

    .line 1543
    .line 1544
    move-object/from16 v3, v25

    .line 1545
    .line 1546
    const/4 v2, 0x2

    .line 1547
    aget-object v13, v18, v2

    .line 1548
    .line 1549
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v13

    .line 1553
    check-cast v13, Lkotlinx/serialization/KSerializer;

    .line 1554
    .line 1555
    move-object/from16 v3, v24

    .line 1556
    .line 1557
    invoke-interface {v1, v0, v2, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v2

    .line 1561
    move-object v13, v2

    .line 1562
    check-cast v13, Ljava/util/List;

    .line 1563
    .line 1564
    or-int/lit8 v2, v12, 0x4

    .line 1565
    .line 1566
    move-object/from16 v17, v22

    .line 1567
    .line 1568
    move-object/from16 v24, v23

    .line 1569
    .line 1570
    move-object/from16 v3, v36

    .line 1571
    .line 1572
    move-object/from16 v12, v42

    .line 1573
    .line 1574
    move-object/from16 v22, v4

    .line 1575
    .line 1576
    move-object/from16 v36, v35

    .line 1577
    .line 1578
    move-wide/from16 v41, v40

    .line 1579
    .line 1580
    const/4 v4, 0x0

    .line 1581
    move-object/from16 v35, v34

    .line 1582
    .line 1583
    move/from16 v40, v39

    .line 1584
    .line 1585
    move-object/from16 v34, v33

    .line 1586
    .line 1587
    move-object/from16 v39, v38

    .line 1588
    .line 1589
    move-object/from16 v33, v32

    .line 1590
    .line 1591
    move-object/from16 v38, v37

    .line 1592
    .line 1593
    move/from16 v37, v2

    .line 1594
    .line 1595
    move-object/from16 v32, v31

    .line 1596
    .line 1597
    move-object/from16 v2, v43

    .line 1598
    .line 1599
    move-object/from16 v31, v30

    .line 1600
    .line 1601
    move-object/from16 v30, v29

    .line 1602
    .line 1603
    move-object/from16 v29, v28

    .line 1604
    .line 1605
    move-object/from16 v28, v27

    .line 1606
    .line 1607
    move/from16 v27, v26

    .line 1608
    .line 1609
    move-object/from16 v26, v25

    .line 1610
    .line 1611
    move-object/from16 v25, v13

    .line 1612
    .line 1613
    :goto_f
    move-object/from16 v13, v44

    .line 1614
    .line 1615
    goto/16 :goto_10

    .line 1616
    .line 1617
    :pswitch_20
    move-object/from16 v43, v2

    .line 1618
    .line 1619
    move-object/from16 v42, v12

    .line 1620
    .line 1621
    move-object/from16 v44, v13

    .line 1622
    .line 1623
    move/from16 v12, v36

    .line 1624
    .line 1625
    move-object/from16 v36, v3

    .line 1626
    .line 1627
    move-object/from16 v3, v24

    .line 1628
    .line 1629
    aget-object v2, v18, v17

    .line 1630
    .line 1631
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v2

    .line 1635
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 1636
    .line 1637
    move/from16 v13, v17

    .line 1638
    .line 1639
    move-object/from16 v17, v3

    .line 1640
    .line 1641
    move v3, v13

    .line 1642
    move-object/from16 v13, v23

    .line 1643
    .line 1644
    invoke-interface {v1, v0, v3, v2, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v2

    .line 1648
    check-cast v2, Ljava/util/List;

    .line 1649
    .line 1650
    or-int/lit8 v12, v12, 0x2

    .line 1651
    .line 1652
    move-object/from16 v3, v37

    .line 1653
    .line 1654
    move/from16 v37, v12

    .line 1655
    .line 1656
    move-object/from16 v12, v42

    .line 1657
    .line 1658
    move-wide/from16 v41, v40

    .line 1659
    .line 1660
    move/from16 v40, v39

    .line 1661
    .line 1662
    move-object/from16 v39, v38

    .line 1663
    .line 1664
    move-object/from16 v38, v3

    .line 1665
    .line 1666
    move-object/from16 v24, v2

    .line 1667
    .line 1668
    move-object/from16 v3, v36

    .line 1669
    .line 1670
    move-object/from16 v2, v43

    .line 1671
    .line 1672
    move-object/from16 v13, v44

    .line 1673
    .line 1674
    move-object/from16 v36, v35

    .line 1675
    .line 1676
    move-object/from16 v35, v34

    .line 1677
    .line 1678
    move-object/from16 v34, v33

    .line 1679
    .line 1680
    move-object/from16 v33, v32

    .line 1681
    .line 1682
    move-object/from16 v32, v31

    .line 1683
    .line 1684
    move-object/from16 v31, v30

    .line 1685
    .line 1686
    move-object/from16 v30, v29

    .line 1687
    .line 1688
    move-object/from16 v29, v28

    .line 1689
    .line 1690
    move-object/from16 v28, v27

    .line 1691
    .line 1692
    move/from16 v27, v26

    .line 1693
    .line 1694
    move-object/from16 v26, v25

    .line 1695
    .line 1696
    move-object/from16 v25, v17

    .line 1697
    .line 1698
    move-object/from16 v17, v22

    .line 1699
    .line 1700
    move-object/from16 v22, v4

    .line 1701
    .line 1702
    const/4 v4, 0x0

    .line 1703
    goto/16 :goto_10

    .line 1704
    .line 1705
    :pswitch_21
    move-object/from16 v43, v2

    .line 1706
    .line 1707
    move-object/from16 v42, v12

    .line 1708
    .line 1709
    move-object/from16 v44, v13

    .line 1710
    .line 1711
    move-object/from16 v13, v23

    .line 1712
    .line 1713
    move/from16 v12, v36

    .line 1714
    .line 1715
    move-object/from16 v36, v3

    .line 1716
    .line 1717
    move/from16 v3, v17

    .line 1718
    .line 1719
    move-object/from16 v17, v24

    .line 1720
    .line 1721
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 1722
    .line 1723
    move-object/from16 v3, v22

    .line 1724
    .line 1725
    move-object/from16 v22, v4

    .line 1726
    .line 1727
    const/4 v4, 0x0

    .line 1728
    invoke-interface {v1, v0, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v2

    .line 1732
    check-cast v2, Ljava/lang/String;

    .line 1733
    .line 1734
    or-int/lit8 v3, v12, 0x1

    .line 1735
    .line 1736
    move-object/from16 v24, v13

    .line 1737
    .line 1738
    move-object/from16 v12, v42

    .line 1739
    .line 1740
    move-object/from16 v13, v44

    .line 1741
    .line 1742
    move-wide/from16 v41, v40

    .line 1743
    .line 1744
    move/from16 v40, v39

    .line 1745
    .line 1746
    move-object/from16 v39, v38

    .line 1747
    .line 1748
    move-object/from16 v38, v37

    .line 1749
    .line 1750
    move/from16 v37, v3

    .line 1751
    .line 1752
    move-object/from16 v3, v36

    .line 1753
    .line 1754
    move-object/from16 v36, v35

    .line 1755
    .line 1756
    move-object/from16 v35, v34

    .line 1757
    .line 1758
    move-object/from16 v34, v33

    .line 1759
    .line 1760
    move-object/from16 v33, v32

    .line 1761
    .line 1762
    move-object/from16 v32, v31

    .line 1763
    .line 1764
    move-object/from16 v31, v30

    .line 1765
    .line 1766
    move-object/from16 v30, v29

    .line 1767
    .line 1768
    move-object/from16 v29, v28

    .line 1769
    .line 1770
    move-object/from16 v28, v27

    .line 1771
    .line 1772
    move/from16 v27, v26

    .line 1773
    .line 1774
    move-object/from16 v26, v25

    .line 1775
    .line 1776
    move-object/from16 v25, v17

    .line 1777
    .line 1778
    move-object/from16 v17, v2

    .line 1779
    .line 1780
    goto/16 :goto_e

    .line 1781
    .line 1782
    :pswitch_22
    move-object/from16 v43, v2

    .line 1783
    .line 1784
    move-object/from16 v42, v12

    .line 1785
    .line 1786
    move-object/from16 v44, v13

    .line 1787
    .line 1788
    move-object/from16 v13, v23

    .line 1789
    .line 1790
    move-object/from16 v17, v24

    .line 1791
    .line 1792
    move/from16 v12, v36

    .line 1793
    .line 1794
    move-object/from16 v36, v3

    .line 1795
    .line 1796
    move-object/from16 v3, v22

    .line 1797
    .line 1798
    move-object/from16 v22, v4

    .line 1799
    .line 1800
    const/4 v4, 0x0

    .line 1801
    move-object/from16 v2, v17

    .line 1802
    .line 1803
    move-object/from16 v17, v3

    .line 1804
    .line 1805
    move-object/from16 v3, v36

    .line 1806
    .line 1807
    move-object/from16 v36, v35

    .line 1808
    .line 1809
    move-object/from16 v35, v34

    .line 1810
    .line 1811
    move-object/from16 v34, v33

    .line 1812
    .line 1813
    move-object/from16 v33, v32

    .line 1814
    .line 1815
    move-object/from16 v32, v31

    .line 1816
    .line 1817
    move-object/from16 v31, v30

    .line 1818
    .line 1819
    move-object/from16 v30, v29

    .line 1820
    .line 1821
    move-object/from16 v29, v28

    .line 1822
    .line 1823
    move-object/from16 v28, v27

    .line 1824
    .line 1825
    move/from16 v27, v26

    .line 1826
    .line 1827
    move-object/from16 v26, v25

    .line 1828
    .line 1829
    move-object/from16 v25, v2

    .line 1830
    .line 1831
    move-object/from16 v2, v37

    .line 1832
    .line 1833
    move/from16 v37, v12

    .line 1834
    .line 1835
    move-object/from16 v12, v42

    .line 1836
    .line 1837
    move-wide/from16 v41, v40

    .line 1838
    .line 1839
    move/from16 v40, v39

    .line 1840
    .line 1841
    move-object/from16 v39, v38

    .line 1842
    .line 1843
    move-object/from16 v38, v2

    .line 1844
    .line 1845
    move/from16 v19, v4

    .line 1846
    .line 1847
    move-object/from16 v24, v13

    .line 1848
    .line 1849
    move-object/from16 v2, v43

    .line 1850
    .line 1851
    goto/16 :goto_f

    .line 1852
    .line 1853
    :goto_10
    move-object/from16 v4, v22

    .line 1854
    .line 1855
    move-object/from16 v23, v24

    .line 1856
    .line 1857
    move-object/from16 v24, v25

    .line 1858
    .line 1859
    move-object/from16 v25, v26

    .line 1860
    .line 1861
    move/from16 v26, v27

    .line 1862
    .line 1863
    move-object/from16 v27, v28

    .line 1864
    .line 1865
    move-object/from16 v28, v29

    .line 1866
    .line 1867
    move-object/from16 v29, v30

    .line 1868
    .line 1869
    move-object/from16 v30, v31

    .line 1870
    .line 1871
    move-object/from16 v31, v32

    .line 1872
    .line 1873
    move-object/from16 v32, v33

    .line 1874
    .line 1875
    move-object/from16 v33, v34

    .line 1876
    .line 1877
    move-object/from16 v34, v35

    .line 1878
    .line 1879
    move-object/from16 v35, v36

    .line 1880
    .line 1881
    move/from16 v36, v37

    .line 1882
    .line 1883
    move-object/from16 v37, v38

    .line 1884
    .line 1885
    move-object/from16 v38, v39

    .line 1886
    .line 1887
    move/from16 v39, v40

    .line 1888
    .line 1889
    move-wide/from16 v40, v41

    .line 1890
    .line 1891
    move-object/from16 v22, v17

    .line 1892
    .line 1893
    goto/16 :goto_0

    .line 1894
    .line 1895
    :cond_0
    move-object/from16 v43, v2

    .line 1896
    .line 1897
    move-object/from16 v42, v12

    .line 1898
    .line 1899
    move-object/from16 v44, v13

    .line 1900
    .line 1901
    move-object/from16 v13, v23

    .line 1902
    .line 1903
    move-object/from16 v17, v24

    .line 1904
    .line 1905
    move/from16 v12, v36

    .line 1906
    .line 1907
    move-object/from16 v36, v3

    .line 1908
    .line 1909
    move-object/from16 v3, v22

    .line 1910
    .line 1911
    move-object/from16 v22, v4

    .line 1912
    .line 1913
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 1914
    .line 1915
    .line 1916
    move-object/from16 v23, v34

    .line 1917
    .line 1918
    move-object/from16 v34, v8

    .line 1919
    .line 1920
    new-instance v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1921
    .line 1922
    move-object/from16 v45, v11

    .line 1923
    .line 1924
    move-object/from16 v18, v30

    .line 1925
    .line 1926
    move-object/from16 v19, v31

    .line 1927
    .line 1928
    move-object/from16 v24, v35

    .line 1929
    .line 1930
    move-object/from16 v30, v44

    .line 1931
    .line 1932
    move-object v11, v3

    .line 1933
    move-object/from16 v35, v5

    .line 1934
    .line 1935
    move-object/from16 v44, v10

    .line 1936
    .line 1937
    move-object/from16 v31, v14

    .line 1938
    .line 1939
    move/from16 v10, v21

    .line 1940
    .line 1941
    move-object/from16 v14, v25

    .line 1942
    .line 1943
    move-object/from16 v21, v32

    .line 1944
    .line 1945
    move-object/from16 v25, v37

    .line 1946
    .line 1947
    move-object/from16 v32, v15

    .line 1948
    .line 1949
    move-object/from16 v15, v28

    .line 1950
    .line 1951
    move-object/from16 v37, v36

    .line 1952
    .line 1953
    move-object/from16 v28, v38

    .line 1954
    .line 1955
    move-object/from16 v38, v43

    .line 1956
    .line 1957
    move-object/from16 v43, v9

    .line 1958
    .line 1959
    move v9, v12

    .line 1960
    move-object v12, v13

    .line 1961
    move-object/from16 v13, v17

    .line 1962
    .line 1963
    move-object/from16 v36, v22

    .line 1964
    .line 1965
    move-object/from16 v17, v29

    .line 1966
    .line 1967
    move-object/from16 v22, v33

    .line 1968
    .line 1969
    move-object/from16 v29, v42

    .line 1970
    .line 1971
    move-object/from16 v42, v6

    .line 1972
    .line 1973
    move-object/from16 v33, v7

    .line 1974
    .line 1975
    invoke-direct/range {v8 .. v45}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;-><init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;Ljava/util/List;ILjava/util/List;Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;Ljava/util/Map;Ljava/util/Map;Lkotlinx/serialization/json/JsonElement;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1976
    .line 1977
    .line 1978
    return-object v8

    .line 1979
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 35

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->growthimagesuggestiondata:Ljava/util/List;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->qualityGateIds:Ljava/util/List;

    .line 11
    .line 12
    iget-object v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->difficulty:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->tasktype:Ljava/lang/String;

    .line 15
    .line 16
    iget-wide v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->lastrevid:J

    .line 17
    .line 18
    iget-boolean v7, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watched:Z

    .line 19
    .line 20
    iget-object v8, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imagerepository:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v9, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v10, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->sectionTitle:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v11, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->snippet:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v12, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v13, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->protection:Ljava/util/List;

    .line 31
    .line 32
    iget-object v14, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 33
    .line 34
    iget-object v15, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->langlinks:Ljava/util/List;

    .line 35
    .line 36
    move-object/from16 p0, v1

    .line 37
    .line 38
    iget v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 39
    .line 40
    move-object/from16 p2, v2

    .line 41
    .line 42
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->editintro:Lkotlinx/serialization/json/JsonElement;

    .line 43
    .line 44
    move-object/from16 v16, v3

    .line 45
    .line 46
    iget-object v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->actions:Ljava/util/Map;

    .line 47
    .line 48
    move-object/from16 v17, v4

    .line 49
    .line 50
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->varianttitles:Ljava/util/Map;

    .line 51
    .line 52
    move-wide/from16 v18, v5

    .line 53
    .line 54
    iget-object v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbnail:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;

    .line 55
    .line 56
    iget-object v6, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    .line 57
    .line 58
    move/from16 v20, v7

    .line 59
    .line 60
    iget v7, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->ns:I

    .line 61
    .line 62
    move-object/from16 v21, v8

    .line 63
    .line 64
    iget-object v8, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->categories:Ljava/util/List;

    .line 65
    .line 66
    move-object/from16 v22, v9

    .line 67
    .line 68
    iget-object v9, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->entityTerms:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;

    .line 69
    .line 70
    move-object/from16 v23, v10

    .line 71
    .line 72
    iget-object v10, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageProps:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    .line 73
    .line 74
    move-object/from16 v24, v11

    .line 75
    .line 76
    iget v11, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    .line 77
    .line 78
    move-object/from16 v25, v12

    .line 79
    .line 80
    iget-object v12, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageViewsMap:Ljava/util/Map;

    .line 81
    .line 82
    move-object/from16 v26, v13

    .line 83
    .line 84
    iget-object v13, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watchlistExpiry:Ljava/lang/String;

    .line 85
    .line 86
    move-object/from16 v27, v14

    .line 87
    .line 88
    iget-object v14, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->videoInfo:Ljava/util/List;

    .line 89
    .line 90
    move-object/from16 v28, v15

    .line 91
    .line 92
    iget-object v15, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo:Ljava/util/List;

    .line 93
    .line 94
    move/from16 v29, v1

    .line 95
    .line 96
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->descriptionSource:Ljava/lang/String;

    .line 97
    .line 98
    move-object/from16 v30, v0

    .line 99
    .line 100
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 101
    .line 102
    move-object/from16 v31, v2

    .line 103
    .line 104
    move-object/from16 v2, p1

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    sget-object v32, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->$childSerializers:[Lkotlin/Lazy;

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 113
    .line 114
    .line 115
    move-result v33

    .line 116
    if-eqz v33, :cond_0

    .line 117
    .line 118
    :goto_0
    move-object/from16 v33, v3

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_0
    if-eqz v1, :cond_1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :goto_1
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 125
    .line 126
    move-object/from16 v34, v4

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    invoke-virtual {v2, v0, v4, v3, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_1
    move-object/from16 v33, v3

    .line 134
    .line 135
    move-object/from16 v34, v4

    .line 136
    .line 137
    :goto_2
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_2

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_2
    if-eqz v15, :cond_3

    .line 145
    .line 146
    :goto_3
    const/4 v1, 0x1

    .line 147
    aget-object v3, v32, v1

    .line 148
    .line 149
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 154
    .line 155
    invoke-virtual {v2, v0, v1, v3, v15}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_4

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_4
    if-eqz v14, :cond_5

    .line 166
    .line 167
    :goto_4
    const/4 v1, 0x2

    .line 168
    aget-object v3, v32, v1

    .line 169
    .line 170
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 175
    .line 176
    invoke-virtual {v2, v0, v1, v3, v14}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_5
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_6

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_6
    if-eqz v13, :cond_7

    .line 187
    .line 188
    :goto_5
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 189
    .line 190
    const/4 v3, 0x3

    .line 191
    invoke-virtual {v2, v0, v3, v1, v13}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_7
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_8

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_8
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 202
    .line 203
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_9

    .line 208
    .line 209
    :goto_6
    const/4 v1, 0x4

    .line 210
    aget-object v3, v32, v1

    .line 211
    .line 212
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 217
    .line 218
    invoke-virtual {v2, v0, v1, v3, v12}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_9
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_a

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_a
    if-eqz v11, :cond_b

    .line 229
    .line 230
    :goto_7
    const/4 v1, 0x5

    .line 231
    invoke-virtual {v2, v1, v11, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 232
    .line 233
    .line 234
    :cond_b
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_c

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_c
    if-eqz v10, :cond_d

    .line 242
    .line 243
    :goto_8
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps$$serializer;

    .line 244
    .line 245
    const/4 v3, 0x6

    .line 246
    invoke-virtual {v2, v0, v3, v1, v10}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_d
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_e

    .line 254
    .line 255
    goto :goto_9

    .line 256
    :cond_e
    if-eqz v9, :cond_f

    .line 257
    .line 258
    :goto_9
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms$$serializer;

    .line 259
    .line 260
    const/4 v3, 0x7

    .line 261
    invoke-virtual {v2, v0, v3, v1, v9}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_f
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_10

    .line 269
    .line 270
    goto :goto_a

    .line 271
    :cond_10
    if-eqz v8, :cond_11

    .line 272
    .line 273
    :goto_a
    const/16 v1, 0x8

    .line 274
    .line 275
    aget-object v3, v32, v1

    .line 276
    .line 277
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 282
    .line 283
    invoke-virtual {v2, v0, v1, v3, v8}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :cond_11
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_12

    .line 291
    .line 292
    goto :goto_b

    .line 293
    :cond_12
    if-eqz v7, :cond_13

    .line 294
    .line 295
    :goto_b
    const/16 v1, 0x9

    .line 296
    .line 297
    invoke-virtual {v2, v1, v7, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 298
    .line 299
    .line 300
    :cond_13
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_14

    .line 305
    .line 306
    goto :goto_c

    .line 307
    :cond_14
    if-eqz v6, :cond_15

    .line 308
    .line 309
    :goto_c
    const/16 v1, 0xa

    .line 310
    .line 311
    aget-object v3, v32, v1

    .line 312
    .line 313
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 318
    .line 319
    invoke-virtual {v2, v0, v1, v3, v6}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_15
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_16

    .line 327
    .line 328
    goto :goto_d

    .line 329
    :cond_16
    if-eqz v5, :cond_17

    .line 330
    .line 331
    :goto_d
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail$$serializer;

    .line 332
    .line 333
    const/16 v3, 0xb

    .line 334
    .line 335
    invoke-virtual {v2, v0, v3, v1, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    :cond_17
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eqz v1, :cond_18

    .line 343
    .line 344
    goto :goto_e

    .line 345
    :cond_18
    if-eqz v34, :cond_19

    .line 346
    .line 347
    :goto_e
    const/16 v1, 0xc

    .line 348
    .line 349
    aget-object v3, v32, v1

    .line 350
    .line 351
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 356
    .line 357
    move-object/from16 v4, v34

    .line 358
    .line 359
    invoke-virtual {v2, v0, v1, v3, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    :cond_19
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eqz v1, :cond_1a

    .line 367
    .line 368
    goto :goto_f

    .line 369
    :cond_1a
    if-eqz v33, :cond_1b

    .line 370
    .line 371
    :goto_f
    const/16 v1, 0xd

    .line 372
    .line 373
    aget-object v3, v32, v1

    .line 374
    .line 375
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 380
    .line 381
    move-object/from16 v4, v33

    .line 382
    .line 383
    invoke-virtual {v2, v0, v1, v3, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    :cond_1b
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_1c

    .line 391
    .line 392
    goto :goto_10

    .line 393
    :cond_1c
    if-eqz v31, :cond_1d

    .line 394
    .line 395
    :goto_10
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 396
    .line 397
    const/16 v3, 0xe

    .line 398
    .line 399
    move-object/from16 v4, v31

    .line 400
    .line 401
    invoke-virtual {v2, v0, v3, v1, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    :cond_1d
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_1e

    .line 409
    .line 410
    goto :goto_11

    .line 411
    :cond_1e
    if-eqz v29, :cond_1f

    .line 412
    .line 413
    :goto_11
    const/16 v1, 0xf

    .line 414
    .line 415
    move/from16 v3, v29

    .line 416
    .line 417
    invoke-virtual {v2, v1, v3, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 418
    .line 419
    .line 420
    :cond_1f
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_20

    .line 425
    .line 426
    move-object/from16 v1, v30

    .line 427
    .line 428
    goto :goto_12

    .line 429
    :cond_20
    move-object/from16 v1, v30

    .line 430
    .line 431
    iget-object v3, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 432
    .line 433
    const-string v4, ""

    .line 434
    .line 435
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    if-nez v3, :cond_21

    .line 440
    .line 441
    :goto_12
    iget-object v3, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 442
    .line 443
    const/16 v4, 0x10

    .line 444
    .line 445
    invoke-virtual {v2, v0, v4, v3}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 446
    .line 447
    .line 448
    :cond_21
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 453
    .line 454
    if-eqz v3, :cond_22

    .line 455
    .line 456
    move-object/from16 v3, v28

    .line 457
    .line 458
    goto :goto_13

    .line 459
    :cond_22
    move-object/from16 v3, v28

    .line 460
    .line 461
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    if-nez v5, :cond_23

    .line 466
    .line 467
    :goto_13
    const/16 v5, 0x11

    .line 468
    .line 469
    aget-object v6, v32, v5

    .line 470
    .line 471
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v6

    .line 475
    check-cast v6, Lkotlinx/serialization/KSerializer;

    .line 476
    .line 477
    invoke-virtual {v2, v0, v5, v6, v3}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    :cond_23
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    if-eqz v3, :cond_24

    .line 485
    .line 486
    move-object/from16 v3, v27

    .line 487
    .line 488
    goto :goto_14

    .line 489
    :cond_24
    move-object/from16 v3, v27

    .line 490
    .line 491
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    if-nez v5, :cond_25

    .line 496
    .line 497
    :goto_14
    const/16 v5, 0x12

    .line 498
    .line 499
    aget-object v6, v32, v5

    .line 500
    .line 501
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    check-cast v6, Lkotlinx/serialization/KSerializer;

    .line 506
    .line 507
    invoke-virtual {v2, v0, v5, v6, v3}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    :cond_25
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    if-eqz v3, :cond_26

    .line 515
    .line 516
    move-object/from16 v3, v26

    .line 517
    .line 518
    goto :goto_15

    .line 519
    :cond_26
    move-object/from16 v3, v26

    .line 520
    .line 521
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v4

    .line 525
    if-nez v4, :cond_27

    .line 526
    .line 527
    :goto_15
    const/16 v4, 0x13

    .line 528
    .line 529
    aget-object v5, v32, v4

    .line 530
    .line 531
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 536
    .line 537
    invoke-virtual {v2, v0, v4, v5, v3}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    :cond_27
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    if-eqz v3, :cond_28

    .line 545
    .line 546
    goto :goto_16

    .line 547
    :cond_28
    if-eqz v25, :cond_29

    .line 548
    .line 549
    :goto_16
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 550
    .line 551
    const/16 v4, 0x14

    .line 552
    .line 553
    move-object/from16 v5, v25

    .line 554
    .line 555
    invoke-virtual {v2, v0, v4, v3, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    :cond_29
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    if-eqz v3, :cond_2a

    .line 563
    .line 564
    goto :goto_17

    .line 565
    :cond_2a
    if-eqz v24, :cond_2b

    .line 566
    .line 567
    :goto_17
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 568
    .line 569
    const/16 v4, 0x15

    .line 570
    .line 571
    move-object/from16 v5, v24

    .line 572
    .line 573
    invoke-virtual {v2, v0, v4, v3, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    :cond_2b
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    if-eqz v3, :cond_2c

    .line 581
    .line 582
    goto :goto_18

    .line 583
    :cond_2c
    if-eqz v23, :cond_2d

    .line 584
    .line 585
    :goto_18
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 586
    .line 587
    const/16 v4, 0x16

    .line 588
    .line 589
    move-object/from16 v5, v23

    .line 590
    .line 591
    invoke-virtual {v2, v0, v4, v3, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    :cond_2d
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    if-eqz v3, :cond_2e

    .line 599
    .line 600
    goto :goto_19

    .line 601
    :cond_2e
    if-eqz v22, :cond_2f

    .line 602
    .line 603
    :goto_19
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 604
    .line 605
    const/16 v4, 0x17

    .line 606
    .line 607
    move-object/from16 v5, v22

    .line 608
    .line 609
    invoke-virtual {v2, v0, v4, v3, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    :cond_2f
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 613
    .line 614
    .line 615
    move-result v3

    .line 616
    if-eqz v3, :cond_30

    .line 617
    .line 618
    goto :goto_1a

    .line 619
    :cond_30
    if-eqz v21, :cond_31

    .line 620
    .line 621
    :goto_1a
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 622
    .line 623
    const/16 v4, 0x18

    .line 624
    .line 625
    move-object/from16 v5, v21

    .line 626
    .line 627
    invoke-virtual {v2, v0, v4, v3, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    :cond_31
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    if-eqz v3, :cond_32

    .line 635
    .line 636
    goto :goto_1b

    .line 637
    :cond_32
    iget-object v3, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->redirectFrom:Ljava/lang/String;

    .line 638
    .line 639
    if-eqz v3, :cond_33

    .line 640
    .line 641
    :goto_1b
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 642
    .line 643
    iget-object v4, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->redirectFrom:Ljava/lang/String;

    .line 644
    .line 645
    const/16 v5, 0x19

    .line 646
    .line 647
    invoke-virtual {v2, v0, v5, v3, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    :cond_33
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    if-eqz v3, :cond_34

    .line 655
    .line 656
    goto :goto_1c

    .line 657
    :cond_34
    iget-object v3, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedFrom:Ljava/lang/String;

    .line 658
    .line 659
    if-eqz v3, :cond_35

    .line 660
    .line 661
    :goto_1c
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 662
    .line 663
    iget-object v4, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedFrom:Ljava/lang/String;

    .line 664
    .line 665
    const/16 v5, 0x1a

    .line 666
    .line 667
    invoke-virtual {v2, v0, v5, v3, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    :cond_35
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 671
    .line 672
    .line 673
    move-result v3

    .line 674
    if-eqz v3, :cond_36

    .line 675
    .line 676
    goto :goto_1d

    .line 677
    :cond_36
    iget-object v3, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedTo:Ljava/lang/String;

    .line 678
    .line 679
    if-eqz v3, :cond_37

    .line 680
    .line 681
    :goto_1d
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 682
    .line 683
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedTo:Ljava/lang/String;

    .line 684
    .line 685
    const/16 v4, 0x1b

    .line 686
    .line 687
    invoke-virtual {v2, v0, v4, v3, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    :cond_37
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 691
    .line 692
    .line 693
    move-result v1

    .line 694
    if-eqz v1, :cond_38

    .line 695
    .line 696
    goto :goto_1e

    .line 697
    :cond_38
    if-eqz v20, :cond_39

    .line 698
    .line 699
    :goto_1e
    const/16 v1, 0x1c

    .line 700
    .line 701
    move/from16 v3, v20

    .line 702
    .line 703
    invoke-virtual {v2, v0, v1, v3}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 704
    .line 705
    .line 706
    :cond_39
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    if-eqz v1, :cond_3a

    .line 711
    .line 712
    goto :goto_1f

    .line 713
    :cond_3a
    const-wide/16 v3, 0x0

    .line 714
    .line 715
    cmp-long v1, v18, v3

    .line 716
    .line 717
    if-eqz v1, :cond_3b

    .line 718
    .line 719
    :goto_1f
    const/16 v1, 0x1d

    .line 720
    .line 721
    move-wide/from16 v3, v18

    .line 722
    .line 723
    invoke-virtual {v2, v0, v1, v3, v4}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 724
    .line 725
    .line 726
    :cond_3b
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    if-eqz v1, :cond_3c

    .line 731
    .line 732
    goto :goto_20

    .line 733
    :cond_3c
    if-eqz v17, :cond_3d

    .line 734
    .line 735
    :goto_20
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 736
    .line 737
    const/16 v3, 0x1e

    .line 738
    .line 739
    move-object/from16 v4, v17

    .line 740
    .line 741
    invoke-virtual {v2, v0, v3, v1, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    :cond_3d
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    if-eqz v1, :cond_3e

    .line 749
    .line 750
    goto :goto_21

    .line 751
    :cond_3e
    if-eqz v16, :cond_3f

    .line 752
    .line 753
    :goto_21
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 754
    .line 755
    const/16 v3, 0x1f

    .line 756
    .line 757
    move-object/from16 v4, v16

    .line 758
    .line 759
    invoke-virtual {v2, v0, v3, v1, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 760
    .line 761
    .line 762
    :cond_3f
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-eqz v1, :cond_40

    .line 767
    .line 768
    goto :goto_22

    .line 769
    :cond_40
    if-eqz p2, :cond_41

    .line 770
    .line 771
    :goto_22
    const/16 v1, 0x20

    .line 772
    .line 773
    aget-object v3, v32, v1

    .line 774
    .line 775
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 780
    .line 781
    move-object/from16 v4, p2

    .line 782
    .line 783
    invoke-virtual {v2, v0, v1, v3, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 784
    .line 785
    .line 786
    :cond_41
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    if-eqz v1, :cond_42

    .line 791
    .line 792
    goto :goto_23

    .line 793
    :cond_42
    if-eqz p0, :cond_43

    .line 794
    .line 795
    :goto_23
    const/16 v1, 0x21

    .line 796
    .line 797
    aget-object v3, v32, v1

    .line 798
    .line 799
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v3

    .line 803
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 804
    .line 805
    move-object/from16 v4, p0

    .line 806
    .line 807
    invoke-virtual {v2, v0, v1, v3, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 808
    .line 809
    .line 810
    :cond_43
    invoke-virtual {v2, v0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 811
    .line 812
    .line 813
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
