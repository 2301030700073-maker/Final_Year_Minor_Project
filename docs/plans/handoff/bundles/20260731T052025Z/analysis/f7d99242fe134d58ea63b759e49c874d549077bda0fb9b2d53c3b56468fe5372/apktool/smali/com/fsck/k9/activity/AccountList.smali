.class public abstract Lcom/fsck/k9/activity/AccountList;
.super Lcom/fsck/k9/activity/BaseListActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final coreResourceProvider$delegate:Lkotlin/Lazy;

.field public final generalSettingsManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/activity/AccountList$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/AccountList$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/AccountList;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/activity/AccountList;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/activity/AccountList$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/AccountList$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/AccountList;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/fsck/k9/activity/AccountList;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    return-void
.end method

.method public static final access$loadAccounts(Lcom/fsck/k9/activity/AccountList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/AccountList;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    instance-of v1, p1, Lcom/fsck/k9/activity/AccountList$loadAccounts$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lcom/fsck/k9/activity/AccountList$loadAccounts$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/fsck/k9/activity/AccountList$loadAccounts$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/fsck/k9/activity/AccountList$loadAccounts$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/fsck/k9/activity/AccountList$loadAccounts$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/AccountList$loadAccounts$1;-><init>(Lcom/fsck/k9/activity/AccountList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v1, Lcom/fsck/k9/activity/AccountList$loadAccounts$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lcom/fsck/k9/activity/AccountList$loadAccounts$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 51
    .line 52
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 53
    .line 54
    new-instance v2, Lcom/fsck/k9/Core$restoreNotifications$1;

    .line 55
    .line 56
    const/4 v5, 0x2

    .line 57
    const/4 v6, 0x4

    .line 58
    invoke-direct {v2, v5, v3, v6}, Lcom/fsck/k9/Core$restoreNotifications$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 59
    .line 60
    .line 61
    iput v4, v1, Lcom/fsck/k9/activity/AccountList$loadAccounts$1;->label:I

    .line 62
    .line 63
    invoke-static {p1, v2, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 68
    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 73
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/fsck/k9/activity/AccountList;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 80
    .line 81
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 86
    .line 87
    check-cast v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-object v2, v2, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 94
    .line 95
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 96
    .line 97
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowUnifiedInbox:Z

    .line 98
    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersTitle()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersDetail()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v3, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 122
    .line 123
    invoke-direct {v3}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v4, "unified_folders"

    .line 127
    .line 128
    iput-object v4, v3, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 129
    .line 130
    sget-object v4, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->INTEGRATE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 131
    .line 132
    const-string v5, "1"

    .line 133
    .line 134
    sget-object v6, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 135
    .line 136
    invoke-virtual {v3, v4, v5, v6}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 137
    .line 138
    .line 139
    new-instance v4, Lnet/thunderbird/feature/search/legacy/SearchAccount;

    .line 140
    .line 141
    invoke-direct {v4, v3, v2, v0}, Lnet/thunderbird/feature/search/legacy/SearchAccount;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/fsck/k9/activity/BaseListActivity;->getListView()Landroid/widget/ListView;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance v0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;

    .line 155
    .line 156
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;-><init>(Lcom/fsck/k9/activity/AccountList;Ljava/util/ArrayList;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 163
    .line 164
    .line 165
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p0
.end method


# virtual methods
.method public abstract onAccountSelected(Lnet/thunderbird/feature/mail/account/api/BaseAccount;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0c001c

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/activity/BaseListActivity;->getListView()Landroid/widget/ListView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/fsck/k9/activity/AccountList$onCreate$2;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, p0, v2, p1}, Lcom/fsck/k9/activity/AccountList$onCreate$2;-><init>(Lcom/fsck/k9/activity/AccountList;Lkotlin/coroutines/Continuation;I)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x3

    .line 35
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p1, Lnet/thunderbird/feature/mail/account/api/BaseAccount;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/AccountList;->onAccountSelected(Lnet/thunderbird/feature/mail/account/api/BaseAccount;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
