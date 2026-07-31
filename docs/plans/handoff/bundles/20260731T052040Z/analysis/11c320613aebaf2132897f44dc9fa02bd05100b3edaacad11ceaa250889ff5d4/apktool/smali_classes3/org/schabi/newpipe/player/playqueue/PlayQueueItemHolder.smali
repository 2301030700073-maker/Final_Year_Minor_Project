.class public final Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final itemAdditionalDetailsView:Landroid/widget/TextView;

.field public final itemDurationView:Landroid/widget/TextView;

.field public final itemHandle:Landroid/widget/ImageView;

.field public final itemRoot:Landroid/view/View;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemVideoTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a01ef

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemRoot:Landroid/view/View;

    .line 12
    .line 13
    const v0, 0x7f0a01f4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    .line 23
    .line 24
    const v0, 0x7f0a01ec

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 34
    .line 35
    const v0, 0x7f0a01e9

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemAdditionalDetailsView:Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0a01f1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .line 55
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 56
    .line 57
    const v0, 0x7f0a01ed

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/widget/ImageView;

    .line 65
    .line 66
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemHandle:Landroid/widget/ImageView;

    .line 67
    .line 68
    return-void
.end method
