.class public final synthetic Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 8
    .line 9
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 10
    .line 11
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 16
    .line 17
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;

    .line 18
    .line 19
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_1
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 24
    .line 25
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;

    .line 26
    .line 27
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_2
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 32
    .line 33
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle$$serializer;

    .line 34
    .line 35
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_3
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 40
    .line 41
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect$$serializer;

    .line 42
    .line 43
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_4
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 48
    .line 49
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserInfo$$serializer;

    .line 50
    .line 51
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_5
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 56
    .line 57
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/UserContribution$$serializer;

    .line 58
    .line 59
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_6
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 64
    .line 65
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;

    .line 66
    .line 67
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_7
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 72
    .line 73
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord$$serializer;

    .line 74
    .line 75
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_8
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 80
    .line 81
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message$$serializer;

    .line 82
    .line 83
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_9
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 88
    .line 89
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 90
    .line 91
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Namespace$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Namespace$$serializer;

    .line 92
    .line 93
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :pswitch_a
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 98
    .line 99
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;

    .line 100
    .line 101
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_b
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 106
    .line 107
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 108
    .line 109
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$UnreadNotificationWikiItem$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$UnreadNotificationWikiItem$$serializer;

    .line 110
    .line 111
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :pswitch_c
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 116
    .line 117
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 118
    .line 119
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_d
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 124
    .line 125
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 126
    .line 127
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$RevisionSlot$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$RevisionSlot$$serializer;

    .line 128
    .line 129
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 130
    .line 131
    .line 132
    return-object p0

    .line 133
    :pswitch_e
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 134
    .line 135
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 136
    .line 137
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 138
    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_f
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 142
    .line 143
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 144
    .line 145
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 146
    .line 147
    .line 148
    return-object p0

    .line 149
    :pswitch_10
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 150
    .line 151
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 152
    .line 153
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :pswitch_11
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 158
    .line 159
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink$$serializer;

    .line 160
    .line 161
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 162
    .line 163
    .line 164
    return-object p0

    .line 165
    :pswitch_12
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 166
    .line 167
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 168
    .line 169
    new-instance v2, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 170
    .line 171
    sget-object v3, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 172
    .line 173
    invoke-direct {v2, v3, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 177
    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_13
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 181
    .line 182
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 183
    .line 184
    invoke-direct {p0, v1, v1, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 185
    .line 186
    .line 187
    return-object p0

    .line 188
    :pswitch_14
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 189
    .line 190
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates$$serializer;

    .line 191
    .line 192
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 193
    .line 194
    .line 195
    return-object p0

    .line 196
    :pswitch_15
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 197
    .line 198
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$CategoryResponse$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$CategoryResponse$$serializer;

    .line 199
    .line 200
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 201
    .line 202
    .line 203
    return-object p0

    .line 204
    :pswitch_16
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 205
    .line 206
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 207
    .line 208
    sget-object v2, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 209
    .line 210
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 215
    .line 216
    .line 217
    return-object p0

    .line 218
    :pswitch_17
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 219
    .line 220
    sget-object v1, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 221
    .line 222
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 223
    .line 224
    .line 225
    return-object p0

    .line 226
    :pswitch_18
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 227
    .line 228
    sget-object v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$$serializer;

    .line 229
    .line 230
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 231
    .line 232
    .line 233
    return-object p0

    .line 234
    :pswitch_19
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 235
    .line 236
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 237
    .line 238
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 239
    .line 240
    .line 241
    return-object p0

    .line 242
    :pswitch_1a
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 243
    .line 244
    sget-object v1, Lorg/wikipedia/dataclient/page/Protection$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/Protection$$serializer;

    .line 245
    .line 246
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 247
    .line 248
    .line 249
    return-object p0

    .line 250
    :pswitch_1b
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 251
    .line 252
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision$$serializer;

    .line 253
    .line 254
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 255
    .line 256
    .line 257
    return-object p0

    .line 258
    :pswitch_1c
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 259
    .line 260
    sget-object v1, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 261
    .line 262
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 263
    .line 264
    .line 265
    return-object p0

    .line 266
    nop

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
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
