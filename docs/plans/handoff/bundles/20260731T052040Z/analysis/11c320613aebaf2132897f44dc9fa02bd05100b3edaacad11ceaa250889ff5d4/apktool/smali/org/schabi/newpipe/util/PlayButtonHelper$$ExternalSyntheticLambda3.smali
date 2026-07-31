.class public final synthetic Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 16
    .line 17
    invoke-static {p0, p1, v1}, Landroidx/sqlite/SQLite;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :pswitch_0
    invoke-interface {v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 26
    .line 27
    invoke-static {p0, p1, v1}, Landroidx/sqlite/SQLite;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    .line 28
    .line 29
    .line 30
    return v0

    .line 31
    :pswitch_1
    invoke-interface {v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    .line 36
    .line 37
    invoke-static {p0, p1, v1}, Landroidx/sqlite/SQLite;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
