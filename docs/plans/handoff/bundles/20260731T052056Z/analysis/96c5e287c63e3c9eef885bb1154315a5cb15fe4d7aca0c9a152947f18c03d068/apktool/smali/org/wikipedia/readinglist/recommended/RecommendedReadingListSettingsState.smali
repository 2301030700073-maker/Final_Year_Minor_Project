.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final articlesNumber:I

.field public final isRecommendedReadingListEnabled:Z

.field public final isRecommendedReadingListNotificationEnabled:Z

.field public final recommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

.field public final updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;


# direct methods
.method public constructor <init>(ZILorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;Z)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListEnabled:Z

    .line 11
    .line 12
    iput p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->articlesNumber:I

    .line 13
    .line 14
    iput-object p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 15
    .line 16
    iput-object p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->recommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 17
    .line 18
    iput-boolean p5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListNotificationEnabled:Z

    .line 19
    .line 20
    return-void
.end method

.method public static copy$default(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;ZILorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;ZI)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;
    .locals 6

    .line 1
    and-int/lit8 v0, p6, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListEnabled:Z

    .line 6
    .line 7
    :cond_0
    move v1, p1

    .line 8
    and-int/lit8 p1, p6, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->articlesNumber:I

    .line 13
    .line 14
    :cond_1
    move v2, p2

    .line 15
    and-int/lit8 p1, p6, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 20
    .line 21
    :cond_2
    move-object v3, p3

    .line 22
    and-int/lit8 p1, p6, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->recommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 27
    .line 28
    :cond_3
    move-object v4, p4

    .line 29
    and-int/lit8 p1, p6, 0x10

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget-boolean p5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListNotificationEnabled:Z

    .line 34
    .line 35
    :cond_4
    move v5, p5

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 46
    .line 47
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;-><init>(ZILorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;Z)V

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
    instance-of v1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

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
    check-cast p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 12
    .line 13
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListEnabled:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListEnabled:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->articlesNumber:I

    .line 21
    .line 22
    iget v3, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->articlesNumber:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 28
    .line 29
    iget-object v3, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->recommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 35
    .line 36
    iget-object v3, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->recommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-boolean p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListNotificationEnabled:Z

    .line 42
    .line 43
    iget-boolean p1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListNotificationEnabled:Z

    .line 44
    .line 45
    if-eq p0, p1, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListEnabled:Z

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
    iget v3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->articlesNumber:I

    .line 15
    .line 16
    add-int/2addr v0, v3

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/2addr v3, v0

    .line 26
    mul-int/lit8 v3, v3, 0x1f

    .line 27
    .line 28
    iget-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->recommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/2addr v0, v3

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-boolean p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListNotificationEnabled:Z

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    move v1, v2

    .line 42
    :cond_1
    add-int/2addr v0, v1

    .line 43
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RecommendedReadingListSettingsState(isRecommendedReadingListEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", articlesNumber="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->articlesNumber:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", updateFrequency="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", recommendedReadingListSource="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->recommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isRecommendedReadingListNotificationEnabled="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListNotificationEnabled:Z

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
