.class public final Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final inflater:Landroid/view/LayoutInflater;

.field public final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public lastChecked:Landroid/widget/RadioButton;

.field public final synthetic this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Landroid/content/Context;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 2
    .line 3
    new-instance p1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    .line 10
    .line 11
    .line 12
    iput-object p3, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 13
    .line 14
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1
    check-cast p1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;

    .line 2
    .line 3
    iget-object p0, p1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerArrow:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    new-instance v1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderActionButton:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v2, p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v2, p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceView:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Landroid/widget/RadioButton;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, v0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 52
    .line 53
    iget-object v3, v3, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->selectedInstance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 54
    .line 55
    iget-object v3, v3, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x1

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-object v2, v0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->lastChecked:Landroid/widget/RadioButton;

    .line 65
    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    if-eq v2, v1, :cond_0

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 75
    .line 76
    .line 77
    iput-object v1, v0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->lastChecked:Landroid/widget/RadioButton;

    .line 78
    .line 79
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;

    .line 80
    .line 81
    invoke-direct {v0, p1, p2, v3}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceIcon:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 90
    .line 91
    const p1, 0x7f08013a

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    .line 1
    new-instance p2, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;

    .line 2
    .line 3
    const v0, 0x7f0d006b

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v0, 0x7f0a01bb

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v4, v1

    .line 21
    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    const v0, 0x7f0a01e1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v5, v1

    .line 33
    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    const v0, 0x7f0a01e2

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v6, v1

    .line 45
    check-cast v6, Landroid/widget/TextView;

    .line 46
    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    const v0, 0x7f0a01e3

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v7, v1

    .line 57
    check-cast v7, Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz v7, :cond_0

    .line 60
    .line 61
    const v0, 0x7f0a035f

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v8, v1

    .line 69
    check-cast v8, Landroid/widget/RadioButton;

    .line 70
    .line 71
    if-eqz v8, :cond_0

    .line 72
    .line 73
    new-instance v2, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 74
    .line 75
    move-object v3, p1

    .line 76
    check-cast v3, Landroidx/cardview/widget/CardView;

    .line 77
    .line 78
    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;-><init>(Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioButton;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, p0, v2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;)V

    .line 82
    .line 83
    .line 84
    return-object p2

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string p1, "Missing required view with ID: "

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 p0, 0x0

    .line 103
    return-object p0
.end method
