.class public final Lorg/schabi/newpipe/info_list/InfoListAdapter$1;
.super Landroidx/core/app/NotificationCompat$Style;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic val$spanCount:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    iput p2, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->val$spanCount:I

    .line 6
    .line 7
    const/4 p1, 0x4

    .line 8
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Style;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    check-cast v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemViewType(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->val$spanCount:I

    .line 20
    .line 21
    :cond_1
    return v0

    .line 22
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 23
    .line 24
    check-cast v0, Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemViewType(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;->val$spanCount:I

    .line 36
    .line 37
    :cond_3
    return v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
