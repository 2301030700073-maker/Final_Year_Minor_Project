.class public final Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$ObjectType;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$StreamType;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$StreamingFormat;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final OBJECT_TYPE_AUDIO_ONLY:Ljava/lang/String; = "a"

.field public static final OBJECT_TYPE_INIT_SEGMENT:Ljava/lang/String; = "i"

.field public static final OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO:Ljava/lang/String; = "av"

.field public static final OBJECT_TYPE_VIDEO_ONLY:Ljava/lang/String; = "v"

.field public static final STREAMING_FORMAT_DASH:Ljava/lang/String; = "d"

.field public static final STREAMING_FORMAT_HLS:Ljava/lang/String; = "h"

.field public static final STREAMING_FORMAT_SS:Ljava/lang/String; = "s"

.field public static final STREAM_TYPE_LIVE:Ljava/lang/String; = "l"

.field public static final STREAM_TYPE_VOD:Ljava/lang/String; = "v"


# instance fields
.field private final bufferedDurationUs:J

.field private chunkDurationUs:J

.field private final cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

.field private final isLive:Z

.field private objectType:Ljava/lang/String;

.field private final streamingFormat:Ljava/lang/String;

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;JLjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p3, v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 19
    .line 20
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->bufferedDurationUs:J

    .line 21
    .line 22
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->streamingFormat:Ljava/lang/String;

    .line 23
    .line 24
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->isLive:Z

    .line 25
    .line 26
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    .line 32
    .line 33
    return-void
.end method

.method private getIsInitSegment()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string v0, "i"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static getObjectType(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :cond_1
    if-ne v1, v0, :cond_2

    .line 34
    .line 35
    const-string p0, "a"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const/4 p0, 0x2

    .line 39
    if-ne v1, p0, :cond_3

    .line 40
    .line 41
    const-string/jumbo p0, "v"

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method


# virtual methods
.method public createHttpRequestHeaders()Lcom/google/common/collect/ImmutableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->getCustomData()Lcom/google/common/collect/ImmutableMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v1, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 16
    .line 17
    const/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-instance v3, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 24
    .line 25
    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "CMCD-Object"

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->getIsInitSegment()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const-wide/16 v5, 0x3e8

    .line 45
    .line 46
    if-nez v4, :cond_3

    .line 47
    .line 48
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isBitrateLoggingAllowed()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setBitrateKbps(I)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isTopBitrateLoggingAllowed()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 68
    .line 69
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 74
    .line 75
    invoke-interface {v7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    iget v7, v7, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    :goto_0
    iget v9, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 83
    .line 84
    if-ge v8, v9, :cond_1

    .line 85
    .line 86
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    iget v9, v9, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 91
    .line 92
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    add-int/lit8 v8, v8, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setTopBitrateKbps(I)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 104
    .line 105
    .line 106
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isObjectDurationLoggingAllowed()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    .line 115
    .line 116
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    cmp-long v2, v7, v9

    .line 122
    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    div-long/2addr v7, v5

    .line 126
    invoke-virtual {v3, v7, v8}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setObjectDurationMs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isObjectTypeLoggingAllowed()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_4

    .line 136
    .line 137
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 140
    .line 141
    .line 142
    :cond_4
    new-instance v2, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 143
    .line 144
    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v4, "CMCD-Request"

    .line 148
    .line 149
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->getIsInitSegment()Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-nez v4, :cond_5

    .line 164
    .line 165
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 166
    .line 167
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isBufferLengthLoggingAllowed()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_5

    .line 172
    .line 173
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->bufferedDurationUs:J

    .line 174
    .line 175
    div-long/2addr v7, v5

    .line 176
    invoke-virtual {v2, v7, v8}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setBufferLengthMs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 177
    .line 178
    .line 179
    :cond_5
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 180
    .line 181
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isMeasuredThroughputLoggingAllowed()Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_6

    .line 186
    .line 187
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 188
    .line 189
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    .line 190
    .line 191
    .line 192
    move-result-wide v7

    .line 193
    const-wide/high16 v9, -0x8000000000000000L

    .line 194
    .line 195
    cmp-long v4, v7, v9

    .line 196
    .line 197
    if-eqz v4, :cond_6

    .line 198
    .line 199
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 200
    .line 201
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    .line 202
    .line 203
    .line 204
    move-result-wide v7

    .line 205
    invoke-static {v7, v8, v5, v6}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(JJ)J

    .line 206
    .line 207
    .line 208
    move-result-wide v4

    .line 209
    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setMeasuredThroughputInKbps(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 210
    .line 211
    .line 212
    :cond_6
    new-instance v4, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 213
    .line 214
    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v5, "CMCD-Session"

    .line 218
    .line 219
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    check-cast v5, Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isContentIdLoggingAllowed()Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_7

    .line 236
    .line 237
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 238
    .line 239
    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->contentId:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setContentId(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 242
    .line 243
    .line 244
    :cond_7
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 245
    .line 246
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isSessionIdLoggingAllowed()Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-eqz v5, :cond_8

    .line 251
    .line 252
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 253
    .line 254
    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->sessionId:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 257
    .line 258
    .line 259
    :cond_8
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 260
    .line 261
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isStreamingFormatLoggingAllowed()Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_9

    .line 266
    .line 267
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->streamingFormat:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setStreamingFormat(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 270
    .line 271
    .line 272
    :cond_9
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 273
    .line 274
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isStreamTypeLoggingAllowed()Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_b

    .line 279
    .line 280
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->isLive:Z

    .line 281
    .line 282
    if-eqz v5, :cond_a

    .line 283
    .line 284
    const-string v5, "l"

    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_a
    const-string/jumbo v5, "v"

    .line 288
    .line 289
    .line 290
    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setStreamType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 291
    .line 292
    .line 293
    :cond_b
    new-instance v5, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 294
    .line 295
    invoke-direct {v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v6, "CMCD-Status"

    .line 299
    .line 300
    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 311
    .line 312
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isMaximumRequestThroughputLoggingAllowed()Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_c

    .line 317
    .line 318
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 319
    .line 320
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    .line 321
    .line 322
    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->getRequestedMaximumThroughputKbps(I)I

    .line 323
    .line 324
    .line 325
    move-result p0

    .line 326
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->setMaximumRequestedThroughputKbps(I)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 327
    .line 328
    .line 329
    :cond_c
    new-instance p0, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 330
    .line 331
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    return-object p0
.end method

.method public setChunkDurationUs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    .line 14
    .line 15
    return-object p0
.end method

.method public setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
