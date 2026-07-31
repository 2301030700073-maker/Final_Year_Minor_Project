.class public final Lorg/wikipedia/feed/ForYouModule$Games;
.super Lorg/wikipedia/feed/ForYouModule;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final age:I

.field public final cards:Ljava/util/List;

.field public final index:I

.field public final isLoading:Z


# direct methods
.method public constructor <init>(IILjava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/feed/ForYouModule$Games;->age:I

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/feed/ForYouModule$Games;->index:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/feed/ForYouModule$Games;->cards:Ljava/util/List;

    .line 9
    .line 10
    iput-boolean p4, p0, Lorg/wikipedia/feed/ForYouModule$Games;->isLoading:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/feed/ForYouModule$Games;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/wikipedia/feed/ForYouModule$Games;

    .line 10
    .line 11
    iget v0, p0, Lorg/wikipedia/feed/ForYouModule$Games;->age:I

    .line 12
    .line 13
    iget v1, p1, Lorg/wikipedia/feed/ForYouModule$Games;->age:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget v0, p0, Lorg/wikipedia/feed/ForYouModule$Games;->index:I

    .line 19
    .line 20
    iget v1, p1, Lorg/wikipedia/feed/ForYouModule$Games;->index:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/feed/ForYouModule$Games;->cards:Ljava/util/List;

    .line 26
    .line 27
    iget-object v1, p1, Lorg/wikipedia/feed/ForYouModule$Games;->cards:Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget-boolean p0, p0, Lorg/wikipedia/feed/ForYouModule$Games;->isLoading:Z

    .line 37
    .line 38
    iget-boolean p1, p1, Lorg/wikipedia/feed/ForYouModule$Games;->isLoading:Z

    .line 39
    .line 40
    if-eq p0, p1, :cond_5

    .line 41
    .line 42
    :goto_0
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public final getAge()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/ForYouModule$Games;->age:I

    .line 2
    .line 3
    return p0
.end method

.method public final getCards()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModule$Games;->cards:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/ForYouModule$Games;->age:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget v2, p0, Lorg/wikipedia/feed/ForYouModule$Games;->index:I

    .line 7
    .line 8
    add-int/2addr v0, v2

    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/feed/ForYouModule$Games;->cards:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-boolean p0, p0, Lorg/wikipedia/feed/ForYouModule$Games;->isLoading:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/16 p0, 0x4cf

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 p0, 0x4d5

    .line 24
    .line 25
    :goto_0
    add-int/2addr v0, p0

    .line 26
    return v0
.end method

.method public final moduleKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "GAMES"

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", index="

    .line 2
    .line 3
    const-string v1, ", cards="

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/feed/ForYouModule$Games;->age:I

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/feed/ForYouModule$Games;->index:I

    .line 8
    .line 9
    const-string v4, "Games(age="

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouModule$Games;->cards:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", isLoading="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean p0, p0, Lorg/wikipedia/feed/ForYouModule$Games;->isLoading:Z

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, ")"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final withCards(Ljava/util/ArrayList;)Lorg/wikipedia/feed/ForYouModule;
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/feed/ForYouModule$Games;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$Games;->age:I

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/feed/ForYouModule$Games;->index:I

    .line 6
    .line 7
    iget-boolean p0, p0, Lorg/wikipedia/feed/ForYouModule$Games;->isLoading:Z

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p1, p0}, Lorg/wikipedia/feed/ForYouModule$Games;-><init>(IILjava/util/List;Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
