.class public final Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent;
.super Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$Companion;


# instance fields
.field public final campaignId:Ljava/lang/String;

.field public final referrerUrl:Ljava/lang/String;

.field public final utfCampaign:Ljava/lang/String;

.field public final utfMedium:Ljava/lang/String;

.field public final utfSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$Companion;

    .line 7
    .line 8
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
    iput-object p8, p0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent;->referrerUrl:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p9, p0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent;->campaignId:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p10, p0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent;->utfMedium:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p11, p0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent;->utfCampaign:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p12, p0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent;->utfSource:Ljava/lang/String;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

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
