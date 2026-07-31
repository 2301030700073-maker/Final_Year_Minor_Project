.class public final Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$Companion;


# instance fields
.field public final action:Ljava/lang/String;

.field public final app_install_id:Ljava/lang/String;

.field public final editing_session_id:Ljava/lang/String;

.field public final editor_interface:Ljava/lang/String;

.field public final integration:Ljava/lang/String;

.field public final is_anon:Z

.field public final mw_version:Ljava/lang/String;

.field public final page_ns:I

.field public final page_title:Ljava/lang/String;

.field public final platform:Ljava/lang/String;

.field public final user_editcount:I

.field public final user_id:I

.field public final user_is_temp:Z

.field public final version:I

.field public final wiki:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit16 v0, p1, 0x7fff

    .line 2
    .line 3
    const/16 v1, 0x7fff

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->action:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->app_install_id:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->editing_session_id:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p5, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->editor_interface:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p6, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->integration:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p7, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->mw_version:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p8, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->platform:Ljava/lang/String;

    .line 23
    .line 24
    iput p9, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->user_editcount:I

    .line 25
    .line 26
    iput p10, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->user_id:I

    .line 27
    .line 28
    iput-boolean p11, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->is_anon:Z

    .line 29
    .line 30
    iput-boolean p12, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->user_is_temp:Z

    .line 31
    .line 32
    iput p13, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->version:I

    .line 33
    .line 34
    move-object/from16 p1, p14

    .line 35
    .line 36
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->page_title:Ljava/lang/String;

    .line 37
    .line 38
    move/from16 p1, p15

    .line 39
    .line 40
    iput p1, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->page_ns:I

    .line 41
    .line 42
    move-object/from16 p1, p16

    .line 43
    .line 44
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->wiki:Ljava/lang/String;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->action:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->app_install_id:Ljava/lang/String;

    .line 61
    const-string p1, ""

    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->editing_session_id:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->editor_interface:Ljava/lang/String;

    .line 63
    const-string p2, "app-android"

    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->integration:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->mw_version:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->platform:Ljava/lang/String;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->user_editcount:I

    .line 67
    iput p5, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->user_id:I

    .line 68
    iput-boolean p6, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->is_anon:Z

    .line 69
    iput-boolean p7, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->user_is_temp:Z

    const/4 p1, 0x1

    .line 70
    iput p1, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->version:I

    .line 71
    iput-object p8, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->page_title:Ljava/lang/String;

    .line 72
    iput p9, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->page_ns:I

    .line 73
    iput-object p10, p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;->wiki:Ljava/lang/String;

    return-void
.end method
