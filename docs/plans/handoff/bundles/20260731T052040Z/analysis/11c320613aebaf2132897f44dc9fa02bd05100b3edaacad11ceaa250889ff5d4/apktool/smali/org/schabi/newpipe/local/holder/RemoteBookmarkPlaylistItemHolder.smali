.class public final Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;
.super Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final itemHandleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/TokenData;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    const v0, 0x7f0d007b

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    .line 10
    const p2, 0x7f0a01ed

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;->itemHandleView:Landroid/view/View;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lj$/time/format/DateTimeFormatter;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    move-object v0, p1

    .line 7
    check-cast v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 8
    .line 9
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-direct {v1, p0, v0, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;->itemHandleView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lj$/time/format/DateTimeFormatter;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
