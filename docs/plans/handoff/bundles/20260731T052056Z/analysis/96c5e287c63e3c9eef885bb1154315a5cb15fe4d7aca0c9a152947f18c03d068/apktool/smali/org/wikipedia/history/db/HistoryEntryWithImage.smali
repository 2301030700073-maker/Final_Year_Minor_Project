.class public final Lorg/wikipedia/history/db/HistoryEntryWithImage;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final apiTitle:Ljava/lang/String;

.field public final authority:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final displayTitle:Ljava/lang/String;

.field public final geoLat:Ljava/lang/Double;

.field public final geoLon:Ljava/lang/Double;

.field public final id:J

.field public final imageName:Ljava/lang/String;

.field public final lang:Ljava/lang/String;

.field public final namespace:Ljava/lang/String;

.field public final source:I

.field public final timeSpentSec:I

.field public final timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;J)V
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
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->authority:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->lang:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->apiTitle:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p4, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->displayTitle:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p5, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->namespace:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p6, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timestamp:Ljava/util/Date;

    .line 30
    .line 31
    iput p7, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->source:I

    .line 32
    .line 33
    iput p8, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timeSpentSec:I

    .line 34
    .line 35
    iput-object p9, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->imageName:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p10, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->description:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p11, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLat:Ljava/lang/Double;

    .line 40
    .line 41
    iput-object p12, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLon:Ljava/lang/Double;

    .line 42
    .line 43
    iput-wide p13, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->id:J

    .line 44
    .line 45
    return-void
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
    instance-of v0, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->authority:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->authority:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->lang:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->lang:Ljava/lang/String;

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
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->apiTitle:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->apiTitle:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->displayTitle:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->displayTitle:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->namespace:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->namespace:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_6

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_6
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timestamp:Ljava/util/Date;

    .line 72
    .line 73
    iget-object v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timestamp:Ljava/util/Date;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_7

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_7
    iget v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->source:I

    .line 83
    .line 84
    iget v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->source:I

    .line 85
    .line 86
    if-eq v0, v1, :cond_8

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_8
    iget v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timeSpentSec:I

    .line 90
    .line 91
    iget v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timeSpentSec:I

    .line 92
    .line 93
    if-eq v0, v1, :cond_9

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_9
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->imageName:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->imageName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_a

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_a
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->description:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->description:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_b

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_b
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLat:Ljava/lang/Double;

    .line 119
    .line 120
    iget-object v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLat:Ljava/lang/Double;

    .line 121
    .line 122
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_c

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_c
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLon:Ljava/lang/Double;

    .line 130
    .line 131
    iget-object v1, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLon:Ljava/lang/Double;

    .line 132
    .line 133
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_d

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_d
    iget-wide v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->id:J

    .line 141
    .line 142
    iget-wide p0, p1, Lorg/wikipedia/history/db/HistoryEntryWithImage;->id:J

    .line 143
    .line 144
    cmp-long p0, v0, p0

    .line 145
    .line 146
    if-eqz p0, :cond_e

    .line 147
    .line 148
    :goto_0
    const/4 p0, 0x0

    .line 149
    return p0

    .line 150
    :cond_e
    :goto_1
    const/4 p0, 0x1

    .line 151
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->authority:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->lang:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->apiTitle:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->displayTitle:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->namespace:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timestamp:Ljava/util/Date;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, v0

    .line 41
    mul-int/2addr v2, v1

    .line 42
    iget v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->source:I

    .line 43
    .line 44
    add-int/2addr v2, v0

    .line 45
    mul-int/2addr v2, v1

    .line 46
    iget v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timeSpentSec:I

    .line 47
    .line 48
    add-int/2addr v2, v0

    .line 49
    mul-int/2addr v2, v1

    .line 50
    const/4 v0, 0x0

    .line 51
    iget-object v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->imageName:Ljava/lang/String;

    .line 52
    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    move v3, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    :goto_0
    add-int/2addr v2, v3

    .line 62
    mul-int/2addr v2, v1

    .line 63
    iget-object v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->description:Ljava/lang/String;

    .line 64
    .line 65
    if-nez v3, :cond_1

    .line 66
    .line 67
    move v3, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    :goto_1
    add-int/2addr v2, v3

    .line 74
    mul-int/2addr v2, v1

    .line 75
    iget-object v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLat:Ljava/lang/Double;

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    move v3, v0

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    :goto_2
    add-int/2addr v2, v3

    .line 86
    mul-int/2addr v2, v1

    .line 87
    iget-object v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLon:Ljava/lang/Double;

    .line 88
    .line 89
    if-nez v3, :cond_3

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    :goto_3
    add-int/2addr v2, v0

    .line 97
    mul-int/2addr v2, v1

    .line 98
    const/16 v0, 0x20

    .line 99
    .line 100
    iget-wide v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->id:J

    .line 101
    .line 102
    ushr-long v0, v3, v0

    .line 103
    .line 104
    xor-long/2addr v0, v3

    .line 105
    long-to-int p0, v0

    .line 106
    add-int/2addr v2, p0

    .line 107
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", lang="

    .line 2
    .line 3
    const-string v1, ", apiTitle="

    .line 4
    .line 5
    const-string v2, "HistoryEntryWithImage(authority="

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->authority:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->lang:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ", displayTitle="

    .line 16
    .line 17
    const-string v2, ", namespace="

    .line 18
    .line 19
    iget-object v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->apiTitle:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->displayTitle:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->namespace:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", timestamp="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timestamp:Ljava/util/Date;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", source="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->source:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", timeSpentSec="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->timeSpentSec:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", imageName="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", description="

    .line 67
    .line 68
    const-string v2, ", geoLat="

    .line 69
    .line 70
    iget-object v3, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->imageName:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v4, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->description:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLat:Ljava/lang/Double;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, ", geoLon="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLon:Ljava/lang/Double;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", id="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-wide v1, p0, Lorg/wikipedia/history/db/HistoryEntryWithImage;->id:J

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p0, ")"

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method
