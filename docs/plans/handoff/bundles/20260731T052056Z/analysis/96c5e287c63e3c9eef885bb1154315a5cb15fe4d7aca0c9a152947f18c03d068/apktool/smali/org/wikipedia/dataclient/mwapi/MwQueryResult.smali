.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryResult;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Companion;


# instance fields
.field public final allUsers:Ljava/util/List;

.field public final allmessages:Ljava/util/List;

.field public final amInfo:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;

.field public final autoCreateTempUser:Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;

.field public final converted:Ljava/util/List;

.field public final echomarkread:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

.field public final echomarkseen:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

.field public final globalUserInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

.field public final magicwords:Ljava/util/List;

.field public final namespaces:Ljava/util/Map;

.field public final notifications:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

.field public final pages:Ljava/util/List;

.field public final recentChanges:Ljava/util/List;

.field public final redirects:Ljava/util/List;

.field public final siteInfo:Lorg/wikipedia/settings/SiteInfo;

.field public final tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

.field public final unreadNotificationWikis:Ljava/util/Map;

.field public final userContributions:Ljava/util/List;

.field public final userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

.field public final users:Ljava/util/List;

.field public final watchlist:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x11

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v4, 0x16

    .line 24
    .line 25
    invoke-direct {v3, v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v5, 0x17

    .line 35
    .line 36
    invoke-direct {v4, v5}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v4}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/16 v6, 0x18

    .line 46
    .line 47
    invoke-direct {v5, v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v5}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-instance v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/16 v7, 0x19

    .line 57
    .line 58
    invoke-direct {v6, v7}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v6}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    new-instance v7, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/16 v8, 0x1a

    .line 68
    .line 69
    invoke-direct {v7, v8}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v7}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    new-instance v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/16 v9, 0x1b

    .line 79
    .line 80
    invoke-direct {v8, v9}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v8}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    new-instance v9, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    const/16 v10, 0x1c

    .line 90
    .line 91
    invoke-direct {v9, v10}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v9}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    new-instance v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/16 v11, 0x12

    .line 101
    .line 102
    invoke-direct {v10, v11}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v10}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    new-instance v12, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    const/16 v13, 0x13

    .line 112
    .line 113
    invoke-direct {v12, v13}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v12}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    new-instance v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    const/16 v15, 0x14

    .line 123
    .line 124
    invoke-direct {v14, v15}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v14}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    move/from16 v16, v2

    .line 132
    .line 133
    new-instance v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    move/from16 v17, v11

    .line 136
    .line 137
    const/16 v11, 0x15

    .line 138
    .line 139
    invoke-direct {v2, v11}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-array v2, v11, [Lkotlin/Lazy;

    .line 147
    .line 148
    const/4 v11, 0x0

    .line 149
    const/16 v18, 0x0

    .line 150
    .line 151
    aput-object v18, v2, v11

    .line 152
    .line 153
    const/4 v11, 0x1

    .line 154
    aput-object v1, v2, v11

    .line 155
    .line 156
    const/4 v1, 0x2

    .line 157
    aput-object v18, v2, v1

    .line 158
    .line 159
    const/4 v1, 0x3

    .line 160
    aput-object v18, v2, v1

    .line 161
    .line 162
    const/4 v1, 0x4

    .line 163
    aput-object v18, v2, v1

    .line 164
    .line 165
    const/4 v1, 0x5

    .line 166
    aput-object v3, v2, v1

    .line 167
    .line 168
    const/4 v1, 0x6

    .line 169
    aput-object v4, v2, v1

    .line 170
    .line 171
    const/4 v1, 0x7

    .line 172
    aput-object v5, v2, v1

    .line 173
    .line 174
    const/16 v1, 0x8

    .line 175
    .line 176
    aput-object v18, v2, v1

    .line 177
    .line 178
    const/16 v1, 0x9

    .line 179
    .line 180
    aput-object v6, v2, v1

    .line 181
    .line 182
    const/16 v1, 0xa

    .line 183
    .line 184
    aput-object v7, v2, v1

    .line 185
    .line 186
    const/16 v1, 0xb

    .line 187
    .line 188
    aput-object v18, v2, v1

    .line 189
    .line 190
    const/16 v1, 0xc

    .line 191
    .line 192
    aput-object v18, v2, v1

    .line 193
    .line 194
    const/16 v1, 0xd

    .line 195
    .line 196
    aput-object v8, v2, v1

    .line 197
    .line 198
    const/16 v1, 0xe

    .line 199
    .line 200
    aput-object v9, v2, v1

    .line 201
    .line 202
    const/16 v1, 0xf

    .line 203
    .line 204
    aput-object v18, v2, v1

    .line 205
    .line 206
    const/16 v1, 0x10

    .line 207
    .line 208
    aput-object v18, v2, v1

    .line 209
    .line 210
    aput-object v10, v2, v16

    .line 211
    .line 212
    aput-object v12, v2, v17

    .line 213
    .line 214
    aput-object v14, v2, v13

    .line 215
    .line 216
    aput-object v0, v2, v15

    .line 217
    .line 218
    sput-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->$childSerializers:[Lkotlin/Lazy;

    .line 219
    .line 220
    return-void
.end method

.method public constructor <init>(ILorg/wikipedia/dataclient/mwapi/UserInfo;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;Lorg/wikipedia/settings/SiteInfo;Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wikipedia/dataclient/mwapi/UserInfo;Ljava/util/List;Ljava/util/List;Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;Ljava/util/List;Ljava/util/List;Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->unreadNotificationWikis:Ljava/util/Map;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->unreadNotificationWikis:Ljava/util/Map;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->amInfo:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->amInfo:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->siteInfo:Lorg/wikipedia/settings/SiteInfo;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->siteInfo:Lorg/wikipedia/settings/SiteInfo;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->autoCreateTempUser:Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->autoCreateTempUser:Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->recentChanges:Ljava/util/List;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->recentChanges:Ljava/util/List;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-nez p2, :cond_6

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions:Ljava/util/List;

    goto :goto_6

    :cond_6
    iput-object p8, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions:Ljava/util/List;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allUsers:Ljava/util/List;

    goto :goto_7

    :cond_7
    iput-object p9, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allUsers:Ljava/util/List;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->globalUserInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    goto :goto_8

    :cond_8
    iput-object p10, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->globalUserInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    :goto_8
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->redirects:Ljava/util/List;

    goto :goto_9

    :cond_9
    iput-object p11, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->redirects:Ljava/util/List;

    :goto_9
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->converted:Ljava/util/List;

    move-object p2, v1

    goto :goto_a

    :cond_a
    iput-object p12, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->converted:Ljava/util/List;

    move-object p2, p12

    :goto_a
    and-int/lit16 p4, p1, 0x800

    if-nez p4, :cond_b

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    goto :goto_b

    :cond_b
    iput-object p13, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    :goto_b
    and-int/lit16 p4, p1, 0x1000

    if-nez p4, :cond_c

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->echomarkread:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

    goto :goto_c

    :cond_c
    move-object/from16 p4, p14

    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->echomarkread:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

    :goto_c
    and-int/lit16 p4, p1, 0x2000

    if-nez p4, :cond_d

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->users:Ljava/util/List;

    goto :goto_d

    :cond_d
    move-object/from16 p4, p15

    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->users:Ljava/util/List;

    :goto_d
    and-int/lit16 p4, p1, 0x4000

    if-nez p4, :cond_e

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    move-object p4, v1

    goto :goto_e

    :cond_e
    move-object/from16 p4, p16

    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    :goto_e
    const p5, 0x8000

    and-int/2addr p5, p1

    if-nez p5, :cond_f

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->echomarkseen:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

    goto :goto_f

    :cond_f
    move-object/from16 p5, p17

    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->echomarkseen:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

    :goto_f
    const/high16 p5, 0x10000

    and-int/2addr p5, p1

    if-nez p5, :cond_10

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    goto :goto_10

    :cond_10
    move-object/from16 p5, p18

    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    :goto_10
    const/high16 p5, 0x20000

    and-int/2addr p5, p1

    if-nez p5, :cond_11

    :goto_11
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->watchlist:Ljava/util/List;

    goto :goto_12

    :cond_11
    move-object/from16 p3, p19

    goto :goto_11

    :goto_12
    const/high16 p3, 0x40000

    and-int/2addr p3, p1

    if-nez p3, :cond_12

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->namespaces:Ljava/util/Map;

    goto :goto_13

    :cond_12
    move-object/from16 p3, p20

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->namespaces:Ljava/util/Map;

    :goto_13
    const/high16 p3, 0x80000

    and-int/2addr p3, p1

    if-nez p3, :cond_13

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allmessages:Ljava/util/List;

    goto :goto_14

    :cond_13
    move-object/from16 p3, p21

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allmessages:Ljava/util/List;

    :goto_14
    const/high16 p3, 0x100000

    and-int/2addr p1, p3

    if-nez p1, :cond_14

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->magicwords:Ljava/util/List;

    goto :goto_15

    :cond_14
    move-object/from16 p1, p22

    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->magicwords:Ljava/util/List;

    :goto_15
    if-eqz p2, :cond_1a

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_18

    :cond_15
    if-eqz p4, :cond_1a

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_18

    .line 3
    :cond_16
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_18
    :goto_16
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_19

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    move-object v0, p6

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 6
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 7
    iget-object v1, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;->to:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 9
    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 10
    :cond_19
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_17
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_17

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 11
    iget-object p6, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;->from:Ljava/lang/String;

    .line 12
    iput-object p6, p5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedFrom:Ljava/lang/String;

    .line 13
    iget-object p6, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;->to:Ljava/lang/String;

    .line 14
    iput-object p6, p5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedTo:Ljava/lang/String;

    goto :goto_17

    .line 15
    :cond_1a
    :goto_18
    iget-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->redirects:Ljava/util/List;

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_1a

    :cond_1b
    if-eqz p1, :cond_1f

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_1a

    .line 16
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1e
    :goto_19
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;

    .line 18
    iget-object p5, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 19
    iget-object p6, p4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->to:Ljava/lang/String;

    .line 20
    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1e

    .line 21
    iget-object p5, p4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->from:Ljava/lang/String;

    .line 22
    iput-object p5, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->redirectFrom:Ljava/lang/String;

    .line 23
    iget-object p4, p4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->toFragment:Ljava/lang/String;

    if-eqz p4, :cond_1e

    .line 24
    iget-object p5, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "#"

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    goto :goto_19

    :cond_1f
    :goto_1a
    return-void
.end method


# virtual methods
.method public final captchaId()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->amInfo:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;

    .line 3
    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;->requests:Ljava/util/List;

    .line 7
    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v2, "captchaId"

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v3, v1

    .line 27
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;

    .line 28
    .line 29
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->fields:Ljava/util/Map;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x1

    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v1, v0

    .line 42
    :goto_0
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object p0, v1, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->fields:Ljava/util/Map;

    .line 47
    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->value:Ljava/lang/String;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_2
    return-object v0
.end method

.method public final csrfToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->csrf:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final hasHCaptchaRequest()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->amInfo:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;

    .line 4
    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;->requests:Ljava/util/List;

    .line 8
    .line 9
    if-eqz p0, :cond_3

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;

    .line 27
    .line 28
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->provider:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    const-string v3, ""

    .line 33
    .line 34
    :cond_1
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string v4, "hcaptcha"

    .line 44
    .line 45
    invoke-static {v3, v4, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    move-object v1, v2

    .line 52
    :cond_2
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;

    .line 53
    .line 54
    :cond_3
    if-eqz v1, :cond_4

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_4
    return v0
.end method

.method public final isEditProtected()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->protection:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lorg/wikipedia/dataclient/page/Protection;

    .line 36
    .line 37
    iget-object v2, v1, Lorg/wikipedia/dataclient/page/Protection;->type:Ljava/lang/String;

    .line 38
    .line 39
    const-string v3, "edit"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->groups:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget-object v2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 57
    .line 58
    :goto_0
    iget-object v1, v1, Lorg/wikipedia/dataclient/page/Protection;->level:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    const/4 p0, 0x1

    .line 67
    return p0

    .line 68
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 69
    return p0
.end method
