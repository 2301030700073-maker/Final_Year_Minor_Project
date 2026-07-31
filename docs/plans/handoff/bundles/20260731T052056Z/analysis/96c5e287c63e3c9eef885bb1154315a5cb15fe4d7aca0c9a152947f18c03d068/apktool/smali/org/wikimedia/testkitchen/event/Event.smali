.class public final Lorg/wikimedia/testkitchen/event/Event;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikimedia/testkitchen/event/Event$Companion;


# instance fields
.field public final action:Ljava/lang/String;

.field public final actionContext:Ljava/lang/String;

.field public final actionSource:Ljava/lang/String;

.field public final actionSubtype:Ljava/lang/String;

.field public final agentData:Lorg/wikimedia/testkitchen/context/AgentData;

.field public final elementFriendlyName:Ljava/lang/String;

.field public final elementId:Ljava/lang/String;

.field public final experiment:Lorg/wikimedia/testkitchen/event/Event$EventExperiment;

.field public final funnelEntryToken:Ljava/lang/String;

.field public final funnelEventSequencePosition:Ljava/lang/Integer;

.field public final funnelName:Ljava/lang/String;

.field public final instrumentName:Ljava/lang/String;

.field public final mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

.field public final meta:Lorg/wikimedia/testkitchen/event/Event$Meta;

.field public final pageData:Lorg/wikimedia/testkitchen/context/PageData;

.field public final performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

.field public sample:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

.field public final schema:Ljava/lang/String;

.field public final timestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/event/Event$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/event/Event;->Companion:Lorg/wikimedia/testkitchen/event/Event$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/event/Event$Meta;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/AgentData;Lorg/wikimedia/testkitchen/context/PageData;Lorg/wikimedia/testkitchen/context/MediawikiData;Lorg/wikimedia/testkitchen/context/PerformerData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/wikimedia/testkitchen/event/Event$EventExperiment;Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;)V
    .locals 3

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v2, v0, :cond_12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 2
    const-string p2, ""

    .line 3
    :cond_0
    iput-object p2, p0, Lorg/wikimedia/testkitchen/event/Event;->schema:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->timestamp:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lorg/wikimedia/testkitchen/event/Event;->timestamp:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lorg/wikimedia/testkitchen/event/Event;->meta:Lorg/wikimedia/testkitchen/event/Event$Meta;

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->instrumentName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lorg/wikimedia/testkitchen/event/Event;->instrumentName:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_3

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->agentData:Lorg/wikimedia/testkitchen/context/AgentData;

    goto :goto_2

    :cond_3
    iput-object p6, p0, Lorg/wikimedia/testkitchen/event/Event;->agentData:Lorg/wikimedia/testkitchen/context/AgentData;

    :goto_2
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_4

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->pageData:Lorg/wikimedia/testkitchen/context/PageData;

    goto :goto_3

    :cond_4
    iput-object p7, p0, Lorg/wikimedia/testkitchen/event/Event;->pageData:Lorg/wikimedia/testkitchen/context/PageData;

    :goto_3
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_5

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

    goto :goto_4

    :cond_5
    iput-object p8, p0, Lorg/wikimedia/testkitchen/event/Event;->mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

    :goto_4
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_6

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

    goto :goto_5

    :cond_6
    iput-object p9, p0, Lorg/wikimedia/testkitchen/event/Event;->performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

    :goto_5
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_7

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->action:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iput-object p10, p0, Lorg/wikimedia/testkitchen/event/Event;->action:Ljava/lang/String;

    :goto_6
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_8

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->actionSubtype:Ljava/lang/String;

    goto :goto_7

    :cond_8
    iput-object p11, p0, Lorg/wikimedia/testkitchen/event/Event;->actionSubtype:Ljava/lang/String;

    :goto_7
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_9

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->actionSource:Ljava/lang/String;

    goto :goto_8

    :cond_9
    iput-object p12, p0, Lorg/wikimedia/testkitchen/event/Event;->actionSource:Ljava/lang/String;

    :goto_8
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_a

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->actionContext:Ljava/lang/String;

    goto :goto_9

    :cond_a
    move-object/from16 p2, p13

    iput-object p2, p0, Lorg/wikimedia/testkitchen/event/Event;->actionContext:Ljava/lang/String;

    :goto_9
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_b

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->elementId:Ljava/lang/String;

    goto :goto_a

    :cond_b
    move-object/from16 p2, p14

    iput-object p2, p0, Lorg/wikimedia/testkitchen/event/Event;->elementId:Ljava/lang/String;

    :goto_a
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_c

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->elementFriendlyName:Ljava/lang/String;

    goto :goto_b

    :cond_c
    move-object/from16 p2, p15

    iput-object p2, p0, Lorg/wikimedia/testkitchen/event/Event;->elementFriendlyName:Ljava/lang/String;

    :goto_b
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_d

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->funnelName:Ljava/lang/String;

    goto :goto_c

    :cond_d
    move-object/from16 p2, p16

    iput-object p2, p0, Lorg/wikimedia/testkitchen/event/Event;->funnelName:Ljava/lang/String;

    :goto_c
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_e

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->funnelEntryToken:Ljava/lang/String;

    goto :goto_d

    :cond_e
    move-object/from16 p2, p17

    iput-object p2, p0, Lorg/wikimedia/testkitchen/event/Event;->funnelEntryToken:Ljava/lang/String;

    :goto_d
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->funnelEventSequencePosition:Ljava/lang/Integer;

    goto :goto_e

    :cond_f
    move-object/from16 p2, p18

    iput-object p2, p0, Lorg/wikimedia/testkitchen/event/Event;->funnelEventSequencePosition:Ljava/lang/Integer;

    :goto_e
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->experiment:Lorg/wikimedia/testkitchen/event/Event$EventExperiment;

    goto :goto_f

    :cond_10
    move-object/from16 p2, p19

    iput-object p2, p0, Lorg/wikimedia/testkitchen/event/Event;->experiment:Lorg/wikimedia/testkitchen/event/Event$EventExperiment;

    :goto_f
    const/high16 p2, 0x40000

    and-int/2addr p1, p2

    if-nez p1, :cond_11

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->sample:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    return-void

    :cond_11
    move-object/from16 p1, p20

    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->sample:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    return-void

    :cond_12
    sget-object p0, Lorg/wikimedia/testkitchen/event/Event$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/event/Event$$serializer;

    invoke-virtual {p0}, Lorg/wikimedia/testkitchen/event/Event$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVGAndroidRenderer;Lorg/wikimedia/testkitchen/context/ClientData;Lokhttp3/Request$Builder;Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lorg/wikimedia/testkitchen/event/Event$Meta;

    invoke-direct {v0}, Lorg/wikimedia/testkitchen/event/Event$Meta;-><init>()V

    iput-object v0, p0, Lorg/wikimedia/testkitchen/event/Event;->meta:Lorg/wikimedia/testkitchen/event/Event$Meta;

    .line 6
    const-string v0, "/analytics/product_metrics/app/base/2.0.0"

    iput-object v0, p0, Lorg/wikimedia/testkitchen/event/Event;->schema:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lorg/wikimedia/testkitchen/event/Event;->sample:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;

    .line 8
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->timestamp:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->instrumentName:Ljava/lang/String;

    .line 11
    iget-object p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    check-cast p1, Lorg/wikimedia/testkitchen/instrument/Funnel;

    if-eqz p1, :cond_1

    .line 12
    iget-object p5, p1, Lorg/wikimedia/testkitchen/instrument/Funnel;->name:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lorg/wikimedia/testkitchen/event/Event;->funnelName:Ljava/lang/String;

    .line 14
    iget-object p5, p1, Lorg/wikimedia/testkitchen/instrument/Funnel;->token:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lorg/wikimedia/testkitchen/event/Event;->funnelEntryToken:Ljava/lang/String;

    .line 16
    iget p1, p1, Lorg/wikimedia/testkitchen/instrument/Funnel;->_sequence:I

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->funnelEventSequencePosition:Ljava/lang/Integer;

    .line 18
    :cond_1
    iget-object p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    check-cast p1, Lokhttp3/Request$Builder;

    if-eqz p1, :cond_2

    .line 19
    iget-object p2, p1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 20
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 21
    iget-object p2, p1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 22
    iget-object p5, p1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 24
    iget-object p1, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 25
    new-instance v1, Lorg/wikimedia/testkitchen/event/Event$EventExperiment;

    invoke-direct {v1, p2, p5, p1, v0}, Lorg/wikimedia/testkitchen/event/Event$EventExperiment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/wikimedia/testkitchen/event/Event;->experiment:Lorg/wikimedia/testkitchen/event/Event$EventExperiment;

    .line 26
    :cond_2
    :goto_0
    iget-object p1, p3, Lorg/wikimedia/testkitchen/context/ClientData;->agentData:Lorg/wikimedia/testkitchen/context/AgentData;

    .line 27
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->agentData:Lorg/wikimedia/testkitchen/context/AgentData;

    .line 28
    iget-object p1, p3, Lorg/wikimedia/testkitchen/context/ClientData;->pageData:Lorg/wikimedia/testkitchen/context/PageData;

    .line 29
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->pageData:Lorg/wikimedia/testkitchen/context/PageData;

    .line 30
    iget-object p1, p3, Lorg/wikimedia/testkitchen/context/ClientData;->mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 31
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 32
    iget-object p1, p3, Lorg/wikimedia/testkitchen/context/ClientData;->performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 33
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 34
    iget-object p1, p4, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->action:Ljava/lang/String;

    .line 36
    iget-object p1, p4, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->actionContext:Ljava/lang/String;

    .line 38
    iget-object p1, p4, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->actionSource:Ljava/lang/String;

    .line 40
    iget-object p1, p4, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->actionSubtype:Ljava/lang/String;

    .line 42
    iget-object p1, p4, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->elementId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lorg/wikimedia/testkitchen/event/Event;->elementFriendlyName:Ljava/lang/String;

    return-void
.end method
