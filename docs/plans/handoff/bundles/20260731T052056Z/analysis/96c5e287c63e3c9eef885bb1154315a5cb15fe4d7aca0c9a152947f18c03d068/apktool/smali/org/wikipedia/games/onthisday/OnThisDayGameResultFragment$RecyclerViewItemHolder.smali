.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final binding:Lokhttp3/Request$Builder;

.field public page:Lorg/wikipedia/dataclient/page/PageSummary;

.field public final synthetic this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;Lokhttp3/Request$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 2
    .line 3
    iget-object p1, p2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lorg/wikipedia/views/WikiCardView;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;->binding:Lokhttp3/Request$Builder;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getCurrentScreenName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual {p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-boolean v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    const/16 v1, 0x3d8

    .line 26
    .line 27
    const-string v4, "select_click"

    .line 28
    .line 29
    const-string v5, "game_play"

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    invoke-static/range {v1 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 44
    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;

    .line 48
    .line 49
    invoke-direct {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lkotlin/Pair;

    .line 53
    .line 54
    const-string v2, "title"

    .line 55
    .line 56
    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    new-array p0, p0, [Lkotlin/Pair;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    aput-object v1, p0, v2

    .line 64
    .line 65
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v0}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_0
    const-string p0, "page"

    .line 77
    .line 78
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    throw p0
.end method
