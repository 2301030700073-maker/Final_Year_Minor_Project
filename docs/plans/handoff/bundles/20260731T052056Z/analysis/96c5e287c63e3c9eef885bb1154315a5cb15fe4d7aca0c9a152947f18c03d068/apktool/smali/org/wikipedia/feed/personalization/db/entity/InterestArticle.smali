.class public final Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/feed/personalization/db/entity/InterestArticle$Companion;


# instance fields
.field public final apiTitle:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final displayTitle:Ljava/lang/String;

.field public final lang:Ljava/lang/String;

.field public final namespace:Lorg/wikipedia/page/Namespace;

.field public final thumbUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->Companion:Lorg/wikipedia/feed/personalization/db/entity/InterestArticle$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x7

    .line 13
    invoke-direct {v1, v2}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x6

    .line 21
    new-array v1, v1, [Lkotlin/Lazy;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v3, v1, v2

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    aput-object v3, v1, v2

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    aput-object v0, v1, v2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    aput-object v3, v1, v0

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    aput-object v3, v1, v0

    .line 38
    .line 39
    const/4 v0, 0x5

    .line 40
    aput-object v3, v1, v0

    .line 41
    .line 42
    sput-object v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->$childSerializers:[Lkotlin/Lazy;

    .line 43
    .line 44
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3f

    const/16 v1, 0x3f

    if-ne v1, v0, :cond_0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->apiTitle:Ljava/lang/String;

    iput-object p3, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->lang:Ljava/lang/String;

    iput-object p4, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->namespace:Lorg/wikipedia/page/Namespace;

    iput-object p5, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->displayTitle:Ljava/lang/String;

    iput-object p6, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->description:Ljava/lang/String;

    iput-object p7, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->thumbUrl:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle$$serializer;->INSTANCE:Lorg/wikipedia/feed/personalization/db/entity/InterestArticle$$serializer;

    invoke-virtual {p0}, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->apiTitle:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->lang:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p3, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->namespace:Lorg/wikipedia/page/Namespace;

    .line 27
    .line 28
    iput-object p4, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->displayTitle:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p5, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->description:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p6, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->thumbUrl:Ljava/lang/String;

    .line 33
    .line 34
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
    instance-of v1, p1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

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
    check-cast p1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->apiTitle:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->apiTitle:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->lang:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->lang:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->namespace:Lorg/wikipedia/page/Namespace;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->namespace:Lorg/wikipedia/page/Namespace;

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->displayTitle:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->displayTitle:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->description:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->description:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->thumbUrl:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, p1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->thumbUrl:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->apiTitle:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->lang:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->namespace:Lorg/wikipedia/page/Namespace;

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
    mul-int/2addr v2, v1

    .line 24
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->displayTitle:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->description:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->thumbUrl:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    add-int/2addr p0, v0

    .line 43
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", lang="

    .line 2
    .line 3
    const-string v1, ", namespace="

    .line 4
    .line 5
    const-string v2, "InterestArticle(apiTitle="

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->apiTitle:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->lang:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->namespace:Lorg/wikipedia/page/Namespace;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", displayTitle="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->displayTitle:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", description="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->description:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", thumbUrl="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->thumbUrl:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
