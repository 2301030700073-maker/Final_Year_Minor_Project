.class public final Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;
.super Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$Companion;


# instance fields
.field public final action:Ljava/lang/String;

.field public final action_data:Ljava/lang/String;

.field public final active_interface:Ljava/lang/String;

.field public final platform:Ljava/lang/String;

.field public final primary_language:Ljava/lang/String;

.field public final wiki_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit16 v0, p1, 0x7c0

    .line 2
    .line 3
    const/16 v1, 0x7c0

    .line 4
    .line 5
    if-ne v1, v0, :cond_1

    .line 6
    .line 7
    invoke-direct/range {p0 .. p7}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iput-object p8, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->action:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p9, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->active_interface:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p10, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->action_data:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p11, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->primary_language:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p12, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->wiki_id:Ljava/lang/String;

    .line 19
    .line 20
    and-int/lit16 p1, p1, 0x800

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p1, "android"

    .line 25
    .line 26
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->platform:Ljava/lang/String;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iput-object p13, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->platform:Ljava/lang/String;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-direct {p0, p6}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->action:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->active_interface:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->action_data:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->primary_language:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->wiki_id:Ljava/lang/String;

    .line 50
    const-string p1, "android"

    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;->platform:Ljava/lang/String;

    return-void
.end method
