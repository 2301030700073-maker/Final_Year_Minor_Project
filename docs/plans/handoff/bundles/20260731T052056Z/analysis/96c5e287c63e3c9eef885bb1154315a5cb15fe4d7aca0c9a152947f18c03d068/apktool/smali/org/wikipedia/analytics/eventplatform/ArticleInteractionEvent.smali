.class public final Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;
.super Lorg/wikipedia/analytics/eventplatform/TimedEvent;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final pageId:I

.field public final wikiDb:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/analytics/eventplatform/TimedEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->wikiDb:Ljava/lang/String;

    .line 5
    .line 6
    iput p1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->pageId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final submitEvent(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 2
    .line 3
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-wide v3, p0, Lorg/wikipedia/analytics/eventplatform/TimedEvent;->startTime:J

    .line 10
    .line 11
    sub-long/2addr v1, v3

    .line 12
    long-to-int v1, v1

    .line 13
    iget-object v2, p0, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->wikiDb:Ljava/lang/String;

    .line 14
    .line 15
    iget p0, p0, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->pageId:I

    .line 16
    .line 17
    invoke-direct {v0, v1, p0, v2, p1}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
