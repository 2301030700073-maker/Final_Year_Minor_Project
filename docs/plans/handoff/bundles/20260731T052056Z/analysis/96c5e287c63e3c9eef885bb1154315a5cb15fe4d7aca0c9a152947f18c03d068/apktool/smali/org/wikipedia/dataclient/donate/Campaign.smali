.class public final Lorg/wikipedia/dataclient/donate/Campaign;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/donate/Campaign$Companion;


# instance fields
.field public final assets:Ljava/util/Map;

.field public final countries:Ljava/util/List;

.field public final endDateTime:Lj$/time/LocalDateTime;

.field public final id:Ljava/lang/String;

.field public final platforms:Ljava/util/Map;

.field public final startDateTime:Lj$/time/LocalDateTime;

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/donate/Campaign$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/donate/Campaign;->Companion:Lorg/wikipedia/dataclient/donate/Campaign$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v3, 0x9

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v4, 0xa

    .line 35
    .line 36
    invoke-direct {v3, v4}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v3, 0x7

    .line 44
    new-array v3, v3, [Lkotlin/Lazy;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v5, v3, v4

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    aput-object v5, v3, v4

    .line 52
    .line 53
    const/4 v4, 0x2

    .line 54
    aput-object v5, v3, v4

    .line 55
    .line 56
    const/4 v4, 0x3

    .line 57
    aput-object v5, v3, v4

    .line 58
    .line 59
    const/4 v4, 0x4

    .line 60
    aput-object v1, v3, v4

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    aput-object v2, v3, v1

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    aput-object v0, v3, v1

    .line 67
    .line 68
    sput-object v3, Lorg/wikipedia/dataclient/donate/Campaign;->$childSerializers:[Lkotlin/Lazy;

    .line 69
    .line 70
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v2, v0, :cond_6

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p2, p0, Lorg/wikipedia/dataclient/donate/Campaign;->version:I

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x2

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-string p2, ""

    .line 17
    .line 18
    iput-object p2, p0, Lorg/wikipedia/dataclient/donate/Campaign;->id:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object p3, p0, Lorg/wikipedia/dataclient/donate/Campaign;->id:Ljava/lang/String;

    .line 22
    .line 23
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikipedia/dataclient/donate/Campaign;->startDateTime:Lj$/time/LocalDateTime;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iput-object p4, p0, Lorg/wikipedia/dataclient/donate/Campaign;->startDateTime:Lj$/time/LocalDateTime;

    .line 31
    .line 32
    :goto_1
    and-int/lit8 p2, p1, 0x8

    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    iput-object v1, p0, Lorg/wikipedia/dataclient/donate/Campaign;->endDateTime:Lj$/time/LocalDateTime;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iput-object p5, p0, Lorg/wikipedia/dataclient/donate/Campaign;->endDateTime:Lj$/time/LocalDateTime;

    .line 40
    .line 41
    :goto_2
    and-int/lit8 p2, p1, 0x10

    .line 42
    .line 43
    sget-object p3, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 44
    .line 45
    if-nez p2, :cond_3

    .line 46
    .line 47
    iput-object p3, p0, Lorg/wikipedia/dataclient/donate/Campaign;->platforms:Ljava/util/Map;

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    iput-object p6, p0, Lorg/wikipedia/dataclient/donate/Campaign;->platforms:Ljava/util/Map;

    .line 51
    .line 52
    :goto_3
    and-int/lit8 p2, p1, 0x20

    .line 53
    .line 54
    if-nez p2, :cond_4

    .line 55
    .line 56
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 57
    .line 58
    iput-object p2, p0, Lorg/wikipedia/dataclient/donate/Campaign;->countries:Ljava/util/List;

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    iput-object p7, p0, Lorg/wikipedia/dataclient/donate/Campaign;->countries:Ljava/util/List;

    .line 62
    .line 63
    :goto_4
    and-int/lit8 p1, p1, 0x40

    .line 64
    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    iput-object p3, p0, Lorg/wikipedia/dataclient/donate/Campaign;->assets:Ljava/util/Map;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_5
    iput-object p8, p0, Lorg/wikipedia/dataclient/donate/Campaign;->assets:Ljava/util/Map;

    .line 71
    .line 72
    return-void

    .line 73
    :cond_6
    sget-object p0, Lorg/wikipedia/dataclient/donate/Campaign$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/donate/Campaign$$serializer;

    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/donate/Campaign$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 80
    .line 81
    .line 82
    throw v1
.end method


# virtual methods
.method public final getAssetsForLang(Ljava/lang/String;)Lorg/wikipedia/dataclient/donate/Campaign$Assets;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/dataclient/donate/Campaign;->assets:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/util/List;

    .line 11
    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-gt v0, v2, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 44
    .line 45
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getAppInstallID()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object p0, p0, Lorg/wikipedia/dataclient/donate/Campaign;->id:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    add-int/2addr p0, v0

    .line 63
    new-instance v0, Lkotlin/random/XorWowRandom;

    .line 64
    .line 65
    shr-int/lit8 v3, p0, 0x1f

    .line 66
    .line 67
    invoke-direct {v0, p0, v3}, Lkotlin/random/XorWowRandom;-><init>(II)V

    .line 68
    .line 69
    .line 70
    const/16 p0, 0x18

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Lkotlin/random/XorWowRandom;->nextBits(I)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    int-to-float p0, p0

    .line 77
    const/high16 v0, 0x4b800000    # 1.6777216E7f

    .line 78
    .line 79
    div-float/2addr p0, v0

    .line 80
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v3, 0x0

    .line 85
    :goto_0
    if-ge v1, v0, :cond_4

    .line 86
    .line 87
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lorg/wikipedia/dataclient/donate/Campaign$Assets;

    .line 92
    .line 93
    iget v4, v4, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->weight:F

    .line 94
    .line 95
    add-float/2addr v3, v4

    .line 96
    cmpg-float v4, p0, v3

    .line 97
    .line 98
    if-gtz v4, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    add-int/lit8 v1, p0, -0x1

    .line 109
    .line 110
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;

    .line 115
    .line 116
    return-object p0

    .line 117
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 118
    return-object p0
.end method

.method public final getIdForLang(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/donate/Campaign;->getAssetsForLang(Ljava/lang/String;)Lorg/wikipedia/dataclient/donate/Campaign$Assets;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lorg/wikipedia/dataclient/donate/Campaign;->id:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->id:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, "_"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_1
    :goto_0
    return-object p0
.end method
