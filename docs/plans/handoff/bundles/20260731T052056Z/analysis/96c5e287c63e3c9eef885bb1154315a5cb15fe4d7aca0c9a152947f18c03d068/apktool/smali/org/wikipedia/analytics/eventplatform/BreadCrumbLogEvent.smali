.class public final Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;
.super Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;


# instance fields
.field public final action:Ljava/lang/String;

.field public final app_primary_language_code:Ljava/lang/String;

.field public final screen_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit16 v0, p1, 0x1c0

    .line 2
    .line 3
    const/16 v1, 0x1c0

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct/range {p0 .. p7}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iput-object p8, p0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->screen_name:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p9, p0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->action:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p10, p0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->app_primary_language_code:Ljava/lang/String;

    .line 15
    .line 16
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->app_primary_language_code:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, ">>> "

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "."

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;

    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    const-string v0, "android.breadcrumbs_event"

    .line 62
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->screen_name:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->action:Ljava/lang/String;

    .line 65
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 66
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    move-result-object v0

    .line 67
    iput-object v0, p0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->app_primary_language_code:Ljava/lang/String;

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, ">>> "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    return-void
.end method
