.class public abstract Lorg/schabi/newpipe/util/ExtractorHelper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final CACHE:Lorg/schabi/newpipe/util/InfoCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->INSTANCE:Lorg/schabi/newpipe/util/InfoCache;

    .line 2
    .line 3
    sput-object v0, Lorg/schabi/newpipe/util/ExtractorHelper;->CACHE:Lorg/schabi/newpipe/util/InfoCache;

    .line 4
    .line 5
    return-void
.end method

.method public static checkCache(ZILjava/lang/String;ILio/reactivex/rxjava3/internal/operators/single/SingleAmb;)Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;

    .line 5
    .line 6
    invoke-direct {v0, p1, p3, p2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p4, v0, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;-><init>(Lio/reactivex/rxjava3/core/Single;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    sget-object p0, Lorg/schabi/newpipe/util/ExtractorHelper;->CACHE:Lorg/schabi/newpipe/util/InfoCache;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    invoke-static {p1, p3, p2}, Lorg/schabi/newpipe/util/InfoCache;->keyOf(IILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-object v1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1

    .line 37
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-direct {p0, p1, p3, p2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-direct {p1, p0, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;

    .line 52
    .line 53
    const/4 p3, 0x2

    .line 54
    invoke-direct {p0, v1, p3}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-array p3, p3, [Lio/reactivex/rxjava3/core/MaybeSource;

    .line 58
    .line 59
    aput-object p1, p3, p2

    .line 60
    .line 61
    aput-object p0, p3, v2

    .line 62
    .line 63
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;

    .line 64
    .line 65
    invoke-direct {p0, p3, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 71
    .line 72
    .line 73
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;

    .line 74
    .line 75
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;)V

    .line 76
    .line 77
    .line 78
    return-object p0
.end method

.method public static checkServiceId(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const-string p0, "serviceId is NO_SERVICE_ID"

    .line 6
    .line 7
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, v1, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;-><init>(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 11
    .line 12
    invoke-direct {v2, v0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {p2, p0, p1, v0, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;ILio/reactivex/rxjava3/internal/operators/single/SingleAmb;)Lio/reactivex/rxjava3/core/Single;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static getChannelTab(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Z)Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p0, v0, v2, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;ILio/reactivex/rxjava3/internal/operators/single/SingleAmb;)Lio/reactivex/rxjava3/core/Single;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, p0, v1, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;-><init>(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    invoke-direct {v2, v0, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p0, p1, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;ILio/reactivex/rxjava3/internal/operators/single/SingleAmb;)Lio/reactivex/rxjava3/core/Single;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;-><init>(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-static {p2, p0, p1, v0, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;ILio/reactivex/rxjava3/internal/operators/single/SingleAmb;)Lio/reactivex/rxjava3/core/Single;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static showMetaInfoInTextView(Ljava/util/List;Landroid/widget/TextView;Landroid/view/View;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const v2, 0x7f1304a1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    :cond_0
    move-object v0, p1

    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v1, :cond_9

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 55
    .line 56
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->getTitle()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    const-string v4, "<b>"

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->getTitle()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v4, "</b> \u2022 "

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->getContent()Lorg/schabi/newpipe/extractor/stream/Description;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const-string v5, "."

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/node/Owner$-CC;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    move v4, v3

    .line 111
    :goto_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->getUrls()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-ge v4, v5, :cond_2

    .line 120
    .line 121
    if-nez v4, :cond_5

    .line 122
    .line 123
    const-string v5, " \u2022 "

    .line 124
    .line 125
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    const-string v5, "<br/><br/>"

    .line 130
    .line 131
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :goto_1
    const-string v5, "<a href=\""

    .line 135
    .line 136
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->getUrls()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v5, "\">"

    .line 151
    .line 152
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->getUrlTexts()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    move v6, v3

    .line 170
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-ge v6, v7, :cond_7

    .line 175
    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_6

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_8

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v5, "</a>"

    .line 232
    .line 233
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    add-int/lit8 v4, v4, 0x1

    .line 237
    .line 238
    goto :goto_0

    .line 239
    :cond_9
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    sget-object v5, Lorg/schabi/newpipe/util/text/TextLinkifier;->SET_LINK_MOVEMENT_METHOD:Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 247
    .line 248
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 249
    .line 250
    const/16 v0, 0x18

    .line 251
    .line 252
    if-lt p2, v0, :cond_a

    .line 253
    .line 254
    const/4 p2, 0x2

    .line 255
    invoke-static {p2, p0}, Lus/shandian/giga/util/Utility;->fromHtml(ILjava/lang/String;)Landroid/text/Spanned;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    :goto_4
    move-object v1, p0

    .line 260
    goto :goto_5

    .line 261
    :cond_a
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    goto :goto_4

    .line 266
    :goto_5
    const/4 v2, 0x0

    .line 267
    const/4 v3, 0x0

    .line 268
    move-object v0, p1

    .line 269
    move-object v4, p3

    .line 270
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/text/TextLinkifier;->changeLinkIntents(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :goto_6
    const/16 p0, 0x8

    .line 275
    .line 276
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    return-void
.end method
