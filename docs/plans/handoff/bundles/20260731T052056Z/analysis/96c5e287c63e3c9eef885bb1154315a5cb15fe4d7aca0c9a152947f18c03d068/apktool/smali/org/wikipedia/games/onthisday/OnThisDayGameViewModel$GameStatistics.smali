.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics$Companion;


# instance fields
.field public final averageScore:Ljava/lang/Double;

.field public final bestStreak:I

.field public final currentStreak:I

.field public final totalGamesPlayed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Double;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->totalGamesPlayed:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->totalGamesPlayed:I

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->averageScore:Ljava/lang/Double;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->averageScore:Ljava/lang/Double;

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->currentStreak:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iput p4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->currentStreak:I

    .line 32
    .line 33
    :goto_2
    and-int/lit8 p1, p1, 0x8

    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    iput v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->bestStreak:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    iput p5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->bestStreak:I

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/Double;II)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->totalGamesPlayed:I

    .line 45
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->averageScore:Ljava/lang/Double;

    .line 46
    iput p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->currentStreak:I

    .line 47
    iput p4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->bestStreak:I

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
    instance-of v1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;

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
    check-cast p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;

    .line 12
    .line 13
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->totalGamesPlayed:I

    .line 14
    .line 15
    iget v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->totalGamesPlayed:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->averageScore:Ljava/lang/Double;

    .line 21
    .line 22
    iget-object v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->averageScore:Ljava/lang/Double;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->currentStreak:I

    .line 32
    .line 33
    iget v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->currentStreak:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->bestStreak:I

    .line 39
    .line 40
    iget p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->bestStreak:I

    .line 41
    .line 42
    if-eq p0, p1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->totalGamesPlayed:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->averageScore:Ljava/lang/Double;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :goto_0
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->currentStreak:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->bestStreak:I

    .line 24
    .line 25
    add-int/2addr v0, p0

    .line 26
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GameStatistics(totalGamesPlayed="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->totalGamesPlayed:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", averageScore="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->averageScore:Ljava/lang/Double;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", currentStreak="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->currentStreak:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", bestStreak="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->bestStreak:I

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
