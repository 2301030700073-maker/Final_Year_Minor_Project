.class public final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $page:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $retryLimit:J

.field public I$0:I

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-wide p2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->$retryLimit:J

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-wide v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->$retryLimit:J

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, v2, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->label:I

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v5, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->I$0:I

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 32
    .line 33
    .line 34
    :try_start_1
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingTagsCache:Lkotlin/collections/ArrayDeque;

    .line 35
    .line 36
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 47
    .line 48
    :cond_2
    move v1, v4

    .line 49
    :goto_0
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 50
    .line 51
    sget-object p1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 52
    .line 53
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->I$0:I

    .line 58
    .line 59
    iput v5, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->label:I

    .line 60
    .line 61
    const/16 v6, 0xa

    .line 62
    .line 63
    invoke-interface {p1, v6, p0}, Lorg/wikipedia/dataclient/Service;->getRandomImages(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v0, :cond_3

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_3
    :goto_1
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 71
    .line 72
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 73
    .line 74
    if-eqz p1, :cond_b

    .line 75
    .line 76
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 77
    .line 78
    if-eqz p1, :cond_b

    .line 79
    .line 80
    new-instance v6, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_6

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    move-object v8, v7

    .line 100
    check-cast v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 101
    .line 102
    invoke-virtual {v8}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    if-eqz v8, :cond_5

    .line 107
    .line 108
    iget-object v8, v8, Lorg/wikipedia/gallery/ImageInfo;->mime:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    move-object v8, v3

    .line 112
    :goto_3
    const-string v9, "image/jpeg"

    .line 113
    .line 114
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_4

    .line 119
    .line 120
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_b

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 139
    .line 140
    iget-object v7, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 141
    .line 142
    if-eqz v7, :cond_7

    .line 143
    .line 144
    move v8, v5

    .line 145
    goto :goto_5

    .line 146
    :cond_7
    move v8, v4

    .line 147
    :goto_5
    if-eqz v8, :cond_8

    .line 148
    .line 149
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_8

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_8
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_a

    .line 165
    .line 166
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    check-cast v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 171
    .line 172
    const-string v9, "mediainfo"

    .line 173
    .line 174
    invoke-virtual {v8, v9}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->getContentFromSlot(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    const-string v9, "P180"

    .line 179
    .line 180
    invoke-static {v8, v9, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_9

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_a
    :goto_6
    sget-object v7, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingTagsCache:Lkotlin/collections/ArrayDeque;

    .line 188
    .line 189
    invoke-virtual {v7, v6}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_b
    add-int/lit8 p1, v1, 0x1

    .line 194
    .line 195
    int-to-long v6, v1

    .line 196
    iget-wide v8, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;->$retryLimit:J

    .line 197
    .line 198
    cmp-long v1, v6, v8

    .line 199
    .line 200
    if-gez v1, :cond_d

    .line 201
    .line 202
    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingTagsCache:Lkotlin/collections/ArrayDeque;

    .line 203
    .line 204
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_c

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_c
    move v1, p1

    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_d
    :goto_7
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingTagsCache:Lkotlin/collections/ArrayDeque;

    .line 215
    .line 216
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    iput-object p0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .line 222
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 223
    .line 224
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 225
    .line 226
    .line 227
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 228
    .line 229
    return-object p0

    .line 230
    :catchall_0
    move-exception p0

    .line 231
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 234
    .line 235
    .line 236
    throw p0
.end method
