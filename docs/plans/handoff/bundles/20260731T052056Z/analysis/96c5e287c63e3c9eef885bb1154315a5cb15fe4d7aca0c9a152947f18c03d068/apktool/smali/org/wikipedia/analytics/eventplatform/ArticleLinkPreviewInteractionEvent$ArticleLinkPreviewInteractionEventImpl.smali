.class public final Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;
.super Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$Companion;


# instance fields
.field public final action:Ljava/lang/String;

.field public final pageId:I

.field public final source:I

.field public final timeSpentMs:I

.field public final version:I

.field public final wikiDb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->Companion:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    const-string v0, "android.article_link_preview_interaction"

    .line 35
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->action:Ljava/lang/String;

    .line 37
    iput p1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->source:I

    .line 38
    iput p2, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->timeSpentMs:I

    .line 39
    iput-object p5, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->wikiDb:Ljava/lang/String;

    .line 40
    iput p3, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->pageId:I

    const/4 p1, 0x3

    .line 41
    iput p1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->version:I

    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    .locals 2

    .line 1
    and-int/lit16 v0, p1, 0x7e0

    .line 2
    .line 3
    const/16 v1, 0x7e0

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct/range {p0 .. p6}, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;-><init>(ILorg/wikipedia/analytics/eventplatform/Event$Meta;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p7, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->action:Ljava/lang/String;

    .line 11
    .line 12
    iput p8, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->source:I

    .line 13
    .line 14
    iput p9, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->timeSpentMs:I

    .line 15
    .line 16
    iput-object p10, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->wikiDb:Ljava/lang/String;

    .line 17
    .line 18
    iput p11, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->pageId:I

    .line 19
    .line 20
    iput p12, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;->version:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method
