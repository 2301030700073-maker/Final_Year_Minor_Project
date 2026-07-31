.class public final Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;
.super Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

.field public static final reasons:Ljava/util/List;

.field public static final timer:Lorg/wikipedia/util/ActiveTimer;


# instance fields
.field public final action:Ljava/lang/String;

.field public final action_data:Ljava/lang/String;

.field public final active_interface:Ljava/lang/String;

.field public final primary_language:Ljava/lang/String;

.field public final wiki_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 7
    .line 8
    const-string/jumbo v5, "unfamiliar"

    .line 9
    .line 10
    .line 11
    const-string v6, "other"

    .line 12
    .line 13
    const-string v1, "notrelevant"

    .line 14
    .line 15
    const-string v2, "noinfo"

    .line 16
    .line 17
    const-string v3, "offensive"

    .line 18
    .line 19
    const-string v4, "lowquality"

    .line 20
    .line 21
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->reasons:Ljava/util/List;

    .line 30
    .line 31
    new-instance v0, Lorg/wikipedia/util/ActiveTimer;

    .line 32
    .line 33
    invoke-direct {v0}, Lorg/wikipedia/util/ActiveTimer;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->timer:Lorg/wikipedia/util/ActiveTimer;

    .line 37
    .line 38
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit16 v0, p1, 0x7c0

    .line 2
    .line 3
    const/16 v1, 0x7c0

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct/range {p0 .. p7}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iput-object p8, p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->action:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p9, p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->active_interface:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p10, p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->action_data:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p11, p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->primary_language:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p12, p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->wiki_id:Ljava/lang/String;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const-string v0, "android.image_recommendation_event"

    .line 33
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->action:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->active_interface:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->action_data:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->primary_language:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->wiki_id:Ljava/lang/String;

    return-void
.end method
