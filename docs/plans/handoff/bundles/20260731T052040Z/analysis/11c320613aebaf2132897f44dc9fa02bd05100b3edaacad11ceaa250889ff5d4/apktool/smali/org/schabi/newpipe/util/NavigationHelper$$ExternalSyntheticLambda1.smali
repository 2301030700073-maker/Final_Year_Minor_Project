.class public final synthetic Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/schabi/newpipe/player/PlayerType;

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Lorg/schabi/newpipe/player/playqueue/PlayQueue;


# direct methods
.method public synthetic constructor <init>(ZZLjava/lang/String;Lorg/schabi/newpipe/player/PlayerType;Landroid/content/Context;ILjava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$3:Lorg/schabi/newpipe/player/PlayerType;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$4:Landroid/content/Context;

    .line 13
    .line 14
    iput p6, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$7:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v2, "org.schabi.newpipe.VideoDetailFragment.ACTION_SHOW_MAIN_PLAYER"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$0:Z

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setAutoPlay(Z)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 21
    .line 22
    iget-boolean v1, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$1:Z

    .line 23
    .line 24
    iget-object v2, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$3:Lorg/schabi/newpipe/player/PlayerType;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->getUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    if-eq v3, v0, :cond_0

    .line 42
    .line 43
    iget-object p0, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$4:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const v1, 0x7f1304c2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    :cond_0
    move v1, v4

    .line 64
    :cond_1
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayer(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    if-eqz v1, :cond_3

    .line 69
    .line 70
    if-ne v3, v0, :cond_3

    .line 71
    .line 72
    iput-boolean v4, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->forceFullscreen:Z

    .line 73
    .line 74
    :cond_3
    iget v0, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$5:I

    .line 75
    .line 76
    iget-object v1, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    .line 77
    .line 78
    iget-object p0, p0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->f$7:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 79
    .line 80
    invoke-virtual {p1, v0, v2, v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->selectAndLoadVideo(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object p0, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 84
    .line 85
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 86
    .line 87
    invoke-virtual {p0, v4, v4, v4}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    .line 91
    .line 92
    .line 93
    return-void
.end method
