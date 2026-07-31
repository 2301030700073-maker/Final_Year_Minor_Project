.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $accepted:Z

.field public final synthetic $reasonCodes:Ljava/util/List;

.field public final synthetic $revId:J

.field public L$0:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;JZLjava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 2
    .line 3
    iput-wide p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->$revId:J

    .line 4
    .line 5
    iput-boolean p4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->$accepted:Z

    .line 6
    .line 7
    iput-object p5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->$reasonCodes:Ljava/util/List;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;

    .line 2
    .line 3
    iget-boolean v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->$accepted:Z

    .line 4
    .line 5
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->$reasonCodes:Ljava/util/List;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 8
    .line 9
    iget-wide v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->$revId:J

    .line 10
    .line 11
    move-object v6, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;JZLjava/util/List;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->label:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    iget-object v8, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    if-eq v0, v3, :cond_2

    .line 17
    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v7

    .line 32
    :cond_1
    iget-object v2, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->L$0:Ljava/lang/String;

    .line 33
    .line 34
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object/from16 v0, p1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 52
    .line 53
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 58
    .line 59
    iput v3, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->label:I

    .line 60
    .line 61
    invoke-static {v0, v5}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-ne v0, v6, :cond_4

    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_4
    :goto_0
    move-object v10, v0

    .line 70
    check-cast v10, Ljava/lang/String;

    .line 71
    .line 72
    :try_start_1
    iget-wide v11, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->$revId:J

    .line 73
    .line 74
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 85
    .line 86
    iget-object v13, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->image:Ljava/lang/String;

    .line 87
    .line 88
    iget-boolean v14, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->$accepted:Z

    .line 89
    .line 90
    iget-object v0, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->$reasonCodes:Ljava/util/List;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    new-instance v3, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_7

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    check-cast v9, Ljava/lang/Number;

    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    sget-object v15, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 120
    .line 121
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    sget-object v15, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->reasons:Ljava/util/List;

    .line 125
    .line 126
    invoke-static {v15, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    check-cast v9, Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v9, :cond_5

    .line 133
    .line 134
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_1
    move-exception v0

    .line 139
    move-object v2, v10

    .line 140
    goto :goto_3

    .line 141
    :cond_6
    move-object v3, v7

    .line 142
    :cond_7
    if-nez v3, :cond_8

    .line 143
    .line 144
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 145
    .line 146
    :cond_8
    move-object v15, v3

    .line 147
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 158
    .line 159
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->image:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v9, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$AddImageFeedbackBody;

    .line 162
    .line 163
    move-object/from16 v16, v0

    .line 164
    .line 165
    invoke-direct/range {v9 .. v16}, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$AddImageFeedbackBody;-><init>(Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 169
    .line 170
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 175
    .line 176
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getCoreRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/CoreRestService;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    iput-object v10, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->L$0:Ljava/lang/String;

    .line 189
    .line 190
    iput v2, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->label:I

    .line 191
    .line 192
    invoke-interface {v0, v3, v9, v5}, Lorg/wikipedia/dataclient/CoreRestService;->addImageFeedback(Ljava/lang/String;Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$AddImageFeedbackBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    if-ne v0, v6, :cond_9

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    move-object v2, v10

    .line 200
    :goto_2
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 201
    .line 202
    return-object v0

    .line 203
    :goto_3
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 207
    .line 208
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 213
    .line 214
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    iget-object v8, v8, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    check-cast v4, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 237
    .line 238
    iget-object v4, v4, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->image:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v7, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->L$0:Ljava/lang/String;

    .line 241
    .line 242
    iput v1, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;->label:I

    .line 243
    .line 244
    const-string v1, "image-recommendation"

    .line 245
    .line 246
    move-object/from16 v17, v4

    .line 247
    .line 248
    move-object v4, v2

    .line 249
    move-object v2, v3

    .line 250
    move-object/from16 v3, v17

    .line 251
    .line 252
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->invalidateImageRecommendation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-ne v0, v6, :cond_a

    .line 257
    .line 258
    :goto_4
    return-object v6

    .line 259
    :cond_a
    return-object v0
.end method
