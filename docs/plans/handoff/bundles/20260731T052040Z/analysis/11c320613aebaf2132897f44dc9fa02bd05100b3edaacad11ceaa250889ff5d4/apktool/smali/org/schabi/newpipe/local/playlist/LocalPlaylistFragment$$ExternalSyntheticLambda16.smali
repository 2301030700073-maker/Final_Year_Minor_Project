.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/Context;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$2:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    sget v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 8
    .line 9
    sget-object v1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->WITH_TITLES:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$2:Landroid/content/Context;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v1, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object p1, v1, v0

    .line 27
    .line 28
    const p1, 0x7f130473

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_0
    iget-object v0, v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    invoke-static {p0, v0, p1, v1}, Landroidx/transition/Transition$Impl26;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onClick(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 4
    .line 5
    sget p2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 6
    .line 7
    iget-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 8
    .line 9
    iget-object v0, p2, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;->f$2:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {p0, p1, p2}, Landroidx/sqlite/SQLite;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
