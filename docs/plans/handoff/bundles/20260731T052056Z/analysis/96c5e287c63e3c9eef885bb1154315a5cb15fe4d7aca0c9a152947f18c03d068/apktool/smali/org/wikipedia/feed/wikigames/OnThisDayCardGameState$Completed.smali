.class public final Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;
.super Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

.field public final event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

.field public final langCode:Ljava/lang/String;

.field public final score:I

.field public final totalQuestions:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->langCode:Ljava/lang/String;

    .line 14
    .line 15
    iput p2, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->score:I

    .line 16
    .line 17
    iput p3, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->totalQuestions:I

    .line 18
    .line 19
    iput-object p4, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 20
    .line 21
    iput-object p5, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 22
    .line 23
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
    instance-of v1, p1, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;

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
    check-cast p1, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->langCode:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->langCode:Ljava/lang/String;

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
    iget v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->score:I

    .line 25
    .line 26
    iget v3, p1, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->score:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->totalQuestions:I

    .line 32
    .line 33
    iget v3, p1, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->totalQuestions:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 39
    .line 40
    iget-object v3, p1, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

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
    iget-object p0, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 50
    .line 51
    iget-object p1, p1, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 52
    .line 53
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    return v0
.end method

.method public final getEvent1()Lorg/wikipedia/feed/onthisday/OnThisDay$Event;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEvent2()Lorg/wikipedia/feed/onthisday/OnThisDay$Event;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->langCode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->score:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->totalQuestions:I

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v1, v0

    .line 26
    mul-int/lit8 v1, v1, 0x1f

    .line 27
    .line 28
    iget-object p0, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    add-int/2addr p0, v1

    .line 35
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Completed(langCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->langCode:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", score="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->score:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", totalQuestions="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->totalQuestions:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", event1="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", event2="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
