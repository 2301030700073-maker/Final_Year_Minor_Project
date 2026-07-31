.class public final Lorg/wikipedia/talk/TalkTopicHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

.field public final context:Landroidx/appcompat/app/AppCompatActivity;

.field public final invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field public threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

.field public final viewModel:Lorg/wikipedia/talk/TalkTopicsViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/databinding/ActivityLoginBinding;Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/talk/TalkTopicsViewModel;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicHolder;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 15
    .line 16
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicHolder;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicHolder;->viewModel:Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 19
    .line 20
    iput-object p4, p0, Lorg/wikipedia/talk/TalkTopicHolder;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final isSwipeable()Z
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lorg/wikipedia/util/UriUtil;->isHeaderTemplate(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const-string p0, "threadItem"

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method

.method public final markAsSeen(Z)V
    .locals 9

    .line 1
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    if-eqz v2, :cond_1

    .line 5
    .line 6
    new-instance v5, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/16 v0, 0x1d

    .line 9
    .line 10
    invoke-direct {v5, v0, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicHolder;->viewModel:Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lorg/wikipedia/talk/TalkTopicsViewModel;->threadSha$1(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object v8, v1, Lorg/wikipedia/talk/TalkTopicsViewModel;->actionHandler:Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 29
    .line 30
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    move v3, p1

    .line 34
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;-><init>(Lorg/wikipedia/talk/TalkTopicsViewModel;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;ZLjava/lang/String;Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    invoke-static {p0, v8, v7, v0, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :cond_1
    const-string p0, "threadItem"

    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v7
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicHolder;->markAsSeen(Z)V

    .line 3
    .line 4
    .line 5
    sget p1, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 6
    .line 7
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicHolder;->viewModel:Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 8
    .line 9
    iget-object v0, p1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v3, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->name:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lorg/wikipedia/talk/TalkTopicHolder;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v5, Landroid/content/Intent;

    .line 37
    .line 38
    const-class v6, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 39
    .line 40
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicHolder;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    const-string v6, "title"

    .line 46
    .line 47
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string/jumbo v5, "topicName"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string/jumbo v3, "topicId"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "replyId"

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "searchQuery"

    .line 72
    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "invokeSource"

    .line 78
    .line 79
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_0
    const-string p0, "threadItem"

    .line 91
    .line 92
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v2
.end method

.method public final onSwipe()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicHolder;->markAsSeen(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
