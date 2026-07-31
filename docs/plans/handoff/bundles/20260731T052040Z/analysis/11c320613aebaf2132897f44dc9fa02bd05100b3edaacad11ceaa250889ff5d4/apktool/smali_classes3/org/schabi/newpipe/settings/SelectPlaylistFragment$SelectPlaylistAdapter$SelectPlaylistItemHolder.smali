.class public final Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final thumbnailView:Landroid/widget/ImageView;

.field public final titleView:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->view:Landroid/view/View;

    .line 5
    .line 6
    const v0, 0x7f0a01f1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 16
    .line 17
    const v0, 0x7f0a01f2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->titleView:Landroid/widget/TextView;

    .line 27
    .line 28
    return-void
.end method
