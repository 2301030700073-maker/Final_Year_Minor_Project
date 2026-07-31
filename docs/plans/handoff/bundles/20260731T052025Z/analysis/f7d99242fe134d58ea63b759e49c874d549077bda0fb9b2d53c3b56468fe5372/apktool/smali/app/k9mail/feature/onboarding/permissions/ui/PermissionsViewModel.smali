.class public final Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final checkPermission:Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;)V
    .locals 7

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    sget-object v3, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;->Unknown:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 14
    .line 15
    move-object v4, v3

    .line 16
    invoke-direct/range {v1 .. v6}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;-><init>(ZLapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;ZZ)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->checkPermission:Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;

    .line 23
    .line 24
    iput-object v0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$LoadPermissionState;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$LoadPermissionState;

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
    const/16 v8, 0xf

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-class v4, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 21
    .line 22
    const-string v5, "loadPermissionState"

    .line 23
    .line 24
    const-string v6, "loadPermissionState()V"

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
    sget-object p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$AllowContactsPermissionClicked;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$AllowContactsPermissionClicked;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    sget-object p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$RequestContactsPermission;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$RequestContactsPermission;

    .line 44
    .line 45
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    sget-object p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$AllowNotificationsPermissionClicked;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$AllowNotificationsPermissionClicked;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    sget-object p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$RequestNotificationsPermission;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$RequestNotificationsPermission;

    .line 58
    .line 59
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    instance-of p0, p1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$ContactsPermissionResult;

    .line 64
    .line 65
    sget-object v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;->Denied:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 66
    .line 67
    sget-object v1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;->Granted:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 68
    .line 69
    iget-object v2, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 70
    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    check-cast p1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$ContactsPermissionResult;

    .line 74
    .line 75
    iget-boolean p0, p1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$ContactsPermissionResult;->success:Z

    .line 76
    .line 77
    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    move-object v4, p1

    .line 82
    check-cast v4, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    if-eqz p0, :cond_4

    .line 88
    .line 89
    move-object v5, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    move-object v5, v0

    .line 92
    :goto_0
    const/4 v8, 0x0

    .line 93
    const/16 v9, 0x1d

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    invoke-static/range {v4 .. v9}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->copy$default(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;ZZI)Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v2, p1, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {v3}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->updateNextButtonState()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_5
    instance-of p0, p1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$NotificationsPermissionResult;

    .line 112
    .line 113
    if-eqz p0, :cond_8

    .line 114
    .line 115
    check-cast p1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$NotificationsPermissionResult;

    .line 116
    .line 117
    iget-boolean p0, p1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$NotificationsPermissionResult;->success:Z

    .line 118
    .line 119
    :cond_6
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    move-object v4, p1

    .line 124
    check-cast v4, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    if-eqz p0, :cond_7

    .line 130
    .line 131
    move-object v6, v1

    .line 132
    goto :goto_1

    .line 133
    :cond_7
    move-object v6, v0

    .line 134
    :goto_1
    const/4 v8, 0x0

    .line 135
    const/16 v9, 0x1b

    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    const/4 v7, 0x0

    .line 139
    invoke-static/range {v4 .. v9}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->copy$default(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;ZZI)Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v2, p1, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    invoke-virtual {v3}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->updateNextButtonState()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_8
    sget-object p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$NextClicked;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$NextClicked;

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-eqz p0, :cond_9

    .line 160
    .line 161
    sget-object p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$NavigateNext;->INSTANCE:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Effect$NavigateNext;

    .line 162
    .line 163
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_9
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final updateNextButtonState()V
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v3, v2, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->contactsPermissionState:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    sget-object v6, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;->Granted:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 18
    .line 19
    if-ne v3, v6, :cond_1

    .line 20
    .line 21
    move v3, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v3, v4

    .line 24
    :goto_0
    iget-boolean v7, v2, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->isNotificationsPermissionVisible:Z

    .line 25
    .line 26
    if-eqz v7, :cond_3

    .line 27
    .line 28
    iget-object v7, v2, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->notificationsPermissionState:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 29
    .line 30
    if-ne v7, v6, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move v6, v4

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    :goto_1
    move v6, v5

    .line 36
    :goto_2
    if-eqz v3, :cond_4

    .line 37
    .line 38
    if-eqz v6, :cond_4

    .line 39
    .line 40
    move v6, v5

    .line 41
    goto :goto_3

    .line 42
    :cond_4
    move v6, v4

    .line 43
    :goto_3
    const/16 v7, 0xf

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static/range {v2 .. v7}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->copy$default(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;ZZI)Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    return-void
.end method
