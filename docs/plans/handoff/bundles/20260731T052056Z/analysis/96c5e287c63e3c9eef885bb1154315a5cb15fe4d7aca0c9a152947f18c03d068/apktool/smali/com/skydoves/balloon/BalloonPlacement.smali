.class public final Lcom/skydoves/balloon/BalloonPlacement;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final align:Lcom/skydoves/balloon/BalloonAlign;

.field public final anchor:Landroid/view/View;

.field public final subAnchors:Ljava/util/List;

.field public final type:Lcom/skydoves/balloon/PlacementType;

.field public final yOff:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/skydoves/balloon/BalloonAlign;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/skydoves/balloon/PlacementType;->ALIGNMENT:Lcom/skydoves/balloon/PlacementType;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/skydoves/balloon/BalloonPlacement;->anchor:Landroid/view/View;

    .line 16
    .line 17
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/skydoves/balloon/BalloonPlacement;->subAnchors:Ljava/util/List;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/skydoves/balloon/BalloonPlacement;->align:Lcom/skydoves/balloon/BalloonAlign;

    .line 22
    .line 23
    iput p3, p0, Lcom/skydoves/balloon/BalloonPlacement;->yOff:I

    .line 24
    .line 25
    iput-object v0, p0, Lcom/skydoves/balloon/BalloonPlacement;->type:Lcom/skydoves/balloon/PlacementType;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/skydoves/balloon/BalloonPlacement;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Lcom/skydoves/balloon/BalloonPlacement;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/skydoves/balloon/BalloonPlacement;->anchor:Landroid/view/View;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/skydoves/balloon/BalloonPlacement;->anchor:Landroid/view/View;

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/skydoves/balloon/BalloonPlacement;->subAnchors:Ljava/util/List;

    .line 24
    .line 25
    iget-object v2, p1, Lcom/skydoves/balloon/BalloonPlacement;->subAnchors:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/skydoves/balloon/BalloonPlacement;->align:Lcom/skydoves/balloon/BalloonAlign;

    .line 35
    .line 36
    iget-object v2, p1, Lcom/skydoves/balloon/BalloonPlacement;->align:Lcom/skydoves/balloon/BalloonAlign;

    .line 37
    .line 38
    if-eq v1, v2, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget v1, p0, Lcom/skydoves/balloon/BalloonPlacement;->yOff:I

    .line 42
    .line 43
    iget v2, p1, Lcom/skydoves/balloon/BalloonPlacement;->yOff:I

    .line 44
    .line 45
    if-eq v1, v2, :cond_5

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_5
    iget-object p0, p0, Lcom/skydoves/balloon/BalloonPlacement;->type:Lcom/skydoves/balloon/PlacementType;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/skydoves/balloon/BalloonPlacement;->type:Lcom/skydoves/balloon/PlacementType;

    .line 51
    .line 52
    if-eq p0, p1, :cond_6

    .line 53
    .line 54
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/skydoves/balloon/BalloonPlacement;->anchor:Landroid/view/View;

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
    iget-object v2, p0, Lcom/skydoves/balloon/BalloonPlacement;->subAnchors:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lcom/skydoves/balloon/BalloonPlacement;->align:Lcom/skydoves/balloon/BalloonAlign;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/lit16 v2, v2, 0x3c1

    .line 24
    .line 25
    iget v0, p0, Lcom/skydoves/balloon/BalloonPlacement;->yOff:I

    .line 26
    .line 27
    add-int/2addr v2, v0

    .line 28
    mul-int/2addr v2, v1

    .line 29
    iget-object p0, p0, Lcom/skydoves/balloon/BalloonPlacement;->type:Lcom/skydoves/balloon/PlacementType;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    add-int/2addr p0, v2

    .line 36
    mul-int/lit16 p0, p0, 0x3c1

    .line 37
    .line 38
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BalloonPlacement(anchor="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/skydoves/balloon/BalloonPlacement;->anchor:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", subAnchors="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/skydoves/balloon/BalloonPlacement;->subAnchors:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", align="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/skydoves/balloon/BalloonPlacement;->align:Lcom/skydoves/balloon/BalloonAlign;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", xOff=0, yOff="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/skydoves/balloon/BalloonPlacement;->yOff:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", type="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/skydoves/balloon/BalloonPlacement;->type:Lcom/skydoves/balloon/PlacementType;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ", width=0, height=0)"

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
