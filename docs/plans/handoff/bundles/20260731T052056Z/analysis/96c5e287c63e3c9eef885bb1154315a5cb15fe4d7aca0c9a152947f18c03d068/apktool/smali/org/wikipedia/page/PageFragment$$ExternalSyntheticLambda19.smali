.class public final synthetic Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda19;->f$0:Lorg/wikipedia/page/PageFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUpOrCancelMotionEvent()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda19;->f$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getAppSessionEvent()Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->touchSession()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
