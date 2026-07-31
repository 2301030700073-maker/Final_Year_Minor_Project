.class public final Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final communityState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

.field public final personalizedState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

.field public final selectedType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->selectedType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->communityState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->personalizedState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 12
    .line 13
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
    instance-of v0, p1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->selectedType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->selectedType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->communityState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 19
    .line 20
    iget-object v1, p1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->communityState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->personalizedState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->personalizedState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_4

    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->selectedType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

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
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->communityState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

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
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->personalizedState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v1

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HomePreferenceUiState(selectedType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->selectedType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", communityState="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->communityState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", personalizedState="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->personalizedState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

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
