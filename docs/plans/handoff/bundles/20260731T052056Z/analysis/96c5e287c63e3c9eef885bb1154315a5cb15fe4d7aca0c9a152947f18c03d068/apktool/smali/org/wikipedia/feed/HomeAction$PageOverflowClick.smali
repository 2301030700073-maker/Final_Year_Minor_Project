.class public final Lorg/wikipedia/feed/HomeAction$PageOverflowClick;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/feed/HomeAction;


# instance fields
.field public final card:Lorg/wikipedia/feed/model/Card;

.field public final menuKey:Ljava/lang/String;

.field public final pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

.field public final source:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/dataclient/page/PageSummary;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->card:Lorg/wikipedia/feed/model/Card;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->source:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->menuKey:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->card:Lorg/wikipedia/feed/model/Card;

    .line 13
    .line 14
    iget-object v2, p1, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->card:Lorg/wikipedia/feed/model/Card;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lorg/wikipedia/feed/model/Card;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 24
    .line 25
    iget-object v2, p1, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 26
    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    .line 29
    return v1

    .line 30
    :cond_3
    iget v0, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->source:I

    .line 31
    .line 32
    iget v2, p1, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->source:I

    .line 33
    .line 34
    if-eq v0, v2, :cond_4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    iget-object p0, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->menuKey:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p1, p1, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->menuKey:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_5

    .line 46
    .line 47
    :goto_0
    return v1

    .line 48
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

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
    iget v1, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->source:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->menuKey:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    add-int/2addr p0, v0

    .line 21
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PageOverflowClick(card="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->card:Lorg/wikipedia/feed/model/Card;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", pageSummary="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", source="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->source:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", menuKey="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->menuKey:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
