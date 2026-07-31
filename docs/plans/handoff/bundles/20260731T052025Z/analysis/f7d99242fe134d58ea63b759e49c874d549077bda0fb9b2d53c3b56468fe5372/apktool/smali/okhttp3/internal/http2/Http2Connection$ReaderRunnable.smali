.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final reader:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->$r8$classId:I

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Ljava/lang/Object;

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->$r8$classId:I

    .line 2
    .line 3
    const-class v1, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 4
    .line 5
    const-class v2, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 6
    .line 7
    const-class v3, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const-class v5, Lapp/k9mail/legacy/ui/folder/FolderIconProvider;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    check-cast v7, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 24
    .line 25
    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-object v4

    .line 29
    :pswitch_0
    check-cast v8, Ljava/lang/String;

    .line 30
    .line 31
    check-cast v7, Ljava/lang/Enum;

    .line 32
    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Unable to convert preference key ["

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, "] to enum of type defaultEnum: "

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_1
    check-cast v8, Lapp/k9mail/K9App;

    .line 57
    .line 58
    check-cast v7, Lorg/koin/core/qualifier/StringQualifier;

    .line 59
    .line 60
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-class v0, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_2
    check-cast v8, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 76
    .line 77
    check-cast v7, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;

    .line 78
    .line 79
    iget-object p0, v7, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 80
    .line 81
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const-class p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 94
    .line 95
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v3, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :pswitch_3
    check-cast v8, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;

    .line 107
    .line 108
    check-cast v7, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 109
    .line 110
    iget-object p0, v7, Landroidx/compose/runtime/GapPending$keyMap$2;->this$0:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;

    .line 113
    .line 114
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    const-class p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 127
    .line 128
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v5, 0x0

    .line 134
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :pswitch_4
    check-cast v8, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 140
    .line 141
    check-cast v7, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda4;

    .line 142
    .line 143
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    const-class v0, Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 148
    .line 149
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_5
    check-cast v8, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 159
    .line 160
    check-cast v7, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;

    .line 161
    .line 162
    iget-object p0, v7, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 163
    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    const-class p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 181
    .line 182
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const/4 v3, 0x0

    .line 187
    const/4 v5, 0x0

    .line 188
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    return-object p0

    .line 193
    :pswitch_6
    check-cast v8, Lcom/fsck/k9/ui/settings/SettingsListFragment;

    .line 194
    .line 195
    check-cast v7, Lcom/fsck/k9/ui/settings/SettingsListFragment$special$$inlined$inject$default$1;

    .line 196
    .line 197
    iget-object p0, v7, Lcom/fsck/k9/ui/settings/SettingsListFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/settings/SettingsListFragment;

    .line 198
    .line 199
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const-class p0, Lcom/fsck/k9/ui/settings/SettingsViewModel;

    .line 212
    .line 213
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const/4 v3, 0x0

    .line 218
    const/4 v5, 0x0

    .line 219
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    return-object p0

    .line 224
    :pswitch_7
    check-cast v8, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 225
    .line 226
    check-cast v7, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 227
    .line 228
    iget-object p0, v7, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 229
    .line 230
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    const-class p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;

    .line 243
    .line 244
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const/4 v3, 0x0

    .line 249
    const/4 v5, 0x0

    .line 250
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    return-object p0

    .line 255
    :pswitch_8
    check-cast v8, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 256
    .line 257
    check-cast v7, Lorg/koin/core/qualifier/StringQualifier;

    .line 258
    .line 259
    invoke-interface {v8}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    iget-object p0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 264
    .line 265
    iget-object p0, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 266
    .line 267
    const-class v0, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 268
    .line 269
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    return-object p0

    .line 281
    :pswitch_9
    check-cast v8, Lcom/fsck/k9/ui/messagesource/MessageHeadersFragment;

    .line 282
    .line 283
    check-cast v7, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 284
    .line 285
    iget-object p0, v7, Landroidx/compose/runtime/GapPending$keyMap$2;->this$0:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast p0, Lcom/fsck/k9/ui/messagesource/MessageHeadersFragment;

    .line 288
    .line 289
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    const-class p0, Lcom/fsck/k9/ui/messagesource/MessageHeadersViewModel;

    .line 302
    .line 303
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    const/4 v3, 0x0

    .line 308
    const/4 v5, 0x0

    .line 309
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    return-object p0

    .line 314
    :pswitch_a
    check-cast v8, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 315
    .line 316
    check-cast v7, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 317
    .line 318
    iget-object p0, v7, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 319
    .line 320
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 325
    .line 326
    .line 327
    move-result-object v11

    .line 328
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 329
    .line 330
    .line 331
    move-result-object v13

    .line 332
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    const/4 v12, 0x0

    .line 337
    const/4 v14, 0x0

    .line 338
    invoke-static/range {v9 .. v14}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    return-object p0

    .line 343
    :pswitch_b
    check-cast v8, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 344
    .line 345
    check-cast v7, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 346
    .line 347
    iget-object p0, v7, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 348
    .line 349
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 358
    .line 359
    .line 360
    move-result-object v13

    .line 361
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    const/4 v12, 0x0

    .line 366
    const/4 v14, 0x0

    .line 367
    invoke-static/range {v9 .. v14}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    return-object p0

    .line 372
    :pswitch_c
    check-cast v8, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 373
    .line 374
    check-cast v7, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;

    .line 375
    .line 376
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    return-object p0

    .line 389
    :pswitch_d
    check-cast v8, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 390
    .line 391
    check-cast v7, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 392
    .line 393
    iget-object p0, v7, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 394
    .line 395
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 400
    .line 401
    .line 402
    move-result-object v11

    .line 403
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 404
    .line 405
    .line 406
    move-result-object v13

    .line 407
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    const/4 v12, 0x0

    .line 412
    const/4 v14, 0x0

    .line 413
    invoke-static/range {v9 .. v14}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 414
    .line 415
    .line 416
    move-result-object p0

    .line 417
    return-object p0

    .line 418
    :pswitch_e
    check-cast v8, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 419
    .line 420
    check-cast v7, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 421
    .line 422
    iget-object p0, v7, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 423
    .line 424
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 425
    .line 426
    .line 427
    move-result-object v10

    .line 428
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 429
    .line 430
    .line 431
    move-result-object v11

    .line 432
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 433
    .line 434
    .line 435
    move-result-object v13

    .line 436
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 437
    .line 438
    .line 439
    move-result-object v9

    .line 440
    const/4 v12, 0x0

    .line 441
    const/4 v14, 0x0

    .line 442
    invoke-static/range {v9 .. v14}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    return-object p0

    .line 447
    :pswitch_f
    check-cast v8, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 448
    .line 449
    check-cast v7, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 450
    .line 451
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 452
    .line 453
    .line 454
    move-result-object p0

    .line 455
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    return-object p0

    .line 464
    :pswitch_10
    check-cast v8, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;

    .line 465
    .line 466
    check-cast v7, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$special$$inlined$inject$default$1;

    .line 467
    .line 468
    iget-object p0, v7, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;

    .line 469
    .line 470
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    const-class p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 483
    .line 484
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    const/4 v3, 0x0

    .line 489
    const/4 v5, 0x0

    .line 490
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 491
    .line 492
    .line 493
    move-result-object p0

    .line 494
    return-object p0

    .line 495
    :pswitch_11
    check-cast v8, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;

    .line 496
    .line 497
    check-cast v7, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 498
    .line 499
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 500
    .line 501
    .line 502
    move-result-object p0

    .line 503
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object p0

    .line 511
    return-object p0

    .line 512
    :pswitch_12
    check-cast v8, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 513
    .line 514
    check-cast v7, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment$special$$inlined$inject$default$1;

    .line 515
    .line 516
    iget-object p0, v7, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 517
    .line 518
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    const-class p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersViewModel;

    .line 531
    .line 532
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    const/4 v3, 0x0

    .line 537
    const/4 v5, 0x0

    .line 538
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 539
    .line 540
    .line 541
    move-result-object p0

    .line 542
    return-object p0

    .line 543
    :pswitch_13
    check-cast v8, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 544
    .line 545
    check-cast v7, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 546
    .line 547
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 548
    .line 549
    .line 550
    move-result-object p0

    .line 551
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object p0

    .line 559
    return-object p0

    .line 560
    :pswitch_14
    check-cast v8, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;

    .line 561
    .line 562
    check-cast v7, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$special$$inlined$inject$default$1;

    .line 563
    .line 564
    iget-object p0, v7, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;

    .line 565
    .line 566
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    const-class p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 579
    .line 580
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    const/4 v3, 0x0

    .line 585
    const/4 v5, 0x0

    .line 586
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 587
    .line 588
    .line 589
    move-result-object p0

    .line 590
    return-object p0

    .line 591
    :pswitch_15
    check-cast v8, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 592
    .line 593
    check-cast v7, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 594
    .line 595
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 596
    .line 597
    .line 598
    move-result-object p0

    .line 599
    const-class v0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 600
    .line 601
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object p0

    .line 609
    return-object p0

    .line 610
    :pswitch_16
    check-cast v8, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;

    .line 611
    .line 612
    check-cast v7, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 613
    .line 614
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object p0

    .line 626
    return-object p0

    .line 627
    :pswitch_17
    check-cast v8, Lcom/fsck/k9/notification/NotificationActionService;

    .line 628
    .line 629
    check-cast v7, Lorg/koin/core/qualifier/StringQualifier;

    .line 630
    .line 631
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 632
    .line 633
    .line 634
    move-result-object p0

    .line 635
    const-class v0, Lkotlinx/coroutines/CoroutineScope;

    .line 636
    .line 637
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object p0

    .line 648
    return-object p0

    .line 649
    :pswitch_18
    check-cast v8, Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .line 650
    .line 651
    move-object v5, v7

    .line 652
    check-cast v5, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 653
    .line 654
    invoke-virtual {v8}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    invoke-virtual {v8}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    const-class p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;

    .line 667
    .line 668
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    const/4 v3, 0x0

    .line 673
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 674
    .line 675
    .line 676
    move-result-object p0

    .line 677
    return-object p0

    .line 678
    :pswitch_19
    check-cast v8, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 679
    .line 680
    check-cast v7, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 681
    .line 682
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 683
    .line 684
    .line 685
    move-result-object p0

    .line 686
    const-class v0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 687
    .line 688
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-virtual {p0, v0, v6, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object p0

    .line 696
    return-object p0

    .line 697
    :pswitch_1a
    check-cast v8, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 698
    .line 699
    check-cast v7, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;

    .line 700
    .line 701
    iget-object p0, v7, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;->$this_inject:Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 702
    .line 703
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 712
    .line 713
    .line 714
    move-result-object v4

    .line 715
    const-class p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 716
    .line 717
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    const/4 v3, 0x0

    .line 722
    const/4 v5, 0x0

    .line 723
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 724
    .line 725
    .line 726
    move-result-object p0

    .line 727
    return-object p0

    .line 728
    :pswitch_1b
    check-cast v8, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;

    .line 729
    .line 730
    check-cast v7, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 731
    .line 732
    iget-object p0, v7, Landroidx/compose/runtime/GapPending$keyMap$2;->this$0:Ljava/lang/Object;

    .line 733
    .line 734
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;

    .line 735
    .line 736
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    invoke-static {v8}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 745
    .line 746
    .line 747
    move-result-object v4

    .line 748
    const-class p0, Lapp/k9mail/feature/settings/import/ui/PickAppViewModel;

    .line 749
    .line 750
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    const/4 v3, 0x0

    .line 755
    const/4 v5, 0x0

    .line 756
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 757
    .line 758
    .line 759
    move-result-object p0

    .line 760
    return-object p0

    .line 761
    :pswitch_1c
    check-cast v7, Lokhttp3/internal/http2/Http2Connection;

    .line 762
    .line 763
    check-cast v8, Lokhttp3/internal/http2/Http2Reader;

    .line 764
    .line 765
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 766
    .line 767
    const/4 v0, 0x1

    .line 768
    :try_start_0
    invoke-virtual {v8, v0, p0}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z

    .line 769
    .line 770
    .line 771
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 772
    if-eqz v0, :cond_1

    .line 773
    .line 774
    :cond_0
    const/4 v0, 0x0

    .line 775
    :try_start_1
    invoke-virtual {v8, v0, p0}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    if-nez v0, :cond_0

    .line 780
    .line 781
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 782
    .line 783
    :try_start_2
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 784
    .line 785
    invoke-virtual {v7, p0, v0, v6}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 786
    .line 787
    .line 788
    :goto_0
    invoke-static {v8}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 789
    .line 790
    .line 791
    goto :goto_3

    .line 792
    :catchall_0
    move-exception v0

    .line 793
    goto :goto_4

    .line 794
    :catch_0
    move-exception v0

    .line 795
    move-object v6, v0

    .line 796
    goto :goto_2

    .line 797
    :catchall_1
    move-exception v0

    .line 798
    :goto_1
    move-object p0, v1

    .line 799
    goto :goto_4

    .line 800
    :catch_1
    move-exception v0

    .line 801
    move-object p0, v0

    .line 802
    move-object v6, p0

    .line 803
    move-object p0, v1

    .line 804
    goto :goto_2

    .line 805
    :cond_1
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    .line 806
    .line 807
    const-string v0, "Required SETTINGS preface not received"

    .line 808
    .line 809
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 813
    :catchall_2
    move-exception v0

    .line 814
    move-object p0, v0

    .line 815
    move-object v0, p0

    .line 816
    goto :goto_1

    .line 817
    :catchall_3
    move-exception v0

    .line 818
    move-object p0, v0

    .line 819
    goto :goto_1

    .line 820
    :goto_2
    :try_start_4
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 821
    .line 822
    invoke-virtual {v7, p0, p0, v6}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 823
    .line 824
    .line 825
    goto :goto_0

    .line 826
    :goto_3
    return-object v4

    .line 827
    :goto_4
    invoke-virtual {v7, p0, v1, v6}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 828
    .line 829
    .line 830
    invoke-static {v8}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 831
    .line 832
    .line 833
    throw v0

    .line 834
    nop

    .line 835
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
