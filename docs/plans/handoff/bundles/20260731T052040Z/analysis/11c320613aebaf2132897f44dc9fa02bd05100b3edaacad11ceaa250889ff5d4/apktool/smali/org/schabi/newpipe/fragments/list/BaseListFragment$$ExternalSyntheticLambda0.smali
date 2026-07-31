.class public final synthetic Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/util/OnClickGesture;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final synthetic drag$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda0(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic drag$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda1(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic drag$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda2(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic held$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic held$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic held$org$schabi$newpipe$fragments$list$BaseListFragment$$ExternalSyntheticLambda2(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final synthetic held(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final selected(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onItemSelected()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    .line 15
    .line 16
    sget v0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->$r8$clinit:I

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onItemSelected()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, v1, v2, p1}, Landroidx/sqlite/SQLite;->openPlaylistFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    const-string v0, "Opening playlist fragment"

    .line 43
    .line 44
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 49
    .line 50
    sget v0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->$r8$clinit:I

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onItemSelected()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v0, v1, v2, p1}, Landroidx/sqlite/SQLite;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception p1

    .line 76
    const-string v0, "Opening channel fragment"

    .line 77
    .line 78
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
