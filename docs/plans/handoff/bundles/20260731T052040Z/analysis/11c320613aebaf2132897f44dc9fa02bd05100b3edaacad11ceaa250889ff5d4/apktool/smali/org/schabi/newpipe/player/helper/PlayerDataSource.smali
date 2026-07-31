.class public final Lorg/schabi/newpipe/player/helper/PlayerDataSource;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;


# instance fields
.field public final cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

.field public final cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

.field public final progressiveLoadIntervalBytes:I

.field public final ytDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

.field public final ytHlsCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

.field public final ytProgressiveDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/PlayerService;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v2, 0x7f130403

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const v3, 0x7f130400

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v2, 0x7f130402

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const/high16 v0, 0x100000

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    mul-int/lit16 v0, v0, 0x400

    .line 52
    .line 53
    :goto_0
    iput v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->progressiveLoadIntervalBytes:I

    .line 54
    .line 55
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    new-instance v0, Ljava/io/File;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "exoplayer"

    .line 66
    .line 67
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget v2, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_1

    .line 83
    .line 84
    const-string v2, "PlayerDataSource"

    .line 85
    .line 86
    const-string v3, "instantiateCacheIfNeeded: could not create cache dir"

    .line 87
    .line 88
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    .line 92
    .line 93
    const-wide/32 v3, 0x4000000

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 100
    .line 101
    new-instance v4, Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;

    .line 102
    .line 103
    invoke-direct {v4, p1}, Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    .line 107
    .line 108
    .line 109
    sput-object v3, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 110
    .line 111
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 112
    .line 113
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 114
    .line 115
    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v3, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0"

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-direct {v0, p1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 132
    .line 133
    new-instance v0, Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 134
    .line 135
    sget-object v2, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 136
    .line 137
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 138
    .line 139
    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-direct {v0, p1, p2, v2, v3}, Lorg/schabi/newpipe/player/helper/CacheFactory;-><init>(Lorg/schabi/newpipe/player/PlayerService;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 150
    .line 151
    new-instance v0, Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 152
    .line 153
    sget-object v2, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 154
    .line 155
    new-instance v3, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;

    .line 156
    .line 157
    invoke-direct {v3}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-boolean v1, v3, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rangeParameterEnabled:Z

    .line 161
    .line 162
    iput-boolean v1, v3, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rnParameterEnabled:Z

    .line 163
    .line 164
    invoke-direct {v0, p1, p2, v2, v3}, Lorg/schabi/newpipe/player/helper/CacheFactory;-><init>(Lorg/schabi/newpipe/player/PlayerService;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytHlsCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 168
    .line 169
    new-instance v0, Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 170
    .line 171
    sget-object v2, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 172
    .line 173
    new-instance v3, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;

    .line 174
    .line 175
    invoke-direct {v3}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;-><init>()V

    .line 176
    .line 177
    .line 178
    const/4 v4, 0x1

    .line 179
    iput-boolean v4, v3, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rangeParameterEnabled:Z

    .line 180
    .line 181
    iput-boolean v4, v3, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rnParameterEnabled:Z

    .line 182
    .line 183
    invoke-direct {v0, p1, p2, v2, v3}, Lorg/schabi/newpipe/player/helper/CacheFactory;-><init>(Lorg/schabi/newpipe/player/PlayerService;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    .line 184
    .line 185
    .line 186
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 187
    .line 188
    new-instance v0, Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 189
    .line 190
    sget-object v2, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 191
    .line 192
    new-instance v3, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;

    .line 193
    .line 194
    invoke-direct {v3}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;-><init>()V

    .line 195
    .line 196
    .line 197
    iput-boolean v1, v3, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rangeParameterEnabled:Z

    .line 198
    .line 199
    iput-boolean v4, v3, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rnParameterEnabled:Z

    .line 200
    .line 201
    invoke-direct {v0, p1, p2, v2, v3}, Lorg/schabi/newpipe/player/helper/CacheFactory;-><init>(Lorg/schabi/newpipe/player/PlayerService;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    .line 202
    .line 203
    .line 204
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytProgressiveDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 205
    .line 206
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;->PROGRESSIVE_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    .line 207
    .line 208
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->setMaximumSize()V

    .line 209
    .line 210
    .line 211
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    .line 212
    .line 213
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->setMaximumSize()V

    .line 214
    .line 215
    .line 216
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubePostLiveStreamDvrDashManifestCreator;->POST_LIVE_DVR_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    .line 217
    .line 218
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->setMaximumSize()V

    .line 219
    .line 220
    .line 221
    return-void
.end method
