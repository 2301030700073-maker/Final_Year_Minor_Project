.class public final Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;


# instance fields
.field public recentSearch:Lorg/wikipedia/search/db/RecentSearch;

.field public final synthetic this$0:Lorg/wikipedia/search/RecentSearchesFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/search/RecentSearchesFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isSwipeable()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroid/widget/TextView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v0, "query"

    .line 27
    .line 28
    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/16 v8, 0x76

    .line 36
    .line 37
    const-string v2, "click"

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    const-string v5, "recent_search"

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v1 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lorg/wikipedia/search/SearchFragment;->switchToSearch(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public final onSwipe()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lorg/wikipedia/search/RecentSearchesFragment;->coroutineExceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 8
    .line 9
    new-instance v3, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 10
    .line 11
    const/16 v4, 0x1c

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-direct {v3, p0, v0, v5, v4}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    invoke-static {v1, v2, v5, v3, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 19
    .line 20
    .line 21
    return-void
.end method
