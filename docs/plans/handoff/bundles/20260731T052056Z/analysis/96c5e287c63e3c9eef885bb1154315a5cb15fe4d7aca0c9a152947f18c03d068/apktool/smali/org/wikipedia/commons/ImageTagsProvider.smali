.class public final Lorg/wikipedia/commons/ImageTagsProvider;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lorg/wikipedia/commons/ImageTagsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/commons/ImageTagsProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/commons/ImageTagsProvider;->INSTANCE:Lorg/wikipedia/commons/ImageTagsProvider;

    .line 7
    .line 8
    return-void
.end method

.method public static getDepictsClaims(Ljava/util/Map;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "P180"

    .line 5
    .line 6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/List;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p0, :cond_8

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_7

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lorg/wikipedia/dataclient/wikidata/Claims$Claim;

    .line 35
    .line 36
    iget-object v2, v2, Lorg/wikipedia/dataclient/wikidata/Claims$Claim;->mainSnak:Lorg/wikipedia/dataclient/wikidata/Claims$MainSnak;

    .line 37
    .line 38
    if-eqz v2, :cond_5

    .line 39
    .line 40
    iget-object v2, v2, Lorg/wikipedia/dataclient/wikidata/Claims$MainSnak;->dataValue:Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;

    .line 41
    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    iget-object v3, v2, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->type:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, v2, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lkotlinx/serialization/json/JsonElement;

    .line 47
    .line 48
    const-string v4, ""

    .line 49
    .line 50
    if-eqz v2, :cond_6

    .line 51
    .line 52
    const-string v5, "string"

    .line 53
    .line 54
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_1
    const-string/jumbo v5, "wikibase-entityid"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    sget-object v4, Lorg/wikipedia/dataclient/wikidata/Claims$EntityIdValue;->Companion:Lorg/wikipedia/dataclient/wikidata/Claims$EntityIdValue$Companion;

    .line 81
    .line 82
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/wikidata/Claims$EntityIdValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 87
    .line 88
    invoke-virtual {v3, v4, v2}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lorg/wikipedia/dataclient/wikidata/Claims$EntityIdValue;

    .line 93
    .line 94
    iget-object v4, v2, Lorg/wikipedia/dataclient/wikidata/Claims$EntityIdValue;->id:Ljava/lang/String;

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_2
    const-string v5, "time"

    .line 99
    .line 100
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    sget-object v4, Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue;->Companion:Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue$Companion;

    .line 112
    .line 113
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 118
    .line 119
    invoke-virtual {v3, v4, v2}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue;

    .line 124
    .line 125
    iget-object v4, v2, Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue;->time:Ljava/lang/String;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    const-string v5, "monolingualtext"

    .line 129
    .line 130
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_4

    .line 135
    .line 136
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    sget-object v4, Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue;->Companion:Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue$Companion;

    .line 142
    .line 143
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 148
    .line 149
    invoke-virtual {v3, v4, v2}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue;

    .line 154
    .line 155
    iget-object v4, v2, Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue;->text:Ljava/lang/String;

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    const-string v5, "globecoordinate"

    .line 159
    .line 160
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_6

    .line 165
    .line 166
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    sget-object v5, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->Companion:Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue$Companion;

    .line 172
    .line 173
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 178
    .line 179
    invoke-virtual {v3, v5, v2}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;

    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance v3, Landroid/location/Location;

    .line 189
    .line 190
    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-wide v4, v2, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->latitude:D

    .line 194
    .line 195
    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 196
    .line 197
    .line 198
    iget-wide v4, v2, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->longitude:D

    .line 199
    .line 200
    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 201
    .line 202
    .line 203
    iget-wide v4, v2, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->altitude:D

    .line 204
    .line 205
    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Landroid/location/Location;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_5
    move-object v4, v0

    .line 217
    :cond_6
    :goto_1
    if-eqz v4, :cond_0

    .line 218
    .line 219
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_7
    move-object v0, v1

    .line 225
    :cond_8
    if-nez v0, :cond_9

    .line 226
    .line 227
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 228
    .line 229
    return-object p0

    .line 230
    :cond_9
    return-object v0
.end method


# virtual methods
.method public final getImageTags(ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v0, "M"

    .line 2
    .line 3
    instance-of v1, p3, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p3

    .line 8
    check-cast v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;

    .line 9
    .line 10
    iget v2, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p3}, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;-><init>(Lorg/wikipedia/commons/ImageTagsProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p0, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v3, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    iget-object p1, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->L$0:Ljava/lang/String;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v5

    .line 55
    :cond_2
    iget p1, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->I$0:I

    .line 56
    .line 57
    iget-object p2, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->L$0:Ljava/lang/String;

    .line 58
    .line 59
    :try_start_1
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :try_start_2
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 67
    .line 68
    sget-object p0, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 69
    .line 70
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v2, "P180"

    .line 87
    .line 88
    iput-object p2, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->L$0:Ljava/lang/String;

    .line 89
    .line 90
    iput p1, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->I$0:I

    .line 91
    .line 92
    iput v3, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->label:I

    .line 93
    .line 94
    invoke-interface {p0, v0, v2, v1}, Lorg/wikipedia/dataclient/Service;->getClaims(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-ne p0, p3, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    :goto_1
    check-cast p0, Lorg/wikipedia/dataclient/wikidata/Claims;

    .line 102
    .line 103
    iget-object p0, p0, Lorg/wikipedia/dataclient/wikidata/Claims;->claims:Ljava/util/Map;

    .line 104
    .line 105
    invoke-static {p0}, Lorg/wikipedia/commons/ImageTagsProvider;->getDepictsClaims(Ljava/util/Map;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-eqz p0, :cond_5

    .line 114
    .line 115
    goto/16 :goto_7

    .line 116
    .line 117
    :cond_5
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 118
    .line 119
    sget-object p0, Lorg/wikipedia/Constants;->wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 120
    .line 121
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string/jumbo v7, "|"

    .line 126
    .line 127
    .line 128
    const/4 v10, 0x0

    .line 129
    const/16 v11, 0x3e

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v9, 0x0

    .line 133
    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const-string v2, "test"

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-static {p2, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    const-string/jumbo v2, "uselang"

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    move-object v2, p2

    .line 154
    :goto_2
    iput-object p2, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->L$0:Ljava/lang/String;

    .line 155
    .line 156
    iput p1, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->I$0:I

    .line 157
    .line 158
    iput v4, v1, Lorg/wikipedia/commons/ImageTagsProvider$getImageTags$1;->label:I

    .line 159
    .line 160
    invoke-interface {p0, v0, v2, v1}, Lorg/wikipedia/dataclient/Service;->getWikidataEntityTerms(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    if-ne p0, p3, :cond_7

    .line 165
    .line 166
    :goto_3
    return-object p3

    .line 167
    :cond_7
    move-object p1, p2

    .line 168
    :goto_4
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 169
    .line 170
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 171
    .line 172
    if-eqz p0, :cond_b

    .line 173
    .line 174
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 175
    .line 176
    if-eqz p0, :cond_b

    .line 177
    .line 178
    new-instance p2, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    :cond_8
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result p3

    .line 191
    if-eqz p3, :cond_a

    .line 192
    .line 193
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    check-cast p3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 198
    .line 199
    iget-object p3, p3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->entityTerms:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;

    .line 200
    .line 201
    if-eqz p3, :cond_9

    .line 202
    .line 203
    iget-object p3, p3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;->label:Ljava/util/List;

    .line 204
    .line 205
    if-eqz p3, :cond_9

    .line 206
    .line 207
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    check-cast p3, Ljava/lang/String;

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_9
    move-object p3, v5

    .line 215
    :goto_6
    if-eqz p3, :cond_8

    .line 216
    .line 217
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_a
    move-object v5, p2

    .line 222
    :cond_b
    if-eqz v5, :cond_d

    .line 223
    .line 224
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    if-eqz p0, :cond_c

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_c
    invoke-static {p1, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    .line 237
    .line 238
    return-object p0

    .line 239
    :catch_0
    :cond_d
    :goto_7
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 240
    .line 241
    return-object p0
.end method
