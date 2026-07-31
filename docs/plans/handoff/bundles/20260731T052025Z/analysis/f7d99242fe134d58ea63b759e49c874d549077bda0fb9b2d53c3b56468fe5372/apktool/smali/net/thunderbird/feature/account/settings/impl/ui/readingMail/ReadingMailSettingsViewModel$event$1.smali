.class public final Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $event:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;

.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->this$0:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->$event:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->$event:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->this$0:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->this$0:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 9
    .line 10
    iget-object v5, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->$event:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event;

    .line 11
    .line 12
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->label:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    move-object v2, v7

    .line 32
    goto :goto_3

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v4, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->updateReadMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;

    .line 37
    .line 38
    iget-object v0, v4, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 39
    .line 40
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand$UpdateIsMarkMessageAsReadOnView;

    .line 41
    .line 42
    move-object v8, v5

    .line 43
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnIsMarkMessageAsReadOnViewToggle;

    .line 44
    .line 45
    iget-boolean v8, v8, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnIsMarkMessageAsReadOnViewToggle;->isMarkMessageAsReadOnView:Z

    .line 46
    .line 47
    invoke-direct {v1, v8}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand$UpdateIsMarkMessageAsReadOnView;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    iput v3, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->label:I

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1, p0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v2, :cond_2

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    :goto_1
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    instance-of p0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 65
    .line 66
    if-eqz p0, :cond_4

    .line 67
    .line 68
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 69
    .line 70
    iget-object p0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Lkotlin/Unit;

    .line 73
    .line 74
    iget-object p0, v4, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 75
    .line 76
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    move-object v0, p1

    .line 81
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 82
    .line 83
    move-object v1, v5

    .line 84
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnIsMarkMessageAsReadOnViewToggle;

    .line 85
    .line 86
    iget-boolean v1, v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnIsMarkMessageAsReadOnViewToggle;->isMarkMessageAsReadOnView:Z

    .line 87
    .line 88
    const/4 v2, 0x3

    .line 89
    invoke-static {v0, v7, v7, v1, v2}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZI)Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    :goto_2
    move-object v2, v6

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    instance-of p0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 102
    .line 103
    if-eqz p0, :cond_5

    .line 104
    .line 105
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 106
    .line 107
    iget-object p0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 110
    .line 111
    invoke-static {v4, p0}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :goto_3
    return-object v2

    .line 120
    :pswitch_0
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->label:I

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    if-ne v0, v3, :cond_6

    .line 125
    .line 126
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_6
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_4
    move-object v2, v7

    .line 134
    goto :goto_7

    .line 135
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, v4, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->updateReadMailSettings:Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;

    .line 139
    .line 140
    iget-object v0, v4, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 141
    .line 142
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand$UpdateShowPictures;

    .line 143
    .line 144
    move-object v8, v5

    .line 145
    check-cast v8, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnShowPicturesChange;

    .line 146
    .line 147
    iget-object v8, v8, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnShowPicturesChange;->showPictures:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 148
    .line 149
    iget-object v8, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 150
    .line 151
    invoke-direct {v1, v8}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand$UpdateShowPictures;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iput v3, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$event$1;->label:I

    .line 155
    .line 156
    invoke-virtual {p1, v0, v1, p0}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateReadEmailSettings;->invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateReadMessageSettingsCommand;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-ne p1, v2, :cond_8

    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_8
    :goto_5
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    instance-of p0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 169
    .line 170
    if-eqz p0, :cond_a

    .line 171
    .line 172
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 173
    .line 174
    iget-object p0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast p0, Lkotlin/Unit;

    .line 177
    .line 178
    iget-object p0, v4, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 179
    .line 180
    :cond_9
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    move-object v0, p1

    .line 185
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 186
    .line 187
    move-object v1, v5

    .line 188
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnShowPicturesChange;

    .line 189
    .line 190
    iget-object v1, v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Event$OnShowPicturesChange;->showPictures:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 191
    .line 192
    const/4 v2, 0x0

    .line 193
    const/4 v3, 0x5

    .line 194
    invoke-static {v0, v7, v1, v2, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZI)Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_9

    .line 203
    .line 204
    :goto_6
    move-object v2, v6

    .line 205
    goto :goto_7

    .line 206
    :cond_a
    instance-of p0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 207
    .line 208
    if-eqz p0, :cond_b

    .line 209
    .line 210
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 211
    .line 212
    iget-object p0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 215
    .line 216
    invoke-static {v4, p0}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 217
    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :goto_7
    return-object v2

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
