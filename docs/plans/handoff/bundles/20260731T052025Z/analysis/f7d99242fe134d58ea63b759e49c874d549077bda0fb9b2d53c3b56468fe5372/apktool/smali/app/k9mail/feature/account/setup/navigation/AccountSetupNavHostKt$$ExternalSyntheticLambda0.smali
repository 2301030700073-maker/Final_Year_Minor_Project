.class public final synthetic Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/navigation/NavHostController;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;->f$2:Landroidx/navigation/NavHostController;

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 14
    .line 15
    move-object/from16 v4, p4

    .line 16
    .line 17
    check-cast v4, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-object v12, v3

    .line 29
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    iget-object v1, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableState;

    .line 32
    .line 33
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableState;

    .line 38
    .line 39
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    or-int/2addr v2, v4

    .line 44
    iget-object v4, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;->f$2:Landroidx/navigation/NavHostController;

    .line 45
    .line 46
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    or-int/2addr v2, v5

    .line 51
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 56
    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    if-ne v5, v6, :cond_1

    .line 60
    .line 61
    :cond_0
    new-instance v5, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/16 v2, 0x19

    .line 64
    .line 65
    invoke-direct {v5, v4, v1, v3, v2}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    iget-object v1, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    if-ne v3, v6, :cond_3

    .line 86
    .line 87
    :cond_2
    new-instance v3, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 88
    .line 89
    const/16 v2, 0x1a

    .line 90
    .line 91
    invoke-direct {v3, v2, v1}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    move-object v7, v3

    .line 98
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 99
    .line 100
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    if-ne v3, v6, :cond_5

    .line 111
    .line 112
    :cond_4
    new-instance v3, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 113
    .line 114
    const/16 v2, 0x1b

    .line 115
    .line 116
    invoke-direct {v3, v2, v1}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    move-object v8, v3

    .line 123
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 124
    .line 125
    invoke-static {v12}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const/4 v2, 0x0

    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    invoke-static {v1}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    invoke-static {v12}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 137
    .line 138
    .line 139
    move-result-object v17

    .line 140
    const-class v3, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;

    .line 141
    .line 142
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    invoke-interface {v1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    const/16 v18, 0x0

    .line 153
    .line 154
    invoke-static/range {v13 .. v18}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    move-object v9, v1

    .line 159
    check-cast v9, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;

    .line 160
    .line 161
    invoke-static {v12}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    or-int/2addr v3, v4

    .line 174
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    if-nez v3, :cond_6

    .line 179
    .line 180
    if-ne v4, v6, :cond_7

    .line 181
    .line 182
    :cond_6
    const-class v3, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 183
    .line 184
    invoke-static {v3, v1, v2, v2, v12}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    :cond_7
    move-object v10, v4

    .line 189
    check-cast v10, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 190
    .line 191
    const/4 v11, 0x0

    .line 192
    const v13, 0x8000

    .line 193
    .line 194
    .line 195
    iget-object v6, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function0;

    .line 196
    .line 197
    invoke-static/range {v5 .. v13}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AutoDiscoveryStringMapperKt;->AccountAutoDiscoveryScreen(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 198
    .line 199
    .line 200
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 201
    .line 202
    return-object v0

    .line 203
    :cond_8
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 204
    .line 205
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-object v2
.end method
