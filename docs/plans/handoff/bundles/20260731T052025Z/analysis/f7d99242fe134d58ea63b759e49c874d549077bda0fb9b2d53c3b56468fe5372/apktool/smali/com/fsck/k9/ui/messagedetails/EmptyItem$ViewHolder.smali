.class public final Lcom/fsck/k9/ui/messagedetails/EmptyItem$ViewHolder;
.super Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagedetails/EmptyItem$ViewHolder;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bindView(Lcom/mikepenz/fastadapter/items/AbstractItem;Ljava/util/List;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/ui/messagedetails/EmptyItem$ViewHolder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsDividerItem;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/EmptyItem;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unbindView(Lcom/mikepenz/fastadapter/items/AbstractItem;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/ui/messagedetails/EmptyItem$ViewHolder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsDividerItem;

    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/EmptyItem;

    .line 10
    .line 11
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
