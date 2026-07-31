.class public final Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final itemBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

.field public final synthetic this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 2
    .line 3
    iget-object p1, p2, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->rootView:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 11
    .line 12
    return-void
.end method
