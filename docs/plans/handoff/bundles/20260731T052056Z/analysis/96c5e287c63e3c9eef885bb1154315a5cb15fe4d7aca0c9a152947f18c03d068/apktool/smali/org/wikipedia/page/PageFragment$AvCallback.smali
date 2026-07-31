.class public final Lorg/wikipedia/page/PageFragment$AvCallback;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/media/AvPlayer$Callback;
.implements Lorg/wikipedia/readinglist/LongPressMenu$Callback;
.implements Lorg/wikipedia/page/action/PageActionItem$Callback;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAddRequest(Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 5
    .line 6
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 7
    .line 8
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p0, p1, p2, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lorg/wikipedia/media/AvPlayer;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Landroid/media/MediaPlayer;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x1

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lorg/wikipedia/media/AvPlayer;

    .line 29
    .line 30
    iget-object p1, p1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Landroid/media/MediaPlayer;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 35
    .line 36
    .line 37
    :cond_0
    const p1, 0x7f1203d3

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p0}, Lorg/wikipedia/util/ShareUtil;->showMessage(ILandroidx/fragment/app/Fragment;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 7
    .line 8
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 9
    .line 10
    iget-object p2, p2, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v3, p2

    .line 13
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-wide v1, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 24
    .line 25
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onOpenInNewTab(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/wikipedia/dataclient/Service$-CC;->$default$onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onOpenLink(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRemoveRequest()V
    .locals 0

    .line 1
    return-void
.end method

.method public onShareRequest()V
    .locals 0

    .line 1
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lorg/wikipedia/media/AvPlayer;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/media/MediaPlayer;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
