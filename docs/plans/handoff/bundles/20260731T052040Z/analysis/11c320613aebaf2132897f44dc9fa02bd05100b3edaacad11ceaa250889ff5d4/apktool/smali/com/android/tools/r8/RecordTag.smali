.class public abstract synthetic Lcom/android/tools/r8/RecordTag;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static $default$asMediaItem(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/MediaItem;
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getThumbnailUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getUploaderName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->makeMediaId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setRequestMetadata(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method

.method public static $default$makeMediaId(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "["

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, "]"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static $default$sameAs(Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 5

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_2

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    .line 6
    .line 7
    iget-object p0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/BaseBundle;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p1, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Landroid/os/Bundle;

    .line 33
    .line 34
    iget-object p1, p1, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_7

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-ne v2, v0, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    instance-of v3, v2, Landroid/graphics/Bitmap;

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    instance-of v3, v0, Landroid/graphics/Bitmap;

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    check-cast v2, Landroid/graphics/Bitmap;

    .line 75
    .line 76
    check-cast v0, Landroid/graphics/Bitmap;

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    instance-of v3, v2, Landroid/support/v4/media/RatingCompat;

    .line 86
    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    instance-of v3, v0, Landroid/support/v4/media/RatingCompat;

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    check-cast v2, Landroid/support/v4/media/RatingCompat;

    .line 94
    .line 95
    check-cast v0, Landroid/support/v4/media/RatingCompat;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {v0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-ne v3, v4, :cond_6

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-ne v3, v4, :cond_6

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {v0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-ne v3, v4, :cond_6

    .line 126
    .line 127
    invoke-virtual {v2}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    cmpl-float v3, v3, v4

    .line 136
    .line 137
    if-nez v3, :cond_6

    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {v0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    cmpl-float v3, v3, v4

    .line 148
    .line 149
    if-nez v3, :cond_6

    .line 150
    .line 151
    iget v2, v2, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    .line 152
    .line 153
    iget v0, v0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    .line 154
    .line 155
    if-eq v2, v0, :cond_2

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_2

    .line 163
    .line 164
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 165
    return p0

    .line 166
    :cond_7
    :goto_2
    const/4 p0, 0x1

    .line 167
    return p0
.end method

.method public static $default$traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroidx/sqlite/SQLite;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    move v3, v2

    .line 11
    :goto_0
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v2, :cond_7

    .line 14
    .line 15
    iget-object v6, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->siblingIndex()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move v8, v1

    .line 29
    :goto_1
    invoke-interface {p0, p1, v3}, Lorg/jsoup/select/NodeVisitor;->head(Lorg/jsoup/nodes/Node;I)V

    .line 30
    .line 31
    .line 32
    if-eqz v6, :cond_6

    .line 33
    .line 34
    iget-object v9, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 35
    .line 36
    if-eq v9, v6, :cond_6

    .line 37
    .line 38
    iget-object p1, v6, Lorg/jsoup/nodes/Element;->childNodes:Lorg/jsoup/nodes/Element$NodeList;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ge v8, p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    :goto_2
    if-nez v3, :cond_2

    .line 53
    .line 54
    move-object v8, v0

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    move-object v8, v7

    .line 57
    :goto_3
    if-eqz p1, :cond_3

    .line 58
    .line 59
    if-eq p1, v8, :cond_3

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_3
    if-nez v3, :cond_4

    .line 63
    .line 64
    goto :goto_7

    .line 65
    :cond_4
    if-eqz v7, :cond_5

    .line 66
    .line 67
    iget-object p1, v7, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 68
    .line 69
    if-ne p1, v6, :cond_5

    .line 70
    .line 71
    move-object p1, v7

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 74
    .line 75
    move v2, v4

    .line 76
    move-object p1, v6

    .line 77
    goto :goto_0

    .line 78
    :cond_6
    :goto_4
    move v2, v5

    .line 79
    goto :goto_0

    .line 80
    :cond_7
    if-ne v2, v5, :cond_8

    .line 81
    .line 82
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-lez v2, :cond_8

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    :goto_5
    move v2, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_8
    invoke-interface {p0, p1, v3}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-nez v3, :cond_b

    .line 104
    .line 105
    if-eqz v2, :cond_a

    .line 106
    .line 107
    if-ne v2, v0, :cond_9

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_9
    :goto_6
    move-object p1, v2

    .line 111
    goto :goto_5

    .line 112
    :cond_a
    :goto_7
    return-void

    .line 113
    :cond_b
    if-eqz v2, :cond_c

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_c
    iget-object p1, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 117
    .line 118
    add-int/lit8 v3, v3, -0x1

    .line 119
    .line 120
    move v2, v4

    .line 121
    goto :goto_0
.end method

.method public static $private$getDimension(III)Lcoil3/size/Dimension;
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcoil3/size/Dimension$Undefined;->INSTANCE:Lcoil3/size/Dimension$Undefined;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    sub-int/2addr p0, p2

    .line 8
    const/4 v0, 0x0

    .line 9
    const-string v1, "px must be > 0."

    .line 10
    .line 11
    if-lez p0, :cond_2

    .line 12
    .line 13
    if-lez p0, :cond_1

    .line 14
    .line 15
    new-instance p1, Lcoil3/size/Dimension$Pixels;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_2
    sub-int/2addr p1, p2

    .line 26
    if-lez p1, :cond_4

    .line 27
    .line 28
    if-lez p1, :cond_3

    .line 29
    .line 30
    new-instance p0, Lcoil3/size/Dimension$Pixels;

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_4
    return-object v0
.end method

.method public static $private$getSize(Lcoil3/size/RealViewSizeResolver;)Lcoil3/size/Size;
    .locals 5

    .line 1
    iget-object p0, p0, Lcoil3/size/RealViewSizeResolver;->view:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    add-int/2addr v4, v3

    .line 27
    invoke-static {v0, v2, v4}, Lcom/android/tools/r8/RecordTag;->$private$getDimension(III)Lcoil3/size/Dimension;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    add-int/2addr p0, v3

    .line 55
    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/RecordTag;->$private$getDimension(III)Lcoil3/size/Dimension;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    :goto_1
    const/4 p0, 0x0

    .line 62
    return-object p0

    .line 63
    :cond_3
    new-instance v1, Lcoil3/size/Size;

    .line 64
    .line 65
    invoke-direct {v1, v0, p0}, Lcoil3/size/Size;-><init>(Lcoil3/size/Dimension;Lcoil3/size/Dimension;)V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method

.method public static buildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Ljava/lang/String;ILorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 2
    .line 3
    const-wide/16 v0, 0x2710

    .line 4
    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p2, v2, :cond_1

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-ne p2, v3, :cond_0

    .line 12
    .line 13
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 14
    .line 15
    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p2, Lorg/schabi/newpipe/player/helper/PlayerDataSource$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {p2, v2}, Lorg/schabi/newpipe/player/helper/PlayerDataSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setPlaylistTrackerFactory(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 34
    .line 35
    const-string p1, "Unsupported type: "

    .line 36
    .line 37
    invoke-static {p2, p1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    .line 46
    .line 47
    new-instance v2, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, v2, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->setLivePresentationDelayMs(J)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p2, p3, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 61
    .line 62
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    sget-object v2, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 67
    .line 68
    iget v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 69
    .line 70
    if-ne p2, v2, :cond_3

    .line 71
    .line 72
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 73
    .line 74
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    .line 75
    .line 76
    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, v2, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 80
    .line 81
    .line 82
    new-instance p0, Lorg/schabi/newpipe/player/helper/YoutubeDashLiveManifestParser;

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->setManifestParser(Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 93
    .line 94
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    .line 95
    .line 96
    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, v2, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 100
    .line 101
    .line 102
    move-object p0, p2

    .line 103
    :goto_0
    new-instance p2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 104
    .line 105
    invoke-direct {p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance p2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 121
    .line 122
    invoke-direct {p2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0
.end method

.method public static buildMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/BaseMediaSource;
    .locals 6

    .line 1
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v1, :cond_a

    .line 10
    .line 11
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    instance-of v1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p3, "Generation of YouTube DASH manifest for "

    .line 33
    .line 34
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, " is not supported"

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v4, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 58
    .line 59
    if-ne v1, v4, :cond_8

    .line 60
    .line 61
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const-string v5, "PlaybackResolver"

    .line 70
    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    if-eq v4, v3, :cond_3

    .line 74
    .line 75
    if-ne v4, v2, :cond_2

    .line 76
    .line 77
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 78
    .line 79
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytHlsCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 80
    .line 81
    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 82
    .line 83
    .line 84
    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 120
    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p2, "Unsupported delivery method for YouTube contents: "

    .line 124
    .line 125
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->fromOtfStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-static {p2, p1}, Lcom/android/tools/r8/RecordTag;->createDashManifest(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/tools/r8/RecordTag;->buildYoutubeManualDashMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 163
    .line 164
    .line 165
    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_3

    .line 167
    :catch_0
    move-exception p0

    .line 168
    goto :goto_1

    .line 169
    :catch_1
    move-exception p0

    .line 170
    goto :goto_1

    .line 171
    :catch_2
    move-exception p0

    .line 172
    :goto_1
    const-string p1, "Error when generating the DASH manifest of YouTube OTF stream"

    .line 173
    .line 174
    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .line 176
    .line 177
    new-instance p2, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 178
    .line 179
    invoke-direct {p2, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    throw p2

    .line 183
    :cond_4
    instance-of v1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 184
    .line 185
    if-eqz v1, :cond_5

    .line 186
    .line 187
    move-object v1, p1

    .line 188
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 189
    .line 190
    iget-boolean v1, v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 191
    .line 192
    if-nez v1, :cond_6

    .line 193
    .line 194
    :cond_5
    if-eqz v0, :cond_7

    .line 195
    .line 196
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 208
    .line 209
    .line 210
    move-result-wide v2

    .line 211
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;->fromProgressiveStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {p2, p1}, Lcom/android/tools/r8/RecordTag;->createDashManifest(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/tools/r8/RecordTag;->buildYoutubeManualDashMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 220
    .line 221
    .line 222
    move-result-object p0
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 223
    goto :goto_3

    .line 224
    :catch_3
    move-exception p2

    .line 225
    goto :goto_2

    .line 226
    :catch_4
    move-exception p2

    .line 227
    goto :goto_2

    .line 228
    :catch_5
    move-exception p2

    .line 229
    :goto_2
    const-string v0, "Error when generating or parsing DASH manifest of YouTube progressive stream, falling back to a ProgressiveMediaSource."

    .line 230
    .line 231
    invoke-static {v5, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .line 233
    .line 234
    invoke-static {p0, p1, p3, p4}, Lcom/android/tools/r8/RecordTag;->buildYoutubeProgressiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    goto :goto_3

    .line 239
    :cond_7
    invoke-static {p0, p1, p3, p4}, Lcom/android/tools/r8/RecordTag;->buildYoutubeProgressiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    :goto_3
    return-object p0

    .line 244
    :cond_8
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 245
    .line 246
    if-ne v1, v0, :cond_9

    .line 247
    .line 248
    :try_start_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getTargetDurationSec()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 264
    .line 265
    .line 266
    move-result-wide v3

    .line 267
    invoke-static {v1, v0, v2, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubePostLiveStreamDvrDashManifestCreator;->fromPostLiveStreamDvrStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;IJ)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    invoke-static {p2, p1}, Lcom/android/tools/r8/RecordTag;->createDashManifest(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/tools/r8/RecordTag;->buildYoutubeManualDashMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 276
    .line 277
    .line 278
    move-result-object p0
    :try_end_2
    .catch Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6

    .line 279
    return-object p0

    .line 280
    :catch_6
    move-exception p0

    .line 281
    new-instance p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 282
    .line 283
    const-string p2, "Error when generating the DASH manifest of YouTube ended live stream"

    .line 284
    .line 285
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    .line 287
    .line 288
    throw p1

    .line 289
    :cond_9
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 290
    .line 291
    const-string p1, "DASH manifest generation of YouTube livestreams is not supported"

    .line 292
    .line 293
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw p0

    .line 297
    :cond_a
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_13

    .line 306
    .line 307
    const-string v1, ""

    .line 308
    .line 309
    if-eq v0, v3, :cond_11

    .line 310
    .line 311
    if-eq v0, v2, :cond_d

    .line 312
    .line 313
    const/4 v2, 0x3

    .line 314
    if-ne v0, v2, :cond_c

    .line 315
    .line 316
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    .line 317
    .line 318
    .line 319
    move-result p2

    .line 320
    if-eqz p2, :cond_b

    .line 321
    .line 322
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    invoke-static {p2}, Lcom/android/tools/r8/RecordTag;->throwResolverExceptionIfUrlNullOrEmpty(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    .line 330
    .line 331
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    .line 332
    .line 333
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 334
    .line 335
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 336
    .line 337
    .line 338
    invoke-direct {p2, v0, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 339
    .line 340
    .line 341
    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 342
    .line 343
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    return-object p0

    .line 375
    :cond_b
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getManifestUrl()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-static {p2, v1}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    check-cast p2, Ljava/lang/String;

    .line 384
    .line 385
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 390
    .line 391
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 396
    .line 397
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 402
    .line 403
    .line 404
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    .line 405
    .line 406
    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 410
    .line 411
    .line 412
    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 413
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    .line 414
    .line 415
    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    .line 416
    .line 417
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 418
    .line 419
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 420
    .line 421
    .line 422
    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 423
    .line 424
    .line 425
    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 426
    .line 427
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 431
    .line 432
    .line 433
    move-result-object p0

    .line 434
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    invoke-virtual {v0, p1, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    return-object p0

    .line 451
    :catch_7
    move-exception p0

    .line 452
    new-instance p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 453
    .line 454
    const-string p2, "Error when parsing manual SS manifest"

    .line 455
    .line 456
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    .line 458
    .line 459
    throw p1

    .line 460
    :cond_c
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 461
    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    const-string p3, "Unsupported delivery type: "

    .line 465
    .line 466
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    throw p0

    .line 480
    :cond_d
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    .line 481
    .line 482
    .line 483
    move-result p2

    .line 484
    if-eqz p2, :cond_e

    .line 485
    .line 486
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    invoke-static {p2}, Lcom/android/tools/r8/RecordTag;->throwResolverExceptionIfUrlNullOrEmpty(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 494
    .line 495
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 496
    .line 497
    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 498
    .line 499
    .line 500
    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 501
    .line 502
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 506
    .line 507
    .line 508
    move-result-object p0

    .line 509
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 522
    .line 523
    .line 524
    move-result-object p0

    .line 525
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 526
    .line 527
    .line 528
    move-result-object p0

    .line 529
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    return-object p0

    .line 534
    :cond_e
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object p2

    .line 538
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 539
    .line 540
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 541
    .line 542
    const/4 v2, 0x0

    .line 543
    if-eqz p0, :cond_10

    .line 544
    .line 545
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    if-nez v3, :cond_f

    .line 550
    .line 551
    new-instance v2, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;

    .line 552
    .line 553
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 554
    .line 555
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 556
    .line 557
    .line 558
    move-result-object p2

    .line 559
    invoke-direct {v2, p0, p2}, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;[B)V

    .line 560
    .line 561
    .line 562
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;)V

    .line 563
    .line 564
    .line 565
    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 566
    .line 567
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 571
    .line 572
    .line 573
    move-result-object p0

    .line 574
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getManifestUrl()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    check-cast p1, Ljava/lang/String;

    .line 583
    .line 584
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 589
    .line 590
    .line 591
    move-result-object p0

    .line 592
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 593
    .line 594
    .line 595
    move-result-object p0

    .line 596
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 597
    .line 598
    .line 599
    move-result-object p0

    .line 600
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    .line 601
    .line 602
    .line 603
    move-result-object p0

    .line 604
    return-object p0

    .line 605
    :cond_f
    const-string p0, "No HLS valid playlist has been specified."

    .line 606
    .line 607
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    return-object v2

    .line 611
    :cond_10
    const-string p0, "No DataSource.Factory valid instance has been specified."

    .line 612
    .line 613
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    return-object v2

    .line 617
    :cond_11
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    .line 618
    .line 619
    .line 620
    move-result p2

    .line 621
    if-eqz p2, :cond_12

    .line 622
    .line 623
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object p2

    .line 627
    invoke-static {p2}, Lcom/android/tools/r8/RecordTag;->throwResolverExceptionIfUrlNullOrEmpty(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 631
    .line 632
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 633
    .line 634
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    .line 635
    .line 636
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 637
    .line 638
    .line 639
    invoke-direct {p2, v0, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 640
    .line 641
    .line 642
    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 643
    .line 644
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 648
    .line 649
    .line 650
    move-result-object p0

    .line 651
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 660
    .line 661
    .line 662
    move-result-object p0

    .line 663
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 664
    .line 665
    .line 666
    move-result-object p0

    .line 667
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 668
    .line 669
    .line 670
    move-result-object p0

    .line 671
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 672
    .line 673
    .line 674
    move-result-object p0

    .line 675
    return-object p0

    .line 676
    :cond_12
    :try_start_4
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 677
    .line 678
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 679
    .line 680
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    .line 681
    .line 682
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 683
    .line 684
    .line 685
    invoke-direct {p2, v0, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object p0

    .line 692
    invoke-static {p0, p1}, Lcom/android/tools/r8/RecordTag;->createDashManifest(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 693
    .line 694
    .line 695
    move-result-object p0

    .line 696
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 697
    .line 698
    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 702
    .line 703
    .line 704
    move-result-object p4

    .line 705
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getManifestUrl()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object p1

    .line 709
    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object p1

    .line 713
    check-cast p1, Ljava/lang/String;

    .line 714
    .line 715
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 720
    .line 721
    .line 722
    move-result-object p1

    .line 723
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 724
    .line 725
    .line 726
    move-result-object p1

    .line 727
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 728
    .line 729
    .line 730
    move-result-object p1

    .line 731
    invoke-virtual {p2, p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 732
    .line 733
    .line 734
    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 735
    return-object p0

    .line 736
    :catch_8
    move-exception p0

    .line 737
    new-instance p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 738
    .line 739
    const-string p2, "Could not create a DASH media source/manifest from the manifest text"

    .line 740
    .line 741
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 742
    .line 743
    .line 744
    throw p1

    .line 745
    :cond_13
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    .line 746
    .line 747
    .line 748
    move-result p2

    .line 749
    if-eqz p2, :cond_14

    .line 750
    .line 751
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object p2

    .line 755
    invoke-static {p2}, Lcom/android/tools/r8/RecordTag;->throwResolverExceptionIfUrlNullOrEmpty(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    new-instance p2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    .line 759
    .line 760
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 761
    .line 762
    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 763
    .line 764
    .line 765
    iget p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->progressiveLoadIntervalBytes:I

    .line 766
    .line 767
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setContinueLoadingCheckIntervalBytes(I)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    .line 768
    .line 769
    .line 770
    move-result-object p0

    .line 771
    new-instance p2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 772
    .line 773
    invoke-direct {p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 774
    .line 775
    .line 776
    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 777
    .line 778
    .line 779
    move-result-object p2

    .line 780
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object p1

    .line 784
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 785
    .line 786
    .line 787
    move-result-object p1

    .line 788
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 797
    .line 798
    .line 799
    move-result-object p1

    .line 800
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    .line 801
    .line 802
    .line 803
    move-result-object p0

    .line 804
    return-object p0

    .line 805
    :cond_14
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 806
    .line 807
    const-string p1, "Non URI progressive contents are not supported"

    .line 808
    .line 809
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    throw p0
.end method

.method public static buildYoutubeManualDashMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static buildYoutubeProgressiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytProgressiveDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->progressiveLoadIntervalBytes:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setContinueLoadingCheckIntervalBytes(I)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/RecordTag;->commonCacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, " "

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 71
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/RecordTag;->commonCacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 73
    const-string v1, " "

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-boolean p1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static commonCacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;Z)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, " "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_0
    if-eqz p2, :cond_1

    .line 47
    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getManifestUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 p2, 0x2

    .line 62
    new-array p2, p2, [Ljava/lang/Object;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    aput-object p0, p2, v1

    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    aput-object p1, p2, p0

    .line 69
    .line 70
    invoke-static {p2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_1
    return-object v0
.end method

.method public static create(III)I
    .locals 0

    .line 1
    or-int/2addr p0, p1

    .line 2
    or-int/2addr p0, p2

    .line 3
    or-int/lit16 p0, p0, 0x80

    .line 4
    .line 5
    return p0
.end method

.method public static createDashManifest(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getManifestUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 23
    .line 24
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static from(Lcom/google/android/exoplayer2/MediaItem;)Lj$/util/Optional;
    .locals 2

    .line 1
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 6
    .line 7
    const/16 v1, 0x17

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 17
    .line 18
    const/16 v1, 0x18

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 39
    .line 40
    const/16 v1, 0x19

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static m(IIIII)I
    .locals 0

    mul-int/2addr p0, p1

    .line 105
    div-int/2addr p0, p2

    add-int/2addr p0, p3

    .line 106
    invoke-static {p0, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I
    .locals 0

    .line 93
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p3, p4

    return p3
.end method

.method public static m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 76
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 78
    invoke-virtual {p0, p4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 80
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 81
    invoke-virtual {p0, p3, p4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/util/List;)Ljava/util/Map;
    .locals 3

    .line 82
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    const-string v1, "Range"

    invoke-direct {v0, v1, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    new-array v1, p0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    aget-object p0, v1, v2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "duplicate key: "

    .line 84
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    .line 86
    new-instance v0, Lorg/jetbrains/compose/resources/LanguageQualifier;

    .line 87
    invoke-direct {v0, p0}, Lorg/jetbrains/compose/resources/LanguageQualifier;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Landroidx/sqlite/SQLite;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 90
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 92
    invoke-interface {p1, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic m(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/AutoCloseable;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m$1(Ljava/util/concurrent/ExecutorService;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    instance-of v0, p0, Landroid/content/res/TypedArray;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    check-cast p0, Landroid/content/res/TypedArray;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    check-cast p0, Landroid/media/MediaMetadataRetriever;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    instance-of v0, p0, Landroid/media/MediaDrm;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    check-cast p0, Landroid/media/MediaDrm;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    instance-of v0, p0, Landroid/drm/DrmManagerClient;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    check-cast p0, Landroid/drm/DrmManagerClient;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_5
    instance-of v0, p0, Landroid/content/ContentProviderClient;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    check-cast p0, Landroid/content/ContentProviderClient;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_6
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static m(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m$1(Ljava/util/List;)Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    .line 3
    const-string v1, "User-Agent"

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    new-array v1, p0, [Ljava/util/Map$Entry;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v0, v1, v2

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    .line 18
    .line 19
    aget-object p0, v1, v2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_0
    const-string p0, "duplicate key: "

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static m$1(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 58
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 60
    invoke-interface {p1, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static maybeBuildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lokio/Okio;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    .line 14
    .line 15
    invoke-direct {v0, p1, v1, v1, v1}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDashMpdUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDashMpdUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {p0, p1, v2, v0}, Lcom/android/tools/r8/RecordTag;->buildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Ljava/lang/String;ILorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/MediaSource;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getHlsUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getHlsUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v2, 0x2

    .line 55
    invoke-static {p0, p1, v2, v0}, Lcom/android/tools/r8/RecordTag;->buildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Ljava/lang/String;ILorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/MediaSource;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-object p0

    .line 60
    :cond_2
    :goto_0
    return-object v1

    .line 61
    :goto_1
    const-string p1, "PlaybackResolver"

    .line 62
    .line 63
    const-string v0, "Error when generating live media source, falling back to standard sources"

    .line 64
    .line 65
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    return-object v1
.end method

.method public static replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 8
    .line 9
    .line 10
    :cond_1
    if-eqz p0, :cond_2

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 13
    .line 14
    .line 15
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic stringValueOf(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "null"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "EOF"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "XmlDecl"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "Character"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "Comment"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "EndTag"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "StartTag"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "Doctype"

    .line 26
    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static throwResolverExceptionIfUrlNullOrEmpty(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 11
    .line 12
    const-string v0, "Empty stream URL"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 19
    .line 20
    const-string v0, "Null stream URL"

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method
