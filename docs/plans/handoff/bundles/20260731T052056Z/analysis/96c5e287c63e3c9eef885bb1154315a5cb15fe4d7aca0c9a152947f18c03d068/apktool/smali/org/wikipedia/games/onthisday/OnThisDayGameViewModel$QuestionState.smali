.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$Companion;


# instance fields
.field public final day:I

.field public final event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

.field public final event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

.field public final goToNext:Z

.field public final month:I

.field public final yearSelected:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;IILjava/lang/Integer;Z)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    if-ne v2, v0, :cond_4

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 11
    .line 12
    iput-object p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 13
    .line 14
    and-int/lit8 p2, p1, 0x4

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iput p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->month:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput p4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->month:I

    .line 23
    .line 24
    :goto_0
    and-int/lit8 p2, p1, 0x8

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    iput p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->day:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iput p5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->day:I

    .line 32
    .line 33
    :goto_1
    and-int/lit8 p2, p1, 0x10

    .line 34
    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    iput-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->yearSelected:Ljava/lang/Integer;

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iput-object p6, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->yearSelected:Ljava/lang/Integer;

    .line 41
    .line 42
    :goto_2
    and-int/lit8 p1, p1, 0x20

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    iput-boolean p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->goToNext:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    iput-boolean p7, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->goToNext:Z

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    sget-object p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$$serializer;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$$serializer;

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;IILjava/lang/Integer;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 64
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 65
    iput p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->month:I

    .line 66
    iput p4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->day:I

    .line 67
    iput-object p5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->yearSelected:Ljava/lang/Integer;

    .line 68
    iput-boolean p6, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->goToNext:Z

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
    instance-of v1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

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
    check-cast p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

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
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->month:I

    .line 36
    .line 37
    iget v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->month:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->day:I

    .line 43
    .line 44
    iget v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->day:I

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->yearSelected:Ljava/lang/Integer;

    .line 50
    .line 51
    iget-object v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->yearSelected:Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-boolean p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->goToNext:Z

    .line 61
    .line 62
    iget-boolean p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->goToNext:Z

    .line 63
    .line 64
    if-eq p0, p1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->month:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    mul-int/lit8 v1, v1, 0x1f

    .line 22
    .line 23
    iget v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->day:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    mul-int/lit8 v1, v1, 0x1f

    .line 27
    .line 28
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->yearSelected:Ljava/lang/Integer;

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :goto_0
    add-int/2addr v1, v0

    .line 39
    mul-int/lit8 v1, v1, 0x1f

    .line 40
    .line 41
    iget-boolean p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->goToNext:Z

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    const/16 p0, 0x4cf

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/16 p0, 0x4d5

    .line 49
    .line 50
    :goto_1
    add-int/2addr v1, p0

    .line 51
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "QuestionState(event1="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", event2="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", month="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->month:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", day="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->day:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", yearSelected="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->yearSelected:Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", goToNext="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->goToNext:Z

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
