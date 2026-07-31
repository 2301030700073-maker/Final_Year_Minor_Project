.class public final Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $latitude:D

.field public final synthetic $longitude:D

.field public final synthetic $radius:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/places/PlacesFragmentViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/places/PlacesFragmentViewModel;DDILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->this$0:Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 2
    .line 3
    iput-wide p2, p0, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->$latitude:D

    .line 4
    .line 5
    iput-wide p4, p0, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->$longitude:D

    .line 6
    .line 7
    iput p6, p0, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->$radius:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    new-instance v0, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;

    .line 2
    .line 3
    iget-wide v4, p0, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->$longitude:D

    .line 4
    .line 5
    iget v6, p0, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->$radius:I

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->this$0:Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 8
    .line 9
    iget-wide v2, p0, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->$latitude:D

    .line 10
    .line 11
    move-object v7, p2

    .line 12
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;-><init>(Lorg/wikipedia/places/PlacesFragmentViewModel;DDILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v5, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->label:I

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    move-object/from16 v0, p1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v7

    .line 25
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 29
    .line 30
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 31
    .line 32
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-wide v3, v5, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->$latitude:D

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string/jumbo v3, "|"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-wide v3, v5, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->$longitude:D

    .line 64
    .line 65
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iput v1, v5, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->label:I

    .line 73
    .line 74
    move-object v1, v2

    .line 75
    iget v2, v5, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->$radius:I

    .line 76
    .line 77
    const/16 v3, 0x4b

    .line 78
    .line 79
    move v4, v3

    .line 80
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->getGeoSearch(Ljava/lang/String;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-ne v0, v6, :cond_2

    .line 85
    .line 86
    return-object v6

    .line 87
    :cond_2
    :goto_0
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 88
    .line 89
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    move-object v0, v7

    .line 97
    :goto_1
    if-nez v0, :cond_4

    .line 98
    .line 99
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 100
    .line 101
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move-object v3, v2

    .line 121
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 122
    .line 123
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    .line 124
    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    .line 133
    const/16 v2, 0xa

    .line 134
    .line 135
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_9

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 157
    .line 158
    new-instance v8, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 159
    .line 160
    iget v9, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    .line 161
    .line 162
    iget-object v3, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    .line 163
    .line 164
    new-instance v10, Lorg/wikipedia/page/PageTitle;

    .line 165
    .line 166
    iget-object v11, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 167
    .line 168
    sget-object v4, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 169
    .line 170
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-static {v6}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    if-eqz v6, :cond_8

    .line 186
    .line 187
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-nez v6, :cond_7

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_7
    sget-object v6, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 195
    .line 196
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    const/16 v13, 0x78

    .line 204
    .line 205
    invoke-static {v13, v6}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    move-object v13, v6

    .line 210
    goto :goto_5

    .line 211
    :cond_8
    :goto_4
    move-object v13, v7

    .line 212
    :goto_5
    iget-object v14, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-static {v6}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v2, v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v15

    .line 231
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;

    .line 243
    .line 244
    iget-wide v11, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lat:D

    .line 245
    .line 246
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;

    .line 251
    .line 252
    iget-wide v13, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lon:D

    .line 253
    .line 254
    invoke-direct/range {v8 .. v14}, Lorg/wikipedia/dataclient/page/NearbyPage;-><init>(ILorg/wikipedia/page/PageTitle;DD)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_9
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;

    .line 262
    .line 263
    const/4 v2, 0x5

    .line 264
    iget-object v3, v5, Lorg/wikipedia/places/PlacesFragmentViewModel$fetchNearbyPages$2;->this$0:Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 265
    .line 266
    invoke-direct {v1, v2, v3}, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;-><init>(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iget-object v1, v3, Lorg/wikipedia/places/PlacesFragmentViewModel;->nearbyPagesLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 274
    .line 275
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 276
    .line 277
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 284
    .line 285
    return-object v0
.end method
