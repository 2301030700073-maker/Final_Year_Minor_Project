.class public abstract Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)I
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    move v3, v1

    .line 5
    move v4, v3

    .line 6
    move v5, v2

    .line 7
    :goto_0
    array-length v6, p0

    .line 8
    if-ge v3, v6, :cond_4

    .line 9
    .line 10
    aget-object v6, p0, v3

    .line 11
    .line 12
    move v7, v1

    .line 13
    move v8, v7

    .line 14
    :goto_1
    iget v9, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 15
    .line 16
    if-ge v7, v9, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    invoke-interface {v6, v9}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    and-int/lit8 v9, v9, 0x7

    .line 27
    .line 28
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    add-int/lit8 v7, v7, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    aget v6, p2, v3

    .line 36
    .line 37
    if-nez v6, :cond_1

    .line 38
    .line 39
    move v6, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    move v6, v1

    .line 42
    :goto_2
    if-gt v8, v4, :cond_2

    .line 43
    .line 44
    if-ne v8, v4, :cond_3

    .line 45
    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    if-nez v5, :cond_3

    .line 49
    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    :cond_2
    move v0, v3

    .line 53
    move v5, v6

    .line 54
    move v4, v8

    .line 55
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    return v0
.end method

.method private static getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    aput v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupports([Lcom/google/android/exoplayer2/RendererCapabilities;)[I
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget-object v3, p0, v2

    .line 8
    .line 9
    invoke-interface {v3}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    aput v3, v1, v2

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 4
    .line 5
    return-void
.end method

.method public abstract selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 13

    .line 1
    array-length v1, p1

    .line 2
    const/4 v2, 0x1

    .line 3
    add-int/2addr v1, v2

    .line 4
    new-array v1, v1, [I

    .line 5
    .line 6
    array-length v3, p1

    .line 7
    add-int/2addr v3, v2

    .line 8
    new-array v4, v3, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 9
    .line 10
    array-length v5, p1

    .line 11
    add-int/2addr v5, v2

    .line 12
    new-array v11, v5, [[[I

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    move v6, v5

    .line 16
    :goto_0
    if-ge v6, v3, :cond_0

    .line 17
    .line 18
    iget v7, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 19
    .line 20
    new-array v8, v7, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 21
    .line 22
    aput-object v8, v4, v6

    .line 23
    .line 24
    new-array v7, v7, [[I

    .line 25
    .line 26
    aput-object v7, v11, v6

    .line 27
    .line 28
    add-int/lit8 v6, v6, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupports([Lcom/google/android/exoplayer2/RendererCapabilities;)[I

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    move v3, v5

    .line 36
    :goto_1
    iget v6, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 37
    .line 38
    if-ge v3, v6, :cond_3

    .line 39
    .line 40
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    iget v7, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->type:I

    .line 45
    .line 46
    const/4 v8, 0x5

    .line 47
    if-ne v7, v8, :cond_1

    .line 48
    .line 49
    move v7, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    move v7, v5

    .line 52
    :goto_2
    invoke-static {p1, v6, v1, v7}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    array-length v8, p1

    .line 57
    if-ne v7, v8, :cond_2

    .line 58
    .line 59
    iget v8, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 60
    .line 61
    new-array v8, v8, [I

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    aget-object v8, p1, v7

    .line 65
    .line 66
    invoke-static {v8, v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    :goto_3
    aget v10, v1, v7

    .line 71
    .line 72
    aget-object v12, v4, v7

    .line 73
    .line 74
    aput-object v6, v12, v10

    .line 75
    .line 76
    aget-object v6, v11, v7

    .line 77
    .line 78
    aput-object v8, v6, v10

    .line 79
    .line 80
    add-int/2addr v10, v2

    .line 81
    aput v10, v1, v7

    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    array-length v0, p1

    .line 87
    new-array v0, v0, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 88
    .line 89
    array-length v2, p1

    .line 90
    new-array v7, v2, [Ljava/lang/String;

    .line 91
    .line 92
    array-length v2, p1

    .line 93
    new-array v8, v2, [I

    .line 94
    .line 95
    :goto_4
    array-length v2, p1

    .line 96
    if-ge v5, v2, :cond_4

    .line 97
    .line 98
    aget v2, v1, v5

    .line 99
    .line 100
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 101
    .line 102
    aget-object v6, v4, v5

    .line 103
    .line 104
    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 109
    .line 110
    invoke-direct {v3, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 111
    .line 112
    .line 113
    aput-object v3, v0, v5

    .line 114
    .line 115
    aget-object v3, v11, v5

    .line 116
    .line 117
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, [[I

    .line 122
    .line 123
    aput-object v2, v11, v5

    .line 124
    .line 125
    aget-object v2, p1, v5

    .line 126
    .line 127
    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    aput-object v2, v7, v5

    .line 132
    .line 133
    aget-object v2, p1, v5

    .line 134
    .line 135
    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    aput v2, v8, v5

    .line 140
    .line 141
    add-int/lit8 v5, v5, 0x1

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_4
    array-length v2, p1

    .line 145
    aget v1, v1, v2

    .line 146
    .line 147
    new-instance v12, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 148
    .line 149
    array-length p1, p1

    .line 150
    aget-object p1, v4, p1

    .line 151
    .line 152
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 157
    .line 158
    invoke-direct {v12, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 159
    .line 160
    .line 161
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 162
    .line 163
    move-object v10, v9

    .line 164
    move-object v9, v0

    .line 165
    invoke-direct/range {v6 .. v12}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([Ljava/lang/String;[I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 166
    .line 167
    .line 168
    move-object v7, v6

    .line 169
    move-object v9, v10

    .line 170
    move-object v8, v11

    .line 171
    move-object v6, p0

    .line 172
    move-object/from16 v10, p3

    .line 173
    .line 174
    move-object/from16 v11, p4

    .line 175
    .line 176
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    move-object v6, v7

    .line 181
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p1, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 184
    .line 185
    invoke-static {v6, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;->buildTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Lcom/google/android/exoplayer2/Tracks;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 190
    .line 191
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v1, [Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 194
    .line 195
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p0, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 198
    .line 199
    invoke-direct {v0, v1, p0, p1, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/Tracks;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    return-object v0
.end method
