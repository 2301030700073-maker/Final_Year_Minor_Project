.class public Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public adapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

.field public binding:Lorg/jsoup/nodes/Printer;

.field public searcher:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    const p3, 0x7f0d00ff

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a0144

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    const p2, 0x7f0a034a

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance p2, Lorg/jsoup/nodes/Printer;

    .line 32
    .line 33
    check-cast p1, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/16 v1, 0x9

    .line 36
    .line 37
    invoke-direct {p2, v1, p1, p3, v0}, Lorg/jsoup/nodes/Printer;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 41
    .line 42
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 55
    .line 56
    new-instance p2, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;

    .line 57
    .line 58
    const/4 p3, 0x2

    .line 59
    invoke-direct {p2, p3}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;-><init>(I)V

    .line 60
    .line 61
    .line 62
    const/4 p3, 0x1

    .line 63
    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;I)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->adapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 67
    .line 68
    new-instance p2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 69
    .line 70
    const/16 p3, 0x14

    .line 71
    .line 72
    invoke-direct {p2, p0, p3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    iput-object p2, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->listener:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object p2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 78
    .line 79
    iget-object p2, p2, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 87
    .line 88
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Landroid/widget/LinearLayout;

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "Missing required view with ID: "

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const/4 p0, 0x0

    .line 111
    return-object p0
.end method
