.class public final Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$onCreatePreferencesFix$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$onCreatePreferencesFix$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$onCreatePreferencesFix$4;->this$0:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget p2, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$onCreatePreferencesFix$4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$onCreatePreferencesFix$4;->this$0:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x0

    .line 10
    packed-switch p2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Landroidx/work/WorkInfo;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/work/WorkInfo;->state:Landroidx/work/WorkInfo$State;

    .line 18
    .line 19
    sget-object p2, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 20
    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    .line 23
    sget p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->getViewModel()Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 37
    .line 38
    invoke-direct {p2, p0, v1, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v3, v3, p2, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object p2, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 46
    .line 47
    if-ne p1, p2, :cond_1

    .line 48
    .line 49
    sget p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->getViewModel()Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance p2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {p2, p0, v1, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v3, v3, p2, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;

    .line 73
    .line 74
    iget-object p2, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->currentUiState:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->currentUiState:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;

    .line 77
    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    invoke-interface {p2}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;->isExportLogsMenuEnabled()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-interface {p1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;->isExportLogsMenuEnabled()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-ne v4, v5, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 96
    .line 97
    .line 98
    :goto_1
    if-eqz p2, :cond_3

    .line 99
    .line 100
    invoke-interface {p2}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;->getSnackbarState()Lcom/fsck/k9/ui/settings/general/SnackbarState;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    move-object p2, v3

    .line 106
    :goto_2
    invoke-interface {p1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;->getSnackbarState()Lcom/fsck/k9/ui/settings/general/SnackbarState;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    if-eq p2, v4, :cond_8

    .line 111
    .line 112
    invoke-interface {p1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;->getSnackbarState()Lcom/fsck/k9/ui/settings/general/SnackbarState;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    const/4 p2, -0x2

    .line 123
    if-eq p1, v1, :cond_5

    .line 124
    .line 125
    const/4 v1, 0x2

    .line 126
    if-ne p1, v1, :cond_4

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    sget-object v1, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const v2, 0x7f120259

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {p1, v1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 156
    .line 157
    .line 158
    move-object v0, v3

    .line 159
    goto :goto_3

    .line 160
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    sget-object v1, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const v2, 0x7f12025a

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {p1, v1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 188
    .line 189
    if-eqz p1, :cond_7

    .line 190
    .line 191
    invoke-virtual {p1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 192
    .line 193
    .line 194
    :cond_7
    iput-object v3, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 195
    .line 196
    :cond_8
    :goto_3
    return-object v0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
