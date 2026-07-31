.class public final Lorg/wikimedia/testkitchen/context/ClientData;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikimedia/testkitchen/context/ClientData$Companion;


# instance fields
.field public final agentData:Lorg/wikimedia/testkitchen/context/AgentData;

.field public final mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

.field public final pageData:Lorg/wikimedia/testkitchen/context/PageData;

.field public final performerData:Lorg/wikimedia/testkitchen/context/PerformerData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/context/ClientData$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/context/ClientData;->Companion:Lorg/wikimedia/testkitchen/context/ClientData$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikimedia/testkitchen/context/AgentData;Lorg/wikimedia/testkitchen/context/PageData;Lorg/wikimedia/testkitchen/context/MediawikiData;Lorg/wikimedia/testkitchen/context/PerformerData;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lorg/wikimedia/testkitchen/context/ClientData;->agentData:Lorg/wikimedia/testkitchen/context/AgentData;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikimedia/testkitchen/context/ClientData;->agentData:Lorg/wikimedia/testkitchen/context/AgentData;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikimedia/testkitchen/context/ClientData;->pageData:Lorg/wikimedia/testkitchen/context/PageData;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikimedia/testkitchen/context/ClientData;->pageData:Lorg/wikimedia/testkitchen/context/PageData;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikimedia/testkitchen/context/ClientData;->mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iput-object p4, p0, Lorg/wikimedia/testkitchen/context/ClientData;->mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 31
    .line 32
    :goto_2
    and-int/lit8 p1, p1, 0x8

    .line 33
    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    iput-object v1, p0, Lorg/wikimedia/testkitchen/context/ClientData;->performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    iput-object p5, p0, Lorg/wikimedia/testkitchen/context/ClientData;->performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/wikimedia/testkitchen/context/AgentData;Lorg/wikimedia/testkitchen/context/PageData;Lorg/wikimedia/testkitchen/context/MediawikiData;Lorg/wikimedia/testkitchen/context/PerformerData;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/wikimedia/testkitchen/context/ClientData;->agentData:Lorg/wikimedia/testkitchen/context/AgentData;

    .line 44
    iput-object p2, p0, Lorg/wikimedia/testkitchen/context/ClientData;->pageData:Lorg/wikimedia/testkitchen/context/PageData;

    .line 45
    iput-object p3, p0, Lorg/wikimedia/testkitchen/context/ClientData;->mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 46
    iput-object p4, p0, Lorg/wikimedia/testkitchen/context/ClientData;->performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

    return-void
.end method
