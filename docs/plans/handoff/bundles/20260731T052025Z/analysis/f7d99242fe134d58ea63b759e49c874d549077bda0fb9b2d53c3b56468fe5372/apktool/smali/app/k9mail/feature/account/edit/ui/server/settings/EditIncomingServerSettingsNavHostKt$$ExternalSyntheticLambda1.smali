.class public final synthetic Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/navigation/NavHostController;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;->f$1:Landroidx/navigation/NavHostController;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 7
    .line 8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 11
    .line 12
    iget-object v6, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;->f$1:Landroidx/navigation/NavHostController;

    .line 13
    .line 14
    iget-object v7, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 22
    .line 23
    move-object/from16 v8, p2

    .line 24
    .line 25
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 26
    .line 27
    move-object/from16 v9, p3

    .line 28
    .line 29
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 30
    .line 31
    move-object/from16 v10, p4

    .line 32
    .line 33
    check-cast v10, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-object v15, v9

    .line 45
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 46
    .line 47
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    if-ne v8, v5, :cond_1

    .line 58
    .line 59
    :cond_0
    new-instance v8, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    invoke-direct {v8, v7, v1}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    move-object v14, v8

    .line 70
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 71
    .line 72
    invoke-static {v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-static {v1}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    invoke-static {v15}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    const-class v2, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyOutgoingServerSettingsViewModel;

    .line 87
    .line 88
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-interface {v1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    const/4 v12, 0x0

    .line 97
    invoke-static/range {v9 .. v14}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    move-object v13, v1

    .line 102
    check-cast v13, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyOutgoingServerSettingsViewModel;

    .line 103
    .line 104
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-nez v1, :cond_2

    .line 113
    .line 114
    if-ne v2, v5, :cond_3

    .line 115
    .line 116
    :cond_2
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    const/4 v1, 0x7

    .line 119
    invoke-direct {v2, v6, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    move-object v11, v2

    .line 126
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 127
    .line 128
    const/4 v14, 0x0

    .line 129
    const/16 v16, 0x200

    .line 130
    .line 131
    iget-object v12, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function0;

    .line 132
    .line 133
    invoke-static/range {v11 .. v16}, Landroidx/work/Operation$State;->OutgoingServerSettingsScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 134
    .line 135
    .line 136
    move-object v2, v4

    .line 137
    goto :goto_0

    .line 138
    :cond_4
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_0
    return-object v2

    .line 142
    :pswitch_0
    move-object/from16 v1, p1

    .line 143
    .line 144
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 145
    .line 146
    move-object/from16 v8, p2

    .line 147
    .line 148
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 149
    .line 150
    move-object/from16 v9, p3

    .line 151
    .line 152
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 153
    .line 154
    move-object/from16 v10, p4

    .line 155
    .line 156
    check-cast v10, Ljava/lang/Integer;

    .line 157
    .line 158
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-object v15, v9

    .line 168
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 169
    .line 170
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    if-nez v1, :cond_5

    .line 179
    .line 180
    if-ne v8, v5, :cond_6

    .line 181
    .line 182
    :cond_5
    new-instance v8, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    const/4 v1, 0x4

    .line 185
    invoke-direct {v8, v7, v1}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    move-object v14, v8

    .line 192
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 193
    .line 194
    invoke-static {v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_9

    .line 199
    .line 200
    invoke-static {v1}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-static {v15}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    const-class v2, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;

    .line 209
    .line 210
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-interface {v1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    const/4 v12, 0x0

    .line 219
    invoke-static/range {v9 .. v14}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    move-object v13, v1

    .line 224
    check-cast v13, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;

    .line 225
    .line 226
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    if-nez v1, :cond_7

    .line 235
    .line 236
    if-ne v2, v5, :cond_8

    .line 237
    .line 238
    :cond_7
    new-instance v2, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 239
    .line 240
    const/16 v1, 0x15

    .line 241
    .line 242
    invoke-direct {v2, v1, v6}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_8
    move-object v11, v2

    .line 249
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 250
    .line 251
    const/4 v14, 0x0

    .line 252
    const/16 v16, 0x200

    .line 253
    .line 254
    iget-object v12, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function0;

    .line 255
    .line 256
    invoke-static/range {v11 .. v16}, Landroidx/room/util/SchemaInfoUtilKt;->IncomingServerSettingsScreen(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 257
    .line 258
    .line 259
    move-object v2, v4

    .line 260
    goto :goto_1

    .line 261
    :cond_9
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_1
    return-object v2

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
