.class public abstract Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;
.super Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $cachedSerializer$delegate:Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp$Companion;


# instance fields
.field public final temp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;->Companion:Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/16 v2, 0x1b

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
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p1, p1, 0x20

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput-boolean p1, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;->temp:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iput-boolean p7, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;->temp:Z

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    move-result p1

    iput-boolean p1, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;->temp:Z

    return-void
.end method

.method public static final synthetic write$Self(Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->write$Self(Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;->temp:Z

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-virtual {p1, p2, v0, p0}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
