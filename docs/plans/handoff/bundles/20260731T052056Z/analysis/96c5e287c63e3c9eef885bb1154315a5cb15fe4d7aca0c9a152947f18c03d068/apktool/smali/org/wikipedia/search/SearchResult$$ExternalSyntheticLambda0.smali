.class public final synthetic Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 3

    .line 1
    iget p0, p0, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 9
    .line 10
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_0
    new-instance p0, Lkotlinx/serialization/internal/PairSerializer;

    .line 17
    .line 18
    sget-object v1, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    .line 19
    .line 20
    invoke-direct {p0, v1, v1, v0}, Lkotlinx/serialization/internal/PairSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_1
    new-instance p0, Lkotlinx/serialization/internal/PairSerializer;

    .line 25
    .line 26
    sget-object v1, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    .line 27
    .line 28
    invoke-direct {p0, v1, v1, v0}, Lkotlinx/serialization/internal/PairSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_2
    new-instance p0, Lkotlinx/serialization/internal/PairSerializer;

    .line 33
    .line 34
    sget-object v1, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    .line 35
    .line 36
    invoke-direct {p0, v1, v1, v0}, Lkotlinx/serialization/internal/PairSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_3
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 41
    .line 42
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 43
    .line 44
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_4
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 49
    .line 50
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 51
    .line 52
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_5
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 57
    .line 58
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 59
    .line 60
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_6
    sget-object p0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->client:Lokhttp3/OkHttpClient;

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_7
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 68
    .line 69
    sget-object v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$Root;->INSTANCE:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$Root;

    .line 70
    .line 71
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 72
    .line 73
    const-string v2, "org.wikipedia.settings.homefeed.HomeFeedSettingsDestination.Root"

    .line 74
    .line 75
    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;[Ljava/lang/annotation/Annotation;)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_8
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 80
    .line 81
    sget-object v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$ForYouModuleScreen;->INSTANCE:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$ForYouModuleScreen;

    .line 82
    .line 83
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 84
    .line 85
    const-string v2, "org.wikipedia.settings.homefeed.HomeFeedSettingsDestination.ForYouModuleScreen"

    .line 86
    .line 87
    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;[Ljava/lang/annotation/Annotation;)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_9
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 92
    .line 93
    sget-object v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$FeedConfiguration;->INSTANCE:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$FeedConfiguration;

    .line 94
    .line 95
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 96
    .line 97
    const-string v2, "org.wikipedia.settings.homefeed.HomeFeedSettingsDestination.FeedConfiguration"

    .line 98
    .line 99
    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;[Ljava/lang/annotation/Annotation;)V

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_a
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 104
    .line 105
    sget-object v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$DefaultFeedViewScreen;->INSTANCE:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$DefaultFeedViewScreen;

    .line 106
    .line 107
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 108
    .line 109
    const-string v2, "org.wikipedia.settings.homefeed.HomeFeedSettingsDestination.DefaultFeedViewScreen"

    .line 110
    .line 111
    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;[Ljava/lang/annotation/Annotation;)V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :pswitch_b
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 116
    .line 117
    sget-object v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$CommunityModuleScreen;->INSTANCE:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$CommunityModuleScreen;

    .line 118
    .line 119
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 120
    .line 121
    const-string v2, "org.wikipedia.settings.homefeed.HomeFeedSettingsDestination.CommunityModuleScreen"

    .line 122
    .line 123
    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;[Ljava/lang/annotation/Annotation;)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :pswitch_c
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 128
    .line 129
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 130
    .line 131
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 132
    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_d
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 136
    .line 137
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 138
    .line 139
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 140
    .line 141
    .line 142
    return-object p0

    .line 143
    :pswitch_e
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 144
    .line 145
    sget-object v0, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage$$serializer;->INSTANCE:Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage$$serializer;

    .line 146
    .line 147
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 148
    .line 149
    .line 150
    return-object p0

    .line 151
    :pswitch_f
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 152
    .line 153
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 154
    .line 155
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 156
    .line 157
    .line 158
    return-object p0

    .line 159
    :pswitch_10
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 160
    .line 161
    sget-object v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;->INSTANCE:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;

    .line 162
    .line 163
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 164
    .line 165
    .line 166
    return-object p0

    .line 167
    :pswitch_11
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 168
    .line 169
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 170
    .line 171
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 172
    .line 173
    .line 174
    return-object p0

    .line 175
    :pswitch_12
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 176
    .line 177
    sget-object v0, Lorg/wikipedia/search/SemanticSearchResult$$serializer;->INSTANCE:Lorg/wikipedia/search/SemanticSearchResult$$serializer;

    .line 178
    .line 179
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 180
    .line 181
    .line 182
    return-object p0

    .line 183
    :pswitch_13
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 184
    .line 185
    sget-object v0, Lorg/wikipedia/search/SearchResult$$serializer;->INSTANCE:Lorg/wikipedia/search/SearchResult$$serializer;

    .line 186
    .line 187
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 188
    .line 189
    .line 190
    return-object p0

    .line 191
    :pswitch_14
    invoke-static {}, Lorg/wikipedia/search/SearchResult$SearchResultType;->values()[Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    .line 199
    .line 200
    const-string v1, "org.wikipedia.search.SearchResult.SearchResultType"

    .line 201
    .line 202
    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    .line 203
    .line 204
    .line 205
    return-object v0

    .line 206
    :pswitch_15
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 207
    .line 208
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates$$serializer;

    .line 209
    .line 210
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 211
    .line 212
    .line 213
    return-object p0

    .line 214
    :pswitch_16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 215
    .line 216
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    return-object p0

    .line 221
    :pswitch_17
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    return-object p0

    .line 228
    :pswitch_18
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 229
    .line 230
    sget-object v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry$$serializer;->INSTANCE:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry$$serializer;

    .line 231
    .line 232
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 233
    .line 234
    .line 235
    return-object p0

    .line 236
    :pswitch_19
    new-instance p0, Lkotlinx/serialization/internal/ReferenceArraySerializer;

    .line 237
    .line 238
    const-class v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    .line 239
    .line 240
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 241
    .line 242
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    sget-object v1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse$$serializer;->INSTANCE:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse$$serializer;

    .line 247
    .line 248
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/ReferenceArraySerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    .line 249
    .line 250
    .line 251
    return-object p0

    .line 252
    :pswitch_1a
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 253
    .line 254
    sget-object v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry$$serializer;->INSTANCE:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry$$serializer;

    .line 255
    .line 256
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 257
    .line 258
    .line 259
    return-object p0

    .line 260
    :pswitch_1b
    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 261
    .line 262
    sget-object v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList$$serializer;->INSTANCE:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList$$serializer;

    .line 263
    .line 264
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 265
    .line 266
    .line 267
    return-object p0

    .line 268
    :pswitch_1c
    sget-object p0, Lorg/wikipedia/search/SearchResult$SearchResultType;->Companion:Lorg/wikipedia/search/SearchResult$SearchResultType$Companion;

    .line 269
    .line 270
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchResult$SearchResultType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    return-object p0

    .line 275
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
