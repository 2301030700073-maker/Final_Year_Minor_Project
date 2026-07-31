.class public final Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;
.super Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$Companion;


# instance fields
.field public final numSections:I

.field public final numberOfOpens:I

.field public final numberOfSectionClicks:I

.field public final pageId:I

.field public final totalOpenSec:I

.field public final wikiDb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->Companion:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/analytics/eventplatform/Event$Meta;Z)V
    .locals 8

    .line 1
    and-int/lit16 v0, p1, 0x7e0

    .line 2
    .line 3
    const/16 v7, 0x7e0

    .line 4
    .line 5
    if-ne v7, v0, :cond_0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move-object v3, p7

    .line 10
    move-object/from16 v5, p8

    .line 11
    .line 12
    move-object/from16 v6, p9

    .line 13
    .line 14
    move-object/from16 v2, p11

    .line 15
    .line 16
    move/from16 v4, p12

    .line 17
    .line 18
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p10

    .line 22
    .line 23
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->wikiDb:Ljava/lang/String;

    .line 24
    .line 25
    iput p2, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->pageId:I

    .line 26
    .line 27
    iput p3, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->numberOfOpens:I

    .line 28
    .line 29
    iput p4, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->numberOfSectionClicks:I

    .line 30
    .line 31
    iput p5, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->totalOpenSec:I

    .line 32
    .line 33
    iput p6, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->numSections:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p1, v7, v0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    throw v0
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 1

    .line 47
    const-string v0, "android.article_toc_interaction"

    .line 48
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p6, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->wikiDb:Ljava/lang/String;

    .line 50
    iput p1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->pageId:I

    .line 51
    iput p2, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->numberOfOpens:I

    .line 52
    iput p3, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->numberOfSectionClicks:I

    .line 53
    iput p4, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->totalOpenSec:I

    .line 54
    iput p5, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;->numSections:I

    return-void
.end method
