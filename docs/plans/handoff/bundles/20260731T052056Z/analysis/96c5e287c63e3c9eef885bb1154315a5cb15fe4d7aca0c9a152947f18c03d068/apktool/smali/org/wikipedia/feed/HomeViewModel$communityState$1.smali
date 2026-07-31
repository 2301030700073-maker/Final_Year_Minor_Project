.class public final Lorg/wikipedia/feed/HomeViewModel$communityState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public synthetic L$1:Ljava/lang/Object;

.field public synthetic L$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

    .line 10
    .line 11
    check-cast p2, Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 12
    .line 13
    check-cast p3, Lorg/wikipedia/feed/ForYouModule$Games;

    .line 14
    .line 15
    check-cast p4, Lkotlin/coroutines/Continuation;

    .line 16
    .line 17
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {p0, v1, v2, p4}, Lorg/wikipedia/feed/HomeViewModel$communityState$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$1:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object p3, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$2:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_0
    check-cast p1, Lorg/wikipedia/feed/CommunityContentState;

    .line 35
    .line 36
    check-cast p2, Ljava/util/Set;

    .line 37
    .line 38
    check-cast p3, Ljava/util/Set;

    .line 39
    .line 40
    check-cast p4, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, v1, v2, p4}, Lorg/wikipedia/feed/HomeViewModel$communityState$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p2, Ljava/util/Set;

    .line 51
    .line 52
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p3, Ljava/util/Set;

    .line 55
    .line 56
    iput-object p3, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$2:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

    .line 11
    .line 12
    iget-object v3, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$2:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lorg/wikipedia/feed/ForYouModule$Games;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x3

    .line 24
    new-array p1, p1, [Lorg/wikipedia/feed/ForYouModule;

    .line 25
    .line 26
    aput-object v0, p1, v2

    .line 27
    .line 28
    aput-object v3, p1, v1

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    aput-object p0, p1, v0

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_0
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v3, v0

    .line 41
    check-cast v3, Lorg/wikipedia/feed/CommunityContentState;

    .line 42
    .line 43
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/util/Set;

    .line 46
    .line 47
    check-cast v0, Ljava/util/Set;

    .line 48
    .line 49
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$communityState$1;->L$2:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Ljava/util/Set;

    .line 52
    .line 53
    check-cast p0, Ljava/util/Set;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v3, Lorg/wikipedia/feed/CommunityContentState;->cards:Ljava/util/List;

    .line 59
    .line 60
    new-instance v4, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    move-object v6, v5

    .line 80
    check-cast v6, Lorg/wikipedia/feed/model/Card;

    .line 81
    .line 82
    invoke-virtual {v6}, Lorg/wikipedia/feed/model/Card;->moduleKey()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_0

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_3

    .line 110
    .line 111
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    move-object v6, v5

    .line 116
    check-cast v6, Lorg/wikipedia/feed/model/Card;

    .line 117
    .line 118
    invoke-virtual {v6}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-interface {p0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_2

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-eqz p0, :cond_5

    .line 137
    .line 138
    :cond_4
    move v1, v2

    .line 139
    goto :goto_2

    .line 140
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_4

    .line 149
    .line 150
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Lorg/wikipedia/feed/model/Card;

    .line 155
    .line 156
    instance-of v4, v4, Lorg/wikipedia/feed/dayheader/DayHeaderCard;

    .line 157
    .line 158
    if-nez v4, :cond_6

    .line 159
    .line 160
    :goto_2
    invoke-static {}, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->getEntries()Lkotlin/enums/EnumEntries;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    if-eqz p0, :cond_7

    .line 165
    .line 166
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_7

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_a

    .line 182
    .line 183
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-nez v2, :cond_8

    .line 198
    .line 199
    iget-boolean p0, v3, Lorg/wikipedia/feed/CommunityContentState;->isInitialLoading:Z

    .line 200
    .line 201
    if-nez p0, :cond_9

    .line 202
    .line 203
    iget-object p0, v3, Lorg/wikipedia/feed/CommunityContentState;->error:Ljava/lang/Throwable;

    .line 204
    .line 205
    if-nez p0, :cond_9

    .line 206
    .line 207
    if-nez v1, :cond_9

    .line 208
    .line 209
    sget-object p0, Lorg/wikipedia/feed/FeedEmptyState;->NO_DATA:Lorg/wikipedia/feed/FeedEmptyState;

    .line 210
    .line 211
    :goto_3
    move-object v9, p0

    .line 212
    goto :goto_5

    .line 213
    :cond_9
    const/4 p0, 0x0

    .line 214
    goto :goto_3

    .line 215
    :cond_a
    :goto_4
    sget-object p0, Lorg/wikipedia/feed/FeedEmptyState;->ALL_MODULES_HIDDEN:Lorg/wikipedia/feed/FeedEmptyState;

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :goto_5
    const/4 v8, 0x0

    .line 219
    const/16 v10, 0x3e

    .line 220
    .line 221
    const/4 v5, 0x0

    .line 222
    const/4 v6, 0x0

    .line 223
    const/4 v7, 0x0

    .line 224
    move-object v4, p1

    .line 225
    invoke-static/range {v3 .. v10}, Lorg/wikipedia/feed/CommunityContentState;->copy$default(Lorg/wikipedia/feed/CommunityContentState;Ljava/util/ArrayList;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;Lorg/wikipedia/feed/FeedEmptyState;I)Lorg/wikipedia/feed/CommunityContentState;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    return-object p0

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
