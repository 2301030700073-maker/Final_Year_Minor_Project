.class public abstract Lorg/wikipedia/analytics/eventplatform/Event;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $cachedSerializer$delegate:Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/Event$Companion;


# instance fields
.field public final meta:Lorg/wikipedia/analytics/eventplatform/Event$Meta;

.field public final stream:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/Event$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/Event;->Companion:Lorg/wikipedia/analytics/eventplatform/Event$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/16 v2, 0x18

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
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/Event;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/wikipedia/analytics/eventplatform/Event;->stream:Ljava/lang/String;

    .line 7
    .line 8
    and-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lorg/wikipedia/analytics/eventplatform/Event$Meta;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lorg/wikipedia/analytics/eventplatform/Event$Meta;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/Event;->meta:Lorg/wikipedia/analytics/eventplatform/Event$Meta;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/Event;->meta:Lorg/wikipedia/analytics/eventplatform/Event$Meta;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/Event;->stream:Ljava/lang/String;

    .line 25
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/Event$Meta;

    invoke-direct {v0, p1}, Lorg/wikipedia/analytics/eventplatform/Event$Meta;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/analytics/eventplatform/Event;->meta:Lorg/wikipedia/analytics/eventplatform/Event$Meta;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/wikipedia/analytics/eventplatform/Event;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/analytics/eventplatform/Event;->meta:Lorg/wikipedia/analytics/eventplatform/Event$Meta;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/Event$Meta;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/wikipedia/analytics/eventplatform/Event;->stream:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/analytics/eventplatform/Event$Meta;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :goto_0
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/Event$Meta$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/Event$Meta$$serializer;

    .line 24
    .line 25
    iget-object p0, p0, Lorg/wikipedia/analytics/eventplatform/Event;->meta:Lorg/wikipedia/analytics/eventplatform/Event$Meta;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, p2, v1, v0, p0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
