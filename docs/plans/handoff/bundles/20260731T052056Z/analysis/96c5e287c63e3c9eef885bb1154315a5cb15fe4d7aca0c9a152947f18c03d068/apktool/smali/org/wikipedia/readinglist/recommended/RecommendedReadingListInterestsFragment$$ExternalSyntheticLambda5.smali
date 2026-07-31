.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->commitSelection()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    const v3, 0x7f120668

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 25
    .line 26
    .line 27
    sget v0, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListMode;->RECOMMENDED:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 34
    .line 35
    invoke-static {v0, v3, v1}, Lorg/jsoup/nodes/NodeUtils;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/ReadingListMode;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-boolean v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->fromSettings:Z

    .line 55
    .line 56
    const/4 v1, -0x1

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->commitSelection()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-direct {v0, p0, v1, v3}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;II)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-object v2

    .line 99
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 104
    .line 105
    .line 106
    return-object v2

    .line 107
    :pswitch_2
    sget v0, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 114
    .line 115
    const/16 v4, 0x30

    .line 116
    .line 117
    invoke-static {v0, v3, v1, v1, v4}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->searchLauncher:Landroidx/fragment/app/Fragment$10;

    .line 122
    .line 123
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 124
    .line 125
    .line 126
    return-object v2

    .line 127
    :pswitch_3
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v3, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 136
    .line 137
    invoke-direct {v3, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;)V

    .line 138
    .line 139
    .line 140
    new-instance v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;

    .line 141
    .line 142
    invoke-direct {v4, p0, v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;Lkotlin/coroutines/Continuation;)V

    .line 143
    .line 144
    .line 145
    const/4 p0, 0x2

    .line 146
    invoke-static {v0, v3, v1, v4, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 147
    .line 148
    .line 149
    return-object v2

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
