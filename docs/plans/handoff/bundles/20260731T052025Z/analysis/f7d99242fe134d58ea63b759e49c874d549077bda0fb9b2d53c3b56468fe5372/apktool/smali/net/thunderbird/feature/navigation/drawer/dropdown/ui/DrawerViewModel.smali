.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final getDisplayAccounts:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

.field public final getDisplayFoldersForAccount:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;

.field public final getDisplayTreeFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;

.field public final getDrawerConfig:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDrawerConfig;

.field public final maxNestingLevel:I

.field public final syncAccount:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount;

.field public final syncAllAccounts:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDrawerConfig;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;)V
    .locals 12

    .line 1
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 2
    .line 3
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 4
    .line 5
    const/4 v11, 0x0

    .line 6
    invoke-direct {v1, v11, v11, v11}, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;-><init>(ZZZ)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    sget-object v7, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 16
    .line 17
    invoke-direct/range {v2 .. v7}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Ljava/lang/String;IILkotlinx/collections/immutable/ImmutableList;)V

    .line 18
    .line 19
    .line 20
    move-object v3, v7

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    move-object v5, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    move-object v6, v3

    .line 28
    invoke-direct/range {v0 .. v10}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;-><init>(Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;ZLkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;ZZ)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->getDrawerConfig:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDrawerConfig;

    .line 35
    .line 36
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->getDisplayAccounts:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 37
    .line 38
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->getDisplayFoldersForAccount:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;

    .line 39
    .line 40
    move-object/from16 p1, p4

    .line 41
    .line 42
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->getDisplayTreeFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;

    .line 43
    .line 44
    move-object/from16 p1, p5

    .line 45
    .line 46
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->syncAccount:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount;

    .line 47
    .line 48
    move-object/from16 p1, p6

    .line 49
    .line 50
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->syncAllAccounts:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;

    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    iput p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->maxNestingLevel:I

    .line 54
    .line 55
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    new-instance p3, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-direct {p3, v11, v0, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;-><init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x3

    .line 66
    invoke-static {p2, v0, v0, p3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    new-instance p3, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;

    .line 74
    .line 75
    invoke-direct {p3, v2, v0, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;-><init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p2, v0, v0, p3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    new-instance p3, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;

    .line 86
    .line 87
    invoke-direct {p3, p1, v0, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;-><init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p2, v0, v0, p3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static findFolderById(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;)Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->displayFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v1, v0

    .line 15
    :goto_0
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->displayFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->children:Lkotlinx/collections/immutable/ImmutableList;

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 41
    .line 42
    invoke-static {v1, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->findFolderById(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;)Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$SelectAccount;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    iget-object v2, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$SelectAccount;

    .line 15
    .line 16
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$SelectAccount;->accountId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 25
    .line 26
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_e

    .line 33
    .line 34
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 39
    .line 40
    const/16 v4, 0xc

    .line 41
    .line 42
    invoke-direct {v2, p0, p1, v3, v4}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3, v3, v2, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$SelectFolder;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$SelectFolder;

    .line 54
    .line 55
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$SelectFolder;->folderId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->selectFolder(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountClick;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountClick;

    .line 66
    .line 67
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountClick;->account:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->openAccount(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnFolderClick;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnFolderClick;

    .line 78
    .line 79
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnFolderClick;->folder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 80
    .line 81
    invoke-interface {p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->selectFolder(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 93
    .line 94
    iget-object v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->accountId:Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    new-instance v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenFolder;

    .line 99
    .line 100
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 101
    .line 102
    iget-wide v4, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->id:J

    .line 103
    .line 104
    invoke-direct {v2, v4, v5, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenFolder;-><init>(JLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v2}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    instance-of p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    sget-object p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenUnifiedFolder;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenUnifiedFolder;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;

    .line 125
    .line 126
    const/4 v2, 0x7

    .line 127
    invoke-direct {v0, v2, v3, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;-><init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_5
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountViewClick;

    .line 135
    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    iget-object v0, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 139
    .line 140
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 145
    .line 146
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->accounts:Lkotlinx/collections/immutable/ImmutableList;

    .line 147
    .line 148
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountViewClick;

    .line 149
    .line 150
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountViewClick;->account:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 151
    .line 152
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    const/4 v1, -0x1

    .line 157
    if-ne p1, v1, :cond_6

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    move-object v1, v0

    .line 161
    check-cast v1, Lkotlin/collections/AbstractCollection;

    .line 162
    .line 163
    invoke-virtual {v1}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    add-int/lit8 v1, v1, -0x1

    .line 168
    .line 169
    if-ne p1, v1, :cond_7

    .line 170
    .line 171
    const/4 p1, 0x0

    .line 172
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    move-object v3, p1

    .line 177
    check-cast v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 181
    .line 182
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    move-object v3, p1

    .line 187
    check-cast v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 188
    .line 189
    :goto_1
    invoke-virtual {p0, v3}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->openAccount(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_8
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountSelectorClick;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAccountSelectorClick;

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_9

    .line 200
    .line 201
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;

    .line 206
    .line 207
    invoke-direct {v0, v1, v3, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;-><init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_9
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnManageFoldersClick;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnManageFoldersClick;

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_a

    .line 221
    .line 222
    sget-object p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenManageFolders;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenManageFolders;

    .line 223
    .line 224
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_a
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSettingsClick;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSettingsClick;

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_b

    .line 235
    .line 236
    sget-object p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenSettings;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenSettings;

    .line 237
    .line 238
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_b
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSyncAccount;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSyncAccount;

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_d

    .line 249
    .line 250
    iget-object p1, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 251
    .line 252
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 257
    .line 258
    iget-boolean p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->isLoading:Z

    .line 259
    .line 260
    if-nez p1, :cond_e

    .line 261
    .line 262
    iget-object p1, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 263
    .line 264
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 269
    .line 270
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 271
    .line 272
    if-nez p1, :cond_c

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_c
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;

    .line 280
    .line 281
    const/4 v2, 0x4

    .line 282
    invoke-direct {v0, v2, v3, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;-><init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V

    .line 283
    .line 284
    .line 285
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_d
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSyncAllAccounts;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnSyncAllAccounts;

    .line 290
    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_10

    .line 296
    .line 297
    iget-object p1, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 298
    .line 299
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 304
    .line 305
    iget-boolean p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->isLoading:Z

    .line 306
    .line 307
    if-eqz p1, :cond_f

    .line 308
    .line 309
    :cond_e
    :goto_2
    return-void

    .line 310
    :cond_f
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;

    .line 315
    .line 316
    const/4 v2, 0x5

    .line 317
    invoke-direct {v0, v2, v3, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;-><init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V

    .line 318
    .line 319
    .line 320
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_10
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAddAccountClick;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$OnAddAccountClick;

    .line 325
    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-eqz p1, :cond_11

    .line 331
    .line 332
    sget-object p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenAddAccount;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenAddAccount;

    .line 333
    .line 334
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :cond_11
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 339
    .line 340
    .line 341
    return-void
.end method

.method public final openAccount(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenAccount;

    .line 4
    .line 5
    invoke-interface {p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenAccount;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 20
    .line 21
    iget-boolean p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasAutoExpandFolder:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v0, v1, v2, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$1;-><init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x3

    .line 37
    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final selectFolder(Ljava/lang/String;)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 5
    .line 6
    iget-object v2, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 7
    .line 8
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 13
    .line 14
    iget-object v2, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->folders:Lkotlinx/collections/immutable/ImmutableList;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    move-object v4, v3

    .line 31
    check-cast v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 32
    .line 33
    invoke-interface {v4}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    move-object v0, v3

    .line 44
    :cond_1
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 49
    .line 50
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 55
    .line 56
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->rootFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 57
    .line 58
    invoke-static {v0, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->findFolderById(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;)Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_2
    move-object v9, v0

    .line 63
    :goto_0
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 64
    .line 65
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    move-object v1, v13

    .line 70
    check-cast v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const/16 v12, 0x33f

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v5, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    move-object v8, p1

    .line 86
    invoke-static/range {v1 .. v12}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->copy$default(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;ZLkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;ZZI)Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, v13, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    move-object p1, v8

    .line 98
    goto :goto_0
.end method
