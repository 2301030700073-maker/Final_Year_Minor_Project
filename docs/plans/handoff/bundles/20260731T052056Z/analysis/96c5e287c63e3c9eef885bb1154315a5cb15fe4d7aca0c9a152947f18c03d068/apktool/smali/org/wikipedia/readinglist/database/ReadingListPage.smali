.class public final Lorg/wikipedia/readinglist/database/ReadingListPage;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient accentInvariantTitle$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final apiTitle:Ljava/lang/String;

.field public atime:J

.field public description:Ljava/lang/String;

.field public displayTitle:Ljava/lang/String;

.field public transient downloadProgress:I

.field public id:J

.field public final lang:Ljava/lang/String;

.field public listId:J

.field public mtime:J

.field public final namespace:Lorg/wikipedia/page/Namespace;

.field public offline:Z

.field public remoteId:J

.field public final revId:J

.field public transient selected:Z

.field public sizeBytes:J

.field public status:J

.field public thumbUrl:Ljava/lang/String;

.field public final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 20
    .line 21
    iput-object p2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 22
    .line 23
    iput-object p3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p4, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p5, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p6, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 30
    .line 31
    iput-wide p7, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 32
    .line 33
    iput-wide p9, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 34
    .line 35
    iput-wide p11, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 36
    .line 37
    iput-wide p13, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 38
    .line 39
    iput-boolean p15, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 40
    .line 41
    move-wide/from16 p1, p16

    .line 42
    .line 43
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 44
    .line 45
    move-wide/from16 p1, p18

    .line 46
    .line 47
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    .line 48
    .line 49
    move-object/from16 p1, p20

    .line 50
    .line 51
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 52
    .line 53
    move-wide/from16 p1, p21

    .line 54
    .line 55
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId:J

    .line 56
    .line 57
    move-wide/from16 p1, p23

    .line 58
    .line 59
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 60
    .line 61
    new-instance p1, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/16 p2, 0x16

    .line 64
    .line 65
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 69
    .line 70
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->accentInvariantTitle$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 74
    .line 75
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 26

    .line 76
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isDownloadingReadingListArticlesEnabled()Z

    move-result v16

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v21, p7

    .line 77
    invoke-direct/range {v1 .. v25}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    iget-object v1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 79
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v4

    .line 80
    iget-object v5, p1, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 81
    iget-object v6, p1, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 82
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 83
    iget-object v7, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    const v8, 0xdfc0

    move-object v0, p0

    .line 84
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 86
    iput-wide p0, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 87
    iput-wide p0, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-wide v3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 76
    .line 77
    iget-wide v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 78
    .line 79
    cmp-long v1, v3, v5

    .line 80
    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    return v2

    .line 84
    :cond_8
    iget-wide v3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 85
    .line 86
    iget-wide v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 87
    .line 88
    cmp-long v1, v3, v5

    .line 89
    .line 90
    if-eqz v1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget-wide v3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 94
    .line 95
    iget-wide v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 96
    .line 97
    cmp-long v1, v3, v5

    .line 98
    .line 99
    if-eqz v1, :cond_a

    .line 100
    .line 101
    return v2

    .line 102
    :cond_a
    iget-wide v3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 103
    .line 104
    iget-wide v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 105
    .line 106
    cmp-long v1, v3, v5

    .line 107
    .line 108
    if-eqz v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 112
    .line 113
    iget-boolean v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 114
    .line 115
    if-eq v1, v3, :cond_c

    .line 116
    .line 117
    return v2

    .line 118
    :cond_c
    iget-wide v3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 119
    .line 120
    iget-wide v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 121
    .line 122
    cmp-long v1, v3, v5

    .line 123
    .line 124
    if-eqz v1, :cond_d

    .line 125
    .line 126
    return v2

    .line 127
    :cond_d
    iget-wide v3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    .line 128
    .line 129
    iget-wide v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    .line 130
    .line 131
    cmp-long v1, v3, v5

    .line 132
    .line 133
    if-eqz v1, :cond_e

    .line 134
    .line 135
    return v2

    .line 136
    :cond_e
    iget-object v1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_f

    .line 145
    .line 146
    return v2

    .line 147
    :cond_f
    iget-wide v3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId:J

    .line 148
    .line 149
    iget-wide v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId:J

    .line 150
    .line 151
    cmp-long v1, v3, v5

    .line 152
    .line 153
    if-eqz v1, :cond_10

    .line 154
    .line 155
    return v2

    .line 156
    :cond_10
    iget-wide v3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 157
    .line 158
    iget-wide p0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 159
    .line 160
    cmp-long p0, v3, p0

    .line 161
    .line 162
    if-eqz p0, :cond_11

    .line 163
    .line 164
    return v2

    .line 165
    :cond_11
    return v0
.end method

.method public final getAccentInvariantTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->accentInvariantTitle$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getSaving()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-wide/16 v2, 0x3

    .line 14
    .line 15
    cmp-long p0, v0, v2

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2, v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    move v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :goto_0
    add-int/2addr v0, v2

    .line 42
    mul-int/2addr v0, v1

    .line 43
    iget-object v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    :goto_1
    add-int/2addr v0, v3

    .line 53
    mul-int/2addr v0, v1

    .line 54
    iget-wide v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 55
    .line 56
    const/16 v4, 0x20

    .line 57
    .line 58
    ushr-long v5, v2, v4

    .line 59
    .line 60
    xor-long/2addr v2, v5

    .line 61
    long-to-int v2, v2

    .line 62
    add-int/2addr v0, v2

    .line 63
    mul-int/2addr v0, v1

    .line 64
    iget-wide v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 65
    .line 66
    ushr-long v5, v2, v4

    .line 67
    .line 68
    xor-long/2addr v2, v5

    .line 69
    long-to-int v2, v2

    .line 70
    add-int/2addr v0, v2

    .line 71
    mul-int/2addr v0, v1

    .line 72
    iget-wide v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 73
    .line 74
    ushr-long v5, v2, v4

    .line 75
    .line 76
    xor-long/2addr v2, v5

    .line 77
    long-to-int v2, v2

    .line 78
    add-int/2addr v0, v2

    .line 79
    mul-int/2addr v0, v1

    .line 80
    iget-wide v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 81
    .line 82
    ushr-long v5, v2, v4

    .line 83
    .line 84
    xor-long/2addr v2, v5

    .line 85
    long-to-int v2, v2

    .line 86
    add-int/2addr v0, v2

    .line 87
    mul-int/2addr v0, v1

    .line 88
    iget-boolean v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 89
    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    const/16 v2, 0x4cf

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    const/16 v2, 0x4d5

    .line 96
    .line 97
    :goto_2
    add-int/2addr v0, v2

    .line 98
    mul-int/2addr v0, v1

    .line 99
    iget-wide v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 100
    .line 101
    ushr-long v5, v2, v4

    .line 102
    .line 103
    xor-long/2addr v2, v5

    .line 104
    long-to-int v2, v2

    .line 105
    add-int/2addr v0, v2

    .line 106
    mul-int/2addr v0, v1

    .line 107
    iget-wide v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    .line 108
    .line 109
    ushr-long v5, v2, v4

    .line 110
    .line 111
    xor-long/2addr v2, v5

    .line 112
    long-to-int v2, v2

    .line 113
    add-int/2addr v0, v2

    .line 114
    mul-int/2addr v0, v1

    .line 115
    iget-object v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iget-wide v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId:J

    .line 122
    .line 123
    ushr-long v5, v2, v4

    .line 124
    .line 125
    xor-long/2addr v2, v5

    .line 126
    long-to-int v2, v2

    .line 127
    add-int/2addr v0, v2

    .line 128
    mul-int/2addr v0, v1

    .line 129
    iget-wide v1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 130
    .line 131
    ushr-long v3, v1, v4

    .line 132
    .line 133
    xor-long/2addr v1, v3

    .line 134
    long-to-int p0, v1

    .line 135
    add-int/2addr v0, p0

    .line 136
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v4, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 10
    .line 11
    iget-wide v6, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 12
    .line 13
    iget-wide v8, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 14
    .line 15
    iget-wide v10, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 16
    .line 17
    iget-boolean v12, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 18
    .line 19
    iget-wide v13, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 20
    .line 21
    move-wide v15, v13

    .line 22
    iget-wide v13, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    .line 23
    .line 24
    move-wide/from16 v17, v13

    .line 25
    .line 26
    iget-wide v13, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 27
    .line 28
    move-wide/from16 v19, v15

    .line 29
    .line 30
    new-instance v15, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    move-wide/from16 v21, v13

    .line 33
    .line 34
    const-string v13, "ReadingListPage(wiki="

    .line 35
    .line 36
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v13, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 40
    .line 41
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v13, ", namespace="

    .line 45
    .line 46
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v13, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 50
    .line 51
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v13, ", displayTitle="

    .line 55
    .line 56
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v13, ", apiTitle="

    .line 60
    .line 61
    const-string v14, ", description="

    .line 62
    .line 63
    move/from16 v16, v12

    .line 64
    .line 65
    iget-object v12, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v15, v1, v13, v12, v14}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, ", thumbUrl="

    .line 71
    .line 72
    const-string v12, ", listId="

    .line 73
    .line 74
    invoke-static {v15, v2, v1, v3, v12}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", id="

    .line 81
    .line 82
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", mtime="

    .line 89
    .line 90
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", atime="

    .line 97
    .line 98
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", offline="

    .line 105
    .line 106
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    move/from16 v1, v16

    .line 110
    .line 111
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", status="

    .line 115
    .line 116
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    move-wide/from16 v1, v19

    .line 120
    .line 121
    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", sizeBytes="

    .line 125
    .line 126
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    move-wide/from16 v1, v17

    .line 130
    .line 131
    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ", lang="

    .line 135
    .line 136
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", revId="

    .line 145
    .line 146
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-wide v0, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId:J

    .line 150
    .line 151
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v0, ", remoteId="

    .line 155
    .line 156
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    move-wide/from16 v0, v21

    .line 160
    .line 161
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v0, ")"

    .line 165
    .line 166
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    return-object v0
.end method
