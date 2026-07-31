.class public Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        "Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;",
        ">;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public headerBinding:Lorg/jsoup/parser/TokenData;

.field public relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static getInstance(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;
    .locals 9

    .line 1
    new-instance v0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v2, v1, v3}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    new-instance v3, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-direct {v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getRelatedItems()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, v0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    .line 71
    .line 72
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getItemViewMode()Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->getItemViewMode()Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 10
    .line 11
    if-eq p0, v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    return-object p0
.end method

.method public final getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    const v3, 0x7f0d00ef

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v2, 0x7f0a007c

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    new-instance v1, Lorg/jsoup/parser/TokenData;

    .line 41
    .line 42
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    .line 44
    const/16 v2, 0x9

    .line 45
    .line 46
    invoke-direct {v1, v0, v3, v2}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/jsoup/parser/TokenData;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const v1, 0x7f130052

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/jsoup/parser/TokenData;

    .line 71
    .line 72
    iget-object v1, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/jsoup/parser/TokenData;

    .line 80
    .line 81
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 84
    .line 85
    new-instance v1, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    invoke-direct {v1, p0, v2}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/jsoup/parser/TokenData;

    .line 95
    .line 96
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;

    .line 100
    .line 101
    const/4 v1, 0x4

    .line 102
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string v0, "Missing required view with ID: "

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 8

    .line 1
    check-cast p1, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/jsoup/parser/TokenData;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/16 v7, 0x8

    .line 27
    .line 28
    const-wide/16 v2, 0x78

    .line 29
    .line 30
    const-wide/16 v4, 0x60

    .line 31
    .line 32
    invoke-static/range {v1 .. v7}, Lnet/newpipe/app/AppKt;->slideUp$default(Landroid/view/View;JJLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final loadMoreItemsLogic()Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;
    .locals 2

    .line 1
    new-instance p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda23;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda23;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 1
    new-instance p1, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-direct {p1, p0, v0}, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d0062

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/jsoup/parser/TokenData;

    .line 3
    .line 4
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "related_info_key"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of v0, p1, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p1, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "related_info_key"

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->relatedItemsInfo:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f130052

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/jsoup/parser/TokenData;

    .line 19
    .line 20
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroidx/appcompat/widget/SwitchCompat;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final showInfoItemDialog(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {p0, v1, v2, v0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->create()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-static {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->reportErrorDuringInitialization(Ljava/lang/IllegalArgumentException;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showInfoItemDialog(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final showLoading()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showLoading()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->headerBinding:Lorg/jsoup/parser/TokenData;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
