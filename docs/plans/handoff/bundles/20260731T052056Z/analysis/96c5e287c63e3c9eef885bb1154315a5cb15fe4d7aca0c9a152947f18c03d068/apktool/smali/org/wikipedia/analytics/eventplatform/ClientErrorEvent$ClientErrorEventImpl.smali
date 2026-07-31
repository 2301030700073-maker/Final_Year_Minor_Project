.class public final Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;
.super Lorg/wikipedia/analytics/eventplatform/Event;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl$Companion;


# instance fields
.field public final errorClass:Ljava/lang/String;

.field public final errorContext:Ljava/lang/String;

.field public final http:Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$Http;

.field public final message:Ljava/lang/String;

.field public final stackTrace:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->Companion:Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$Http;Ljava/lang/String;)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v2, v0, :cond_5

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/analytics/eventplatform/Event;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;)V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->message:Ljava/lang/String;

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x4

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->errorClass:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->errorClass:Ljava/lang/String;

    .line 20
    .line 21
    :goto_0
    and-int/lit8 p2, p1, 0x8

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->errorContext:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput-object p5, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->errorContext:Ljava/lang/String;

    .line 29
    .line 30
    :goto_1
    and-int/lit8 p2, p1, 0x10

    .line 31
    .line 32
    if-nez p2, :cond_2

    .line 33
    .line 34
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->stackTrace:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    iput-object p6, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->stackTrace:Ljava/lang/String;

    .line 38
    .line 39
    :goto_2
    and-int/lit8 p2, p1, 0x20

    .line 40
    .line 41
    if-nez p2, :cond_3

    .line 42
    .line 43
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->http:Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$Http;

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    iput-object p7, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->http:Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$Http;

    .line 47
    .line 48
    :goto_3
    and-int/lit8 p1, p1, 0x40

    .line 49
    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->url:Ljava/lang/String;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    iput-object p8, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->url:Ljava/lang/String;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_5
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl$$serializer;

    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 65
    .line 66
    .line 67
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$Http;Ljava/lang/String;I)V
    .locals 2

    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p3, v1

    :cond_0
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_1

    move-object p4, v1

    :cond_1
    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_2

    move-object p5, v1

    .line 68
    :cond_2
    const-string p6, "mediawiki.client.error"

    .line 69
    invoke-direct {p0, p6}, Lorg/wikipedia/analytics/eventplatform/Event;-><init>(Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->message:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->errorClass:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->errorContext:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->stackTrace:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->http:Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$Http;

    .line 75
    iput-object p5, p0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;->url:Ljava/lang/String;

    return-void
.end method
