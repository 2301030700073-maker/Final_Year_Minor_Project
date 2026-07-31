.class public final synthetic Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/PageActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;->f$0:Lorg/wikipedia/page/PageActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 7
    .line 8
    const v0, 0x7f1209bd

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;->f$0:Lorg/wikipedia/page/PageActivity;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/high16 p0, 0x40e00000    # 7.0f

    .line 21
    .line 22
    invoke-static {p0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    neg-int v4, p0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/16 v9, 0x380

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v5, 0x1

    .line 32
    const/4 v6, 0x1

    .line 33
    const/4 v7, 0x0

    .line 34
    invoke-static/range {v1 .. v9}, Lorg/wikipedia/util/ShareUtil;->getTooltip$default(Landroid/content/Context;Ljava/lang/String;ZIZZIII)Lcom/skydoves/balloon/Balloon;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance v0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda8;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v0, v1, v2}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/page/PageActivity;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/skydoves/balloon/Balloon;->setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 48
    .line 49
    invoke-virtual {v1}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v3}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logTooltipShown(Landroid/content/Context;Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0, v0, v3}, Lcom/skydoves/balloon/Balloon;->showAlignBottom(Landroid/view/View;I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v1, Lorg/wikipedia/activity/BaseActivity;->currentTooltip:Lcom/skydoves/balloon/Balloon;

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    .line 80
    .line 81
    .line 82
    :cond_0
    iput-object p0, v1, Lorg/wikipedia/activity/BaseActivity;->currentTooltip:Lcom/skydoves/balloon/Balloon;

    .line 83
    .line 84
    iput-boolean v2, v1, Lorg/wikipedia/page/PageActivity;->isTooltipShowing:Z

    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_0
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 88
    .line 89
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;->f$0:Lorg/wikipedia/page/PageActivity;

    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Lorg/wikipedia/views/WikiArticleCardView;

    .line 98
    .line 99
    const/16 v0, 0x8

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
