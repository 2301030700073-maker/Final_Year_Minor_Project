.class public final synthetic Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/Action$Close;

    .line 15
    .line 16
    iget-object v2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 17
    .line 18
    iget-object v3, v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 19
    .line 20
    sget-object v4, Lapp/k9mail/feature/settings/import/ui/ButtonState;->GONE:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 21
    .line 22
    if-ne v3, v4, :cond_2

    .line 23
    .line 24
    iget-object v2, v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 50
    .line 51
    instance-of v4, v3, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$GeneralSettings;

    .line 52
    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    iget-object v3, v3, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 56
    .line 57
    iget-boolean v3, v3, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->isSuccess:Z

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    move v0, v1

    .line 62
    :cond_2
    :goto_0
    invoke-direct {p1, v0}, Lapp/k9mail/feature/settings/import/ui/Action$Close;-><init>(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->sendActionEvent(Lapp/k9mail/feature/settings/import/ui/Action;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iput-boolean v1, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 79
    .line 80
    iput-boolean v0, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListEnabled:Z

    .line 81
    .line 82
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ButtonState;->INVISIBLE:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 83
    .line 84
    iput-object v0, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 85
    .line 86
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/StatusText;->IMPORTING_PROGRESS:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 87
    .line 88
    iput-object v0, p1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 89
    .line 90
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->contentUri:Landroid/net/Uri;

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-direct {v1, p0, p1, v2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$startImportSettings$1;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 107
    .line 108
    .line 109
    const/4 p0, 0x3

    .line 110
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const-string p0, "contentUri is missing"

    .line 115
    .line 116
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void

    .line 120
    :pswitch_1
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->disablePickButtons()V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    sget-object p1, Lapp/k9mail/feature/settings/import/ui/Action$PickApp;->INSTANCE:Lapp/k9mail/feature/settings/import/ui/Action$PickApp;

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->sendActionEvent(Lapp/k9mail/feature/settings/import/ui/Action;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_2
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->disablePickButtons()V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    sget-object p1, Lapp/k9mail/feature/settings/import/ui/Action$ScanQrCode;->INSTANCE:Lapp/k9mail/feature/settings/import/ui/Action$ScanQrCode;

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->sendActionEvent(Lapp/k9mail/feature/settings/import/ui/Action;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :pswitch_3
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->disablePickButtons()V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 179
    .line 180
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    sget-object p1, Lapp/k9mail/feature/settings/import/ui/Action$PickDocument;->INSTANCE:Lapp/k9mail/feature/settings/import/ui/Action$PickDocument;

    .line 184
    .line 185
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->sendActionEvent(Lapp/k9mail/feature/settings/import/ui/Action;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
