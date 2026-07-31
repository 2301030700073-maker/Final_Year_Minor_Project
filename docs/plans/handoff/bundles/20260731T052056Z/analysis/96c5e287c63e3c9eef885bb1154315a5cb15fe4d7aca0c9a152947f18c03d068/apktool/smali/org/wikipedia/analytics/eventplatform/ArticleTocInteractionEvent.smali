.class public final Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public lastScrollStartMillis:J

.field public numOpens:I

.field public numSectionClicks:I

.field public final numSections:I

.field public final pageId:I

.field public totalOpenedSec:I

.field public final wikiDb:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->pageId:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->wikiDb:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numSections:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final scrollStop()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->lastScrollStartMillis:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->totalOpenedSec:I

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    iget-wide v6, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->lastScrollStartMillis:J

    .line 17
    .line 18
    sub-long/2addr v4, v6

    .line 19
    const-wide/16 v6, 0x3e8

    .line 20
    .line 21
    div-long/2addr v4, v6

    .line 22
    long-to-int v1, v4

    .line 23
    add-int/2addr v0, v1

    .line 24
    iput v0, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->totalOpenedSec:I

    .line 25
    .line 26
    iput-wide v2, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->lastScrollStartMillis:J

    .line 27
    .line 28
    return-void
.end method
