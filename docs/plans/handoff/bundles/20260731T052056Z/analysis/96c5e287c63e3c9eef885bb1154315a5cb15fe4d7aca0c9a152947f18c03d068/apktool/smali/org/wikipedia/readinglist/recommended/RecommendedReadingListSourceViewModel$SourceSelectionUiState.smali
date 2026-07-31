.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final isHistoryOptionEnabled:Z

.field public final isSavedOptionEnabled:Z

.field public final selectedSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;


# direct methods
.method public constructor <init>(ZZLorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V
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
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isSavedOptionEnabled:Z

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isHistoryOptionEnabled:Z

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->selectedSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 12
    .line 13
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
    instance-of v1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;

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
    check-cast p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;

    .line 12
    .line 13
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isSavedOptionEnabled:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isSavedOptionEnabled:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isHistoryOptionEnabled:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isHistoryOptionEnabled:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->selectedSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 28
    .line 29
    iget-object p1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->selectedSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 30
    .line 31
    if-eq p0, p1, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isSavedOptionEnabled:Z

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
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isHistoryOptionEnabled:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    :cond_1
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->selectedSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SourceSelectionUiState(isSavedOptionEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isSavedOptionEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isHistoryOptionEnabled="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isHistoryOptionEnabled:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", selectedSource="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->selectedSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
