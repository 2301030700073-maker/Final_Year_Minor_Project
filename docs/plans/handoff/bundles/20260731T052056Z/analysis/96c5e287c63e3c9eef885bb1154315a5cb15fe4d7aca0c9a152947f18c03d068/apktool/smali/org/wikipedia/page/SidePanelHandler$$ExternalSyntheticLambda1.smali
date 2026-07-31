.class public final synthetic Lorg/wikipedia/page/SidePanelHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/SidePanelHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/SidePanelHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/SidePanelHandler$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/page/SidePanelHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/SidePanelHandler$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/page/SidePanelHandler;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/wikipedia/page/SidePanelHandler;->tocAdapter:Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;

    .line 4
    .line 5
    iget-object p1, p1, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p1, Lorg/wikipedia/page/Section;

    .line 15
    .line 16
    iget-object p2, p0, Lorg/wikipedia/page/SidePanelHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 17
    .line 18
    iget p3, p1, Lorg/wikipedia/page/Section;->id:I

    .line 19
    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->setScrollY(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p4, p0, Lorg/wikipedia/page/SidePanelHandler;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 28
    .line 29
    const/4 p5, -0x1

    .line 30
    if-ne p3, p5, :cond_2

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "dimen"

    .line 44
    .line 45
    const-string p3, "android"

    .line 46
    .line 47
    const-string p5, "navigation_bar_height"

    .line 48
    .line 49
    invoke-virtual {p1, p5, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-lez p1, :cond_1

    .line 54
    .line 55
    invoke-static {p1}, Lokio/Okio__OkioKt;->getDimension(I)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string/jumbo p3, "window.scrollTo(0, document.getElementById(\'pcs-footer-container-menu\').offsetTop - "

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, ");"

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p4, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object p1, p1, Lorg/wikipedia/page/Section;->anchor:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const-string p2, "\""

    .line 91
    .line 92
    const-string p3, "\\\""

    .line 93
    .line 94
    invoke-static {p1, p2, p3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string p3, "pcs.c1.Page.prepareForScrollToAnchor(\""

    .line 101
    .line 102
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, "\", { highlight: false } )"

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p4, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/page/SidePanelHandler;->hide()V

    .line 121
    .line 122
    .line 123
    return-void
.end method
