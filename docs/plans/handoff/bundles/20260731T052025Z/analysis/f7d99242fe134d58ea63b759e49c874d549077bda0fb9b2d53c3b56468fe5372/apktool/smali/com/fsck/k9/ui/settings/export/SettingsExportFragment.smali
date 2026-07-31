.class public final Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final createDocumentLauncher:Landroidx/fragment/app/Fragment$10;

.field public itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 5
    .line 6
    const/16 v1, 0xd

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 12
    .line 13
    const/16 v2, 0x19

    .line 14
    .line 15
    invoke-direct {v1, v2, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 27
    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v1, v2, p0}, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->createDocumentLauncher:Landroidx/fragment/app/Fragment$10;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0c0175

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isSettingsListEnabled:Z

    .line 11
    .line 12
    const-string v2, "settingsListEnabled"

    .line 13
    .line 14
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "exportButton"

    .line 24
    .line 25
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "shareButtonVisible"

    .line 29
    .line 30
    iget-boolean v2, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const-string v1, "progressVisible"

    .line 36
    .line 37
    iget-boolean v2, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 38
    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->statusText:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "statusText"

    .line 49
    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "includeGeneralSettings"

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->getIncludeGeneralSettings$1()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->getSelectedAccounts$1()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/util/Collection;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    new-array v1, v1, [Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, [Ljava/lang/String;

    .line 76
    .line 77
    const-string v1, "selectedAccounts"

    .line 78
    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v0, "contentUri"

    .line 83
    .line 84
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->contentUri:Landroid/net/Uri;

    .line 85
    .line 86
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;

    .line 14
    .line 15
    const-string v2, "includeGeneralSettings"

    .line 16
    .line 17
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "selectedAccounts"

    .line 22
    .line 23
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 35
    .line 36
    :goto_0
    invoke-direct {v1, v3, v2}, Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;-><init>(Ljava/util/Set;Z)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->savedSelection:Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 42
    .line 43
    const-string v2, "settingsListEnabled"

    .line 44
    .line 45
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput-boolean v2, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isSettingsListEnabled:Z

    .line 50
    .line 51
    const-string v2, "exportButton"

    .line 52
    .line 53
    const-string v3, "DISABLED"

    .line 54
    .line 55
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lcom/fsck/k9/ui/settings/export/ButtonState;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iput-object v2, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 70
    .line 71
    const-string v2, "shareButtonVisible"

    .line 72
    .line 73
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iput-boolean v2, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 78
    .line 79
    const-string v2, "progressVisible"

    .line 80
    .line 81
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iput-boolean v2, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 86
    .line 87
    const-string v2, "statusText"

    .line 88
    .line 89
    const-string v3, "HIDDEN"

    .line 90
    .line 91
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Lcom/fsck/k9/ui/settings/export/StatusText;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iput-object v2, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->statusText:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 106
    .line 107
    const-string v1, "contentUri"

    .line 108
    .line 109
    const-class v2, Landroid/net/Uri;

    .line 110
    .line 111
    invoke-static {p2, v1, v2}, Landroidx/sqlite/SQLite;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Landroid/net/Uri;

    .line 116
    .line 117
    iput-object p2, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->contentUri:Landroid/net/Uri;

    .line 118
    .line 119
    :cond_1
    new-instance p2, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 120
    .line 121
    invoke-direct {p2, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p2, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 127
    .line 128
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 129
    .line 130
    invoke-direct {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 134
    .line 135
    new-instance v1, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 136
    .line 137
    invoke-direct {v1}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v2, v1, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object v4, v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 147
    .line 148
    invoke-static {v4}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_2

    .line 153
    .line 154
    iput-object v1, v4, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 155
    .line 156
    :cond_2
    iput-object v1, v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    move v2, v3

    .line 163
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    const/4 v5, 0x0

    .line 168
    if-eqz v4, :cond_4

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    add-int/lit8 v6, v2, 0x1

    .line 175
    .line 176
    if-ltz v2, :cond_3

    .line 177
    .line 178
    check-cast v4, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 179
    .line 180
    iput v2, v4, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->order:I

    .line 181
    .line 182
    move v2, v6

    .line 183
    goto :goto_1

    .line 184
    :cond_3
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 185
    .line 186
    .line 187
    throw v5

    .line 188
    :cond_4
    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 189
    .line 190
    .line 191
    const/4 v0, 0x1

    .line 192
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 193
    .line 194
    .line 195
    new-instance v2, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;

    .line 196
    .line 197
    const/16 v4, 0xa

    .line 198
    .line 199
    invoke-direct {v2, v4, p0}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iput-object v2, v1, Lcom/mikepenz/fastadapter/FastAdapter;->onClickListener:Lkotlin/jvm/functions/Function4;

    .line 203
    .line 204
    new-instance v2, Lcom/fsck/k9/ui/settings/export/CheckBoxClickEvent;

    .line 205
    .line 206
    new-instance v4, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    const/16 v6, 0x1c

    .line 209
    .line 210
    invoke-direct {v4, v6, p0}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-direct {v2, v4, v3}, Lcom/fsck/k9/ui/settings/export/CheckBoxClickEvent;-><init>(Lkotlin/Function;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p2, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p1, Landroid/view/View;

    .line 225
    .line 226
    new-instance v1, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment$$ExternalSyntheticLambda0;

    .line 227
    .line 228
    invoke-direct {v1, p0, v3}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p2, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast p1, Landroid/view/View;

    .line 237
    .line 238
    new-instance v1, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment$$ExternalSyntheticLambda0;

    .line 239
    .line 240
    invoke-direct {v1, p0, v0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iget-object v0, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    if-nez v1, :cond_5

    .line 257
    .line 258
    iget-object v1, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    new-instance v2, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 268
    .line 269
    const/16 v3, 0x13

    .line 270
    .line 271
    invoke-direct {v2, p1, v5, v3}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 272
    .line 273
    .line 274
    const/4 p1, 0x3

    .line 275
    invoke-static {v1, v5, v5, v2, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 276
    .line 277
    .line 278
    :cond_5
    new-instance p1, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 279
    .line 280
    const/16 v1, 0x19

    .line 281
    .line 282
    invoke-direct {p1, v1, p0, p2}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->observeNotNull(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 293
    .line 294
    new-instance p2, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 295
    .line 296
    const/16 v0, 0x14

    .line 297
    .line 298
    invoke-direct {p2, v0, p0}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->observeNotNull(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 302
    .line 303
    .line 304
    return-void
.end method
