.class public final Lorg/wikipedia/feed/ForYouCollectionSaved;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/feed/ForYouCollectionSaved$Companion;


# instance fields
.field public final dateTime:Lj$/time/LocalDateTime;

.field public final modulesPerLanguage:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/feed/ForYouCollectionSaved$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/ForYouCollectionSaved;->Companion:Lorg/wikipedia/feed/ForYouCollectionSaved$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xf

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
    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v0, v1, v2

    .line 30
    .line 31
    sput-object v1, Lorg/wikipedia/feed/ForYouCollectionSaved;->$childSerializers:[Lkotlin/Lazy;

    .line 32
    .line 33
    return-void
.end method

.method public synthetic constructor <init>(ILj$/time/LocalDateTime;Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouCollectionSaved;->dateTime:Lj$/time/LocalDateTime;

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x2

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 16
    .line 17
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouCollectionSaved;->modulesPerLanguage:Ljava/util/Map;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/feed/ForYouCollectionSaved;->modulesPerLanguage:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lj$/time/LocalDateTime;Ljava/util/Map;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouCollectionSaved;->dateTime:Lj$/time/LocalDateTime;

    .line 25
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouCollectionSaved;->modulesPerLanguage:Ljava/util/Map;

    return-void
.end method
