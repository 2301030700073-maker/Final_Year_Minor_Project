.class public final synthetic Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/model/Card;I)V
    .locals 0

    .line 9
    iput p3, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lorg/wikipedia/feed/HomeAction$ManageModulesClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$ManageModulesClick;

    .line 4
    .line 5
    sget-object v2, Lorg/wikipedia/feed/HomeAction$LoadMoreForYouContent;->INSTANCE:Lorg/wikipedia/feed/HomeAction$LoadMoreForYouContent;

    .line 6
    .line 7
    sget-object v3, Lorg/wikipedia/feed/HomeAction$TabClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$TabClick;

    .line 8
    .line 9
    sget-object v4, Lorg/wikipedia/feed/HomeAction$UpdateTabCount;->INSTANCE:Lorg/wikipedia/feed/HomeAction$UpdateTabCount;

    .line 10
    .line 11
    sget-object v5, Lorg/wikipedia/feed/HomeAction$NotificationClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$NotificationClick;

    .line 12
    .line 13
    sget-object v6, Lorg/wikipedia/feed/HomeAction$ManageLanguagesClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$ManageLanguagesClick;

    .line 14
    .line 15
    sget-object v7, Lorg/wikipedia/feed/HomeAction$PageOverflowDismiss;->INSTANCE:Lorg/wikipedia/feed/HomeAction$PageOverflowDismiss;

    .line 16
    .line 17
    sget-object v8, Lorg/wikipedia/feed/HomeAction$LoadMoreCommunityContent;->INSTANCE:Lorg/wikipedia/feed/HomeAction$LoadMoreCommunityContent;

    .line 18
    .line 19
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    sget-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->READING_LIST:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 27
    .line 28
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v9

    .line 32
    :pswitch_0
    sget-object v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$CountdownFinished;->INSTANCE:Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$CountdownFinished;

    .line 33
    .line 34
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-object v9

    .line 38
    :pswitch_1
    invoke-interface {p0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    :pswitch_2
    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-object v9

    .line 46
    :pswitch_3
    invoke-interface {p0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v9

    .line 50
    :pswitch_4
    invoke-interface {p0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-object v9

    .line 54
    :pswitch_5
    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-object v9

    .line 58
    :pswitch_6
    invoke-interface {p0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-object v9

    .line 62
    :pswitch_7
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-object v9

    .line 66
    :pswitch_8
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object v9

    .line 70
    :pswitch_9
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    return-object v9

    .line 74
    :pswitch_a
    sget-object v0, Lorg/wikipedia/feed/HomeAction$PlacesTeaserClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$PlacesTeaserClick;

    .line 75
    .line 76
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    return-object v9

    .line 80
    :pswitch_b
    sget-object v0, Lorg/wikipedia/feed/HomeAction$GoToGamesHubClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$GoToGamesHubClick;

    .line 81
    .line 82
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    return-object v9

    .line 86
    :pswitch_c
    sget-object v0, Lorg/wikipedia/feed/HomeAction$ShuffleClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$ShuffleClick;

    .line 87
    .line 88
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    return-object v9

    .line 92
    :pswitch_d
    sget-object v0, Lorg/wikipedia/feed/HomeAction$SeeAllRecommendationsClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$SeeAllRecommendationsClick;

    .line 93
    .line 94
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    return-object v9

    .line 98
    :pswitch_e
    sget-object v0, Lorg/wikipedia/feed/HomeAction$DiscoverTeaserClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$DiscoverTeaserClick;

    .line 99
    .line 100
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    return-object v9

    .line 104
    :pswitch_f
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    return-object v9

    .line 108
    :pswitch_10
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 109
    .line 110
    const-string v1, "NEWS"

    .line 111
    .line 112
    invoke-direct {v0, v1}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    return-object v9

    .line 119
    :pswitch_11
    invoke-interface {p0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    return-object v9

    .line 123
    :pswitch_12
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    return-object v9

    .line 127
    :pswitch_13
    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    return-object v9

    .line 131
    :pswitch_14
    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    return-object v9

    .line 135
    :pswitch_15
    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    return-object v9

    .line 139
    :pswitch_16
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 140
    .line 141
    const-string v1, "DID_YOU_KNOW"

    .line 142
    .line 143
    invoke-direct {v0, v1}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    return-object v9

    .line 150
    :pswitch_17
    invoke-interface {p0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    return-object v9

    .line 154
    :pswitch_18
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 155
    .line 156
    const-string v1, "FEATURED_ARTICLE"

    .line 157
    .line 158
    invoke-direct {v0, v1}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    return-object v9

    .line 165
    :pswitch_19
    invoke-interface {p0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    return-object v9

    .line 169
    :pswitch_1a
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 170
    .line 171
    const-string v1, "ON_THIS_DAY"

    .line 172
    .line 173
    invoke-direct {v0, v1}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    return-object v9

    .line 180
    :pswitch_1b
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 181
    .line 182
    const-string v1, "TOP_READ"

    .line 183
    .line 184
    invoke-direct {v0, v1}, Lorg/wikipedia/feed/HomeAction$HideModule;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    return-object v9

    .line 191
    :pswitch_1c
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    return-object v9

    .line 195
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
