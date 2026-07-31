.class public final Lorg/schabi/newpipe/info_list/StreamSegmentItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/info_list/StreamSegmentItem$Companion;


# instance fields
.field public isSelected:Z

.field public final item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

.field public final onClick:Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/info_list/StreamSegmentItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->Companion:Lorg/schabi/newpipe/info_list/StreamSegmentItem$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamSegment;Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->onClick:Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 6

    .line 1
    check-cast p1, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    iget-object v1, p1, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->previewImage:Landroid/widget/ImageView;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    .line 11
    .line 12
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getPreviewUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const v4, 0x7f0801b8

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-static {v1, v3, v4, v5}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p1, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->textViewTitle:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 24
    .line 25
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getTitle()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getChannelName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, p1, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->textViewChannel:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 37
    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getChannelName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->textViewStartSeconds:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 62
    .line 63
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getStartTimeSeconds()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    int-to-long v1, v1

    .line 68
    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;

    .line 76
    .line 77
    const/4 v1, 0x4

    .line 78
    invoke-direct {p1, p0, v1}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;

    .line 85
    .line 86
    invoke-direct {p1, p0, v5}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 90
    .line 91
    .line 92
    iget-boolean p0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->isSelected:Z

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final bridge synthetic bind(Lcom/xwray/groupie/GroupieViewHolder;ILjava/util/List;)V
    .locals 0

    .line 98
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public final bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 100
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 101
    iget-boolean p0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->isSelected:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 102
    :cond_0
    iget-object p1, p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;->binding:Landroidx/viewbinding/ViewBinding;

    .line 103
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->bind(Landroidx/viewbinding/ViewBinding;)V

    return-void
.end method

.method public final getLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d0071

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0a031b

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const p0, 0x7f0a03e2

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v4, v0

    .line 24
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const p0, 0x7f0a03e3

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v5, v0

    .line 36
    check-cast v5, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    const p0, 0x7f0a03e4

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v6, v0

    .line 48
    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 49
    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    new-instance v1, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;

    .line 53
    .line 54
    move-object v2, p1

    .line 55
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "Missing required view with ID: "

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    return-object p0
.end method
