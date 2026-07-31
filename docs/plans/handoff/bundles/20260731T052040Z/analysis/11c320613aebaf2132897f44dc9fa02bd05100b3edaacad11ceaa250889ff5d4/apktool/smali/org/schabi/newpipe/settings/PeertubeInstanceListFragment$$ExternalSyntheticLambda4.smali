.class public final synthetic Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Throwable;

    .line 11
    .line 12
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lcoil3/ComponentRegistry$Builder;

    .line 13
    .line 14
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Landroid/widget/ProgressBar;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const p1, 0x7f1303b1

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 38
    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lcoil3/ComponentRegistry$Builder;

    .line 40
    .line 41
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Landroid/widget/ProgressBar;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object v1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
