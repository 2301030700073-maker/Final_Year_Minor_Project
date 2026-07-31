.class public final Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;
.super Lorg/wikipedia/analytics/eventplatform/TimedEvent;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public findText:Ljava/lang/String;

.field public numFindNext:I

.field public numFindPrev:I

.field public pageHeight:I

.field public final pageId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/analytics/eventplatform/TimedEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->pageId:I

    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->findText:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
