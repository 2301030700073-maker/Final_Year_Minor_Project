.class public final Lorg/wikipedia/views/LanguageScrollView$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/views/LanguageScrollView$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/views/LanguageScrollView$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onTabReselected$com$google$android$material$tabs$TabLayoutMediator$ViewPagerOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onTabUnselected$com$google$android$material$tabs$TabLayoutMediator$ViewPagerOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/views/LanguageScrollView$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :pswitch_2
    return-void

    .line 18
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/views/LanguageScrollView$1;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lorg/wikipedia/views/LanguageScrollView;

    .line 24
    .line 25
    sget v0, Lorg/wikipedia/views/LanguageScrollView;->$r8$clinit:I

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/views/LanguageScrollView;->updateTabView(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/views/LanguageScrollView$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object p0, p0, Lorg/wikipedia/views/LanguageScrollView$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->touchCallback:Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    move v1, v3

    .line 29
    :cond_1
    iput-boolean v1, v0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeableEnabled:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->updateAndNotifyAdapter()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->updateToolbarEditButton()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    const-string/jumbo p0, "touchCallback"

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v2

    .line 45
    :pswitch_0
    check-cast p0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 46
    .line 47
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 54
    .line 55
    iput p1, v0, Lorg/wikipedia/notifications/NotificationViewModel;->selectedFilterTab:I

    .line 56
    .line 57
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v1, v0, Lorg/wikipedia/notifications/NotificationViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 62
    .line 63
    new-instance v4, Lorg/wikipedia/notifications/NotificationViewModel$updateSearchQuery$1;

    .line 64
    .line 65
    invoke-direct {v4, v0, v2, v3}, Lorg/wikipedia/notifications/NotificationViewModel$updateSearchQuery$1;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x2

    .line 69
    invoke-static {p1, v1, v2, v4, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->finishActionMode$1()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_1
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity;

    .line 77
    .line 78
    sget v0, Lorg/wikipedia/categories/CategoryActivity;->$r8$clinit:I

    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity;->getViewModel()Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 85
    .line 86
    if-ne p1, v3, :cond_3

    .line 87
    .line 88
    move v1, v3

    .line 89
    :cond_3
    iput-boolean v1, v0, Lorg/wikipedia/categories/CategoryActivityViewModel;->showSubcategories:Z

    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity;->getViewModel()Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-boolean p1, p1, Lorg/wikipedia/categories/CategoryActivityViewModel;->showSubcategories:Z

    .line 96
    .line 97
    iget-object v0, p0, Lorg/wikipedia/categories/CategoryActivity;->binding:Lokio/internal/DefaultSocket;

    .line 98
    .line 99
    const-string v1, "binding"

    .line 100
    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    iget-object p1, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    .line 109
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v2

    .line 119
    :cond_5
    if-eqz v0, :cond_6

    .line 120
    .line 121
    iget-object p1, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    return-void

    .line 131
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v2

    .line 135
    :pswitch_2
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 136
    .line 137
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 138
    .line 139
    invoke-virtual {p0, p1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_3
    check-cast p0, Lorg/wikipedia/views/LanguageScrollView;

    .line 144
    .line 145
    sget v0, Lorg/wikipedia/views/LanguageScrollView;->$r8$clinit:I

    .line 146
    .line 147
    invoke-virtual {p0, p1, v3}, Lorg/wikipedia/views/LanguageScrollView;->updateTabView(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 148
    .line 149
    .line 150
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/views/LanguageScrollView$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :pswitch_2
    return-void

    .line 18
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/views/LanguageScrollView$1;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lorg/wikipedia/views/LanguageScrollView;

    .line 24
    .line 25
    sget v0, Lorg/wikipedia/views/LanguageScrollView;->$r8$clinit:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/views/LanguageScrollView;->updateTabView(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
