.class public final Landroidx/appcompat/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/PopupMenu$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/PopupMenu$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/PopupMenu$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/appcompat/widget/PopupMenu$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lcoil3/ComponentRegistry$Builder;

    .line 15
    .line 16
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/appcompat/widget/PopupMenu$OnDismissListener;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    check-cast p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 23
    .line 24
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    .line 28
    .line 29
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getSelectedVideoStream()Lj$/util/Optional;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;

    .line 36
    .line 37
    invoke-direct {v3, p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const-wide/16 v0, 0x12c

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideSystemUIIfNeeded()V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
