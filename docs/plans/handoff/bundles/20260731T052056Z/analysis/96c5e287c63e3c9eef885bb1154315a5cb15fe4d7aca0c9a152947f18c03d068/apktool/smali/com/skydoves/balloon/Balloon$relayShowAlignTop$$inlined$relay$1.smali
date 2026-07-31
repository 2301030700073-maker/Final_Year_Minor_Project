.class public final Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $anchor$inlined:Ljava/lang/Object;

.field public final synthetic $balloon:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $yOff$inlined:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILkotlin/jvm/functions/Function1;Lorg/wikipedia/language/addlanguages/LanguageListItem;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$yOff$inlined:I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$balloon:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$anchor$inlined:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/skydoves/balloon/Balloon;Lcom/skydoves/balloon/Balloon;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$balloon:Ljava/lang/Object;

    iput-object p3, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$anchor$inlined:Ljava/lang/Object;

    iput p4, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$yOff$inlined:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$anchor$inlined:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$balloon:Ljava/lang/Object;

    .line 8
    .line 9
    iget v4, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->$yOff$inlined:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon$relayShowAlignTop$$inlined$relay$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 17
    .line 18
    check-cast p0, Landroid/content/Context;

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v6, "listItem."

    .line 23
    .line 24
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    check-cast v2, Lorg/wikipedia/language/addlanguages/LanguageListItem;

    .line 43
    .line 44
    iget-object p0, v2, Lorg/wikipedia/language/addlanguages/LanguageListItem;->code:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_0
    check-cast p0, Lcom/skydoves/balloon/Balloon;

    .line 51
    .line 52
    iget-boolean p0, p0, Lcom/skydoves/balloon/Balloon;->destroyed:Z

    .line 53
    .line 54
    if-nez p0, :cond_0

    .line 55
    .line 56
    check-cast v3, Lcom/skydoves/balloon/Balloon;

    .line 57
    .line 58
    check-cast v2, Landroid/view/View;

    .line 59
    .line 60
    new-instance p0, Lcom/skydoves/balloon/BalloonPlacement;

    .line 61
    .line 62
    sget-object v0, Lcom/skydoves/balloon/BalloonAlign;->TOP:Lcom/skydoves/balloon/BalloonAlign;

    .line 63
    .line 64
    invoke-direct {p0, v2, v0, v4}, Lcom/skydoves/balloon/BalloonPlacement;-><init>(Landroid/view/View;Lcom/skydoves/balloon/BalloonAlign;I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/skydoves/balloon/BalloonPlacement;->anchor:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Lcom/skydoves/balloon/Balloon;->canShowBalloonWindow(Landroid/view/View;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 76
    .line 77
    const/4 v4, 0x7

    .line 78
    invoke-direct {v2, v3, v0, p0, v4}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    :cond_0
    return-object v1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
