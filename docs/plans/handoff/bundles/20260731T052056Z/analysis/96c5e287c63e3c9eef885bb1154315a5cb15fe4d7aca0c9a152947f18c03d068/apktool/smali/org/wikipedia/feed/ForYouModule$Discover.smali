.class public final Lorg/wikipedia/feed/ForYouModule$Discover;
.super Lorg/wikipedia/feed/ForYouModule;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/feed/ForYouModule$Discover$Companion;


# instance fields
.field public final age:I

.field public final cards:Ljava/util/List;

.field public final index:I

.field public final isEnabled:Z

.field public final isLoading:Z

.field public final updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/feed/ForYouModule$Discover$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/ForYouModule$Discover;->Companion:Lorg/wikipedia/feed/ForYouModule$Discover$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x14

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v3, 0x15

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x6

    .line 33
    new-array v2, v2, [Lkotlin/Lazy;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    aput-object v4, v2, v3

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    aput-object v4, v2, v3

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    aput-object v1, v2, v3

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    aput-object v4, v2, v1

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    aput-object v4, v2, v1

    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    aput-object v0, v2, v1

    .line 53
    .line 54
    sput-object v2, Lorg/wikipedia/feed/ForYouModule$Discover;->$childSerializers:[Lkotlin/Lazy;

    .line 55
    .line 56
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/util/List;ZZLorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0xf

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    if-ne v1, v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p2, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->age:I

    .line 11
    .line 12
    iput p3, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->index:I

    .line 13
    .line 14
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->cards:Ljava/util/List;

    .line 15
    .line 16
    iput-boolean p5, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isEnabled:Z

    .line 17
    .line 18
    and-int/lit8 p2, p1, 0x10

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isLoading:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput-boolean p6, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isLoading:Z

    .line 27
    .line 28
    :goto_0
    and-int/lit8 p1, p1, 0x20

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    sget-object p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->DAILY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 33
    .line 34
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iput-object p7, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    sget-object p0, Lorg/wikipedia/feed/ForYouModule$Discover$$serializer;->INSTANCE:Lorg/wikipedia/feed/ForYouModule$Discover$$serializer;

    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/feed/ForYouModule$Discover$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    throw p0
.end method

.method public constructor <init>(IILjava/util/List;ZZLorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;)V
    .locals 0

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->age:I

    .line 53
    iput p2, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->index:I

    .line 54
    iput-object p3, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->cards:Ljava/util/List;

    .line 55
    iput-boolean p4, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isEnabled:Z

    .line 56
    iput-boolean p5, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isLoading:Z

    .line 57
    iput-object p6, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ZLorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;I)V
    .locals 8

    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    and-int/lit8 p4, p4, 0x20

    if-eqz p4, :cond_1

    .line 58
    sget-object p3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->DAILY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    :cond_1
    move-object v7, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    .line 59
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/feed/ForYouModule$Discover;-><init>(IILjava/util/List;ZZLorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;)V

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
    instance-of v1, p1, Lorg/wikipedia/feed/ForYouModule$Discover;

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
    check-cast p1, Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 12
    .line 13
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->age:I

    .line 14
    .line 15
    iget v3, p1, Lorg/wikipedia/feed/ForYouModule$Discover;->age:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->index:I

    .line 21
    .line 22
    iget v3, p1, Lorg/wikipedia/feed/ForYouModule$Discover;->index:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->cards:Ljava/util/List;

    .line 28
    .line 29
    iget-object v3, p1, Lorg/wikipedia/feed/ForYouModule$Discover;->cards:Ljava/util/List;

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
    iget-boolean v1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isEnabled:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Lorg/wikipedia/feed/ForYouModule$Discover;->isEnabled:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-boolean v1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isLoading:Z

    .line 46
    .line 47
    iget-boolean v3, p1, Lorg/wikipedia/feed/ForYouModule$Discover;->isLoading:Z

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 53
    .line 54
    iget-object p1, p1, Lorg/wikipedia/feed/ForYouModule$Discover;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 55
    .line 56
    if-eq p0, p1, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    return v0
.end method

.method public final getAge()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->age:I

    .line 2
    .line 3
    return p0
.end method

.method public final getCards()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->cards:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->age:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget v2, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->index:I

    .line 7
    .line 8
    add-int/2addr v0, v2

    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->cards:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-boolean v2, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isEnabled:Z

    .line 17
    .line 18
    const/16 v3, 0x4d5

    .line 19
    .line 20
    const/16 v4, 0x4cf

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    :goto_0
    add-int/2addr v0, v2

    .line 28
    mul-int/2addr v0, v1

    .line 29
    iget-boolean v2, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isLoading:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    move v3, v4

    .line 34
    :cond_1
    add-int/2addr v0, v3

    .line 35
    mul-int/2addr v0, v1

    .line 36
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    add-int/2addr p0, v0

    .line 43
    return p0
.end method

.method public final moduleKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "DISCOVER"

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
    iget v2, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->age:I

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->index:I

    .line 8
    .line 9
    const-string v4, "Discover(age="

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->cards:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", isEnabled="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isEnabled:Z

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", isLoading="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isLoading:Z

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", updateFrequency="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, ")"

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public final withCards(Ljava/util/ArrayList;)Lorg/wikipedia/feed/ForYouModule;
    .locals 7

    .line 1
    iget-object v6, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 2
    .line 3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 7
    .line 8
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->age:I

    .line 9
    .line 10
    iget v2, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->index:I

    .line 11
    .line 12
    iget-boolean v4, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isEnabled:Z

    .line 13
    .line 14
    iget-boolean v5, p0, Lorg/wikipedia/feed/ForYouModule$Discover;->isLoading:Z

    .line 15
    .line 16
    move-object v3, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/ForYouModule$Discover;-><init>(IILjava/util/List;ZZLorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
