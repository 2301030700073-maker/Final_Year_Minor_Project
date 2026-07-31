.class public final Lorg/wikipedia/yearinreview/YearInReviewSlides;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final config:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

.field public final context:Lorg/wikipedia/WikipediaApp;

.field public final isEditor:Z

.field public final isEnglishWiki:Z

.field public final isFundraisingAllowed:Z

.field public final isLoggedIn:Z

.field public final numberFormatter:Ljava/text/NumberFormat;

.field public final pagesWithCoordinates:Ljava/util/List;

.field public final yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;ZZZZLorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;Ljava/util/List;Lorg/wikipedia/yearinreview/YearInReviewModel;)V
    .locals 0

    .line 1
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEditor:Z

    .line 10
    .line 11
    iput-boolean p3, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isLoggedIn:Z

    .line 12
    .line 13
    iput-boolean p4, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 14
    .line 15
    iput-boolean p5, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 16
    .line 17
    iput-object p6, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->config:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 18
    .line 19
    iput-object p7, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->pagesWithCoordinates:Ljava/util/List;

    .line 20
    .line 21
    iput-object p8, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 22
    .line 23
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->numberFormatter:Ljava/text/NumberFormat;

    .line 28
    .line 29
    return-void
.end method

.method public static buildListWithNumbers(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "<br /><br />"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    add-int/lit8 v3, v1, 0x1

    .line 19
    .line 20
    if-ltz v1, :cond_0

    .line 21
    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ". "

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, "<br />"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move v1, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    throw p0

    .line 59
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final appSavedArticlesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isLoggedIn:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v0, "li_en_collrlists"

    .line 10
    .line 11
    :goto_0
    move-object v7, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const-string v0, "lo_en_collrlists"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    if-eqz v1, :cond_2

    .line 17
    .line 18
    const-string v0, "li_non_collrlists"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const-string v0, "lo_non_collrlists"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 25
    .line 26
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->config:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 33
    .line 34
    iget-wide v3, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->savedArticlesApps:J

    .line 35
    .line 36
    long-to-int v5, v3

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v4, 0x1

    .line 42
    new-array v4, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    aput-object v3, v4, v6

    .line 46
    .line 47
    const v3, 0x7f10005b

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const v2, 0x7f120aee

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const/4 v8, 0x0

    .line 62
    const/16 v9, 0x44

    .line 63
    .line 64
    iget-boolean v2, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 65
    .line 66
    const v3, 0x7f080325

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-direct/range {v1 .. v9}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method

.method public final availableLanguagesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->config:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 10
    .line 11
    iget-wide v4, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->articles:J

    .line 12
    .line 13
    long-to-int v6, v4

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x1

    .line 19
    new-array v7, v5, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    aput-object v4, v7, v8

    .line 23
    .line 24
    const v4, 0x7f10004b

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v4, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v3, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->languages:I

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const/16 v7, 0x7e9

    .line 42
    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const/4 v9, 0x2

    .line 48
    new-array v9, v9, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v6, v9, v8

    .line 51
    .line 52
    aput-object v7, v9, v5

    .line 53
    .line 54
    const v6, 0x7f10004c

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v6, v3, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, " "

    .line 70
    .line 71
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    new-instance v9, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-array v4, v5, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v2, v4, v8

    .line 94
    .line 95
    const v2, 0x7f10004d

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    iget-boolean v1, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isLoggedIn:Z

    .line 103
    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    const-string v1, "li_non_langs"

    .line 107
    .line 108
    :goto_0
    move-object v15, v1

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    const-string v1, "lo_non_langs"

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :goto_1
    const/16 v16, 0x0

    .line 114
    .line 115
    const/16 v17, 0x44

    .line 116
    .line 117
    iget-boolean v10, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 118
    .line 119
    const v11, 0x7f080329

    .line 120
    .line 121
    .line 122
    const/4 v12, 0x0

    .line 123
    invoke-direct/range {v9 .. v17}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 124
    .line 125
    .line 126
    return-object v9
.end method

.method public final editorRoutes()Ljava/util/List;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 4
    .line 5
    iget v2, v1, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->config:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 8
    .line 9
    iget-wide v4, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->edits:J

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

    .line 14
    iget-boolean v9, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 15
    .line 16
    iget-object v10, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    iget-boolean v11, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEditor:Z

    .line 19
    .line 20
    if-eqz v11, :cond_4

    .line 21
    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    invoke-virtual {v3, v11}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/16 v11, 0x1f4

    .line 39
    .line 40
    if-le v2, v11, :cond_0

    .line 41
    .line 42
    const-string v3, "500+"

    .line 43
    .line 44
    :cond_0
    new-instance v11, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 45
    .line 46
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    new-array v13, v8, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object v3, v13, v7

    .line 53
    .line 54
    const v3, 0x7f100052

    .line 55
    .line 56
    .line 57
    invoke-virtual {v12, v3, v2, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v15

    .line 61
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    long-to-int v3, v4

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    new-array v5, v8, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object v4, v5, v7

    .line 73
    .line 74
    const v4, 0x7f100051

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v16

    .line 81
    if-eqz v9, :cond_1

    .line 82
    .line 83
    const-string v2, "li_en_editedcount"

    .line 84
    .line 85
    :goto_0
    move-object/from16 v17, v2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string v2, "li_non_editedcount"

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :goto_1
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v19, 0x44

    .line 94
    .line 95
    iget-boolean v12, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 96
    .line 97
    const v13, 0x7f08032c

    .line 98
    .line 99
    .line 100
    const/4 v14, 0x0

    .line 101
    invoke-direct/range {v11 .. v19}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 102
    .line 103
    .line 104
    iget-wide v1, v1, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsViewedTimes:J

    .line 105
    .line 106
    const-wide/16 v3, 0x0

    .line 107
    .line 108
    cmp-long v3, v1, v3

    .line 109
    .line 110
    if-gtz v3, :cond_2

    .line 111
    .line 112
    const/4 v0, 0x0

    .line 113
    goto :goto_4

    .line 114
    :cond_2
    long-to-int v3, v1

    .line 115
    new-instance v12, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 116
    .line 117
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    new-array v13, v8, [Ljava/lang/Object;

    .line 126
    .line 127
    aput-object v5, v13, v7

    .line 128
    .line 129
    const v5, 0x7f100054

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v5, v3, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v16

    .line 136
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-array v2, v8, [Ljava/lang/Object;

    .line 145
    .line 146
    aput-object v1, v2, v7

    .line 147
    .line 148
    const v1, 0x7f100053

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v17

    .line 155
    if-eqz v9, :cond_3

    .line 156
    .line 157
    const-string v1, "li_en_editviewcount"

    .line 158
    .line 159
    :goto_2
    move-object/from16 v18, v1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    const-string v1, "li_non_editviewcount"

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :goto_3
    const/16 v19, 0x0

    .line 166
    .line 167
    const/16 v20, 0x44

    .line 168
    .line 169
    iget-boolean v13, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 170
    .line 171
    const v14, 0x7f080327

    .line 172
    .line 173
    .line 174
    const/4 v15, 0x0

    .line 175
    invoke-direct/range {v12 .. v20}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 176
    .line 177
    .line 178
    move-object v0, v12

    .line 179
    :goto_4
    new-array v1, v6, [Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 180
    .line 181
    aput-object v11, v1, v7

    .line 182
    .line 183
    aput-object v0, v1, v8

    .line 184
    .line 185
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    return-object v0

    .line 190
    :cond_4
    const v1, 0x7f1201c1

    .line 191
    .line 192
    .line 193
    iget-boolean v2, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isLoggedIn:Z

    .line 194
    .line 195
    if-nez v11, :cond_7

    .line 196
    .line 197
    if-nez v9, :cond_7

    .line 198
    .line 199
    new-instance v12, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 200
    .line 201
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    long-to-int v11, v4

    .line 206
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    new-array v5, v8, [Ljava/lang/Object;

    .line 211
    .line 212
    aput-object v4, v5, v7

    .line 213
    .line 214
    const v4, 0x7f10004a

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9, v4, v11, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v16

    .line 221
    const v4, 0x7f120ad2

    .line 222
    .line 223
    .line 224
    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v17

    .line 228
    if-eqz v2, :cond_5

    .line 229
    .line 230
    const-string v4, "li_non_appcolledits"

    .line 231
    .line 232
    :goto_5
    move-object/from16 v18, v4

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_5
    const-string v4, "lo_non_appcolledits"

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :goto_6
    const/16 v19, 0x0

    .line 239
    .line 240
    const/16 v20, 0x44

    .line 241
    .line 242
    iget-boolean v13, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 243
    .line 244
    const v14, 0x7f08032c

    .line 245
    .line 246
    .line 247
    const/4 v15, 0x0

    .line 248
    invoke-direct/range {v12 .. v20}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 249
    .line 250
    .line 251
    new-instance v13, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 252
    .line 253
    sget-object v16, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 254
    .line 255
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    iget v3, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsPerMinute:I

    .line 260
    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    new-array v9, v8, [Ljava/lang/Object;

    .line 266
    .line 267
    aput-object v5, v9, v7

    .line 268
    .line 269
    const v5, 0x7f100050

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v5, v3, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v17

    .line 276
    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    new-array v3, v8, [Ljava/lang/Object;

    .line 281
    .line 282
    aput-object v1, v3, v7

    .line 283
    .line 284
    const v1, 0x7f120ae0

    .line 285
    .line 286
    .line 287
    invoke-virtual {v10, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v18

    .line 291
    if-eqz v2, :cond_6

    .line 292
    .line 293
    const-string v1, "li_non_colleditspm"

    .line 294
    .line 295
    :goto_7
    move-object/from16 v19, v1

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_6
    const-string v1, "lo_non_colleditspm"

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :goto_8
    const/16 v20, 0x0

    .line 302
    .line 303
    const/16 v21, 0x40

    .line 304
    .line 305
    iget-boolean v14, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 306
    .line 307
    const v15, 0x7f080323

    .line 308
    .line 309
    .line 310
    invoke-direct/range {v13 .. v21}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 311
    .line 312
    .line 313
    new-array v0, v6, [Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 314
    .line 315
    aput-object v12, v0, v7

    .line 316
    .line 317
    aput-object v13, v0, v8

    .line 318
    .line 319
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    return-object v0

    .line 324
    :cond_7
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    iget-wide v11, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsEN:J

    .line 329
    .line 330
    long-to-int v13, v4

    .line 331
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 332
    .line 333
    .line 334
    move-result-object v14

    .line 335
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 336
    .line 337
    .line 338
    move-result-object v15

    .line 339
    move/from16 v16, v7

    .line 340
    .line 341
    new-array v7, v6, [Ljava/lang/Object;

    .line 342
    .line 343
    aput-object v14, v7, v16

    .line 344
    .line 345
    aput-object v15, v7, v8

    .line 346
    .line 347
    const v14, 0x7f100055

    .line 348
    .line 349
    .line 350
    invoke-virtual {v9, v14, v13, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    long-to-int v13, v11

    .line 359
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 360
    .line 361
    .line 362
    move-result-object v11

    .line 363
    new-array v12, v8, [Ljava/lang/Object;

    .line 364
    .line 365
    aput-object v11, v12, v16

    .line 366
    .line 367
    const v11, 0x7f100056

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v11, v13, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    new-instance v11, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v7, " "

    .line 383
    .line 384
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v22

    .line 394
    new-instance v17, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 395
    .line 396
    sget-object v20, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 397
    .line 398
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    long-to-int v9, v4

    .line 403
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    new-array v5, v8, [Ljava/lang/Object;

    .line 408
    .line 409
    aput-object v4, v5, v16

    .line 410
    .line 411
    const v4, 0x7f100057

    .line 412
    .line 413
    .line 414
    invoke-virtual {v7, v4, v9, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v21

    .line 418
    if-eqz v2, :cond_8

    .line 419
    .line 420
    const-string v4, "li_en_changes"

    .line 421
    .line 422
    :goto_9
    move-object/from16 v23, v4

    .line 423
    .line 424
    goto :goto_a

    .line 425
    :cond_8
    const-string v4, "lo_en_changes"

    .line 426
    .line 427
    goto :goto_9

    .line 428
    :goto_a
    const/16 v24, 0x0

    .line 429
    .line 430
    const/16 v25, 0x40

    .line 431
    .line 432
    iget-boolean v4, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 433
    .line 434
    const v19, 0x7f08032c

    .line 435
    .line 436
    .line 437
    move/from16 v18, v4

    .line 438
    .line 439
    invoke-direct/range {v17 .. v25}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 440
    .line 441
    .line 442
    new-instance v23, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 443
    .line 444
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    iget-wide v11, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->bytesAddedEN:J

    .line 449
    .line 450
    long-to-int v3, v11

    .line 451
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    new-array v7, v8, [Ljava/lang/Object;

    .line 456
    .line 457
    aput-object v5, v7, v16

    .line 458
    .line 459
    const v5, 0x7f10004f

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4, v5, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v27

    .line 466
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    long-to-int v4, v11

    .line 471
    const/16 v5, 0x7e9

    .line 472
    .line 473
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    const/4 v9, 0x3

    .line 486
    new-array v9, v9, [Ljava/lang/Object;

    .line 487
    .line 488
    aput-object v5, v9, v16

    .line 489
    .line 490
    aput-object v7, v9, v8

    .line 491
    .line 492
    aput-object v1, v9, v6

    .line 493
    .line 494
    const v1, 0x7f10004e

    .line 495
    .line 496
    .line 497
    invoke-virtual {v3, v1, v4, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v28

    .line 501
    if-eqz v2, :cond_9

    .line 502
    .line 503
    const-string v1, "li_en_bytes"

    .line 504
    .line 505
    :goto_b
    move-object/from16 v29, v1

    .line 506
    .line 507
    goto :goto_c

    .line 508
    :cond_9
    const-string v1, "lo_en_bytes"

    .line 509
    .line 510
    goto :goto_b

    .line 511
    :goto_c
    const/16 v30, 0x0

    .line 512
    .line 513
    const/16 v31, 0x40

    .line 514
    .line 515
    iget-boolean v0, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 516
    .line 517
    const v25, 0x7f080323

    .line 518
    .line 519
    .line 520
    move/from16 v24, v0

    .line 521
    .line 522
    move-object/from16 v26, v20

    .line 523
    .line 524
    invoke-direct/range {v23 .. v31}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 525
    .line 526
    .line 527
    new-array v0, v6, [Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 528
    .line 529
    aput-object v17, v0, v16

    .line 530
    .line 531
    aput-object v23, v0, v8

    .line 532
    .line 533
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    return-object v0
.end method

.method public final englishReadingHoursScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->config:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 10
    .line 11
    iget-wide v4, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hoursReadEN:J

    .line 12
    .line 13
    long-to-int v6, v4

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    const/4 v8, 0x1

    .line 19
    new-array v9, v8, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    aput-object v7, v9, v10

    .line 23
    .line 24
    const v7, 0x7f100058

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v7, v6, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget v3, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->yearsReadEN:I

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const/16 v9, 0x7e9

    .line 42
    .line 43
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    const/4 v11, 0x2

    .line 48
    new-array v11, v11, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v7, v11, v10

    .line 51
    .line 52
    aput-object v9, v11, v8

    .line 53
    .line 54
    const v7, 0x7f100059

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v7, v3, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, " "

    .line 70
    .line 71
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v16

    .line 81
    new-instance v11, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    long-to-int v2, v4

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-array v4, v8, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v3, v4, v10

    .line 95
    .line 96
    const v3, 0x7f10005a

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    iget-boolean v1, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isLoggedIn:Z

    .line 104
    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    const-string v1, "li_en_collhours"

    .line 108
    .line 109
    :goto_0
    move-object/from16 v17, v1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_0
    const-string v1, "lo_en_collhours"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :goto_1
    const/16 v18, 0x0

    .line 116
    .line 117
    const/16 v19, 0x44

    .line 118
    .line 119
    iget-boolean v12, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 120
    .line 121
    const v13, 0x7f080324

    .line 122
    .line 123
    .line 124
    const/4 v14, 0x0

    .line 125
    invoke-direct/range {v11 .. v19}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 126
    .line 127
    .line 128
    return-object v11
.end method

.method public final geoWithArticlesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterArticles:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterCountryName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x2

    .line 19
    if-ge v3, v4, :cond_1

    .line 20
    .line 21
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    move-object v3, v0

    .line 24
    new-instance v0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;

    .line 25
    .line 26
    move-object v5, v2

    .line 27
    iget-object v2, v3, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterTopLeft:Lkotlin/Pair;

    .line 28
    .line 29
    iget-object v3, v3, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterBottomRight:Lkotlin/Pair;

    .line 30
    .line 31
    iget-object v6, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 32
    .line 33
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    const/4 v8, 0x1

    .line 38
    new-array v9, v8, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    aput-object v5, v9, v10

    .line 42
    .line 43
    const v11, 0x7f120aed

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, v11, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v11, 0x3

    .line 63
    new-array v11, v11, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v5, v11, v10

    .line 66
    .line 67
    aput-object v9, v11, v8

    .line 68
    .line 69
    aput-object v1, v11, v4

    .line 70
    .line 71
    const v1, 0x7f120aec

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v1, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    iget-boolean v1, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    const-string v1, "li_en_readgeo"

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-string v1, "li_non_readgeo"

    .line 86
    .line 87
    :goto_1
    iget-boolean v4, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 88
    .line 89
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->pagesWithCoordinates:Ljava/util/List;

    .line 90
    .line 91
    move-object v5, v7

    .line 92
    move-object v7, v1

    .line 93
    move v1, v4

    .line 94
    move-object v4, p0

    .line 95
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;-><init>(ZLkotlin/Pair;Lkotlin/Pair;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method public final localSavedArticlesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
    .locals 15

    .line 1
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->config:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 2
    .line 3
    iget-wide v0, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->savedArticlesApps:J

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 6
    .line 7
    iget-object v3, v2, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticles:Ljava/util/List;

    .line 8
    .line 9
    iget v2, v2, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticlesCount:I

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    if-ge v2, v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/yearinreview/YearInReviewSlides;->appSavedArticlesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    long-to-int v5, v0

    .line 20
    new-instance v6, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 21
    .line 22
    iget-object v7, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 23
    .line 24
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    const/4 v10, 0x1

    .line 33
    new-array v11, v10, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v12, 0x0

    .line 36
    aput-object v9, v11, v12

    .line 37
    .line 38
    const v9, 0x7f10005e

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v9, v2, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const/4 v11, 0x2

    .line 58
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v1, 0x4

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v8, v1, v12

    .line 70
    .line 71
    aput-object v9, v1, v10

    .line 72
    .line 73
    aput-object v3, v1, v11

    .line 74
    .line 75
    aput-object v0, v1, v4

    .line 76
    .line 77
    const v0, 0x7f10005d

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v0, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    iget-boolean v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    const-string v0, "li_en_savedcount"

    .line 89
    .line 90
    :goto_0
    move-object v12, v0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const-string v0, "li_non_savedcount"

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :goto_1
    const/4 v13, 0x0

    .line 96
    const/16 v14, 0x44

    .line 97
    .line 98
    iget-boolean v7, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 99
    .line 100
    const v8, 0x7f080325

    .line 101
    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    move-object v10, v2

    .line 105
    invoke-direct/range {v6 .. v14}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 106
    .line 107
    .line 108
    return-object v6
.end method

.method public final loggedInHighlightScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroidx/room/Room;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 8
    .line 9
    iget v3, v2, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    .line 10
    .line 11
    iget-object v4, v2, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopCategories:Ljava/util/List;

    .line 12
    .line 13
    iget v5, v2, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 14
    .line 15
    iget-wide v6, v2, Lorg/wikipedia/yearinreview/YearInReviewModel;->totalReadingTimeMinutes:J

    .line 16
    .line 17
    iget-object v8, v2, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopVisitedArticles:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    const/4 v10, 0x3

    .line 24
    iget-object v11, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 25
    .line 26
    if-nez v9, :cond_0

    .line 27
    .line 28
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v15

    .line 32
    new-instance v12, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;

    .line 33
    .line 34
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    const v9, 0x7f100042

    .line 39
    .line 40
    .line 41
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v13

    .line 45
    invoke-virtual {v8, v9, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-wide v16, Lorg/wikipedia/compose/ComposeColors;->Blue600:J

    .line 53
    .line 54
    const/16 v18, 0x2

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    invoke-direct/range {v12 .. v18}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JI)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v12}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    const-wide/16 v8, 0x1

    .line 64
    .line 65
    cmp-long v8, v6, v8

    .line 66
    .line 67
    iget-object v9, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->numberFormatter:Ljava/text/NumberFormat;

    .line 68
    .line 69
    if-ltz v8, :cond_1

    .line 70
    .line 71
    new-instance v12, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;

    .line 72
    .line 73
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    const v13, 0x7f100041

    .line 78
    .line 79
    .line 80
    long-to-int v14, v6

    .line 81
    invoke-virtual {v8, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    const-wide/16 v16, 0x0

    .line 93
    .line 94
    const/16 v18, 0xc

    .line 95
    .line 96
    const/4 v15, 0x0

    .line 97
    invoke-direct/range {v12 .. v18}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JI)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v12}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_1
    const/4 v6, 0x5

    .line 104
    if-lt v5, v6, :cond_2

    .line 105
    .line 106
    new-instance v12, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;

    .line 107
    .line 108
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const v7, 0x7f120aa8

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iget v2, v2, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteDayToRead:I

    .line 123
    .line 124
    invoke-static {v2}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    sget-object v6, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    .line 129
    .line 130
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v2, v6, v7}, Lj$/time/DayOfWeek;->getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    const-wide/16 v16, 0x0

    .line 139
    .line 140
    const/16 v18, 0xc

    .line 141
    .line 142
    const/4 v15, 0x0

    .line 143
    invoke-direct/range {v12 .. v18}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JI)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v12}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    new-instance v13, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;

    .line 150
    .line 151
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const v6, 0x7f100040

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v9, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    const-wide/16 v17, 0x0

    .line 174
    .line 175
    const/16 v19, 0xc

    .line 176
    .line 177
    const/16 v16, 0x0

    .line 178
    .line 179
    invoke-direct/range {v13 .. v19}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JI)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v13}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-le v2, v10, :cond_3

    .line 190
    .line 191
    invoke-static {v4, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    new-instance v12, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;

    .line 196
    .line 197
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const v4, 0x7f10003f

    .line 202
    .line 203
    .line 204
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    const-wide/16 v16, 0x0

    .line 216
    .line 217
    const/16 v18, 0xa

    .line 218
    .line 219
    const/4 v14, 0x0

    .line 220
    invoke-direct/range {v12 .. v18}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JI)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v12}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_3
    iget-boolean v2, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEditor:Z

    .line 227
    .line 228
    if-eqz v2, :cond_4

    .line 229
    .line 230
    new-instance v12, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;

    .line 231
    .line 232
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    const v4, 0x7f100043

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v9, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    const-wide/16 v16, 0x0

    .line 255
    .line 256
    const/16 v18, 0xc

    .line 257
    .line 258
    const/4 v15, 0x0

    .line 259
    invoke-direct/range {v12 .. v18}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JI)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v12}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    :cond_4
    invoke-static {v1}, Landroidx/room/Room;->build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lkotlin/collections/AbstractMutableList;->getSize()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    const/4 v3, 0x2

    .line 274
    if-ge v2, v3, :cond_5

    .line 275
    .line 276
    const/4 v0, 0x0

    .line 277
    return-object v0

    .line 278
    :cond_5
    iget-boolean v0, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 279
    .line 280
    if-eqz v0, :cond_6

    .line 281
    .line 282
    const-string v0, "li_en_summary"

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_6
    const-string v0, "li_non_summary"

    .line 286
    .line 287
    :goto_0
    const v2, 0x7f120a98

    .line 288
    .line 289
    .line 290
    invoke-virtual {v11, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    new-instance v3, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 298
    .line 299
    invoke-direct {v3, v1, v2, v0}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-object v3
.end method

.method public final popularEnglishArticlesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->config:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->topReadEN:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v0}, Lorg/wikipedia/yearinreview/YearInReviewSlides;->buildListWithNumbers(Ljava/util/List;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f120abf

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v4, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 22
    .line 23
    const v5, 0x7f120af1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v6, 0x3

    .line 47
    new-array v6, v6, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    aput-object v0, v6, v7

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    aput-object v1, v6, v0

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    aput-object v2, v6, v0

    .line 57
    .line 58
    const v0, 0x7f10005c

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    iget-boolean v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isLoggedIn:Z

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    const-string v0, "li_en_popular"

    .line 70
    .line 71
    :goto_0
    move-object v10, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    const-string v0, "lo_en_popular"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_1
    const/4 v11, 0x0

    .line 77
    const/16 v12, 0x44

    .line 78
    .line 79
    iget-boolean v5, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 80
    .line 81
    const v6, 0x7f080322

    .line 82
    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 86
    .line 87
    .line 88
    return-object v4
.end method

.method public final readingPatternsScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$ReadingPatterns;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget v1, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteTimeToRead:I

    .line 11
    .line 12
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 13
    .line 14
    if-ltz v1, :cond_1

    .line 15
    .line 16
    const/4 v4, 0x6

    .line 17
    if-ge v1, v4, :cond_1

    .line 18
    .line 19
    const v1, 0x7f120af4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    move-object v10, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v4, 0xd

    .line 29
    .line 30
    if-gt v2, v1, :cond_2

    .line 31
    .line 32
    if-ge v1, v4, :cond_2

    .line 33
    .line 34
    const v1, 0x7f120af6

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/16 v2, 0xc

    .line 43
    .line 44
    if-gt v2, v1, :cond_3

    .line 45
    .line 46
    const/16 v2, 0xe

    .line 47
    .line 48
    if-ge v1, v2, :cond_3

    .line 49
    .line 50
    const v1, 0x7f120af5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    if-gt v4, v1, :cond_4

    .line 59
    .line 60
    const/16 v2, 0x12

    .line 61
    .line 62
    if-ge v1, v2, :cond_4

    .line 63
    .line 64
    const v1, 0x7f120af2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/16 v2, 0x11

    .line 73
    .line 74
    if-gt v2, v1, :cond_5

    .line 75
    .line 76
    const/16 v2, 0x16

    .line 77
    .line 78
    if-ge v1, v2, :cond_5

    .line 79
    .line 80
    const v1, 0x7f120af3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    const v1, 0x7f120af7

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_0

    .line 96
    :goto_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget v1, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteDayToRead:I

    .line 100
    .line 101
    invoke-static {v1}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    sget-object v2, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    .line 106
    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v1, v2, v4}, Lj$/time/DayOfWeek;->getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    iget v0, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteMonthDidMostReading:I

    .line 116
    .line 117
    invoke-static {v0}, Lj$/time/Month;->of(I)Lj$/time/Month;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v2, v1}, Lj$/time/Month;->getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    new-instance v4, Lorg/wikipedia/yearinreview/YearInReviewScreenData$ReadingPatterns;

    .line 130
    .line 131
    const v0, 0x7f120afb

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iget-boolean v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 139
    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    const-string v0, "li_en_readpattern"

    .line 143
    .line 144
    :goto_2
    move-object v9, v0

    .line 145
    goto :goto_3

    .line 146
    :cond_6
    const-string v0, "li_non_readpattern"

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :goto_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const v6, 0x7f080324

    .line 156
    .line 157
    .line 158
    iget-boolean v5, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$ReadingPatterns;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v4
.end method

.method public final spentReadingMinutesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x7e9

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->config:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 10
    .line 11
    iget v3, v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->averageArticlesReadPerYear:I

    .line 12
    .line 13
    iget-object v4, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 14
    .line 15
    iget-wide v5, v4, Lorg/wikipedia/yearinreview/YearInReviewModel;->totalReadingTimeMinutes:J

    .line 16
    .line 17
    iget v4, v4, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 18
    .line 19
    const/4 v7, 0x5

    .line 20
    iget-boolean v8, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 21
    .line 22
    if-lt v4, v7, :cond_6

    .line 23
    .line 24
    const-wide/16 v9, 0x1

    .line 25
    .line 26
    cmp-long v7, v5, v9

    .line 27
    .line 28
    if-gez v7, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    iget-object v7, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 33
    .line 34
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    long-to-int v10, v5

    .line 39
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/4 v6, 0x1

    .line 44
    new-array v11, v6, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v12, 0x0

    .line 47
    aput-object v5, v11, v12

    .line 48
    .line 49
    const v5, 0x7f100064

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v5, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    const/4 v11, 0x2

    .line 65
    new-array v13, v11, [Ljava/lang/Object;

    .line 66
    .line 67
    aput-object v10, v13, v12

    .line 68
    .line 69
    aput-object v1, v13, v6

    .line 70
    .line 71
    const v10, 0x7f100065

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9, v10, v4, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    new-instance v10, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v5, " "

    .line 87
    .line 88
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v17

    .line 98
    iget-object v9, v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->topReadPercentages:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    const/4 v13, 0x0

    .line 109
    if-eqz v10, :cond_2

    .line 110
    .line 111
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    move-object v14, v10

    .line 116
    check-cast v14, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;

    .line 117
    .line 118
    iget v15, v14, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;->min:I

    .line 119
    .line 120
    if-le v4, v15, :cond_1

    .line 121
    .line 122
    iget v14, v14, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;->max:I

    .line 123
    .line 124
    if-gt v4, v14, :cond_1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    move-object v10, v13

    .line 128
    :goto_0
    check-cast v10, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;

    .line 129
    .line 130
    if-eqz v10, :cond_3

    .line 131
    .line 132
    iget-object v13, v10, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;->identifier:Ljava/lang/String;

    .line 133
    .line 134
    :cond_3
    const-string v4, ""

    .line 135
    .line 136
    if-eqz v13, :cond_4

    .line 137
    .line 138
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    const-string v10, "<b>"

    .line 143
    .line 144
    const-string v14, "</b>"

    .line 145
    .line 146
    invoke-static {v10, v13, v14}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    new-array v14, v11, [Ljava/lang/Object;

    .line 155
    .line 156
    aput-object v10, v14, v12

    .line 157
    .line 158
    aput-object v13, v14, v6

    .line 159
    .line 160
    const v10, 0x7f100063

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v10, v3, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const-string v9, "<br /><br />"

    .line 168
    .line 169
    invoke-static {v4, v3, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    :cond_4
    if-eqz v8, :cond_5

    .line 174
    .line 175
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget-wide v8, v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hoursReadEN:J

    .line 180
    .line 181
    long-to-int v10, v8

    .line 182
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    new-array v9, v6, [Ljava/lang/Object;

    .line 187
    .line 188
    aput-object v8, v9, v12

    .line 189
    .line 190
    const v8, 0x7f10005f

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    iget v2, v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->yearsReadEN:I

    .line 202
    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    new-array v9, v11, [Ljava/lang/Object;

    .line 208
    .line 209
    aput-object v8, v9, v12

    .line 210
    .line 211
    aput-object v1, v9, v6

    .line 212
    .line 213
    const v1, 0x7f100060

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, v1, v2, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const-string v2, "li_en_readcount"

    .line 239
    .line 240
    :goto_1
    move-object/from16 v19, v2

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_5
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    iget-wide v8, v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->articles:J

    .line 248
    .line 249
    long-to-int v10, v8

    .line 250
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    new-array v9, v6, [Ljava/lang/Object;

    .line 255
    .line 256
    aput-object v8, v9, v12

    .line 257
    .line 258
    const v8, 0x7f100061

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    iget v2, v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->languages:I

    .line 270
    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    new-array v9, v11, [Ljava/lang/Object;

    .line 276
    .line 277
    aput-object v8, v9, v12

    .line 278
    .line 279
    aput-object v1, v9, v6

    .line 280
    .line 281
    const v1, 0x7f100062

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v1, v2, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    const-string v2, "li_non_readcount"

    .line 307
    .line 308
    goto :goto_1

    .line 309
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v18

    .line 324
    new-instance v13, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 325
    .line 326
    sget-object v16, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 327
    .line 328
    const/16 v20, 0x0

    .line 329
    .line 330
    const/16 v21, 0x40

    .line 331
    .line 332
    iget-boolean v14, v0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 333
    .line 334
    const v15, 0x7f08032b

    .line 335
    .line 336
    .line 337
    invoke-direct/range {v13 .. v21}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 338
    .line 339
    .line 340
    return-object v13

    .line 341
    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    .line 342
    .line 343
    invoke-virtual {v0}, Lorg/wikipedia/yearinreview/YearInReviewSlides;->englishReadingHoursScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    return-object v0

    .line 348
    :cond_7
    invoke-virtual {v0}, Lorg/wikipedia/yearinreview/YearInReviewSlides;->availableLanguagesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    return-object v0
.end method

.method public final topArticlesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopVisitedArticles:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-static {v0}, Lorg/wikipedia/yearinreview/YearInReviewSlides;->buildListWithNumbers(Ljava/util/List;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    new-instance v2, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 22
    .line 23
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const v5, 0x7f100067

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/16 v4, 0x7e9

    .line 41
    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/4 v5, 0x2

    .line 47
    new-array v5, v5, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    aput-object v4, v5, v7

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    aput-object v1, v5, v4

    .line 54
    .line 55
    const v1, 0x7f100066

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    iget-boolean v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const-string v0, "li_en_toparticles"

    .line 67
    .line 68
    :goto_0
    move-object v8, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const-string v0, "li_non_toparticles"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :goto_1
    const/4 v9, 0x0

    .line 74
    const/16 v10, 0x44

    .line 75
    .line 76
    iget-boolean v3, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 77
    .line 78
    const v4, 0x7f08032a

    .line 79
    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    invoke-direct/range {v2 .. v10}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 83
    .line 84
    .line 85
    return-object v2
.end method

.method public final topCategoriesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopCategories:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x3

    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-static {v0}, Lorg/wikipedia/yearinreview/YearInReviewSlides;->buildListWithNumbers(Ljava/util/List;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 24
    .line 25
    const v2, 0x7f120b08

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/16 v2, 0x7e9

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v4, 0x2

    .line 41
    new-array v4, v4, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    aput-object v2, v4, v6

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    aput-object v0, v4, v2

    .line 48
    .line 49
    const v0, 0x7f120b07

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget-boolean v0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    const-string v0, "li_en_readcategory"

    .line 61
    .line 62
    :goto_0
    move-object v7, v0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const-string v0, "li_non_readcategory"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :goto_1
    const/4 v8, 0x0

    .line 68
    const/16 v9, 0x44

    .line 69
    .line 70
    iget-boolean v2, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 71
    .line 72
    const v3, 0x7f080326

    .line 73
    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-direct/range {v1 .. v9}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_2
    :goto_2
    const/4 p0, 0x0

    .line 81
    return-object p0
.end method

.method public final unlockedIconRoute()Lorg/wikipedia/yearinreview/YearInReviewScreenData$CustomIconScreen;
    .locals 14

    .line 1
    const/16 v0, 0x7e9

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->yearInReviewModel:Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 8
    .line 9
    iget v2, v1, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    .line 10
    .line 11
    iget-boolean v3, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isLoggedIn:Z

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const-string v3, "li"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v3, "lo"

    .line 19
    .line 20
    :goto_0
    iget-boolean v4, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isEnglishWiki:Z

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    const-string v4, "en"

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string v4, "non"

    .line 28
    .line 29
    :goto_1
    iget-boolean v5, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    const-string v6, "nondonoricon"

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const-string v6, "donoricon"

    .line 37
    .line 38
    :goto_2
    const-string v7, "_"

    .line 39
    .line 40
    invoke-static {v3, v7, v4, v7, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    iget-boolean v1, v1, Lorg/wikipedia/yearinreview/YearInReviewModel;->isCustomIconUnlocked:Z

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v6, 0x1

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x2

    .line 51
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 52
    .line 53
    if-eqz v1, :cond_9

    .line 54
    .line 55
    if-lez v2, :cond_3

    .line 56
    .line 57
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 58
    .line 59
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationResults()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    const v1, 0x7f120ad7

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    if-lez v2, :cond_4

    .line 78
    .line 79
    const v1, 0x7f120ad8

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    const v1, 0x7f120ad6

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move v2, v8

    .line 98
    new-instance v8, Lorg/wikipedia/yearinreview/YearInReviewScreenData$CustomIconScreen;

    .line 99
    .line 100
    new-array v9, v2, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object v1, v9, v7

    .line 103
    .line 104
    aput-object v0, v9, v6

    .line 105
    .line 106
    const v0, 0x7f120ad5

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const v0, 0x7f120ada

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const/16 v1, 0x10

    .line 121
    .line 122
    and-int/2addr v1, v6

    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    move v9, v6

    .line 126
    goto :goto_4

    .line 127
    :cond_5
    move v9, v5

    .line 128
    :goto_4
    const/16 v1, 0x10

    .line 129
    .line 130
    and-int/2addr v2, v1

    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    move-object v10, v4

    .line 134
    goto :goto_5

    .line 135
    :cond_6
    move-object v10, v0

    .line 136
    :goto_5
    and-int/lit8 v0, v1, 0x4

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    move-object v11, v4

    .line 141
    goto :goto_6

    .line 142
    :cond_7
    move-object v11, p0

    .line 143
    :goto_6
    and-int p0, v1, v1

    .line 144
    .line 145
    if-eqz p0, :cond_8

    .line 146
    .line 147
    move v13, v7

    .line 148
    goto :goto_7

    .line 149
    :cond_8
    move v13, v6

    .line 150
    :goto_7
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$CustomIconScreen;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 151
    .line 152
    .line 153
    return-object v8

    .line 154
    :cond_9
    move v2, v8

    .line 155
    if-eqz v5, :cond_a

    .line 156
    .line 157
    new-instance v8, Lorg/wikipedia/yearinreview/YearInReviewScreenData$CustomIconScreen;

    .line 158
    .line 159
    const v1, 0x7f120ad9

    .line 160
    .line 161
    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    const/16 v1, 0x7ea

    .line 167
    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const v4, 0x7f1201c1

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    const v5, 0x7f12008e

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    new-array v3, v3, [Ljava/lang/Object;

    .line 187
    .line 188
    aput-object v0, v3, v7

    .line 189
    .line 190
    aput-object v1, v3, v6

    .line 191
    .line 192
    aput-object v4, v3, v2

    .line 193
    .line 194
    const/4 v0, 0x3

    .line 195
    aput-object v5, v3, v0

    .line 196
    .line 197
    const v0, 0x7f120ad4

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    const/4 v13, 0x1

    .line 205
    const/4 v9, 0x1

    .line 206
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$CustomIconScreen;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 207
    .line 208
    .line 209
    return-object v8

    .line 210
    :cond_a
    return-object v4
.end method

.method public final viewedArticlesTimesScreen()Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
    .locals 9

    .line 1
    new-instance v0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->context:Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->config:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 10
    .line 11
    iget-wide v3, v3, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->viewsApps:J

    .line 12
    .line 13
    long-to-int v5, v3

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x1

    .line 19
    new-array v4, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    aput-object v3, v4, v6

    .line 23
    .line 24
    const v3, 0x7f100068

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const v2, 0x7f120b09

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-boolean v1, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isLoggedIn:Z

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-string v1, "li_non_collappread"

    .line 43
    .line 44
    :goto_0
    move-object v6, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string v1, "lo_non_collappread"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    const/4 v7, 0x0

    .line 50
    const/16 v8, 0x44

    .line 51
    .line 52
    iget-boolean v1, p0, Lorg/wikipedia/yearinreview/YearInReviewSlides;->isFundraisingAllowed:Z

    .line 53
    .line 54
    const v2, 0x7f080322

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method
