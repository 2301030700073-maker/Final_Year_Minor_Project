.class public final Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$Companion;


# instance fields
.field public final circleClipTapView:Lorg/schabi/newpipe/views/player/CircleClipTapView;

.field public initTap:Z

.field public performListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

.field public final rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

.field public seekSecondsSupplier:Lkotlin/jvm/functions/Function0;

.field public wasForwarding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->Companion:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$Companion;

    .line 7
    .line 8
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const p2, 0x7f0d00da

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    const p1, 0x7f0a0358

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    check-cast p1, Lorg/schabi/newpipe/views/player/SecondsView;

    .line 29
    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    .line 31
    .line 32
    const p1, 0x7f0a00b5

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    check-cast p1, Lorg/schabi/newpipe/views/player/CircleClipTapView;

    .line 43
    .line 44
    iput-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->circleClipTapView:Lorg/schabi/newpipe/views/player/CircleClipTapView;

    .line 45
    .line 46
    const p1, 0x7f0a033b

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 57
    .line 58
    iput-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    .line 60
    new-instance p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;

    .line 61
    .line 62
    const/4 p2, 0x2

    .line 63
    invoke-direct {p1, p0, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const/16 p2, 0xe

    .line 72
    .line 73
    invoke-direct {p1, p2}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier:Lkotlin/jvm/functions/Function0;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final onDoubleTapFinished()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 13
    .line 14
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 15
    .line 16
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/16 v9, 0x1c

    .line 20
    .line 21
    const-wide/16 v3, 0x1c2

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const-wide/16 v6, 0x0

    .line 25
    .line 26
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iput-boolean v2, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    .line 30
    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->stopAnimation()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
