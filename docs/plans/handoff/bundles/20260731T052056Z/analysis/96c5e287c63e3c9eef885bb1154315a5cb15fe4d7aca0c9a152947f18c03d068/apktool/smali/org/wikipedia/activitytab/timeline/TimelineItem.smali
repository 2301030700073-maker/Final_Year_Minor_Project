.class public final Lorg/wikipedia/activitytab/timeline/TimelineItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final activitySource:Lorg/wikipedia/activitytab/timeline/ActivitySource;

.field public final apiTitle:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final displayTitle:Ljava/lang/String;

.field public final id:J

.field public final lang:Ljava/lang/String;

.field public final namespace:Ljava/lang/String;

.field public final pageId:I

.field public final source:I

.field public final thumbnailUrl:Ljava/lang/String;

.field public final timestamp:Ljava/util/Date;

.field public final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ILorg/wikipedia/activitytab/timeline/ActivitySource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-wide p1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->id:J

    .line 23
    .line 24
    iput p3, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->pageId:I

    .line 25
    .line 26
    iput-object p4, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->description:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p5, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->thumbnailUrl:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p6, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 31
    .line 32
    iput p7, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->source:I

    .line 33
    .line 34
    iput-object p8, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->activitySource:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 35
    .line 36
    iput-object p9, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->lang:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p10, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->apiTitle:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p11, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->displayTitle:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p12, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->namespace:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p13, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 45
    .line 46
    return-void
.end method

.method public synthetic constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ILorg/wikipedia/activitytab/timeline/ActivitySource;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;I)V
    .locals 15

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x100

    .line 47
    const-string v10, ""

    if-eqz v0, :cond_0

    move-object v11, v10

    goto :goto_0

    :cond_0
    move-object/from16 v11, p9

    :goto_0
    move-object v13, v10

    move-object v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v12, p10

    move-object/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lorg/wikipedia/activitytab/timeline/TimelineItem;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ILorg/wikipedia/activitytab/timeline/ActivitySource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

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
    instance-of v1, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;

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
    check-cast p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->id:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->id:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->pageId:I

    .line 23
    .line 24
    iget v3, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->pageId:I

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->description:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->description:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->thumbnailUrl:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->thumbnailUrl:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 52
    .line 53
    iget-object v3, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 54
    .line 55
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_6

    .line 60
    .line 61
    return v2

    .line 62
    :cond_6
    iget v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->source:I

    .line 63
    .line 64
    iget v3, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->source:I

    .line 65
    .line 66
    if-eq v1, v3, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->activitySource:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 70
    .line 71
    iget-object v3, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->activitySource:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 72
    .line 73
    if-eq v1, v3, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->lang:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->lang:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_9

    .line 85
    .line 86
    return v2

    .line 87
    :cond_9
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->apiTitle:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v3, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->apiTitle:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_a

    .line 96
    .line 97
    return v2

    .line 98
    :cond_a
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->displayTitle:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v3, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->displayTitle:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_b

    .line 107
    .line 108
    return v2

    .line 109
    :cond_b
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->namespace:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v3, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->namespace:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_c

    .line 118
    .line 119
    return v2

    .line 120
    :cond_c
    iget-object p0, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 121
    .line 122
    iget-object p1, p1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 123
    .line 124
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-nez p0, :cond_d

    .line 129
    .line 130
    return v2

    .line 131
    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->id:J

    .line 4
    .line 5
    ushr-long v3, v1, v0

    .line 6
    .line 7
    xor-long/2addr v1, v3

    .line 8
    long-to-int v0, v1

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget v2, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->pageId:I

    .line 13
    .line 14
    add-int/2addr v0, v2

    .line 15
    mul-int/2addr v0, v1

    .line 16
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->description:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    move v3, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_0
    add-int/2addr v0, v3

    .line 28
    mul-int/2addr v0, v1

    .line 29
    iget-object v3, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->thumbnailUrl:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    move v3, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    :goto_1
    add-int/2addr v0, v3

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-object v3, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, v0

    .line 48
    mul-int/2addr v3, v1

    .line 49
    iget v0, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->source:I

    .line 50
    .line 51
    add-int/2addr v3, v0

    .line 52
    mul-int/2addr v3, v1

    .line 53
    iget-object v0, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->activitySource:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :goto_2
    add-int/2addr v3, v2

    .line 63
    mul-int/2addr v3, v1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->lang:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v3, v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v2, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->apiTitle:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v2, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->displayTitle:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v2, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->namespace:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object p0, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    add-int/2addr p0, v0

    .line 95
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TimelineItem(id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->id:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", pageId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->pageId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", description="

    .line 24
    .line 25
    const-string v2, ", thumbnailUrl="

    .line 26
    .line 27
    iget-object v3, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->description:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v4, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->thumbnailUrl:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, ", timestamp="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->timestamp:Ljava/util/Date;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", source="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->source:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", activitySource="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->activitySource:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", lang="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->lang:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", apiTitle="

    .line 75
    .line 76
    const-string v2, ", displayTitle="

    .line 77
    .line 78
    iget-object v3, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->apiTitle:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v4, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->displayTitle:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v1, ", namespace="

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->namespace:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ", wiki="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lorg/wikipedia/activitytab/timeline/TimelineItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p0, ")"

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method
