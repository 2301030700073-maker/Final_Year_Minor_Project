.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$Companion;


# instance fields
.field public final answerState:Ljava/util/List;

.field public final currentQuestionIndex:I

.field public final currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

.field public final gamePlayDate:Ljava/lang/String;

.field public final lastActiveDate:Ljava/lang/String;

.field public final status:I

.field public final totalQuestions:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->Companion:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x12

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x7

    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v3, v1, v2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    aput-object v0, v1, v2

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    aput-object v3, v1, v0

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    aput-object v3, v1, v0

    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    aput-object v3, v1, v0

    .line 42
    .line 43
    const/4 v0, 0x6

    .line 44
    aput-object v3, v1, v0

    .line 45
    .line 46
    sput-object v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->$childSerializers:[Lkotlin/Lazy;

    .line 47
    .line 48
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/util/List;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v1, v0, :cond_7

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    and-int/lit8 v0, p1, 0x1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object p2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 15
    .line 16
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getOtdGameQuestionsPerDay()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :cond_0
    iput p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 21
    .line 22
    and-int/lit8 p2, p1, 0x2

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    iput v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iput p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 31
    .line 32
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    new-instance p2, Ljava/util/ArrayList;

    .line 37
    .line 38
    const/4 p3, 0x5

    .line 39
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    move p4, v0

    .line 43
    :goto_1
    if-ge p4, p3, :cond_2

    .line 44
    .line 45
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 p4, p4, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    iput-object p4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 57
    .line 58
    :goto_2
    iput-object p5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 59
    .line 60
    and-int/lit8 p2, p1, 0x10

    .line 61
    .line 62
    if-nez p2, :cond_4

    .line 63
    .line 64
    iput v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->status:I

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    iput p6, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->status:I

    .line 68
    .line 69
    :goto_3
    and-int/lit8 p2, p1, 0x20

    .line 70
    .line 71
    const-string p3, ""

    .line 72
    .line 73
    if-nez p2, :cond_5

    .line 74
    .line 75
    iput-object p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 79
    .line 80
    :goto_4
    and-int/lit8 p1, p1, 0x40

    .line 81
    .line 82
    if-nez p1, :cond_6

    .line 83
    .line 84
    iput-object p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->lastActiveDate:Ljava/lang/String;

    .line 85
    .line 86
    return-void

    .line 87
    :cond_6
    iput-object p8, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->lastActiveDate:Ljava/lang/String;

    .line 88
    .line 89
    return-void

    .line 90
    :cond_7
    sget-object p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;

    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    throw p0
.end method

.method public constructor <init>(IILjava/util/List;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 103
    iput p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 104
    iput-object p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 105
    iput-object p4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 106
    iput p5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->status:I

    .line 107
    iput-object p6, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 108
    iput-object p7, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->lastActiveDate:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;II)V
    .locals 9

    .line 109
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getOtdGameQuestionsPerDay()I

    move-result v2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_1

    .line 110
    new-instance p2, Ljava/util/ArrayList;

    const/4 p1, 0x5

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v4, p2

    and-int/lit8 p1, p5, 0x10

    if-eqz p1, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, p4

    .line 111
    :goto_2
    const-string v7, ""

    move-object v8, v7

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;-><init>(IILjava/util/List;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static copy$default(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;ILjava/util/List;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;I)Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;
    .locals 8

    .line 1
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 2
    .line 3
    and-int/lit8 v0, p4, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 8
    .line 9
    :cond_0
    move v2, p1

    .line 10
    and-int/lit8 p1, p4, 0x4

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 15
    .line 16
    :cond_1
    move-object v3, p2

    .line 17
    and-int/lit8 p1, p4, 0x8

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 22
    .line 23
    :cond_2
    move-object v4, p3

    .line 24
    iget v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->status:I

    .line 25
    .line 26
    iget-object v6, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v7, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->lastActiveDate:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 46
    .line 47
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;-><init>(IILjava/util/List;Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v0
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
    instance-of v1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

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
    check-cast p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 12
    .line 13
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 14
    .line 15
    iget v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 21
    .line 22
    iget v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 28
    .line 29
    iget-object v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

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
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 39
    .line 40
    iget-object v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->status:I

    .line 50
    .line 51
    iget v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->status:I

    .line 52
    .line 53
    if-eq v1, v3, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->lastActiveDate:Ljava/lang/String;

    .line 68
    .line 69
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->lastActiveDate:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget v2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 7
    .line 8
    add-int/2addr v0, v2

    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 17
    .line 18
    invoke-virtual {v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/2addr v2, v1

    .line 24
    iget v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->status:I

    .line 25
    .line 26
    add-int/2addr v2, v0

    .line 27
    mul-int/2addr v2, v1

    .line 28
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2, v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->lastActiveDate:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    add-int/2addr p0, v0

    .line 41
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", currentQuestionIndex="

    .line 2
    .line 3
    const-string v1, ", answerState="

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 8
    .line 9
    const-string v4, "GameState(totalQuestions="

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", currentQuestionState="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", status="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->status:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", gamePlayDate="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->gamePlayDate:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", lastActiveDate="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ")"

    .line 56
    .line 57
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->lastActiveDate:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0, p0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
