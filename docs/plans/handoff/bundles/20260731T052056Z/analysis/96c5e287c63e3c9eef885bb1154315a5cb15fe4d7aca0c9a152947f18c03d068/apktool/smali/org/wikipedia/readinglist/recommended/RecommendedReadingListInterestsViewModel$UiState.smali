.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final fromRandomize:Z

.field public final fromSettings:Z

.field public final items:Ljava/util/List;

.field public final prevItems:Ljava/util/List;

.field public final prevSelectedItems:Ljava/util/Set;

.field public final selectedItems:Ljava/util/Set;


# direct methods
.method public constructor <init>(ZLjava/util/List;Ljava/util/Set;ZLjava/util/List;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromSettings:Z

    .line 17
    .line 18
    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 19
    .line 20
    iput-object p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 21
    .line 22
    iput-boolean p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromRandomize:Z

    .line 23
    .line 24
    iput-object p5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevItems:Ljava/util/List;

    .line 25
    .line 26
    iput-object p6, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevSelectedItems:Ljava/util/Set;

    .line 27
    .line 28
    return-void
.end method

.method public static copy$default(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;I)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;
    .locals 7

    .line 1
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromSettings:Z

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 8
    .line 9
    :cond_0
    move-object v2, p1

    .line 10
    iget-boolean v4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromRandomize:Z

    .line 11
    .line 12
    iget-object v5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevItems:Ljava/util/List;

    .line 13
    .line 14
    iget-object v6, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevSelectedItems:Ljava/util/Set;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 29
    .line 30
    move-object v3, p2

    .line 31
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;-><init>(ZLjava/util/List;Ljava/util/Set;ZLjava/util/List;Ljava/util/Set;)V

    .line 32
    .line 33
    .line 34
    return-object v0
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
    instance-of v0, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 10
    .line 11
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromSettings:Z

    .line 12
    .line 13
    iget-boolean v1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromSettings:Z

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 19
    .line 20
    iget-object v1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 30
    .line 31
    iget-object v1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromRandomize:Z

    .line 41
    .line 42
    iget-boolean v1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromRandomize:Z

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevItems:Ljava/util/List;

    .line 48
    .line 49
    iget-object v1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevItems:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevSelectedItems:Ljava/util/Set;

    .line 59
    .line 60
    iget-object p1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevSelectedItems:Ljava/util/Set;

    .line 61
    .line 62
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_7

    .line 67
    .line 68
    :goto_0
    const/4 p0, 0x0

    .line 69
    return p0

    .line 70
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 71
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromSettings:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/16 v3, 0x1f

    .line 13
    .line 14
    mul-int/2addr v0, v3

    .line 15
    iget-object v4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0, v3, v4}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    add-int/2addr v4, v0

    .line 28
    mul-int/2addr v4, v3

    .line 29
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromRandomize:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move v1, v2

    .line 34
    :cond_1
    add-int/2addr v4, v1

    .line 35
    mul-int/2addr v4, v3

    .line 36
    iget-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevItems:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevSelectedItems:Ljava/util/Set;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    add-int/2addr p0, v0

    .line 49
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UiState(fromSettings="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromSettings:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", items="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", selectedItems="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", fromRandomize="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromRandomize:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", prevItems="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevItems:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", prevSelectedItems="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevSelectedItems:Ljava/util/Set;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
