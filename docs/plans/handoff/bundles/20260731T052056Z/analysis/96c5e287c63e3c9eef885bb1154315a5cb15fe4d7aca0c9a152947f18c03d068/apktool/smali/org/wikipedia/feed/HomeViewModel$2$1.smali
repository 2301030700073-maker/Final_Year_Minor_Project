.class public final Lorg/wikipedia/feed/HomeViewModel$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public synthetic L$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;

    .line 10
    .line 11
    check-cast p2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;

    .line 12
    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    .line 15
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    invoke-direct {p0, v1, v2, p3}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;

    .line 31
    .line 32
    check-cast p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;

    .line 33
    .line 34
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-direct {p0, v1, v2, p3}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_1
    check-cast p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;

    .line 52
    .line 53
    check-cast p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;

    .line 54
    .line 55
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 58
    .line 59
    invoke-direct {p0, v1, v1, p3}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_2
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 72
    .line 73
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 74
    .line 75
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 76
    .line 77
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    invoke-direct {p0, v1, v2, p3}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    return-object p0

    .line 92
    :pswitch_3
    check-cast p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 93
    .line 94
    check-cast p2, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 95
    .line 96
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 97
    .line 98
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 99
    .line 100
    const/4 v2, 0x1

    .line 101
    invoke-direct {p0, v1, v2, p3}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_4
    check-cast p1, Lorg/wikipedia/feed/HomeTab;

    .line 114
    .line 115
    check-cast p2, Lorg/wikipedia/dataclient/WikiSite;

    .line 116
    .line 117
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0, v1, v2, p3}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;->item:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parsedDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 25
    .line 26
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lj$/time/LocalDateTime;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object p1, v1

    .line 40
    :goto_0
    if-eqz p0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;->item:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parsedDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 47
    .line 48
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lj$/time/LocalDateTime;

    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object p0, v1

    .line 62
    :goto_1
    if-eqz p0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    new-instance v1, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;

    .line 71
    .line 72
    sget-object p1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v1, p0}, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-object v1

    .line 82
    :pswitch_0
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;

    .line 85
    .line 86
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;

    .line 89
    .line 90
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object p1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->getParsedDateTime()Lj$/time/LocalDateTime;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move-object p1, v1

    .line 109
    :goto_2
    if-eqz p0, :cond_4

    .line 110
    .line 111
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 112
    .line 113
    if-eqz p0, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->getParsedDateTime()Lj$/time/LocalDateTime;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    move-object p0, v1

    .line 125
    :goto_3
    if-eqz p0, :cond_5

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_5

    .line 132
    .line 133
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;

    .line 134
    .line 135
    sget-object p1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 136
    .line 137
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-direct {v1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    return-object v1

    .line 145
    :pswitch_1
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;

    .line 148
    .line 149
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;

    .line 152
    .line 153
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    iget-object p1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 159
    .line 160
    if-eqz p1, :cond_6

    .line 161
    .line 162
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->localDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 163
    .line 164
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Lj$/time/LocalDateTime;

    .line 169
    .line 170
    if-eqz p1, :cond_6

    .line 171
    .line 172
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    goto :goto_4

    .line 177
    :cond_6
    move-object p1, v1

    .line 178
    :goto_4
    if-eqz p0, :cond_7

    .line 179
    .line 180
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 181
    .line 182
    if-eqz p0, :cond_7

    .line 183
    .line 184
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->localDateTime$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 185
    .line 186
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    check-cast p0, Lj$/time/LocalDateTime;

    .line 191
    .line 192
    if-eqz p0, :cond_7

    .line 193
    .line 194
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    goto :goto_5

    .line 199
    :cond_7
    move-object p0, v1

    .line 200
    :goto_5
    if-eqz p0, :cond_8

    .line 201
    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_8

    .line 207
    .line 208
    new-instance v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;

    .line 209
    .line 210
    sget-object p1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 211
    .line 212
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-direct {v1, p0}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_8
    return-object v1

    .line 220
    :pswitch_2
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 223
    .line 224
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 227
    .line 228
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    if-eqz v0, :cond_9

    .line 232
    .line 233
    if-eqz p0, :cond_9

    .line 234
    .line 235
    iget p1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->size:I

    .line 236
    .line 237
    iget p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->size:I

    .line 238
    .line 239
    sub-int/2addr p1, p0

    .line 240
    iput p1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->diffSize:I

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_9
    if-eqz v0, :cond_a

    .line 244
    .line 245
    iget p0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->size:I

    .line 246
    .line 247
    iput p0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->diffSize:I

    .line 248
    .line 249
    :cond_a
    :goto_6
    return-object v1

    .line 250
    :pswitch_3
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v0, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 253
    .line 254
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 257
    .line 258
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    if-nez v0, :cond_b

    .line 262
    .line 263
    if-eqz p0, :cond_b

    .line 264
    .line 265
    new-instance v1, Lorg/wikipedia/activitytab/TimelineDisplayItem$DateSeparator;

    .line 266
    .line 267
    iget-object p0, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 268
    .line 269
    invoke-direct {v1, p0}, Lorg/wikipedia/activitytab/TimelineDisplayItem$DateSeparator;-><init>(Ljava/util/Date;)V

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_b
    if-eqz v0, :cond_c

    .line 274
    .line 275
    if-eqz p0, :cond_c

    .line 276
    .line 277
    iget-object p0, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 278
    .line 279
    iget-object p1, v0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 280
    .line 281
    invoke-static {p1}, Lcoil3/util/BitmapsKt;->toLocalDate(Ljava/util/Date;)Lj$/time/LocalDate;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-static {p0}, Lcoil3/util/BitmapsKt;->toLocalDate(Ljava/util/Date;)Lj$/time/LocalDate;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-nez p1, :cond_c

    .line 294
    .line 295
    new-instance v1, Lorg/wikipedia/activitytab/TimelineDisplayItem$DateSeparator;

    .line 296
    .line 297
    invoke-direct {v1, p0}, Lorg/wikipedia/activitytab/TimelineDisplayItem$DateSeparator;-><init>(Ljava/util/Date;)V

    .line 298
    .line 299
    .line 300
    :cond_c
    :goto_7
    return-object v1

    .line 301
    :pswitch_4
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$0:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v0, Lorg/wikipedia/feed/HomeTab;

    .line 304
    .line 305
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$2$1;->L$1:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 308
    .line 309
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    new-instance p1, Lkotlin/Pair;

    .line 313
    .line 314
    invoke-direct {p1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    return-object p1

    .line 318
    nop

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
