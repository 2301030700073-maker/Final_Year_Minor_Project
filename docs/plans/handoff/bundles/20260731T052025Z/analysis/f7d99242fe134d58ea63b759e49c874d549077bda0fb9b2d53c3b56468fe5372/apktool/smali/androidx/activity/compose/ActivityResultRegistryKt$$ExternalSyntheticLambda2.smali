.class public final synthetic Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object p0, p0, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;

    .line 13
    .line 14
    move-object v9, p1

    .line 15
    check-cast v9, Landroid/net/Uri;

    .line 16
    .line 17
    if-eqz v9, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iput-object v9, v6, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->contentUri:Landroid/net/Uri;

    .line 27
    .line 28
    iget-object p0, v6, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 34
    .line 35
    sget-object p1, Lcom/fsck/k9/ui/settings/export/ButtonState;->INVISIBLE:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 38
    .line 39
    iput-boolean v3, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 40
    .line 41
    sget-object p1, Lcom/fsck/k9/ui/settings/export/StatusText;->PROGRESS:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->statusText:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 44
    .line 45
    iput-boolean v3, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isSettingsListEnabled:Z

    .line 46
    .line 47
    iget-object p1, v6, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->getIncludeGeneralSettings$1()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-virtual {v6}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->getSelectedAccounts$1()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance v5, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    invoke-direct/range {v5 .. v10}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$onDocumentPicked$2;-><init>(Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;ZLjava/util/Set;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v4, v4, v5, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/fsck/k9/ui/settings/export/ButtonState;->ENABLED:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 84
    .line 85
    iput-object v0, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 86
    .line 87
    iput-boolean v3, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 88
    .line 89
    iput-boolean v3, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 90
    .line 91
    iput-boolean v2, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isSettingsListEnabled:Z

    .line 92
    .line 93
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void

    .line 99
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 100
    .line 101
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 102
    .line 103
    sget v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->$r8$clinit:I

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 109
    .line 110
    const/4 v0, -0x1

    .line 111
    if-ne p1, v0, :cond_1

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->accountRemover$delegate:Lkotlin/Lazy;

    .line 121
    .line 122
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p1, p0}, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;->removeAccountAsync(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    return-void

    .line 136
    :pswitch_1
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 137
    .line 138
    check-cast p1, Landroid/net/Uri;

    .line 139
    .line 140
    if-eqz p1, :cond_2

    .line 141
    .line 142
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->showLoadingProgress()V

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 158
    .line 159
    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->contentUri:Landroid/net/Uri;

    .line 163
    .line 164
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v2, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 169
    .line 170
    invoke-direct {v2, p0, p1, v4}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v4, v4, v2, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_2
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->action:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 182
    .line 183
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;->ScanQrCode:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 184
    .line 185
    if-ne p1, v0, :cond_3

    .line 186
    .line 187
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/Action$Close;

    .line 188
    .line 189
    invoke-direct {p1, v3}, Lapp/k9mail/feature/settings/import/ui/Action$Close;-><init>(Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->sendActionEvent(Lapp/k9mail/feature/settings/import/ui/Action;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_3
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iput-boolean v2, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonEnabled:Z

    .line 202
    .line 203
    iput-boolean v2, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonEnabled:Z

    .line 204
    .line 205
    iget-boolean v0, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonPermanentlyDisabled:Z

    .line 206
    .line 207
    if-nez v0, :cond_4

    .line 208
    .line 209
    iput-boolean v2, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonEnabled:Z

    .line 210
    .line 211
    :cond_4
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 212
    .line 213
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :goto_1
    return-void

    .line 217
    :pswitch_2
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 218
    .line 219
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 224
    .line 225
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
