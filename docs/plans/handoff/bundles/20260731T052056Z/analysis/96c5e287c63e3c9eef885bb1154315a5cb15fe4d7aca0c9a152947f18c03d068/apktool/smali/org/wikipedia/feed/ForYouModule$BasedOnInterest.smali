.class public final Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;
.super Lorg/wikipedia/feed/ForYouModule;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/feed/ForYouModule$BasedOnInterest$Companion;


# instance fields
.field public final age:I

.field public final cards:Ljava/util/List;

.field public final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->Companion:Lorg/wikipedia/feed/ForYouModule$BasedOnInterest$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x11

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
    const/4 v1, 0x3

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
    sput-object v1, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->$childSerializers:[Lkotlin/Lazy;

    .line 35
    .line 36
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/util/List;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->age:I

    .line 10
    .line 11
    iput p3, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->index:I

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->cards:Ljava/util/List;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest$$serializer;->INSTANCE:Lorg/wikipedia/feed/ForYouModule$BasedOnInterest$$serializer;

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->age:I

    .line 29
    iput p2, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->index:I

    .line 30
    iput-object p3, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->cards:Ljava/util/List;

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
    instance-of v1, p1, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;

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
    check-cast p1, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;

    .line 12
    .line 13
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->age:I

    .line 14
    .line 15
    iget v3, p1, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->age:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->index:I

    .line 21
    .line 22
    iget v3, p1, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->index:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->cards:Ljava/util/List;

    .line 28
    .line 29
    iget-object p1, p1, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->cards:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    return v0
.end method

.method public final getAge()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->age:I

    .line 2
    .line 3
    return p0
.end method

.method public final getCards()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->cards:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->age:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->index:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->cards:Ljava/util/List;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    add-int/2addr p0, v0

    .line 17
    return p0
.end method

.method public final moduleKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BASED_ON_INTEREST"

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
    iget v2, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->age:I

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->index:I

    .line 8
    .line 9
    const-string v4, "BasedOnInterest(age="

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->cards:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, ")"

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final withCards(Ljava/util/ArrayList;)Lorg/wikipedia/feed/ForYouModule;
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->age:I

    .line 4
    .line 5
    iget p0, p0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;->index:I

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1}, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;-><init>(IILjava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
