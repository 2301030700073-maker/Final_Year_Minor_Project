.class public final Lorg/wikimedia/testkitchen/config/StreamConfig;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikimedia/testkitchen/config/StreamConfig$Companion;


# instance fields
.field public final canaryEventsEnabled:Z

.field public final destinationEventService:Lorg/wikimedia/testkitchen/config/DestinationEventService;

.field public final destinationEventServiceKey:Ljava/lang/String;

.field public final producerConfig:Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig;

.field public final sampleConfig:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

.field public final schemaTitle:Ljava/lang/String;

.field public final streamName:Ljava/lang/String;

.field public final topicPrefixes:Ljava/util/List;

.field public final topics:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/config/StreamConfig$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/config/StreamConfig;->Companion:Lorg/wikimedia/testkitchen/config/StreamConfig$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 22
    .line 23
    const/16 v3, 0x11

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    new-array v2, v2, [Lkotlin/Lazy;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    aput-object v4, v2, v3

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    aput-object v4, v2, v3

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    aput-object v4, v2, v3

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    aput-object v4, v2, v3

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    aput-object v4, v2, v3

    .line 51
    .line 52
    const/4 v3, 0x5

    .line 53
    aput-object v4, v2, v3

    .line 54
    .line 55
    const/4 v3, 0x6

    .line 56
    aput-object v1, v2, v3

    .line 57
    .line 58
    const/4 v1, 0x7

    .line 59
    aput-object v0, v2, v1

    .line 60
    .line 61
    sput-object v2, Lorg/wikimedia/testkitchen/config/StreamConfig;->$childSerializers:[Lkotlin/Lazy;

    .line 62
    .line 63
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig;Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;Ljava/util/List;Ljava/util/List;)V
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
    const-string p2, ""

    .line 9
    .line 10
    :cond_0
    iput-object p2, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->streamName:Ljava/lang/String;

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x2

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->canaryEventsEnabled:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-boolean p3, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->canaryEventsEnabled:Z

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    const-string p2, "eventgate-analytics-external"

    .line 27
    .line 28
    iput-object p2, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->destinationEventServiceKey:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iput-object p4, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->destinationEventServiceKey:Ljava/lang/String;

    .line 32
    .line 33
    :goto_1
    and-int/lit8 p2, p1, 0x8

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    iput-object p3, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->schemaTitle:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iput-object p5, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->schemaTitle:Ljava/lang/String;

    .line 42
    .line 43
    :goto_2
    and-int/lit8 p2, p1, 0x10

    .line 44
    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    iput-object p3, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->producerConfig:Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig;

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    iput-object p6, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->producerConfig:Lorg/wikimedia/testkitchen/config/StreamConfig$ProducerConfig;

    .line 51
    .line 52
    :goto_3
    and-int/lit8 p2, p1, 0x20

    .line 53
    .line 54
    if-nez p2, :cond_5

    .line 55
    .line 56
    iput-object p3, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->sampleConfig:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_5
    iput-object p7, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->sampleConfig:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    .line 60
    .line 61
    :goto_4
    and-int/lit8 p2, p1, 0x40

    .line 62
    .line 63
    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 64
    .line 65
    if-nez p2, :cond_6

    .line 66
    .line 67
    iput-object p4, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->topicPrefixes:Ljava/util/List;

    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_6
    iput-object p8, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->topicPrefixes:Ljava/util/List;

    .line 71
    .line 72
    :goto_5
    sget-object p2, Lorg/wikimedia/testkitchen/config/DestinationEventService;->ANALYTICS:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 73
    .line 74
    iput-object p2, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->destinationEventService:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 75
    .line 76
    and-int/lit16 p1, p1, 0x80

    .line 77
    .line 78
    if-nez p1, :cond_7

    .line 79
    .line 80
    iput-object p4, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->topics:Ljava/util/List;

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_7
    iput-object p9, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->topics:Ljava/util/List;

    .line 84
    .line 85
    :goto_6
    invoke-static {}, Lorg/wikimedia/testkitchen/config/DestinationEventService;->getEntries()Lkotlin/enums/EnumEntries;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_9

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    move-object p4, p2

    .line 104
    check-cast p4, Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 105
    .line 106
    invoke-virtual {p4}, Lorg/wikimedia/testkitchen/config/DestinationEventService;->getId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    iget-object p5, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->destinationEventServiceKey:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p4

    .line 116
    if-eqz p4, :cond_8

    .line 117
    .line 118
    move-object p3, p2

    .line 119
    :cond_9
    check-cast p3, Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 120
    .line 121
    if-nez p3, :cond_a

    .line 122
    .line 123
    sget-object p3, Lorg/wikimedia/testkitchen/config/DestinationEventService;->ANALYTICS:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 124
    .line 125
    :cond_a
    iput-object p3, p0, Lorg/wikimedia/testkitchen/config/StreamConfig;->destinationEventService:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 126
    .line 127
    return-void
.end method
