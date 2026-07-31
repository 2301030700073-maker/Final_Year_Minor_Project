.class public final Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 3
    .line 4
    iget-object v0, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 5
    .line 6
    invoke-static {v0}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt;->toSyncOptionsState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;)Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$LoadAccountState;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$LoadAccountState;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/16 v8, 0xb

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-class v4, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;

    .line 21
    .line 22
    const-string v5, "loadAccountState"

    .line 23
    .line 24
    const-string v6, "loadAccountState()V"

    .line 25
    .line 26
    move-object v3, p0

    .line 27
    invoke-direct/range {v1 .. v8}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->handleOneTimeEvent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    move-object v3, p0

    .line 35
    instance-of p0, p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnCheckFrequencyChanged;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    iget-object v2, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    :cond_1
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    move-object v3, p0

    .line 48
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-object v4, p1

    .line 54
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnCheckFrequencyChanged;

    .line 55
    .line 56
    iget-object v4, v4, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnCheckFrequencyChanged;->checkFrequency:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 57
    .line 58
    const/4 v5, 0x6

    .line 59
    invoke-static {v3, v4, v1, v0, v5}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;ZI)Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, p0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    instance-of p0, p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    move-object v3, p0

    .line 79
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-object v4, p1

    .line 85
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;

    .line 86
    .line 87
    iget-object v4, v4, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 88
    .line 89
    const/4 v5, 0x5

    .line 90
    invoke-static {v3, v1, v4, v0, v5}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;ZI)Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, p0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    instance-of p0, p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnShowNotificationChanged;

    .line 102
    .line 103
    if-eqz p0, :cond_6

    .line 104
    .line 105
    :cond_5
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    move-object v0, p0

    .line 110
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-object v3, p1

    .line 116
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnShowNotificationChanged;

    .line 117
    .line 118
    iget-boolean v3, v3, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnShowNotificationChanged;->showNotification:Z

    .line 119
    .line 120
    const/4 v4, 0x3

    .line 121
    invoke-static {v0, v1, v1, v3, v4}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;ZI)Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v2, p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-eqz p0, :cond_5

    .line 130
    .line 131
    :goto_0
    return-void

    .line 132
    :cond_6
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnNextClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnNextClicked;

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_7

    .line 139
    .line 140
    iget-object p0, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 141
    .line 142
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 143
    .line 144
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    new-instance v10, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

    .line 154
    .line 155
    iget-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->checkFrequency:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 156
    .line 157
    iget p1, p1, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;->minutes:I

    .line 158
    .line 159
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 160
    .line 161
    iget v0, v0, Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;->count:I

    .line 162
    .line 163
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->showNotification:Z

    .line 164
    .line 165
    invoke-direct {v10, p1, v0, p0}, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;-><init>(IIZ)V

    .line 166
    .line 167
    .line 168
    iget-object p0, v3, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 169
    .line 170
    check-cast p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    iget-object v4, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 176
    .line 177
    const/4 v9, 0x0

    .line 178
    const/16 v11, 0x7f

    .line 179
    .line 180
    const/4 v5, 0x0

    .line 181
    const/4 v6, 0x0

    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v8, 0x0

    .line 184
    invoke-static/range {v4 .. v11}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->copy$default(Lapp/k9mail/feature/account/common/domain/entity/AccountState;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;I)Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iput-object p1, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 189
    .line 190
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Effect$NavigateBack;->INSTANCE$1:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Effect$NavigateBack;

    .line 191
    .line 192
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_7
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnBackClicked;

    .line 197
    .line 198
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_8

    .line 203
    .line 204
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Effect$NavigateBack;

    .line 205
    .line 206
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 211
    .line 212
    .line 213
    return-void
.end method
