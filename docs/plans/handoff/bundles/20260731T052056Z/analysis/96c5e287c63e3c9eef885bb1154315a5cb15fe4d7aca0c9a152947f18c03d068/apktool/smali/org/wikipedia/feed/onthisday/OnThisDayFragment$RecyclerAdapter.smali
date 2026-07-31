.class public final Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final events:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;

.field public final wiki:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->$r8$classId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/lang/Object;

    .line 331
    iput-object p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 17
    .line 18
    const v1, 0x7f1204ac

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    sget-object p2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 32
    .line 33
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    iget-object v4, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v4, Ljava/util/ArrayList;

    .line 60
    .line 61
    new-instance v5, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 62
    .line 63
    invoke-direct {v5, p1, v2, v1, v3}, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;ILjava/lang/String;Ljava/lang/Integer;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 75
    .line 76
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 79
    .line 80
    const v4, 0x7f080147

    .line 81
    .line 82
    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string v5, "commons"

    .line 88
    .line 89
    invoke-direct {p2, v1, v2, v5, v4}, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;ILjava/lang/String;Ljava/lang/Integer;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Ljava/util/ArrayList;

    .line 98
    .line 99
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 100
    .line 101
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 104
    .line 105
    const v4, 0x7f080214

    .line 106
    .line 107
    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const-string/jumbo v5, "wikidata"

    .line 113
    .line 114
    .line 115
    invoke-direct {p2, v1, v2, v5, v4}, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;ILjava/lang/String;Ljava/lang/Integer;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Ljava/util/ArrayList;

    .line 124
    .line 125
    iget-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p2, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 128
    .line 129
    const v1, 0x7f120490

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p1, Ljava/util/ArrayList;

    .line 145
    .line 146
    iget-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p2, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 149
    .line 150
    const v1, 0x7f1209d9

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Ljava/util/ArrayList;

    .line 166
    .line 167
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 168
    .line 169
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 172
    .line 173
    const v2, 0x7f1209d7

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-direct {p2, v1, v0, v2, v3}, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;ILjava/lang/String;Ljava/lang/Integer;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, Ljava/util/ArrayList;

    .line 192
    .line 193
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 194
    .line 195
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 198
    .line 199
    const v2, 0x7f12045b

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    const v3, 0x7f08011c

    .line 210
    .line 211
    .line 212
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-direct {p2, v1, v0, v2, v3}, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;ILjava/lang/String;Ljava/lang/Integer;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p1, Ljava/util/ArrayList;

    .line 225
    .line 226
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 227
    .line 228
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 231
    .line 232
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 233
    .line 234
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-static {v2}, Lorg/wikipedia/staticdata/TalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    const v3, 0x7f0801af

    .line 247
    .line 248
    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-direct {p2, v1, v0, v2, v3}, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;ILjava/lang/String;Ljava/lang/Integer;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast p1, Ljava/util/ArrayList;

    .line 262
    .line 263
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 264
    .line 265
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 268
    .line 269
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-static {v2}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    const v3, 0x7f08020a

    .line 282
    .line 283
    .line 284
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-direct {p2, v1, v0, v2, v3}, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;ILjava/lang/String;Ljava/lang/Integer;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast p1, Ljava/util/ArrayList;

    .line 297
    .line 298
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 299
    .line 300
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 303
    .line 304
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-static {v1}, Lorg/wikipedia/staticdata/UserTalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    const v2, 0x7f0801b7

    .line 317
    .line 318
    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-direct {p2, p0, v0, v1, v2}, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;ILjava/lang/String;Ljava/lang/Integer;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    add-int/lit8 p0, p0, 0x1

    .line 24
    .line 25
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->$r8$classId:I

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
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    instance-of v3, v3, Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 27
    .line 28
    const v4, 0x7f120490

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    instance-of p0, p0, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    move v1, v2

    .line 52
    :cond_1
    :goto_0
    return v1

    .line 53
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-ge p1, p0, :cond_2

    .line 62
    .line 63
    move v1, v2

    .line 64
    :cond_2
    return v1

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    instance-of v0, p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$FilterHeaderViewHolder;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$FilterHeaderViewHolder;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    check-cast p0, Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$FilterHeaderViewHolder;->headerText:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$AddLanguageViewHolder;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$AddLanguageViewHolder;

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p0, Ljava/lang/String;

    .line 47
    .line 48
    iget-object p2, p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$AddLanguageViewHolder;->filterItemView:Lorg/wikipedia/usercontrib/UserContribFilterItemView;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->setCallback(Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p0}, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->setSingleLabel(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$ItemViewHolder;

    .line 58
    .line 59
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 67
    .line 68
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribFilterItemView;

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->setContents(Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :pswitch_0
    instance-of v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;

    .line 84
    .line 85
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 94
    .line 95
    iget-object p2, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 96
    .line 97
    iget-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 103
    .line 104
    iget-object p1, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->otdEventLayout:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 105
    .line 106
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, Lorg/wikipedia/views/AppTextView;

    .line 109
    .line 110
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    .line 113
    .line 114
    iget-object v4, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    const/4 v5, 0x0

    .line 124
    const/16 v6, 0x8

    .line 125
    .line 126
    if-nez v4, :cond_2

    .line 127
    .line 128
    move v4, v6

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    move v4, v5

    .line 131
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v2, Landroid/widget/TextView;

    .line 137
    .line 138
    sget-object v4, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 139
    .line 140
    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->yearToStringWithEra(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v2, Lorg/wikipedia/views/AppTextView;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v4, p2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v1, v0, v4}, Lorg/wikipedia/util/DateUtil;->getYearDifferenceString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 173
    .line 174
    if-eqz v0, :cond_3

    .line 175
    .line 176
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_3
    new-instance v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 184
    .line 185
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;-><init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 189
    .line 190
    .line 191
    const/4 p2, 0x2

    .line 192
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 193
    .line 194
    .line 195
    new-instance p2, Lokhttp3/Cache$RealCacheRequest;

    .line 196
    .line 197
    new-instance v0, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-direct {p2, v3, p1, v0}, Lokhttp3/Cache$RealCacheRequest;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Lokhttp3/Cache$RealCacheRequest;->attach()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    const/4 p1, 0x1

    .line 216
    if-ne p0, p1, :cond_4

    .line 217
    .line 218
    move v5, v6

    .line 219
    :cond_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    :cond_5
    :goto_2
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/content/Context;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    if-eq p2, p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribFilterItemView;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lorg/wikipedia/usercontrib/UserContribFilterItemView;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->setCallback(Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity$ItemViewHolder;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity$AddLanguageViewHolder;

    .line 35
    .line 36
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribFilterItemView;

    .line 37
    .line 38
    invoke-direct {p1, v0}, Lorg/wikipedia/usercontrib/UserContribFilterItemView;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v2, p1}, Lorg/wikipedia/usercontrib/UserContribFilterActivity$AddLanguageViewHolder;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;Lorg/wikipedia/usercontrib/UserContribFilterItemView;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity$FilterHeaderViewHolder;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const v0, 0x7f0c05da

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Lorg/wikipedia/usercontrib/UserContribFilterActivity$FilterHeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-object p0

    .line 65
    :pswitch_0
    check-cast v2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    if-ne p2, v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const p2, 0x7f0c05dd

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    new-instance p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$FooterViewHolder;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    const p2, 0x7f090091

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    new-instance p2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;

    .line 101
    .line 102
    const/4 v0, 0x4

    .line 103
    invoke-direct {p2, v2, v0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_2

    .line 110
    .line 111
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    const v0, 0x7f0c05c9

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    move-object p2, p1

    .line 127
    check-cast p2, Landroid/widget/LinearLayout;

    .line 128
    .line 129
    const v0, 0x7f0904a8

    .line 130
    .line 131
    .line 132
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const/4 v3, 0x0

    .line 137
    const-string v4, "Missing required view with ID: "

    .line 138
    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    move-object p1, v1

    .line 142
    check-cast p1, Landroid/widget/LinearLayout;

    .line 143
    .line 144
    const p1, 0x7f090489

    .line 145
    .line 146
    .line 147
    invoke-static {v1, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    const p1, 0x7f0901a3

    .line 154
    .line 155
    .line 156
    invoke-static {v0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Landroid/widget/TextView;

    .line 161
    .line 162
    if-eqz v5, :cond_3

    .line 163
    .line 164
    const p1, 0x7f0902b9

    .line 165
    .line 166
    .line 167
    invoke-static {v0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 172
    .line 173
    if-eqz v5, :cond_3

    .line 174
    .line 175
    const p1, 0x7f0902e2

    .line 176
    .line 177
    .line 178
    invoke-static {v0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Landroid/widget/FrameLayout;

    .line 183
    .line 184
    if-eqz v5, :cond_3

    .line 185
    .line 186
    const p1, 0x7f0906c3

    .line 187
    .line 188
    .line 189
    invoke-static {v0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Landroid/widget/TextView;

    .line 194
    .line 195
    if-eqz v5, :cond_3

    .line 196
    .line 197
    check-cast v0, Lorg/wikipedia/views/WikiCardView;

    .line 198
    .line 199
    const p1, 0x7f0904f1

    .line 200
    .line 201
    .line 202
    invoke-static {v1, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    move-object v6, v0

    .line 207
    check-cast v6, Lcom/google/android/material/tabs/TabLayout;

    .line 208
    .line 209
    if-eqz v6, :cond_4

    .line 210
    .line 211
    const p1, 0x7f0904f2

    .line 212
    .line 213
    .line 214
    invoke-static {v1, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    move-object v7, v0

    .line 219
    check-cast v7, Landroidx/viewpager2/widget/ViewPager2;

    .line 220
    .line 221
    if-eqz v7, :cond_4

    .line 222
    .line 223
    const p1, 0x7f090534

    .line 224
    .line 225
    .line 226
    invoke-static {v1, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    move-object v8, v0

    .line 231
    check-cast v8, Landroid/widget/ImageView;

    .line 232
    .line 233
    if-eqz v8, :cond_4

    .line 234
    .line 235
    const p1, 0x7f090697

    .line 236
    .line 237
    .line 238
    invoke-static {v1, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    move-object v9, v0

    .line 243
    check-cast v9, Lorg/wikipedia/views/AppTextView;

    .line 244
    .line 245
    if-eqz v9, :cond_4

    .line 246
    .line 247
    const p1, 0x7f0907a3

    .line 248
    .line 249
    .line 250
    invoke-static {v1, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    move-object v10, v0

    .line 255
    check-cast v10, Landroid/widget/TextView;

    .line 256
    .line 257
    if-eqz v10, :cond_4

    .line 258
    .line 259
    const p1, 0x7f0907a5

    .line 260
    .line 261
    .line 262
    invoke-static {v1, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Landroid/widget/LinearLayout;

    .line 267
    .line 268
    if-eqz v0, :cond_4

    .line 269
    .line 270
    const p1, 0x7f0907a6

    .line 271
    .line 272
    .line 273
    invoke-static {v1, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    move-object v11, v0

    .line 278
    check-cast v11, Lorg/wikipedia/views/AppTextView;

    .line 279
    .line 280
    if-eqz v11, :cond_4

    .line 281
    .line 282
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 283
    .line 284
    invoke-direct/range {v5 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 285
    .line 286
    .line 287
    new-instance p1, Lretrofit2/OkHttpCall$1;

    .line 288
    .line 289
    const/16 v0, 0xc

    .line 290
    .line 291
    invoke-direct {p1, v0, p2, v5}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    new-instance p2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;

    .line 295
    .line 296
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 299
    .line 300
    invoke-direct {p2, v2, p1, p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Lretrofit2/OkHttpCall$1;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 301
    .line 302
    .line 303
    move-object p1, p2

    .line 304
    goto :goto_2

    .line 305
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :goto_1
    move-object p1, v3

    .line 321
    goto :goto_2

    .line 322
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto :goto_1

    .line 354
    :goto_2
    return-object p1

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSelected(Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-object v0, p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;->filterCode:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 8
    .line 9
    iget p1, p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;->type:I

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const p1, 0x7f12069d

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_0
    const/4 v2, 0x1

    .line 26
    if-ne p1, v2, :cond_5

    .line 27
    .line 28
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 29
    .line 30
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterExcludedNs()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v2, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->NAMESPACE_LIST:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->getNamespaceCode(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, -0x1

    .line 41
    if-ne v0, v1, :cond_3

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    sget-object v0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->NAMESPACE_LIST:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ge p1, v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    sget-object p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->NAMESPACE_LIST:Ljava/util/List;

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Lkotlin/uuid/UuidKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p1, v0}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_1
    :try_start_0
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance v1, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 105
    .line 106
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 107
    .line 108
    const/4 v3, 0x2

    .line 109
    invoke-direct {v1, v2, v3}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_2

    .line 117
    :catch_0
    move-exception p1

    .line 118
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    :goto_2
    const v0, 0x7f12069c

    .line 123
    .line 124
    .line 125
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    instance-of p0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;

    .line 12
    .line 13
    iget-object p0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->otdEventLayout:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-object p1, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const v0, 0x7f01004b

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
