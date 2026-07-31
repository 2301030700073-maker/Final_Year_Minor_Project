.class public final synthetic Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;->$r8$classId:I

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
    iget p0, p0, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 8
    .line 9
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 10
    .line 11
    new-instance v2, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 12
    .line 13
    sget-object v3, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 14
    .line 15
    invoke-direct {v2, v3, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_0
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 23
    .line 24
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportablePage$$serializer;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportablePage$$serializer;

    .line 25
    .line 26
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 31
    .line 32
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList$$serializer;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList$$serializer;

    .line 33
    .line 34
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_2
    const p0, 0x7fffffff

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_3
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 47
    .line 48
    sget-object v1, Lorg/wikipedia/page/references/PageReferences$Reference$$serializer;->INSTANCE:Lorg/wikipedia/page/references/PageReferences$Reference$$serializer;

    .line 49
    .line 50
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_4
    sget p0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 55
    .line 56
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_5
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 60
    .line 61
    sget-object v1, Lorg/wikipedia/notifications/db/Notification$Link$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Link$$serializer;

    .line 62
    .line 63
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_6
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 68
    .line 69
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_7
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 77
    .line 78
    sget-object v1, Lorg/wikipedia/login/LoginResponse$Request$$serializer;->INSTANCE:Lorg/wikipedia/login/LoginResponse$Request$$serializer;

    .line 79
    .line 80
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_8
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 85
    .line 86
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 87
    .line 88
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 89
    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_9
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 93
    .line 94
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 95
    .line 96
    sget-object v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;

    .line 97
    .line 98
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_a
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 103
    .line 104
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 105
    .line 106
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_b
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 111
    .line 112
    sget-object v1, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet$$serializer;->INSTANCE:Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet$$serializer;

    .line 113
    .line 114
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 115
    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_c
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 119
    .line 120
    sget-object v1, Lorg/wikipedia/gallery/MediaListItem$$serializer;->INSTANCE:Lorg/wikipedia/gallery/MediaListItem$$serializer;

    .line 121
    .line 122
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 123
    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_d
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 127
    .line 128
    sget-object v1, Lorg/wikipedia/gallery/ImageInfo$MetadataItem$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$MetadataItem$$serializer;

    .line 129
    .line 130
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :pswitch_e
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 135
    .line 136
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 137
    .line 138
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :pswitch_f
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 143
    .line 144
    sget-object v1, Lorg/wikipedia/gallery/ImageInfo$Derivative$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$Derivative$$serializer;

    .line 145
    .line 146
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 147
    .line 148
    .line 149
    return-object p0

    .line 150
    :pswitch_10
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 151
    .line 152
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 153
    .line 154
    invoke-direct {p0, v1, v1, v0}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 155
    .line 156
    .line 157
    return-object p0

    .line 158
    :pswitch_11
    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 159
    .line 160
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, v0, v0, v1}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 164
    .line 165
    .line 166
    return-object p0

    .line 167
    :pswitch_12
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 168
    .line 169
    sget-object v1, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 170
    .line 171
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 172
    .line 173
    .line 174
    return-object p0

    .line 175
    :pswitch_13
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 176
    .line 177
    sget-object v1, Lorg/wikipedia/dataclient/page/PageSummary$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$$serializer;

    .line 178
    .line 179
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 180
    .line 181
    .line 182
    return-object p0

    .line 183
    :pswitch_14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_15
    invoke-static {}, Lorg/wikipedia/page/Namespace;->values()[Lorg/wikipedia/page/Namespace;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    .line 194
    .line 195
    const-string v1, "org.wikipedia.page.Namespace"

    .line 196
    .line 197
    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    .line 198
    .line 199
    .line 200
    return-object v0

    .line 201
    :pswitch_16
    sget p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->$r8$clinit:I

    .line 202
    .line 203
    sget-object p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->Factory:Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 204
    .line 205
    return-object p0

    .line 206
    :pswitch_17
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 207
    .line 208
    sget-object v1, Lorg/wikipedia/dataclient/page/PageSummary$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$$serializer;

    .line 209
    .line 210
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 211
    .line 212
    .line 213
    return-object p0

    .line 214
    :pswitch_18
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 215
    .line 216
    sget-object v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event$$serializer;->INSTANCE:Lorg/wikipedia/feed/onthisday/OnThisDay$Event$$serializer;

    .line 217
    .line 218
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 219
    .line 220
    .line 221
    return-object p0

    .line 222
    :pswitch_19
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 223
    .line 224
    sget-object v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event$$serializer;->INSTANCE:Lorg/wikipedia/feed/onthisday/OnThisDay$Event$$serializer;

    .line 225
    .line 226
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 227
    .line 228
    .line 229
    return-object p0

    .line 230
    :pswitch_1a
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 231
    .line 232
    sget-object v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event$$serializer;->INSTANCE:Lorg/wikipedia/feed/onthisday/OnThisDay$Event$$serializer;

    .line 233
    .line 234
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 235
    .line 236
    .line 237
    return-object p0

    .line 238
    :pswitch_1b
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 239
    .line 240
    sget-object v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event$$serializer;->INSTANCE:Lorg/wikipedia/feed/onthisday/OnThisDay$Event$$serializer;

    .line 241
    .line 242
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 243
    .line 244
    .line 245
    return-object p0

    .line 246
    :pswitch_1c
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 247
    .line 248
    sget-object v1, Lorg/wikipedia/page/PageBackStackItem$$serializer;->INSTANCE:Lorg/wikipedia/page/PageBackStackItem$$serializer;

    .line 249
    .line 250
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 251
    .line 252
    .line 253
    return-object p0

    .line 254
    nop

    .line 255
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
