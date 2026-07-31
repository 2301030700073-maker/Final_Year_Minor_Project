.class public final Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;
.super Lorg/wikipedia/analytics/eventplatform/TimedEvent;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final pageId:I

.field public final source:I

.field public final wikiDb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/analytics/eventplatform/TimedEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;->wikiDb:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;->pageId:I

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;->source:I

    .line 9
    .line 10
    return-void
.end method
