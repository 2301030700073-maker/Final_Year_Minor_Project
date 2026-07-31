.class public final synthetic Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroid/view/View;

    .line 11
    .line 12
    check-cast v1, Landroid/view/View;

    .line 13
    .line 14
    check-cast p0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p0, Lcom/skydoves/balloon/Balloon;

    .line 21
    .line 22
    check-cast v1, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget-object p0, v1, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0;->function:Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
