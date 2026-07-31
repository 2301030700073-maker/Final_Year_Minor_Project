.class public final Lorg/wikipedia/games/db/DailyGameHistory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final currentQuestionIndex:I

.field public final day:I

.field public final gameData:Ljava/lang/String;

.field public final gameName:I

.field public final id:I

.field public final language:Ljava/lang/String;

.field public final month:I

.field public final playType:I

.field public final score:I

.field public final status:I

.field public final year:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IIIIILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->id:I

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->gameName:I

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/games/db/DailyGameHistory;->language:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, p0, Lorg/wikipedia/games/db/DailyGameHistory;->year:I

    .line 14
    .line 15
    iput p5, p0, Lorg/wikipedia/games/db/DailyGameHistory;->month:I

    .line 16
    .line 17
    iput p6, p0, Lorg/wikipedia/games/db/DailyGameHistory;->day:I

    .line 18
    .line 19
    iput p7, p0, Lorg/wikipedia/games/db/DailyGameHistory;->score:I

    .line 20
    .line 21
    iput p8, p0, Lorg/wikipedia/games/db/DailyGameHistory;->playType:I

    .line 22
    .line 23
    iput-object p9, p0, Lorg/wikipedia/games/db/DailyGameHistory;->gameData:Ljava/lang/String;

    .line 24
    .line 25
    iput p10, p0, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 26
    .line 27
    iput p11, p0, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/wikipedia/games/db/DailyGameHistory;

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
    check-cast p1, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 12
    .line 13
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->id:I

    .line 14
    .line 15
    iget v3, p1, Lorg/wikipedia/games/db/DailyGameHistory;->id:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->gameName:I

    .line 21
    .line 22
    iget v3, p1, Lorg/wikipedia/games/db/DailyGameHistory;->gameName:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->language:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lorg/wikipedia/games/db/DailyGameHistory;->language:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->year:I

    .line 39
    .line 40
    iget v3, p1, Lorg/wikipedia/games/db/DailyGameHistory;->year:I

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->month:I

    .line 46
    .line 47
    iget v3, p1, Lorg/wikipedia/games/db/DailyGameHistory;->month:I

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->day:I

    .line 53
    .line 54
    iget v3, p1, Lorg/wikipedia/games/db/DailyGameHistory;->day:I

    .line 55
    .line 56
    if-eq v1, v3, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->score:I

    .line 60
    .line 61
    iget v3, p1, Lorg/wikipedia/games/db/DailyGameHistory;->score:I

    .line 62
    .line 63
    if-eq v1, v3, :cond_8

    .line 64
    .line 65
    return v2

    .line 66
    :cond_8
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->playType:I

    .line 67
    .line 68
    iget v3, p1, Lorg/wikipedia/games/db/DailyGameHistory;->playType:I

    .line 69
    .line 70
    if-eq v1, v3, :cond_9

    .line 71
    .line 72
    return v2

    .line 73
    :cond_9
    iget-object v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->gameData:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v3, p1, Lorg/wikipedia/games/db/DailyGameHistory;->gameData:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_a

    .line 82
    .line 83
    return v2

    .line 84
    :cond_a
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 85
    .line 86
    iget v3, p1, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 87
    .line 88
    if-eq v1, v3, :cond_b

    .line 89
    .line 90
    return v2

    .line 91
    :cond_b
    iget p0, p0, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 92
    .line 93
    iget p1, p1, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 94
    .line 95
    if-eq p0, p1, :cond_c

    .line 96
    .line 97
    return v2

    .line 98
    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/games/db/DailyGameHistory;->id:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget v2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->gameName:I

    .line 7
    .line 8
    add-int/2addr v0, v2

    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->language:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->year:I

    .line 17
    .line 18
    add-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget v2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->month:I

    .line 21
    .line 22
    add-int/2addr v0, v2

    .line 23
    mul-int/2addr v0, v1

    .line 24
    iget v2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->day:I

    .line 25
    .line 26
    add-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget v2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->score:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    mul-int/2addr v0, v1

    .line 32
    iget v2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->playType:I

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    mul-int/2addr v0, v1

    .line 36
    iget-object v2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->gameData:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_0
    add-int/2addr v0, v2

    .line 47
    mul-int/2addr v0, v1

    .line 48
    iget v2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 49
    .line 50
    add-int/2addr v0, v2

    .line 51
    mul-int/2addr v0, v1

    .line 52
    iget p0, p0, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 53
    .line 54
    add-int/2addr v0, p0

    .line 55
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", gameName="

    .line 2
    .line 3
    const-string v1, ", language="

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/games/db/DailyGameHistory;->id:I

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/games/db/DailyGameHistory;->gameName:I

    .line 8
    .line 9
    const-string v4, "DailyGameHistory(id="

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->language:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", year="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->year:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", month="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->month:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", day="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->day:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", score="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->score:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", playType="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->playType:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", gameData="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->gameData:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", status="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", currentQuestionIndex="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ")"

    .line 96
    .line 97
    iget p0, p0, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 98
    .line 99
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method
