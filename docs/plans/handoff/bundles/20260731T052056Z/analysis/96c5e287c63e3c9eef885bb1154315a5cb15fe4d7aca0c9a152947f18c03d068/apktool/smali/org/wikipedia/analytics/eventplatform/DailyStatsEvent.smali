.class public final Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;
.super Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$Companion;


# instance fields
.field public final app_install_age_in_days:J

.field public final languages:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/16 v2, 0x17

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
    move-result-object v0

    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    new-array v1, v1, [Lkotlin/Lazy;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v3, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aput-object v3, v1, v2

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    aput-object v3, v1, v2

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    aput-object v3, v1, v2

    .line 40
    .line 41
    const/4 v2, 0x5

    .line 42
    aput-object v3, v1, v2

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    aput-object v3, v1, v2

    .line 46
    .line 47
    const/4 v2, 0x7

    .line 48
    aput-object v0, v1, v2

    .line 49
    .line 50
    sput-object v1, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;->$childSerializers:[Lkotlin/Lazy;

    .line 51
    .line 52
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZJLjava/util/List;)V
    .locals 2

    .line 1
    and-int/lit16 v0, p1, 0xc0

    .line 2
    .line 3
    const/16 v1, 0xc0

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct/range {p0 .. p7}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iput-wide p8, p0, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;->app_install_age_in_days:J

    .line 11
    .line 12
    iput-object p10, p0, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;->languages:Ljava/util/List;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const-string v0, "android.daily_stats"

    .line 27
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;-><init>(Ljava/lang/String;)V

    .line 28
    iput-wide p1, p0, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;->app_install_age_in_days:J

    .line 29
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;->languages:Ljava/util/List;

    return-void
.end method
