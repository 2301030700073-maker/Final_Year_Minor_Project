.class public final Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public held(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, -0x1

    .line 27
    if-eq v1, v3, :cond_0

    .line 28
    .line 29
    iget-object v4, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    iget-object v9, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    move-object v5, p1

    .line 39
    move-object v6, p2

    .line 40
    invoke-static/range {v4 .. v9}, Lokio/Options$Companion;->openPopupMenu(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;ZLandroidx/fragment/app/FragmentManagerImpl;Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public onStartDrag(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public selected(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/Player;->selectQueueItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
