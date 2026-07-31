.class public final Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/customize/CustomizeToolbarFragment;Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->this$0:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->$r8$classId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->this$0:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->$r8$classId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->this$0:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public final clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 15
    .line 16
    .line 17
    check-cast v1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 18
    .line 19
    new-instance p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 20
    .line 21
    const/16 p2, 0xe

    .line 22
    .line 23
    invoke-direct {p0, p2, v1}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 31
    .line 32
    .line 33
    check-cast v1, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 34
    .line 35
    new-instance p2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 36
    .line 37
    const/16 v0, 0x1a

    .line 38
    .line 39
    invoke-direct {p2, v0, v1, p0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 47
    .line 48
    .line 49
    check-cast v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 50
    .line 51
    new-instance p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 52
    .line 53
    const/16 p2, 0x10

    .line 54
    .line 55
    invoke-direct {p0, p2, v1}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .line 1
    iget p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    instance-of p0, p2, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, -0x1

    .line 24
    :goto_0
    return p0

    .line 25
    :pswitch_0
    instance-of p0, p2, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$ItemHolder;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :cond_1
    return v0

    .line 34
    :pswitch_1
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isItemViewSwipeEnabled()Z
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isLongPressDragEnabled()Z
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    instance-of p1, p3, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    check-cast p3, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 26
    .line 27
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iget-object p3, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 32
    .line 33
    iget-object p3, p3, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/ArrayList;

    .line 34
    .line 35
    add-int/lit8 v0, p1, -0x1

    .line 36
    .line 37
    add-int/lit8 v2, p2, -0x1

    .line 38
    .line 39
    invoke-static {p3, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return v1

    .line 46
    :pswitch_0
    instance-of p1, p3, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$ItemHolder;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    check-cast p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iget-object p3, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p3, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 63
    .line 64
    invoke-virtual {p3}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->getViewModel()Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    iget-object p3, p3, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->fullList:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-static {p3, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return v1

    .line 77
    :pswitch_1
    check-cast p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    iget-object p3, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 88
    .line 89
    invoke-virtual {p3}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    const/4 v3, 0x0

    .line 103
    :goto_0
    if-ge v3, v2, :cond_2

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 110
    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    iput v3, v4, Lorg/wikipedia/talk/db/TalkTemplate;->order:I

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p3}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-static {p3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v2, p3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->exceptionHandler:Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 125
    .line 126
    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 127
    .line 128
    const/16 v4, 0x12

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-direct {v3, v4, p3, v5}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 132
    .line 133
    .line 134
    const/4 p3, 0x2

    .line 135
    invoke-static {v0, v2, v5, v3, p3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 139
    .line 140
    .line 141
    return v1

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
