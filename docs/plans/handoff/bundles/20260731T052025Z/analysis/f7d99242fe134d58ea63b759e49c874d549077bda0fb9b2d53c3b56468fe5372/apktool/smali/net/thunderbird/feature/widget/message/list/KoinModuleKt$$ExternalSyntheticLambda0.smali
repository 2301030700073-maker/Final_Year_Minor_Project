.class public final synthetic Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    iput p1, p0, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 8
    iput p1, p0, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-class v0, Lnet/thunderbird/core/logging/Logger;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p1, p0}, Lorg/jetbrains/compose/resources/AndroidContextProviderKt;->PreviewContextConfigurationEffect(Landroidx/compose/runtime/Composer;I)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_0
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 28
    .line 29
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;

    .line 38
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_1
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 44
    .line 45
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance p0, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;

    .line 54
    .line 55
    const-class p2, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 56
    .line 57
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 66
    .line 67
    invoke-direct {p0, p1}, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;-><init>(Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_2
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 72
    .line 73
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;

    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Lnet/thunderbird/core/logging/Logger;

    .line 92
    .line 93
    const-class v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 94
    .line 95
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 104
    .line 105
    const-class v2, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

    .line 106
    .line 107
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

    .line 116
    .line 117
    const-class v3, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;

    .line 118
    .line 119
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {p1, v3, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;

    .line 128
    .line 129
    invoke-direct {p0, p2, v0, v2, p1}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;-><init>(Lnet/thunderbird/core/logging/Logger;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;Lnet/thunderbird/feature/thundermail/internal/common/domain/CreateAccountStateUseCase;)V

    .line 130
    .line 131
    .line 132
    return-object p0

    .line 133
    :pswitch_3
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 134
    .line 135
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 144
    .line 145
    const-class p2, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 146
    .line 147
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1, p2, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    check-cast p2, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 156
    .line 157
    const-class v2, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;

    .line 158
    .line 159
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;

    .line 168
    .line 169
    const-class v3, Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;

    .line 170
    .line 171
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {p1, v3, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;

    .line 180
    .line 181
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lnet/thunderbird/core/logging/Logger;

    .line 190
    .line 191
    invoke-direct {p0, p2, v2, v3, p1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;-><init>(Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;Lnet/thunderbird/core/logging/Logger;)V

    .line 192
    .line 193
    .line 194
    return-object p0

    .line 195
    :pswitch_4
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 196
    .line 197
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    sget-object p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;->Factory:Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$Factory;

    .line 206
    .line 207
    return-object p0

    .line 208
    :pswitch_5
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 209
    .line 210
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    new-instance p0, Lokio/Path$Companion;

    .line 219
    .line 220
    const-class p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 221
    .line 222
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-virtual {p1, p2, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    check-cast p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 231
    .line 232
    const-class p2, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 233
    .line 234
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-virtual {p1, p2, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    check-cast p2, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 243
    .line 244
    const-class p2, Lcom/fsck/k9/helper/MessageHelper;

    .line 245
    .line 246
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {p1, p2, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    check-cast p2, Lcom/fsck/k9/helper/MessageHelper;

    .line 255
    .line 256
    const-class p2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 257
    .line 258
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-virtual {p1, p2, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    check-cast p2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 267
    .line 268
    const-class p2, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 269
    .line 270
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p1, p2, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 279
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    .line 282
    .line 283
    return-object p0

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
