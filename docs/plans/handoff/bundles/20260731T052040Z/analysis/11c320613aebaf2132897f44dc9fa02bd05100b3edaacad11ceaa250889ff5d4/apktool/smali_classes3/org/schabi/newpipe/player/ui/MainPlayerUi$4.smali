.class public final Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;->this$0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    const/16 p2, 0x8

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 p1, 0xa

    .line 10
    .line 11
    const/16 p2, 0x19

    .line 12
    .line 13
    invoke-static {p0, p1, p2}, Lokhttp3/Cookie$Companion;->clamp(III)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    int-to-float p1, p3

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    float-to-int p1, p1

    .line 23
    mul-int/2addr p0, p1

    .line 24
    return p0
.end method

.method public final isItemViewSwipeEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isLongPressDragEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget p3, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;->$r8$classId:I

    .line 22
    .line 23
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;->this$0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 24
    .line 25
    packed-switch p3, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast p0, Lorg/schabi/newpipe/player/PlayQueueActivity;

    .line 29
    .line 30
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->move(II)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 41
    .line 42
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 43
    .line 44
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->move(II)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;->$r8$classId:I

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;->this$0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    check-cast p0, Lorg/schabi/newpipe/player/PlayQueueActivity;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->remove(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 26
    .line 27
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    if-eq p1, v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->remove(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
