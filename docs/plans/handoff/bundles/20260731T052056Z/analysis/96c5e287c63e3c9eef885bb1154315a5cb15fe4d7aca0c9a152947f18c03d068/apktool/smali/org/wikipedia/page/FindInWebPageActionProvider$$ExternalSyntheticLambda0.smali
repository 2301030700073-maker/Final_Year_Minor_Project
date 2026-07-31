.class public final synthetic Lorg/wikipedia/page/FindInWebPageActionProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/webkit/WebView$FindListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/FindInWebPageActionProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/FindInWebPageActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/FindInWebPageActionProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFindResultReceived(IIZ)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/FindInWebPageActionProvider;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/views/FindInPageActionProvider;->setMatchesResults(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
