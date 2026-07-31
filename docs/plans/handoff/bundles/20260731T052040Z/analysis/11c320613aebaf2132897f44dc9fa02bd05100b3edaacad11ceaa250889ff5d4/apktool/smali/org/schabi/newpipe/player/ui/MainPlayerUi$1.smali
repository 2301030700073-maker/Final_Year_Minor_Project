.class public final Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;
.super Landroid/database/ContentObserver;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 9
    .line 10
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 11
    .line 12
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->setupScreenRotationButton()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
