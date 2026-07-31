.class public final Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final formatRegex:Lkotlin/text/Regex;

.field public final isFromSettings:Z

.field public final maxArticleFrequencyLimit:I

.field public final maxPresetItemsInDropdown:I

.field public final minArticleFrequencyLimit:I

.field public final preSelectedArticleFrequency:I

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    iput v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->preSelectedArticleFrequency:I

    .line 10
    .line 11
    const/16 v0, 0x3e8

    .line 12
    .line 13
    iput v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->maxArticleFrequencyLimit:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->minArticleFrequencyLimit:I

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    iput v2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->maxPresetItemsInDropdown:I

    .line 20
    .line 21
    const-string v2, "fromSettings"

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput-boolean p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->isFromSettings:Z

    .line 34
    .line 35
    new-instance v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 43
    .line 44
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-boolean v3, v3, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 49
    .line 50
    new-instance v4, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 51
    .line 52
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget v5, v5, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 57
    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-direct {v4, v5, v0, v1, v6}, Lorg/wikipedia/donate/donationreminder/SelectableOption;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 76
    .line 77
    .line 78
    new-instance v5, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 79
    .line 80
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 85
    .line 86
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {v5, v0, p1, p1, p1}, Lorg/wikipedia/donate/donationreminder/SelectableOption;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 91
    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    const/4 v7, 0x0

    .line 95
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;-><init>(ZLorg/wikipedia/donate/donationreminder/SelectableOption;Lorg/wikipedia/donate/donationreminder/SelectableOption;ZLjava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 103
    .line 104
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 105
    .line 106
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 110
    .line 111
    new-instance p1, Lkotlin/text/Regex;

    .line 112
    .line 113
    const-string v0, "\\.00$"

    .line 114
    .line 115
    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->formatRegex:Lkotlin/text/Regex;

    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public final createDonationAmountOptions(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel$createDonationAmountOptions$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel$createDonationAmountOptions$1;

    .line 11
    .line 12
    iget v3, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel$createDonationAmountOptions$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel$createDonationAmountOptions$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel$createDonationAmountOptions$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel$createDonationAmountOptions$1;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel$createDonationAmountOptions$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v4, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel$createDonationAmountOptions$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    if-ne v4, v6, :cond_1

    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v5

    .line 51
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lorg/wikipedia/dataclient/donate/CampaignCollection;->INSTANCE$1:Lorg/wikipedia/dataclient/donate/CampaignCollection;

    .line 55
    .line 56
    iput v6, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel$createDonationAmountOptions$1;->label:I

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lorg/wikipedia/dataclient/donate/CampaignCollection;->getConfig(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-ne v1, v3, :cond_3

    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_3
    :goto_1
    check-cast v1, Lorg/wikipedia/dataclient/donate/DonationConfig;

    .line 66
    .line 67
    new-instance v2, Ljava/util/Locale$Builder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/Locale$Builder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :try_start_0
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 81
    .line 82
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    goto :goto_3

    .line 100
    :cond_5
    :goto_2
    invoke-static {}, Lorg/jsoup/Jsoup;->unmarshal()Lkotlinx/coroutines/internal/Symbol;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v3, v3, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :catch_0
    move-object v3, v5

    .line 108
    :goto_3
    const-string v4, ""

    .line 109
    .line 110
    if-nez v3, :cond_6

    .line 111
    .line 112
    move-object v3, v4

    .line 113
    :cond_6
    invoke-virtual {v2, v3}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v2}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const/4 v3, 0x0

    .line 126
    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/text/NumberFormat;->getCurrency()Ljava/util/Currency;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v7, "USD"

    .line 134
    .line 135
    if-eqz v2, :cond_7

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-nez v2, :cond_8

    .line 142
    .line 143
    :cond_7
    move-object v2, v7

    .line 144
    :cond_8
    const/4 v8, 0x0

    .line 145
    if-eqz v1, :cond_9

    .line 146
    .line 147
    iget-object v9, v1, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyMinimumDonation:Ljava/util/Map;

    .line 148
    .line 149
    if-eqz v9, :cond_9

    .line 150
    .line 151
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    check-cast v9, Ljava/lang/Float;

    .line 156
    .line 157
    if-eqz v9, :cond_9

    .line 158
    .line 159
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    goto :goto_4

    .line 164
    :cond_9
    move v9, v8

    .line 165
    :goto_4
    if-eqz v1, :cond_a

    .line 166
    .line 167
    iget-object v10, v1, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyMaximumDonation:Ljava/util/Map;

    .line 168
    .line 169
    if-eqz v10, :cond_a

    .line 170
    .line 171
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    check-cast v10, Ljava/lang/Float;

    .line 176
    .line 177
    if-eqz v10, :cond_a

    .line 178
    .line 179
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    goto :goto_5

    .line 184
    :cond_a
    move v10, v8

    .line 185
    :goto_5
    cmpg-float v11, v10, v8

    .line 186
    .line 187
    if-nez v11, :cond_e

    .line 188
    .line 189
    if-eqz v1, :cond_b

    .line 190
    .line 191
    iget-object v11, v1, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyMinimumDonation:Ljava/util/Map;

    .line 192
    .line 193
    if-eqz v11, :cond_b

    .line 194
    .line 195
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    check-cast v11, Ljava/lang/Float;

    .line 200
    .line 201
    if-eqz v11, :cond_b

    .line 202
    .line 203
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    goto :goto_6

    .line 208
    :cond_b
    move v11, v8

    .line 209
    :goto_6
    cmpl-float v12, v11, v8

    .line 210
    .line 211
    if-lez v12, :cond_e

    .line 212
    .line 213
    if-eqz v1, :cond_c

    .line 214
    .line 215
    iget-object v10, v1, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyMinimumDonation:Ljava/util/Map;

    .line 216
    .line 217
    if-eqz v10, :cond_c

    .line 218
    .line 219
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    check-cast v10, Ljava/lang/Float;

    .line 224
    .line 225
    if-eqz v10, :cond_c

    .line 226
    .line 227
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    goto :goto_7

    .line 232
    :cond_c
    move v10, v8

    .line 233
    :goto_7
    div-float/2addr v10, v11

    .line 234
    if-eqz v1, :cond_d

    .line 235
    .line 236
    iget-object v11, v1, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyMaximumDonation:Ljava/util/Map;

    .line 237
    .line 238
    if-eqz v11, :cond_d

    .line 239
    .line 240
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    check-cast v7, Ljava/lang/Float;

    .line 245
    .line 246
    if-eqz v7, :cond_d

    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    goto :goto_8

    .line 253
    :cond_d
    move v7, v8

    .line 254
    :goto_8
    mul-float/2addr v10, v7

    .line 255
    :cond_e
    sget-object v7, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 256
    .line 257
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    if-eqz v1, :cond_f

    .line 262
    .line 263
    iget-object v1, v1, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyAmountPresets:Ljava/util/Map;

    .line 264
    .line 265
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Ljava/util/List;

    .line 270
    .line 271
    if-eqz v1, :cond_f

    .line 272
    .line 273
    iget v2, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->maxPresetItemsInDropdown:I

    .line 274
    .line 275
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    goto :goto_9

    .line 280
    :cond_f
    new-instance v1, Ljava/lang/Float;

    .line 281
    .line 282
    invoke-direct {v1, v9}, Ljava/lang/Float;-><init>(F)V

    .line 283
    .line 284
    .line 285
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    :goto_9
    new-instance v2, Ljava/util/ArrayList;

    .line 290
    .line 291
    const/16 v11, 0xa

    .line 292
    .line 293
    invoke-static {v1, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 294
    .line 295
    .line 296
    move-result v11

    .line 297
    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    .line 299
    .line 300
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v12

    .line 308
    if-eqz v12, :cond_13

    .line 309
    .line 310
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    check-cast v12, Ljava/lang/Number;

    .line 315
    .line 316
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 317
    .line 318
    .line 319
    move-result v12

    .line 320
    new-instance v13, Lorg/wikipedia/donate/donationreminder/OptionItem$Preset;

    .line 321
    .line 322
    new-instance v14, Ljava/lang/Float;

    .line 323
    .line 324
    invoke-direct {v14, v12}, Ljava/lang/Float;-><init>(F)V

    .line 325
    .line 326
    .line 327
    new-instance v15, Ljava/util/Locale$Builder;

    .line 328
    .line 329
    invoke-direct {v15}, Ljava/util/Locale$Builder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    invoke-virtual {v15, v5}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    :try_start_1
    sget-object v15, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 341
    .line 342
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v15

    .line 346
    if-eqz v15, :cond_11

    .line 347
    .line 348
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 349
    .line 350
    .line 351
    move-result v15

    .line 352
    if-nez v15, :cond_10

    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_10
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v15

    .line 359
    goto :goto_c

    .line 360
    :cond_11
    :goto_b
    invoke-static {}, Lorg/jsoup/Jsoup;->unmarshal()Lkotlinx/coroutines/internal/Symbol;

    .line 361
    .line 362
    .line 363
    move-result-object v15

    .line 364
    iget-object v15, v15, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 365
    .line 366
    goto :goto_c

    .line 367
    :catch_1
    const/4 v15, 0x0

    .line 368
    :goto_c
    if-nez v15, :cond_12

    .line 369
    .line 370
    move-object v15, v4

    .line 371
    :cond_12
    invoke-virtual {v5, v15}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v5}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    invoke-static {v5}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    invoke-virtual {v5, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 384
    .line 385
    .line 386
    new-instance v15, Ljava/lang/Float;

    .line 387
    .line 388
    invoke-direct {v15, v12}, Ljava/lang/Float;-><init>(F)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5, v15}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    iget-object v12, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->formatRegex:Lkotlin/text/Regex;

    .line 399
    .line 400
    invoke-virtual {v12, v5, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    invoke-direct {v13, v5, v14}, Lorg/wikipedia/donate/donationreminder/OptionItem$Preset;-><init>(Ljava/lang/String;Ljava/lang/Number;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    const/4 v5, 0x0

    .line 411
    goto :goto_a

    .line 412
    :cond_13
    new-instance v3, Lorg/wikipedia/donate/donationreminder/OptionItem$Custom;

    .line 413
    .line 414
    const v4, 0x7f120182

    .line 415
    .line 416
    .line 417
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    invoke-direct {v3, v4}, Lorg/wikipedia/donate/donationreminder/OptionItem;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 428
    .line 429
    .line 430
    move-result-object v13

    .line 431
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 432
    .line 433
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    iget v2, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 438
    .line 439
    cmpg-float v2, v2, v8

    .line 440
    .line 441
    if-gtz v2, :cond_14

    .line 442
    .line 443
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    check-cast v2, Ljava/lang/Number;

    .line 448
    .line 449
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    goto :goto_d

    .line 454
    :cond_14
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    iget v2, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 459
    .line 460
    :goto_d
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    check-cast v1, Ljava/lang/Number;

    .line 465
    .line 466
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    new-instance v11, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 471
    .line 472
    new-instance v12, Ljava/lang/Float;

    .line 473
    .line 474
    invoke-direct {v12, v2}, Ljava/lang/Float;-><init>(F)V

    .line 475
    .line 476
    .line 477
    new-instance v14, Ljava/lang/Float;

    .line 478
    .line 479
    invoke-direct {v14, v10}, Ljava/lang/Float;-><init>(F)V

    .line 480
    .line 481
    .line 482
    new-instance v15, Ljava/lang/Float;

    .line 483
    .line 484
    invoke-direct {v15, v9}, Ljava/lang/Float;-><init>(F)V

    .line 485
    .line 486
    .line 487
    new-instance v2, Ljava/lang/Float;

    .line 488
    .line 489
    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    .line 490
    .line 491
    .line 492
    new-instance v1, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda21;

    .line 493
    .line 494
    invoke-direct {v1, v0, v6}, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda21;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;I)V

    .line 495
    .line 496
    .line 497
    move-object/from16 v17, v1

    .line 498
    .line 499
    move-object/from16 v16, v2

    .line 500
    .line 501
    invoke-direct/range {v11 .. v17}, Lorg/wikipedia/donate/donationreminder/SelectableOption;-><init>(Ljava/lang/Number;Ljava/util/List;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;)V

    .line 502
    .line 503
    .line 504
    return-object v11
.end method

.method public final saveReminder()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 10
    .line 11
    iget-boolean v0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->isFromSettings:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "global_setting"

    .line 16
    .line 17
    :goto_0
    move-object v4, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-string v0, "reminder_config"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 27
    .line 28
    iget-object v1, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 29
    .line 30
    iget-object v3, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 31
    .line 32
    iget-object v1, v1, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 39
    .line 40
    iget-object v0, v0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->defaultValue:Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    cmpg-float v0, v1, v0

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, v3, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v1, v3, Lorg/wikipedia/donate/donationreminder/SelectableOption;->defaultValue:Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ne v0, v1, :cond_1

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    :goto_2
    iget-object v1, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 68
    .line 69
    iget-object v11, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 70
    .line 71
    iget-object v1, v1, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget-object v3, v11, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const/4 v9, 0x0

    .line 96
    const/16 v10, 0x94

    .line 97
    .line 98
    const-string v3, "reminder_confirm_click"

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-static/range {v3 .. v10}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 105
    .line 106
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    iget-object v0, v11, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 113
    .line 114
    .line 115
    move-result v20

    .line 116
    iget-object v0, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 117
    .line 118
    iget-object v0, v0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v19

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v16

    .line 128
    const/16 v23, 0x0

    .line 129
    .line 130
    const/16 v24, 0x1cb

    .line 131
    .line 132
    const/4 v13, 0x0

    .line 133
    const-wide/16 v14, 0x0

    .line 134
    .line 135
    const/16 v18, 0x0

    .line 136
    .line 137
    const/16 v21, 0x0

    .line 138
    .line 139
    const/16 v22, 0x0

    .line 140
    .line 141
    invoke-static/range {v12 .. v24}, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;ZJJIIFZIII)Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setDonationReminderConfig(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final toggleDonationReminders(Z)V
    .locals 14

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v12, 0x0

    .line 8
    const/16 v13, 0x1fe

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    move v2, p1

    .line 20
    invoke-static/range {v1 .. v13}, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;ZJJIIFZIII)Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setDonationReminderConfig(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v12, 0x0

    .line 34
    const/16 v13, 0x1bf

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    const-wide/16 v5, 0x0

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    invoke-static/range {v1 .. v13}, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;ZJJIIFZIII)Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setDonationReminderConfig(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v7, 0x0

    .line 55
    const/16 v8, 0xfc

    .line 56
    .line 57
    const-string v1, "reminder_set_off"

    .line 58
    .line 59
    const-string v2, "global_setting"

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-static/range {v1 .. v8}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 69
    .line 70
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    move-object v1, v7

    .line 75
    check-cast v1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    const/16 v6, 0x1e

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    move v2, p1

    .line 83
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;ZLorg/wikipedia/donate/donationreminder/SelectableOption;Lorg/wikipedia/donate/donationreminder/SelectableOption;Ljava/lang/Throwable;I)Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v7, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    return-void
.end method

.method public final updateDonationAmountState(F)V
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 9
    .line 10
    iget-object v3, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-static {v3, v4}, Lorg/wikipedia/donate/donationreminder/SelectableOption;->copy$default(Lorg/wikipedia/donate/donationreminder/SelectableOption;Ljava/lang/Number;)Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 v6, 0x0

    .line 21
    const/16 v7, 0x1b

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;ZLorg/wikipedia/donate/donationreminder/SelectableOption;Lorg/wikipedia/donate/donationreminder/SelectableOption;Ljava/lang/Throwable;I)Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    return-void
.end method

.method public final updateReadFrequencyState(I)V
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 9
    .line 10
    iget-object v3, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-static {v3, v4}, Lorg/wikipedia/donate/donationreminder/SelectableOption;->copy$default(Lorg/wikipedia/donate/donationreminder/SelectableOption;Ljava/lang/Number;)Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v6, 0x0

    .line 21
    const/16 v7, 0x1d

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;ZLorg/wikipedia/donate/donationreminder/SelectableOption;Lorg/wikipedia/donate/donationreminder/SelectableOption;Ljava/lang/Throwable;I)Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    return-void
.end method
