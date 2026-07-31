.class public final Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;
.super Lorg/wikipedia/feed/ForYouModule;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest$Companion;


# instance fields
.field public final age:I

.field public final cards:Ljava/util/List;

.field public final hasLocationPermission:Z

.field public final index:I

.field public final isLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->Companion:Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x16

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
    move-result-object v0

    .line 21
    const/4 v1, 0x5

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
    sput-object v1, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->$childSerializers:[Lkotlin/Lazy;

    .line 41
    .line 42
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/util/List;ZZ)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0xf

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    if-ne v1, v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p2, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->age:I

    .line 11
    .line 12
    iput p3, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->index:I

    .line 13
    .line 14
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->cards:Ljava/util/List;

    .line 15
    .line 16
    iput-boolean p5, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->hasLocationPermission:Z

    .line 17
    .line 18
    and-int/lit8 p1, p1, 0x10

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->isLoading:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iput-boolean p6, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->isLoading:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    sget-object p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest$$serializer;->INSTANCE:Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest$$serializer;

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
.end method

.method public constructor <init>(IILjava/util/List;ZZ)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->age:I

    .line 42
    iput p2, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->index:I

    .line 43
    iput-object p3, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->cards:Ljava/util/List;

    .line 44
    iput-boolean p4, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->hasLocationPermission:Z

    .line 45
    iput-boolean p5, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->isLoading:Z

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
    instance-of v1, p1, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

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
    check-cast p1, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

    .line 12
    .line 13
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->age:I

    .line 14
    .line 15
    iget v3, p1, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->age:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->index:I

    .line 21
    .line 22
    iget v3, p1, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->index:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->cards:Ljava/util/List;

    .line 28
    .line 29
    iget-object v3, p1, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->cards:Ljava/util/List;

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
    iget-boolean v1, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->hasLocationPermission:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->hasLocationPermission:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-boolean p0, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->isLoading:Z

    .line 46
    .line 47
    iget-boolean p1, p1, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->isLoading:Z

    .line 48
    .line 49
    if-eq p0, p1, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    return v0
.end method

.method public final getAge()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->age:I

    .line 2
    .line 3
    return p0
.end method

.method public final getCards()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->cards:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->age:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget v2, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->index:I

    .line 7
    .line 8
    add-int/2addr v0, v2

    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->cards:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-boolean v2, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->hasLocationPermission:Z

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
    iget-boolean p0, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->isLoading:Z

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    move v3, v4

    .line 34
    :cond_1
    add-int/2addr v0, v3

    .line 35
    return v0
.end method

.method public final moduleKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "PLACES_OF_INTEREST"

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
    iget v2, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->age:I

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->index:I

    .line 8
    .line 9
    const-string v4, "PlacesOfInterest(age="

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->cards:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", hasLocationPermission="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->hasLocationPermission:Z

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
    iget-boolean p0, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->isLoading:Z

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ")"

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final withCards(Ljava/util/ArrayList;)Lorg/wikipedia/feed/ForYouModule;
    .locals 6

    .line 1
    new-instance v0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->age:I

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->index:I

    .line 6
    .line 7
    iget-boolean v4, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->hasLocationPermission:Z

    .line 8
    .line 9
    iget-boolean v5, p0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;->isLoading:Z

    .line 10
    .line 11
    move-object v3, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;-><init>(IILjava/util/List;ZZ)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
