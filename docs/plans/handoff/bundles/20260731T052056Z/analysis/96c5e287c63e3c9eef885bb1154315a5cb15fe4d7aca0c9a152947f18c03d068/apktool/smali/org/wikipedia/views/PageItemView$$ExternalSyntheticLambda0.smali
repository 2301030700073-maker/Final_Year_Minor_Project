.class public final synthetic Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/views/PageItemView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/PageItemView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/PageItemView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/PageItemView;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/wikipedia/views/PageItemView;->callback:Lorg/wikipedia/views/PageItemView$Callback;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/views/PageItemView;->item:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-interface {p1, p0, v0}, Lorg/wikipedia/views/PageItemView$Callback;->onActionClick(Landroid/view/View;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/views/PageItemView;->callback:Lorg/wikipedia/views/PageItemView$Callback;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->item:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-interface {p1, p0}, Lorg/wikipedia/views/PageItemView$Callback;->onClick(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
