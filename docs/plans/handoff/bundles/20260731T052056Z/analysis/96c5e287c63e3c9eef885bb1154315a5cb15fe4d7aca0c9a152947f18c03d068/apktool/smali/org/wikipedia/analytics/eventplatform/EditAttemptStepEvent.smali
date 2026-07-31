.class public final Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;
.super Lorg/wikipedia/analytics/eventplatform/EventWithDt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;


# instance fields
.field public final event:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/analytics/eventplatform/EventWithDt;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->event:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$$serializer;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public constructor <init>(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;)V
    .locals 1

    .line 23
    const-string v0, "eventlogging_EditAttemptStep"

    .line 24
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/eventplatform/EventWithDt;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->event:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;

    return-void
.end method
