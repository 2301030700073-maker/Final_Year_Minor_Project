.class public final synthetic Lorg/wikipedia/dataclient/mwapi/MwQueryResult$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.mwapi.MwQueryResult"

    .line 11
    .line 12
    const/16 v3, 0x15

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "userinfo"

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "unreadnotificationpages"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const-string v0, "authmanagerinfo"

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const-string v0, "general"

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "autocreatetempuser"

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v0, "recentchanges"

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v0, "usercontribs"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    const-string v0, "allusers"

    .line 57
    .line 58
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    const-string v0, "globaluserinfo"

    .line 62
    .line 63
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    const-string v0, "redirects"

    .line 67
    .line 68
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    const-string v0, "converted"

    .line 72
    .line 73
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    const-string v0, "tokens"

    .line 77
    .line 78
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    const-string v0, "echomarkread"

    .line 82
    .line 83
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v0, "users"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    const-string v0, "pages"

    .line 93
    .line 94
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    const-string v0, "echomarkseen"

    .line 98
    .line 99
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    const-string v0, "notifications"

    .line 103
    .line 104
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    const-string/jumbo v0, "watchlist"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    const-string v0, "namespaces"

    .line 114
    .line 115
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 116
    .line 117
    .line 118
    const-string v0, "allmessages"

    .line 119
    .line 120
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    const-string v0, "magicwords"

    .line 124
    .line 125
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0x15

    .line 4
    .line 5
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;

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
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$$serializer;

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x2

    .line 38
    aput-object v2, v0, v3

    .line 39
    .line 40
    sget-object v2, Lorg/wikipedia/settings/SiteInfo$$serializer;->INSTANCE:Lorg/wikipedia/settings/SiteInfo$$serializer;

    .line 41
    .line 42
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x3

    .line 47
    aput-object v2, v0, v3

    .line 48
    .line 49
    sget-object v2, Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser$$serializer;->INSTANCE:Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser$$serializer;

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x4

    .line 56
    aput-object v2, v0, v3

    .line 57
    .line 58
    const/4 v2, 0x5

    .line 59
    aget-object v3, p0, v2

    .line 60
    .line 61
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 66
    .line 67
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    aput-object v3, v0, v2

    .line 72
    .line 73
    const/4 v2, 0x6

    .line 74
    aget-object v3, p0, v2

    .line 75
    .line 76
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    aput-object v3, v0, v2

    .line 81
    .line 82
    const/4 v2, 0x7

    .line 83
    aget-object v3, p0, v2

    .line 84
    .line 85
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 90
    .line 91
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    aput-object v3, v0, v2

    .line 96
    .line 97
    const/16 v2, 0x8

    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    const/16 v1, 0x9

    .line 106
    .line 107
    aget-object v2, p0, v1

    .line 108
    .line 109
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 114
    .line 115
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    aput-object v2, v0, v1

    .line 120
    .line 121
    const/16 v1, 0xa

    .line 122
    .line 123
    aget-object v2, p0, v1

    .line 124
    .line 125
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 130
    .line 131
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    aput-object v2, v0, v1

    .line 136
    .line 137
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens$$serializer;

    .line 138
    .line 139
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const/16 v2, 0xb

    .line 144
    .line 145
    aput-object v1, v0, v2

    .line 146
    .line 147
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse$$serializer;

    .line 148
    .line 149
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const/16 v3, 0xc

    .line 154
    .line 155
    aput-object v2, v0, v3

    .line 156
    .line 157
    const/16 v2, 0xd

    .line 158
    .line 159
    aget-object v3, p0, v2

    .line 160
    .line 161
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 166
    .line 167
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    aput-object v3, v0, v2

    .line 172
    .line 173
    const/16 v2, 0xe

    .line 174
    .line 175
    aget-object v3, p0, v2

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
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    aput-object v3, v0, v2

    .line 188
    .line 189
    const/16 v2, 0xf

    .line 190
    .line 191
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    aput-object v1, v0, v2

    .line 196
    .line 197
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList$$serializer;

    .line 198
    .line 199
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const/16 v2, 0x10

    .line 204
    .line 205
    aput-object v1, v0, v2

    .line 206
    .line 207
    const/16 v1, 0x11

    .line 208
    .line 209
    aget-object v2, p0, v1

    .line 210
    .line 211
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    aput-object v2, v0, v1

    .line 216
    .line 217
    const/16 v1, 0x12

    .line 218
    .line 219
    aget-object v2, p0, v1

    .line 220
    .line 221
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 226
    .line 227
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    aput-object v2, v0, v1

    .line 232
    .line 233
    const/16 v1, 0x13

    .line 234
    .line 235
    aget-object v2, p0, v1

    .line 236
    .line 237
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 242
    .line 243
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    aput-object v2, v0, v1

    .line 248
    .line 249
    const/16 v1, 0x14

    .line 250
    .line 251
    aget-object p0, p0, v1

    .line 252
    .line 253
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 258
    .line 259
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    aput-object p0, v0, v1

    .line 264
    .line 265
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 30

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    move-object/from16 v17, v2

    .line 12
    .line 13
    const/16 p0, 0x0

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v14, 0x0

    .line 28
    const/4 v15, 0x0

    .line 29
    const/16 v16, 0x1

    .line 30
    .line 31
    const/16 v18, 0x1

    .line 32
    .line 33
    const/16 v19, 0x0

    .line 34
    .line 35
    const/16 v20, 0x0

    .line 36
    .line 37
    const/16 v21, 0x0

    .line 38
    .line 39
    const/16 v22, 0x0

    .line 40
    .line 41
    const/16 v23, 0x0

    .line 42
    .line 43
    const/16 v24, 0x0

    .line 44
    .line 45
    const/16 v25, 0x0

    .line 46
    .line 47
    const/16 v26, 0x0

    .line 48
    .line 49
    :goto_0
    if-eqz v18, :cond_0

    .line 50
    .line 51
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 52
    .line 53
    .line 54
    move-result v27

    .line 55
    packed-switch v27, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    invoke-static/range {v27 .. v27}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_0
    move-object/from16 v27, v5

    .line 63
    .line 64
    const/16 v5, 0x14

    .line 65
    .line 66
    aget-object v28, v17, v5

    .line 67
    .line 68
    invoke-interface/range {v28 .. v28}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v28

    .line 72
    move-object/from16 v29, v4

    .line 73
    .line 74
    move-object/from16 v4, v28

    .line 75
    .line 76
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 77
    .line 78
    invoke-interface {v1, v0, v5, v4, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    move-object v7, v4

    .line 83
    check-cast v7, Ljava/util/List;

    .line 84
    .line 85
    const/high16 v4, 0x100000

    .line 86
    .line 87
    :goto_1
    or-int/2addr v8, v4

    .line 88
    :goto_2
    move-object/from16 v5, v27

    .line 89
    .line 90
    :goto_3
    move-object/from16 v4, v29

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_1
    move-object/from16 v29, v4

    .line 94
    .line 95
    move-object/from16 v27, v5

    .line 96
    .line 97
    const/16 v4, 0x13

    .line 98
    .line 99
    aget-object v5, v17, v4

    .line 100
    .line 101
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 106
    .line 107
    invoke-interface {v1, v0, v4, v5, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    move-object v15, v4

    .line 112
    check-cast v15, Ljava/util/List;

    .line 113
    .line 114
    const/high16 v4, 0x80000

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_2
    move-object/from16 v29, v4

    .line 118
    .line 119
    move-object/from16 v27, v5

    .line 120
    .line 121
    const/16 v4, 0x12

    .line 122
    .line 123
    aget-object v5, v17, v4

    .line 124
    .line 125
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 130
    .line 131
    invoke-interface {v1, v0, v4, v5, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    move-object v14, v4

    .line 136
    check-cast v14, Ljava/util/Map;

    .line 137
    .line 138
    const/high16 v4, 0x40000

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :pswitch_3
    move-object/from16 v29, v4

    .line 142
    .line 143
    move-object/from16 v27, v5

    .line 144
    .line 145
    const/16 v4, 0x11

    .line 146
    .line 147
    aget-object v5, v17, v4

    .line 148
    .line 149
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 154
    .line 155
    invoke-interface {v1, v0, v4, v5, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    move-object v13, v4

    .line 160
    check-cast v13, Ljava/util/List;

    .line 161
    .line 162
    const/high16 v4, 0x20000

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :pswitch_4
    move-object/from16 v29, v4

    .line 166
    .line 167
    move-object/from16 v27, v5

    .line 168
    .line 169
    sget-object v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList$$serializer;

    .line 170
    .line 171
    const/16 v5, 0x10

    .line 172
    .line 173
    invoke-interface {v1, v0, v5, v4, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    move-object v12, v4

    .line 178
    check-cast v12, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    .line 179
    .line 180
    const/high16 v4, 0x10000

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :pswitch_5
    move-object/from16 v29, v4

    .line 184
    .line 185
    move-object/from16 v27, v5

    .line 186
    .line 187
    sget-object v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse$$serializer;

    .line 188
    .line 189
    const/16 v5, 0xf

    .line 190
    .line 191
    invoke-interface {v1, v0, v5, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    move-object v11, v4

    .line 196
    check-cast v11, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

    .line 197
    .line 198
    const v4, 0x8000

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :pswitch_6
    move-object/from16 v29, v4

    .line 203
    .line 204
    move-object/from16 v27, v5

    .line 205
    .line 206
    const/16 v4, 0xe

    .line 207
    .line 208
    aget-object v5, v17, v4

    .line 209
    .line 210
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 215
    .line 216
    invoke-interface {v1, v0, v4, v5, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    move-object v10, v4

    .line 221
    check-cast v10, Ljava/util/List;

    .line 222
    .line 223
    or-int/lit16 v8, v8, 0x4000

    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :pswitch_7
    move-object/from16 v29, v4

    .line 228
    .line 229
    move-object/from16 v27, v5

    .line 230
    .line 231
    const/16 v4, 0xd

    .line 232
    .line 233
    aget-object v5, v17, v4

    .line 234
    .line 235
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 240
    .line 241
    invoke-interface {v1, v0, v4, v5, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    move-object v9, v4

    .line 246
    check-cast v9, Ljava/util/List;

    .line 247
    .line 248
    or-int/lit16 v8, v8, 0x2000

    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :pswitch_8
    move-object/from16 v29, v4

    .line 253
    .line 254
    move-object/from16 v27, v5

    .line 255
    .line 256
    sget-object v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse$$serializer;

    .line 257
    .line 258
    const/16 v5, 0xc

    .line 259
    .line 260
    invoke-interface {v1, v0, v5, v4, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    move-object v6, v4

    .line 265
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

    .line 266
    .line 267
    or-int/lit16 v8, v8, 0x1000

    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :pswitch_9
    move-object/from16 v29, v4

    .line 272
    .line 273
    move-object/from16 v27, v5

    .line 274
    .line 275
    sget-object v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens$$serializer;

    .line 276
    .line 277
    const/16 v5, 0xb

    .line 278
    .line 279
    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    .line 284
    .line 285
    or-int/lit16 v8, v8, 0x800

    .line 286
    .line 287
    goto/16 :goto_2

    .line 288
    .line 289
    :pswitch_a
    move-object/from16 v29, v4

    .line 290
    .line 291
    move-object/from16 v27, v5

    .line 292
    .line 293
    const/16 v4, 0xa

    .line 294
    .line 295
    aget-object v5, v17, v4

    .line 296
    .line 297
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 302
    .line 303
    invoke-interface {v1, v0, v4, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Ljava/util/List;

    .line 308
    .line 309
    or-int/lit16 v8, v8, 0x400

    .line 310
    .line 311
    goto/16 :goto_2

    .line 312
    .line 313
    :pswitch_b
    move-object/from16 v29, v4

    .line 314
    .line 315
    move-object/from16 v27, v5

    .line 316
    .line 317
    const/16 v4, 0x9

    .line 318
    .line 319
    aget-object v5, v17, v4

    .line 320
    .line 321
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 326
    .line 327
    move-object/from16 v28, v2

    .line 328
    .line 329
    move-object/from16 v2, v29

    .line 330
    .line 331
    invoke-interface {v1, v0, v4, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    move-object v4, v2

    .line 336
    check-cast v4, Ljava/util/List;

    .line 337
    .line 338
    or-int/lit16 v8, v8, 0x200

    .line 339
    .line 340
    move-object/from16 v5, v27

    .line 341
    .line 342
    :goto_4
    move-object/from16 v2, v28

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :pswitch_c
    move-object/from16 v28, v2

    .line 347
    .line 348
    move-object v2, v4

    .line 349
    move-object/from16 v27, v5

    .line 350
    .line 351
    sget-object v4, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;

    .line 352
    .line 353
    const/16 v5, 0x8

    .line 354
    .line 355
    move-object/from16 v29, v2

    .line 356
    .line 357
    move-object/from16 v2, v27

    .line 358
    .line 359
    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    move-object v5, v2

    .line 364
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 365
    .line 366
    or-int/lit16 v8, v8, 0x100

    .line 367
    .line 368
    :goto_5
    move-object/from16 v2, v28

    .line 369
    .line 370
    goto/16 :goto_3

    .line 371
    .line 372
    :pswitch_d
    move-object/from16 v28, v2

    .line 373
    .line 374
    move-object/from16 v29, v4

    .line 375
    .line 376
    move-object v2, v5

    .line 377
    const/4 v4, 0x7

    .line 378
    aget-object v5, v17, v4

    .line 379
    .line 380
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 385
    .line 386
    move-object/from16 v27, v2

    .line 387
    .line 388
    move-object/from16 v2, v26

    .line 389
    .line 390
    invoke-interface {v1, v0, v4, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    move-object/from16 v26, v2

    .line 395
    .line 396
    check-cast v26, Ljava/util/List;

    .line 397
    .line 398
    or-int/lit16 v8, v8, 0x80

    .line 399
    .line 400
    :goto_6
    move-object/from16 v5, v27

    .line 401
    .line 402
    goto :goto_5

    .line 403
    :pswitch_e
    move-object/from16 v28, v2

    .line 404
    .line 405
    move-object/from16 v29, v4

    .line 406
    .line 407
    move-object/from16 v27, v5

    .line 408
    .line 409
    move-object/from16 v2, v26

    .line 410
    .line 411
    const/4 v4, 0x6

    .line 412
    aget-object v5, v17, v4

    .line 413
    .line 414
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 419
    .line 420
    move-object/from16 v2, v25

    .line 421
    .line 422
    invoke-interface {v1, v0, v4, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    move-object/from16 v25, v2

    .line 427
    .line 428
    check-cast v25, Ljava/util/List;

    .line 429
    .line 430
    or-int/lit8 v8, v8, 0x40

    .line 431
    .line 432
    goto :goto_6

    .line 433
    :pswitch_f
    move-object/from16 v28, v2

    .line 434
    .line 435
    move-object/from16 v29, v4

    .line 436
    .line 437
    move-object/from16 v27, v5

    .line 438
    .line 439
    move-object/from16 v2, v25

    .line 440
    .line 441
    const/4 v4, 0x5

    .line 442
    aget-object v5, v17, v4

    .line 443
    .line 444
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 449
    .line 450
    move-object/from16 v2, v24

    .line 451
    .line 452
    invoke-interface {v1, v0, v4, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    move-object/from16 v24, v2

    .line 457
    .line 458
    check-cast v24, Ljava/util/List;

    .line 459
    .line 460
    or-int/lit8 v8, v8, 0x20

    .line 461
    .line 462
    goto :goto_6

    .line 463
    :pswitch_10
    move-object/from16 v28, v2

    .line 464
    .line 465
    move-object/from16 v29, v4

    .line 466
    .line 467
    move-object/from16 v27, v5

    .line 468
    .line 469
    move-object/from16 v2, v24

    .line 470
    .line 471
    sget-object v4, Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser$$serializer;->INSTANCE:Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser$$serializer;

    .line 472
    .line 473
    const/4 v5, 0x4

    .line 474
    move-object/from16 v2, v23

    .line 475
    .line 476
    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    move-object/from16 v23, v2

    .line 481
    .line 482
    check-cast v23, Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;

    .line 483
    .line 484
    or-int/lit8 v8, v8, 0x10

    .line 485
    .line 486
    goto :goto_6

    .line 487
    :pswitch_11
    move-object/from16 v28, v2

    .line 488
    .line 489
    move-object/from16 v29, v4

    .line 490
    .line 491
    move-object/from16 v27, v5

    .line 492
    .line 493
    move-object/from16 v2, v23

    .line 494
    .line 495
    sget-object v4, Lorg/wikipedia/settings/SiteInfo$$serializer;->INSTANCE:Lorg/wikipedia/settings/SiteInfo$$serializer;

    .line 496
    .line 497
    const/4 v5, 0x3

    .line 498
    move-object/from16 v2, v22

    .line 499
    .line 500
    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    move-object/from16 v22, v2

    .line 505
    .line 506
    check-cast v22, Lorg/wikipedia/settings/SiteInfo;

    .line 507
    .line 508
    or-int/lit8 v8, v8, 0x8

    .line 509
    .line 510
    goto :goto_6

    .line 511
    :pswitch_12
    move-object/from16 v28, v2

    .line 512
    .line 513
    move-object/from16 v29, v4

    .line 514
    .line 515
    move-object/from16 v27, v5

    .line 516
    .line 517
    move-object/from16 v2, v22

    .line 518
    .line 519
    sget-object v4, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$$serializer;

    .line 520
    .line 521
    const/4 v5, 0x2

    .line 522
    move-object/from16 v2, v21

    .line 523
    .line 524
    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    move-object/from16 v21, v2

    .line 529
    .line 530
    check-cast v21, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;

    .line 531
    .line 532
    or-int/lit8 v8, v8, 0x4

    .line 533
    .line 534
    goto/16 :goto_6

    .line 535
    .line 536
    :pswitch_13
    move-object/from16 v28, v2

    .line 537
    .line 538
    move-object/from16 v29, v4

    .line 539
    .line 540
    move-object/from16 v27, v5

    .line 541
    .line 542
    move-object/from16 v2, v21

    .line 543
    .line 544
    aget-object v4, v17, v16

    .line 545
    .line 546
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 551
    .line 552
    move/from16 v5, v16

    .line 553
    .line 554
    move-object/from16 v16, v2

    .line 555
    .line 556
    move v2, v5

    .line 557
    move-object/from16 v5, v20

    .line 558
    .line 559
    invoke-interface {v1, v0, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    move-object/from16 v20, v4

    .line 564
    .line 565
    check-cast v20, Ljava/util/Map;

    .line 566
    .line 567
    or-int/lit8 v8, v8, 0x2

    .line 568
    .line 569
    move-object/from16 v21, v16

    .line 570
    .line 571
    move-object/from16 v5, v27

    .line 572
    .line 573
    move-object/from16 v4, v29

    .line 574
    .line 575
    move/from16 v16, v2

    .line 576
    .line 577
    goto/16 :goto_4

    .line 578
    .line 579
    :pswitch_14
    move-object/from16 v28, v2

    .line 580
    .line 581
    move-object/from16 v29, v4

    .line 582
    .line 583
    move-object/from16 v27, v5

    .line 584
    .line 585
    move/from16 v2, v16

    .line 586
    .line 587
    move-object/from16 v5, v20

    .line 588
    .line 589
    move-object/from16 v16, v21

    .line 590
    .line 591
    sget-object v4, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;

    .line 592
    .line 593
    move-object/from16 v2, v19

    .line 594
    .line 595
    move-object/from16 v19, v3

    .line 596
    .line 597
    const/4 v3, 0x0

    .line 598
    invoke-interface {v1, v0, v3, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 603
    .line 604
    or-int/lit8 v8, v8, 0x1

    .line 605
    .line 606
    move-object/from16 v3, v19

    .line 607
    .line 608
    move-object/from16 v5, v27

    .line 609
    .line 610
    move-object/from16 v4, v29

    .line 611
    .line 612
    :goto_7
    const/16 v16, 0x1

    .line 613
    .line 614
    move-object/from16 v19, v2

    .line 615
    .line 616
    goto/16 :goto_4

    .line 617
    .line 618
    :pswitch_15
    move-object/from16 v28, v2

    .line 619
    .line 620
    move-object/from16 v29, v4

    .line 621
    .line 622
    move-object/from16 v27, v5

    .line 623
    .line 624
    move-object/from16 v2, v19

    .line 625
    .line 626
    move-object/from16 v5, v20

    .line 627
    .line 628
    move-object/from16 v16, v21

    .line 629
    .line 630
    move-object/from16 v19, v3

    .line 631
    .line 632
    const/4 v3, 0x0

    .line 633
    move/from16 v18, v3

    .line 634
    .line 635
    move-object/from16 v3, v19

    .line 636
    .line 637
    move-object/from16 v5, v27

    .line 638
    .line 639
    goto :goto_7

    .line 640
    :cond_0
    move-object/from16 v28, v2

    .line 641
    .line 642
    move-object/from16 v29, v4

    .line 643
    .line 644
    move-object/from16 v27, v5

    .line 645
    .line 646
    move-object/from16 v2, v19

    .line 647
    .line 648
    move-object/from16 v5, v20

    .line 649
    .line 650
    move-object/from16 v16, v21

    .line 651
    .line 652
    move-object/from16 v19, v3

    .line 653
    .line 654
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 655
    .line 656
    .line 657
    move-object/from16 v18, v29

    .line 658
    .line 659
    move-object/from16 v29, v7

    .line 660
    .line 661
    new-instance v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 662
    .line 663
    move-object/from16 v21, v6

    .line 664
    .line 665
    move-object/from16 v17, v27

    .line 666
    .line 667
    move-object/from16 v20, v28

    .line 668
    .line 669
    move-object/from16 v27, v14

    .line 670
    .line 671
    move-object/from16 v28, v15

    .line 672
    .line 673
    move-object/from16 v14, v24

    .line 674
    .line 675
    move-object/from16 v15, v25

    .line 676
    .line 677
    move-object/from16 v24, v11

    .line 678
    .line 679
    move-object/from16 v25, v12

    .line 680
    .line 681
    move-object/from16 v11, v16

    .line 682
    .line 683
    move-object/from16 v12, v22

    .line 684
    .line 685
    move-object/from16 v16, v26

    .line 686
    .line 687
    move-object/from16 v22, v9

    .line 688
    .line 689
    move-object/from16 v26, v13

    .line 690
    .line 691
    move-object/from16 v13, v23

    .line 692
    .line 693
    move-object v9, v2

    .line 694
    move-object/from16 v23, v10

    .line 695
    .line 696
    move-object v10, v5

    .line 697
    invoke-direct/range {v7 .. v29}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;-><init>(ILorg/wikipedia/dataclient/mwapi/UserInfo;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;Lorg/wikipedia/settings/SiteInfo;Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wikipedia/dataclient/mwapi/UserInfo;Ljava/util/List;Ljava/util/List;Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;Ljava/util/List;Ljava/util/List;Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 698
    .line 699
    .line 700
    return-object v7

    .line 701
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 24

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->magicwords:Ljava/util/List;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allmessages:Ljava/util/List;

    .line 11
    .line 12
    iget-object v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->namespaces:Ljava/util/Map;

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->watchlist:Ljava/util/List;

    .line 15
    .line 16
    iget-object v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    .line 17
    .line 18
    iget-object v6, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->echomarkseen:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

    .line 19
    .line 20
    iget-object v7, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 21
    .line 22
    iget-object v8, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->users:Ljava/util/List;

    .line 23
    .line 24
    iget-object v9, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->echomarkread:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

    .line 25
    .line 26
    iget-object v10, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    .line 27
    .line 28
    iget-object v11, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->converted:Ljava/util/List;

    .line 29
    .line 30
    iget-object v12, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->redirects:Ljava/util/List;

    .line 31
    .line 32
    iget-object v13, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->globalUserInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 33
    .line 34
    iget-object v14, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allUsers:Ljava/util/List;

    .line 35
    .line 36
    iget-object v15, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions:Ljava/util/List;

    .line 37
    .line 38
    move-object/from16 p0, v1

    .line 39
    .line 40
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->recentChanges:Ljava/util/List;

    .line 41
    .line 42
    move-object/from16 p2, v2

    .line 43
    .line 44
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->autoCreateTempUser:Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;

    .line 45
    .line 46
    move-object/from16 v16, v3

    .line 47
    .line 48
    iget-object v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->siteInfo:Lorg/wikipedia/settings/SiteInfo;

    .line 49
    .line 50
    move-object/from16 v17, v4

    .line 51
    .line 52
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->amInfo:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;

    .line 53
    .line 54
    move-object/from16 v18, v5

    .line 55
    .line 56
    iget-object v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->unreadNotificationWikis:Ljava/util/Map;

    .line 57
    .line 58
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 59
    .line 60
    move-object/from16 v19, v6

    .line 61
    .line 62
    sget-object v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 63
    .line 64
    move-object/from16 v20, v7

    .line 65
    .line 66
    move-object/from16 v7, p1

    .line 67
    .line 68
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    sget-object v21, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->$childSerializers:[Lkotlin/Lazy;

    .line 73
    .line 74
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 75
    .line 76
    .line 77
    move-result v22

    .line 78
    if-eqz v22, :cond_0

    .line 79
    .line 80
    :goto_0
    move-object/from16 v22, v8

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    if-eqz v0, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_1
    sget-object v8, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;

    .line 87
    .line 88
    move-object/from16 v23, v9

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    invoke-virtual {v7, v6, v9, v8, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_1
    move-object/from16 v22, v8

    .line 96
    .line 97
    move-object/from16 v23, v9

    .line 98
    .line 99
    :goto_2
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_2
    if-eqz v5, :cond_3

    .line 107
    .line 108
    :goto_3
    const/4 v0, 0x1

    .line 109
    aget-object v8, v21, v0

    .line 110
    .line 111
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    check-cast v8, Lkotlinx/serialization/KSerializer;

    .line 116
    .line 117
    invoke-virtual {v7, v6, v0, v8, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_4
    if-eqz v4, :cond_5

    .line 128
    .line 129
    :goto_4
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$$serializer;

    .line 130
    .line 131
    const/4 v5, 0x2

    .line 132
    invoke-virtual {v7, v6, v5, v0, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_6
    if-eqz v3, :cond_7

    .line 143
    .line 144
    :goto_5
    sget-object v0, Lorg/wikipedia/settings/SiteInfo$$serializer;->INSTANCE:Lorg/wikipedia/settings/SiteInfo$$serializer;

    .line 145
    .line 146
    const/4 v4, 0x3

    .line 147
    invoke-virtual {v7, v6, v4, v0, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    if-eqz v2, :cond_9

    .line 158
    .line 159
    :goto_6
    sget-object v0, Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser$$serializer;->INSTANCE:Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser$$serializer;

    .line 160
    .line 161
    const/4 v3, 0x4

    .line 162
    invoke-virtual {v7, v6, v3, v0, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_a

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_a
    if-eqz v1, :cond_b

    .line 173
    .line 174
    :goto_7
    const/4 v0, 0x5

    .line 175
    aget-object v2, v21, v0

    .line 176
    .line 177
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 182
    .line 183
    invoke-virtual {v7, v6, v0, v2, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_b
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 191
    .line 192
    if-eqz v0, :cond_c

    .line 193
    .line 194
    goto :goto_8

    .line 195
    :cond_c
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_d

    .line 200
    .line 201
    :goto_8
    const/4 v0, 0x6

    .line 202
    aget-object v2, v21, v0

    .line 203
    .line 204
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 209
    .line 210
    invoke-virtual {v7, v6, v0, v2, v15}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_d
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_e

    .line 218
    .line 219
    goto :goto_9

    .line 220
    :cond_e
    if-eqz v14, :cond_f

    .line 221
    .line 222
    :goto_9
    const/4 v0, 0x7

    .line 223
    aget-object v2, v21, v0

    .line 224
    .line 225
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 230
    .line 231
    invoke-virtual {v7, v6, v0, v2, v14}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_f
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_10

    .line 239
    .line 240
    goto :goto_a

    .line 241
    :cond_10
    if-eqz v13, :cond_11

    .line 242
    .line 243
    :goto_a
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;

    .line 244
    .line 245
    const/16 v2, 0x8

    .line 246
    .line 247
    invoke-virtual {v7, v6, v2, v0, v13}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_11
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_12

    .line 255
    .line 256
    goto :goto_b

    .line 257
    :cond_12
    if-eqz v12, :cond_13

    .line 258
    .line 259
    :goto_b
    const/16 v0, 0x9

    .line 260
    .line 261
    aget-object v2, v21, v0

    .line 262
    .line 263
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 268
    .line 269
    invoke-virtual {v7, v6, v0, v2, v12}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_13
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_14

    .line 277
    .line 278
    goto :goto_c

    .line 279
    :cond_14
    if-eqz v11, :cond_15

    .line 280
    .line 281
    :goto_c
    const/16 v0, 0xa

    .line 282
    .line 283
    aget-object v2, v21, v0

    .line 284
    .line 285
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 290
    .line 291
    invoke-virtual {v7, v6, v0, v2, v11}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :cond_15
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_16

    .line 299
    .line 300
    goto :goto_d

    .line 301
    :cond_16
    if-eqz v10, :cond_17

    .line 302
    .line 303
    :goto_d
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens$$serializer;

    .line 304
    .line 305
    const/16 v2, 0xb

    .line 306
    .line 307
    invoke-virtual {v7, v6, v2, v0, v10}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :cond_17
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_18

    .line 315
    .line 316
    goto :goto_e

    .line 317
    :cond_18
    if-eqz v23, :cond_19

    .line 318
    .line 319
    :goto_e
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse$$serializer;

    .line 320
    .line 321
    const/16 v2, 0xc

    .line 322
    .line 323
    move-object/from16 v3, v23

    .line 324
    .line 325
    invoke-virtual {v7, v6, v2, v0, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    :cond_19
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_1a

    .line 333
    .line 334
    goto :goto_f

    .line 335
    :cond_1a
    if-eqz v22, :cond_1b

    .line 336
    .line 337
    :goto_f
    const/16 v0, 0xd

    .line 338
    .line 339
    aget-object v2, v21, v0

    .line 340
    .line 341
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 346
    .line 347
    move-object/from16 v3, v22

    .line 348
    .line 349
    invoke-virtual {v7, v6, v0, v2, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    :cond_1b
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_1c

    .line 357
    .line 358
    goto :goto_10

    .line 359
    :cond_1c
    if-eqz v20, :cond_1d

    .line 360
    .line 361
    :goto_10
    const/16 v0, 0xe

    .line 362
    .line 363
    aget-object v2, v21, v0

    .line 364
    .line 365
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 370
    .line 371
    move-object/from16 v3, v20

    .line 372
    .line 373
    invoke-virtual {v7, v6, v0, v2, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_1d
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_1e

    .line 381
    .line 382
    goto :goto_11

    .line 383
    :cond_1e
    if-eqz v19, :cond_1f

    .line 384
    .line 385
    :goto_11
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse$$serializer;

    .line 386
    .line 387
    const/16 v2, 0xf

    .line 388
    .line 389
    move-object/from16 v3, v19

    .line 390
    .line 391
    invoke-virtual {v7, v6, v2, v0, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    :cond_1f
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_20

    .line 399
    .line 400
    goto :goto_12

    .line 401
    :cond_20
    if-eqz v18, :cond_21

    .line 402
    .line 403
    :goto_12
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList$$serializer;

    .line 404
    .line 405
    const/16 v2, 0x10

    .line 406
    .line 407
    move-object/from16 v3, v18

    .line 408
    .line 409
    invoke-virtual {v7, v6, v2, v0, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :cond_21
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-eqz v0, :cond_22

    .line 417
    .line 418
    move-object/from16 v0, v17

    .line 419
    .line 420
    goto :goto_13

    .line 421
    :cond_22
    move-object/from16 v0, v17

    .line 422
    .line 423
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-nez v1, :cond_23

    .line 428
    .line 429
    :goto_13
    const/16 v1, 0x11

    .line 430
    .line 431
    aget-object v2, v21, v1

    .line 432
    .line 433
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 438
    .line 439
    invoke-virtual {v7, v6, v1, v2, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    :cond_23
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_24

    .line 447
    .line 448
    goto :goto_14

    .line 449
    :cond_24
    if-eqz v16, :cond_25

    .line 450
    .line 451
    :goto_14
    const/16 v0, 0x12

    .line 452
    .line 453
    aget-object v1, v21, v0

    .line 454
    .line 455
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 460
    .line 461
    move-object/from16 v2, v16

    .line 462
    .line 463
    invoke-virtual {v7, v6, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    :cond_25
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    if-eqz v0, :cond_26

    .line 471
    .line 472
    goto :goto_15

    .line 473
    :cond_26
    if-eqz p2, :cond_27

    .line 474
    .line 475
    :goto_15
    const/16 v0, 0x13

    .line 476
    .line 477
    aget-object v1, v21, v0

    .line 478
    .line 479
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 484
    .line 485
    move-object/from16 v2, p2

    .line 486
    .line 487
    invoke-virtual {v7, v6, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    :cond_27
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-eqz v0, :cond_28

    .line 495
    .line 496
    goto :goto_16

    .line 497
    :cond_28
    if-eqz p0, :cond_29

    .line 498
    .line 499
    :goto_16
    const/16 v0, 0x14

    .line 500
    .line 501
    aget-object v1, v21, v0

    .line 502
    .line 503
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 508
    .line 509
    move-object/from16 v2, p0

    .line 510
    .line 511
    invoke-virtual {v7, v6, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    :cond_29
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 515
    .line 516
    .line 517
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
