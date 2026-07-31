.class public final Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final articles:Ljava/util/List;

.field public final articlesError:Ljava/lang/Throwable;

.field public final articlesLoading:Z

.field public final communityContent:Ljava/util/List;

.field public final communityError:Ljava/lang/Throwable;

.field public final communityLoading:Z

.field public final homePreferenceType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

.field public final languageCode:Ljava/lang/String;

.field public final personalizedContent:Ljava/util/List;

.field public final personalizedError:Ljava/lang/Throwable;

.field public final personalizedLoading:Z

.field public final selectedArticles:Ljava/util/Set;

.field public final selectedTopics:Ljava/util/List;

.field public final topicPreviewContent:Ljava/util/Map;

.field public final topics:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topics:Ljava/util/List;

    .line 29
    .line 30
    iput-object p2, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 31
    .line 32
    iput-boolean p3, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesLoading:Z

    .line 33
    .line 34
    iput-object p4, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesError:Ljava/lang/Throwable;

    .line 35
    .line 36
    iput-object p5, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 37
    .line 38
    iput-object p6, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedTopics:Ljava/util/List;

    .line 39
    .line 40
    iput-object p7, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topicPreviewContent:Ljava/util/Map;

    .line 41
    .line 42
    iput-object p8, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->languageCode:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p9, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->homePreferenceType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 45
    .line 46
    iput-object p10, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityContent:Ljava/util/List;

    .line 47
    .line 48
    iput-boolean p11, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityLoading:Z

    .line 49
    .line 50
    iput-object p12, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityError:Ljava/lang/Throwable;

    .line 51
    .line 52
    iput-object p13, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedContent:Ljava/util/List;

    .line 53
    .line 54
    iput-boolean p14, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedLoading:Z

    .line 55
    .line 56
    iput-object p15, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedError:Ljava/lang/Throwable;

    .line 57
    .line 58
    return-void
.end method

.method public static copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p14

    .line 4
    .line 5
    iget-object v2, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topics:Ljava/util/List;

    .line 6
    .line 7
    and-int/lit8 v3, v1, 0x2

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    iget-object v3, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object/from16 v3, p1

    .line 15
    .line 16
    :goto_0
    and-int/lit8 v4, v1, 0x4

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    iget-boolean v4, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesLoading:Z

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move/from16 v4, p2

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v5, v1, 0x8

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    iget-object v5, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesError:Ljava/lang/Throwable;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-object/from16 v5, p3

    .line 33
    .line 34
    :goto_2
    and-int/lit8 v6, v1, 0x10

    .line 35
    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    iget-object v6, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move-object/from16 v6, p4

    .line 42
    .line 43
    :goto_3
    and-int/lit8 v7, v1, 0x20

    .line 44
    .line 45
    if-eqz v7, :cond_4

    .line 46
    .line 47
    iget-object v7, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedTopics:Ljava/util/List;

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    move-object/from16 v7, p5

    .line 51
    .line 52
    :goto_4
    and-int/lit8 v8, v1, 0x40

    .line 53
    .line 54
    if-eqz v8, :cond_5

    .line 55
    .line 56
    iget-object v8, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topicPreviewContent:Ljava/util/Map;

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_5
    move-object/from16 v8, p6

    .line 60
    .line 61
    :goto_5
    iget-object v9, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->languageCode:Ljava/lang/String;

    .line 62
    .line 63
    and-int/lit16 v10, v1, 0x100

    .line 64
    .line 65
    if-eqz v10, :cond_6

    .line 66
    .line 67
    iget-object v10, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->homePreferenceType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 68
    .line 69
    goto :goto_6

    .line 70
    :cond_6
    move-object/from16 v10, p7

    .line 71
    .line 72
    :goto_6
    and-int/lit16 v11, v1, 0x200

    .line 73
    .line 74
    if-eqz v11, :cond_7

    .line 75
    .line 76
    iget-object v11, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityContent:Ljava/util/List;

    .line 77
    .line 78
    goto :goto_7

    .line 79
    :cond_7
    move-object/from16 v11, p8

    .line 80
    .line 81
    :goto_7
    and-int/lit16 v12, v1, 0x400

    .line 82
    .line 83
    if-eqz v12, :cond_8

    .line 84
    .line 85
    iget-boolean v12, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityLoading:Z

    .line 86
    .line 87
    goto :goto_8

    .line 88
    :cond_8
    move/from16 v12, p9

    .line 89
    .line 90
    :goto_8
    and-int/lit16 v13, v1, 0x800

    .line 91
    .line 92
    if-eqz v13, :cond_9

    .line 93
    .line 94
    iget-object v13, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityError:Ljava/lang/Throwable;

    .line 95
    .line 96
    goto :goto_9

    .line 97
    :cond_9
    move-object/from16 v13, p10

    .line 98
    .line 99
    :goto_9
    and-int/lit16 v14, v1, 0x1000

    .line 100
    .line 101
    if-eqz v14, :cond_a

    .line 102
    .line 103
    iget-object v14, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedContent:Ljava/util/List;

    .line 104
    .line 105
    goto :goto_a

    .line 106
    :cond_a
    move-object/from16 v14, p11

    .line 107
    .line 108
    :goto_a
    and-int/lit16 v15, v1, 0x2000

    .line 109
    .line 110
    if-eqz v15, :cond_b

    .line 111
    .line 112
    iget-boolean v15, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedLoading:Z

    .line 113
    .line 114
    goto :goto_b

    .line 115
    :cond_b
    move/from16 v15, p12

    .line 116
    .line 117
    :goto_b
    and-int/lit16 v1, v1, 0x4000

    .line 118
    .line 119
    if-eqz v1, :cond_c

    .line 120
    .line 121
    iget-object v1, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedError:Ljava/lang/Throwable;

    .line 122
    .line 123
    goto :goto_c

    .line 124
    :cond_c
    move-object/from16 v1, p13

    .line 125
    .line 126
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    new-instance v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 154
    .line 155
    move/from16 v16, v15

    .line 156
    .line 157
    move-object v15, v1

    .line 158
    move-object v1, v2

    .line 159
    move-object v2, v3

    .line 160
    move v3, v4

    .line 161
    move-object v4, v5

    .line 162
    move-object v5, v6

    .line 163
    move-object v6, v7

    .line 164
    move-object v7, v8

    .line 165
    move-object v8, v9

    .line 166
    move-object v9, v10

    .line 167
    move-object v10, v11

    .line 168
    move v11, v12

    .line 169
    move-object v12, v13

    .line 170
    move-object v13, v14

    .line 171
    move/from16 v14, v16

    .line 172
    .line 173
    invoke-direct/range {v0 .. v15}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topics:Ljava/util/List;

    .line 14
    .line 15
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topics:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 26
    .line 27
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    iget-boolean v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesLoading:Z

    .line 38
    .line 39
    iget-boolean v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesLoading:Z

    .line 40
    .line 41
    if-eq v0, v1, :cond_4

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesError:Ljava/lang/Throwable;

    .line 46
    .line 47
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesError:Ljava/lang/Throwable;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 58
    .line 59
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedTopics:Ljava/util/List;

    .line 70
    .line 71
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedTopics:Ljava/util/List;

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_7

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_7
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topicPreviewContent:Ljava/util/Map;

    .line 81
    .line 82
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topicPreviewContent:Ljava/util/Map;

    .line 83
    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_8

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_8
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->languageCode:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->languageCode:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_9

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_9
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->homePreferenceType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 103
    .line 104
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->homePreferenceType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 105
    .line 106
    if-eq v0, v1, :cond_a

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_a
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityContent:Ljava/util/List;

    .line 110
    .line 111
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityContent:Ljava/util/List;

    .line 112
    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_b

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_b
    iget-boolean v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityLoading:Z

    .line 121
    .line 122
    iget-boolean v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityLoading:Z

    .line 123
    .line 124
    if-eq v0, v1, :cond_c

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_c
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityError:Ljava/lang/Throwable;

    .line 128
    .line 129
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityError:Ljava/lang/Throwable;

    .line 130
    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_d

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_d
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedContent:Ljava/util/List;

    .line 139
    .line 140
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedContent:Ljava/util/List;

    .line 141
    .line 142
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_e

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_e
    iget-boolean v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedLoading:Z

    .line 150
    .line 151
    iget-boolean v1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedLoading:Z

    .line 152
    .line 153
    if-eq v0, v1, :cond_f

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_f
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedError:Ljava/lang/Throwable;

    .line 157
    .line 158
    iget-object p1, p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedError:Ljava/lang/Throwable;

    .line 159
    .line 160
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-nez p0, :cond_10

    .line 165
    .line 166
    :goto_0
    const/4 p0, 0x0

    .line 167
    return p0

    .line 168
    :cond_10
    :goto_1
    const/4 p0, 0x1

    .line 169
    return p0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topics:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-boolean v2, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesLoading:Z

    .line 17
    .line 18
    const/16 v3, 0x4d5

    .line 19
    .line 20
    const/16 v4, 0x4cf

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    :goto_0
    add-int/2addr v0, v2

    .line 28
    mul-int/2addr v0, v1

    .line 29
    const/4 v2, 0x0

    .line 30
    iget-object v5, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesError:Ljava/lang/Throwable;

    .line 31
    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    move v5, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    :goto_1
    add-int/2addr v0, v5

    .line 41
    mul-int/2addr v0, v1

    .line 42
    iget-object v5, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    add-int/2addr v5, v0

    .line 49
    mul-int/2addr v5, v1

    .line 50
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedTopics:Ljava/util/List;

    .line 51
    .line 52
    invoke-static {v5, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v5, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topicPreviewContent:Ljava/util/Map;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    add-int/2addr v5, v0

    .line 63
    mul-int/2addr v5, v1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->languageCode:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v5, v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v5, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->homePreferenceType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    add-int/2addr v5, v0

    .line 77
    mul-int/2addr v5, v1

    .line 78
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityContent:Ljava/util/List;

    .line 79
    .line 80
    invoke-static {v5, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-boolean v5, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityLoading:Z

    .line 85
    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    move v5, v4

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move v5, v3

    .line 91
    :goto_2
    add-int/2addr v0, v5

    .line 92
    mul-int/2addr v0, v1

    .line 93
    iget-object v5, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityError:Ljava/lang/Throwable;

    .line 94
    .line 95
    if-nez v5, :cond_3

    .line 96
    .line 97
    move v5, v2

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    :goto_3
    add-int/2addr v0, v5

    .line 104
    mul-int/2addr v0, v1

    .line 105
    iget-object v5, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedContent:Ljava/util/List;

    .line 106
    .line 107
    invoke-static {v0, v1, v5}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget-boolean v5, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedLoading:Z

    .line 112
    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    move v3, v4

    .line 116
    :cond_4
    add-int/2addr v0, v3

    .line 117
    mul-int/2addr v0, v1

    .line 118
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedError:Ljava/lang/Throwable;

    .line 119
    .line 120
    if-nez p0, :cond_5

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    :goto_4
    add-int/2addr v0, v2

    .line 128
    return v0
.end method

.method public final toFeedPreferenceUiState()Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityLoading:Z

    .line 4
    .line 5
    sget-object v2, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Loading;->INSTANCE:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Loading;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityError:Ljava/lang/Throwable;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v3, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Error;

    .line 16
    .line 17
    invoke-direct {v3, v1}, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Error;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v3, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Success;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityContent:Ljava/util/List;

    .line 24
    .line 25
    invoke-direct {v3, v1}, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Success;-><init>(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-boolean v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedLoading:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedError:Ljava/lang/Throwable;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    new-instance v2, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Error;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Error;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedContent:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    sget-object v2, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Empty;->INSTANCE:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Empty;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    new-instance v2, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Success;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Success;-><init>(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->homePreferenceType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 60
    .line 61
    invoke-direct {v0, p0, v3, v2}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;-><init>(Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;)V

    .line 62
    .line 63
    .line 64
    return-object v0
.end method

.method public final toInterestUiState()Lorg/wikipedia/feed/personalization/interest/InterestUiState;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topics:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedTopics:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 57
    .line 58
    iget-object v5, v5, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;->topic:Lorg/wikipedia/topics/ArticleTopic;

    .line 59
    .line 60
    iget-object v5, v5, Lorg/wikipedia/topics/ArticleTopic;->topicId:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v6, v2, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;->topic:Lorg/wikipedia/topics/ArticleTopic;

    .line 63
    .line 64
    iget-object v6, v6, Lorg/wikipedia/topics/ArticleTopic;->topicId:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    :cond_2
    :goto_1
    iget-object v2, v2, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;->topic:Lorg/wikipedia/topics/ArticleTopic;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v3, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 79
    .line 80
    invoke-direct {v3, v2, v4}, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;-><init>(Lorg/wikipedia/topics/ArticleTopic;Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-boolean v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesLoading:Z

    .line 88
    .line 89
    iget-object v2, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    sget-object v1, Lorg/wikipedia/feed/personalization/interest/ArticlesState$Loading;->INSTANCE:Lorg/wikipedia/feed/personalization/interest/ArticlesState$Loading;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesError:Ljava/lang/Throwable;

    .line 97
    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    new-instance v4, Lorg/wikipedia/feed/personalization/interest/ArticlesState$Error;

    .line 101
    .line 102
    invoke-direct {v4, v1}, Lorg/wikipedia/feed/personalization/interest/ArticlesState$Error;-><init>(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    move-object v1, v4

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    new-instance v1, Lorg/wikipedia/feed/personalization/interest/ArticlesState$Success;

    .line 108
    .line 109
    iget-object v4, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 110
    .line 111
    invoke-direct {v1, v4, v2}, Lorg/wikipedia/feed/personalization/interest/ArticlesState$Success;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    add-int/2addr v2, v3

    .line 123
    new-instance v3, Lorg/wikipedia/feed/personalization/interest/InterestUiState;

    .line 124
    .line 125
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->languageCode:Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {v3, v0, v1, v2, p0}, Lorg/wikipedia/feed/personalization/interest/InterestUiState;-><init>(Ljava/util/ArrayList;Lorg/wikipedia/feed/personalization/interest/ArticlesState;ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PersonalizedViewModelState(topics="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topics:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", articles="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", articlesLoading="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesLoading:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", articlesError="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articlesError:Ljava/lang/Throwable;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", selectedArticles="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", selectedTopics="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedTopics:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", topicPreviewContent="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topicPreviewContent:Ljava/util/Map;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", languageCode="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->languageCode:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", homePreferenceType="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->homePreferenceType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", communityContent="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityContent:Ljava/util/List;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", communityLoading="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-boolean v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityLoading:Z

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", communityError="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityError:Ljava/lang/Throwable;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", personalizedContent="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedContent:Ljava/util/List;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", personalizedLoading="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-boolean v1, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedLoading:Z

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", personalizedError="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->personalizedError:Ljava/lang/Throwable;

    .line 149
    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p0, ")"

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0
.end method
