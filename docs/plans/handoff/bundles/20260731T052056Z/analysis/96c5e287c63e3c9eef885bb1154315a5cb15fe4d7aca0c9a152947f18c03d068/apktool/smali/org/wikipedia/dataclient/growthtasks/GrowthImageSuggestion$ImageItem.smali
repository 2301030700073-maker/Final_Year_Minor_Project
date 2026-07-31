.class public final Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem$Companion;


# instance fields
.field public final displayFilename:Ljava/lang/String;

.field public final image:Ljava/lang/String;

.field public final metadata:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

.field public final projects:Ljava/util/List;

.field public final source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x14

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
    aput-object v3, v1, v2

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    aput-object v0, v1, v2

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    aput-object v3, v1, v0

    .line 39
    .line 40
    sput-object v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->$childSerializers:[Lkotlin/Lazy;

    .line 41
    .line 42
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->image:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->image:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->displayFilename:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->displayFilename:Ljava/lang/String;

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->source:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->source:Ljava/lang/String;

    .line 32
    .line 33
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 34
    .line 35
    if-nez p2, :cond_3

    .line 36
    .line 37
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 38
    .line 39
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->projects:Ljava/util/List;

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->projects:Ljava/util/List;

    .line 43
    .line 44
    :goto_3
    and-int/lit8 p1, p1, 0x10

    .line 45
    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->metadata:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->metadata:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

    .line 53
    .line 54
    return-void
.end method
