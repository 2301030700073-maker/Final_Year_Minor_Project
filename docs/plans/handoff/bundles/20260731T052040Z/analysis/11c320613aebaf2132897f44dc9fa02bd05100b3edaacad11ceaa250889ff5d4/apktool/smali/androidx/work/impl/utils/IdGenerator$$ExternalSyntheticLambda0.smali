.class public final synthetic Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 12
    iput p3, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$2:I

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 12
    .line 13
    new-instance v0, Lorg/schabi/newpipe/streams/DataReader$1;

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/streams/DataReader$1;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lokio/ByteString;

    .line 32
    .line 33
    array-length v3, p0

    .line 34
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v1, p0}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader$1;->close()V

    .line 42
    .line 43
    .line 44
    const p0, 0x7f0a023a

    .line 45
    .line 46
    .line 47
    if-ne v2, p0, :cond_0

    .line 48
    .line 49
    const-string p0, "MD5"

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const p0, 0x7f0a036d

    .line 57
    .line 58
    .line 59
    if-ne v2, p0, :cond_1

    .line 60
    .line 61
    const-string p0, "SHA-1"

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    :try_start_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader$1;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    throw p0

    .line 82
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 83
    .line 84
    invoke-static {v2}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelTabExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->fetchPage()V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 96
    .line 97
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 98
    .line 99
    iget v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 100
    .line 101
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 102
    .line 103
    move-object v4, v3

    .line 104
    check-cast v4, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 105
    .line 106
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {v0, v2, v4, v1}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :try_start_2
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-exception v1

    .line 128
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/ListInfo;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->itemsList:Ljava/util/List;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 141
    .line 142
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :pswitch_1
    check-cast p0, Landroidx/work/impl/utils/IdGenerator;

    .line 147
    .line 148
    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v3, "next_job_scheduler_id"

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Landroidx/work/impl/model/PreferenceDao_Impl;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_2

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 163
    .line 164
    .line 165
    move-result-wide v4

    .line 166
    long-to-int v0, v4

    .line 167
    goto :goto_3

    .line 168
    :cond_2
    move v0, v1

    .line 169
    :goto_3
    const v4, 0x7fffffff

    .line 170
    .line 171
    .line 172
    if-ne v0, v4, :cond_3

    .line 173
    .line 174
    move v4, v1

    .line 175
    goto :goto_4

    .line 176
    :cond_3
    add-int/lit8 v4, v0, 0x1

    .line 177
    .line 178
    :goto_4
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    new-instance v6, Landroidx/work/impl/model/Preference;

    .line 183
    .line 184
    int-to-long v7, v4

    .line 185
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-direct {v6, v3, v4}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    .line 191
    .line 192
    iget-object v4, v5, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 193
    .line 194
    new-instance v7, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 195
    .line 196
    const/4 v8, 0x3

    .line 197
    invoke-direct {v7, v5, v6, v8}, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 198
    .line 199
    .line 200
    const/4 v5, 0x1

    .line 201
    invoke-static {v4, v1, v5, v7}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    if-ltz v0, :cond_4

    .line 205
    .line 206
    if-gt v0, v2, :cond_4

    .line 207
    .line 208
    move v1, v0

    .line 209
    goto :goto_5

    .line 210
    :cond_4
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    new-instance v0, Landroidx/work/impl/model/Preference;

    .line 215
    .line 216
    const-wide/16 v6, 0x1

    .line 217
    .line 218
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-direct {v0, v3, v2}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    .line 224
    .line 225
    iget-object v2, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 226
    .line 227
    new-instance v3, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 228
    .line 229
    invoke-direct {v3, p0, v0, v8}, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 230
    .line 231
    .line 232
    invoke-static {v2, v1, v5, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    return-object p0

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
