.class public final Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;
.super Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$Companion;


# instance fields
.field public final action:Ljava/lang/String;

.field public final currentValue:Ljava/lang/String;

.field public final newValue:Ljava/lang/String;

.field public final source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;->Companion:Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit16 v0, p1, 0x1e0

    .line 2
    .line 3
    const/16 v1, 0x1e0

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct/range {p0 .. p6}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p7, p0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;->action:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p8, p0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;->currentValue:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p9, p0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;->newValue:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p10, p0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;->source:Ljava/lang/String;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const-string v0, "android.app_appearance_settings_interaction"

    .line 31
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;->action:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;->currentValue:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;->newValue:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;->source:Ljava/lang/String;

    return-void
.end method
