.class public final Lorg/schabi/newpipe/MainActivity$4;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field public final synthetic val$fm:Landroidx/fragment/app/FragmentManagerImpl;

.field public final synthetic val$rootComment:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/MainActivity$4;->val$fm:Landroidx/fragment/app/FragmentManagerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/MainActivity$4;->val$rootComment:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/MainActivity$4;->val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onSlide(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$4;->val$fm:Landroidx/fragment/app/FragmentManagerImpl;

    .line 5
    .line 6
    const v0, 0x7f0a01aa

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of v0, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity$4;->val$rootComment:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    check-cast p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 22
    .line 23
    iget-object v1, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 24
    .line 25
    const-string v2, "COMMENTS"

    .line 26
    .line 27
    iget-object v1, v1, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v2, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 34
    .line 35
    iget-object v2, v2, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 42
    .line 43
    instance-of v3, v2, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;

    .line 44
    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    check-cast v2, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;

    .line 49
    .line 50
    iget-object v3, v2, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 51
    .line 52
    iget-object v3, v3, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-gez v0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, v2, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 67
    .line 68
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v0, v3, v3, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 76
    .line 77
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 78
    .line 79
    iput-boolean v3, p1, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 80
    .line 81
    invoke-virtual {p1, v1, v3, v3, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$4;->val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method
