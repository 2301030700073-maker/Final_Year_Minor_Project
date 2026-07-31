.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

.field public final synthetic f$1:Lorg/wikipedia/media/AvPlayer;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Lorg/wikipedia/media/AvPlayer;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/media/AvPlayer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/media/AvPlayer;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {v1, p0, p1}, Lorg/wikipedia/media/AvPlayer;->onViewClick(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :pswitch_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, p0, v0}, Lorg/wikipedia/media/AvPlayer;->onViewClick(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :pswitch_1
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1, p0, v0}, Lorg/wikipedia/media/AvPlayer;->onViewClick(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Z)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
