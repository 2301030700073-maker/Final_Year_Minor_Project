.class public abstract Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;
.super Lorg/wikipedia/analytics/eventplatform/EventWithDt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $cachedSerializer$delegate:Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent$Companion;


# instance fields
.field public final anon:Z

.field public final appInstallId:Ljava/lang/String;

.field public final sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/16 v2, 0x1a

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
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/analytics/eventplatform/EventWithDt;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p2, p1, 0x4

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    xor-int/lit8 p2, p2, 0x1

    .line 13
    .line 14
    iput-boolean p2, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->anon:Z

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-boolean p4, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->anon:Z

    .line 18
    .line 19
    :goto_0
    and-int/lit8 p2, p1, 0x8

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lorg/wikipedia/util/TabUtil;->getSessionId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->sessionId:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iput-object p5, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->sessionId:Ljava/lang/String;

    .line 31
    .line 32
    :goto_1
    and-int/lit8 p1, p1, 0x10

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 37
    .line 38
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getAppInstallID()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->appInstallId:Ljava/lang/String;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iput-object p6, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->appInstallId:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/wikipedia/analytics/eventplatform/EventWithDt;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->anon:Z

    .line 53
    invoke-static {}, Lorg/wikipedia/util/TabUtil;->getSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->sessionId:Ljava/lang/String;

    .line 54
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getAppInstallID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->appInstallId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lorg/wikipedia/analytics/eventplatform/Event;->write$Self(Lorg/wikipedia/analytics/eventplatform/Event;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/analytics/eventplatform/EventWithDt;->dt:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, p2, v1, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    iget-boolean v1, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->anon:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    iget-object v1, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->sessionId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    iget-object p0, p0, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;->appInstallId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, p2, v0, p0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
