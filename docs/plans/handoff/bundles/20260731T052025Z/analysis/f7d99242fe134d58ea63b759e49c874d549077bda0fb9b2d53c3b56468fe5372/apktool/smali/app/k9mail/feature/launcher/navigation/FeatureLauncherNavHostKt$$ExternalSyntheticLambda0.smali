.class public final synthetic Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$10:Landroidx/activity/ComponentActivity;

.field public final synthetic f$11:Landroidx/navigation/NavHostController;

.field public final synthetic f$2:Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;

.field public final synthetic f$3:Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;

.field public final synthetic f$4:Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;

.field public final synthetic f$5:Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;

.field public final synthetic f$6:Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;

.field public final synthetic f$7:Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;

.field public final synthetic f$8:Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;

.field public final synthetic f$9:Lnet/thunderbird/app/common/feature/MessageListLauncher;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;Lnet/thunderbird/app/common/feature/MessageListLauncher;Landroidx/activity/ComponentActivity;Landroidx/navigation/NavHostController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$2:Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$3:Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;

    .line 11
    .line 12
    iput-object p5, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$4:Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;

    .line 13
    .line 14
    iput-object p6, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$5:Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;

    .line 15
    .line 16
    iput-object p7, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$6:Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;

    .line 17
    .line 18
    iput-object p8, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$7:Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;

    .line 19
    .line 20
    iput-object p9, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$8:Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;

    .line 21
    .line 22
    iput-object p10, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$9:Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 23
    .line 24
    iput-object p11, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$10:Landroidx/activity/ComponentActivity;

    .line 25
    .line 26
    iput-object p12, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$11:Landroidx/navigation/NavHostController;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/navigation/NavGraphBuilder;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v3, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v3, v4, v2}, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    const v6, -0x2c0d3406

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    invoke-direct {v5, v6, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 33
    .line 34
    .line 35
    const-class v3, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;

    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v6}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    sget-object v8, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 46
    .line 47
    const-string v9, "app://changelog"

    .line 48
    .line 49
    invoke-static {v6, v8, v9}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    new-instance v9, Landroidx/navigation/NavDeepLink;

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    invoke-direct {v9, v6, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v9}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v1, v3, v6, v5}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 68
    .line 69
    .line 70
    new-instance v3, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 71
    .line 72
    iget-object v5, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$9:Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 73
    .line 74
    iget-object v6, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$10:Landroidx/activity/ComponentActivity;

    .line 75
    .line 76
    iget-object v9, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$11:Landroidx/navigation/NavHostController;

    .line 77
    .line 78
    invoke-direct {v3, v5, v6, v9}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/app/common/feature/MessageListLauncher;Landroidx/activity/ComponentActivity;Landroidx/navigation/NavHostController;)V

    .line 79
    .line 80
    .line 81
    iget-object v11, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$2:Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;

    .line 82
    .line 83
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v11, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;

    .line 87
    .line 88
    const/4 v12, 0x5

    .line 89
    invoke-direct {v11, v12, v3}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 93
    .line 94
    const v13, 0x10907b4d

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v13, v11, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 98
    .line 99
    .line 100
    const-class v11, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;

    .line 101
    .line 102
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    invoke-static {v13}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    const-string v14, "app://onboarding"

    .line 111
    .line 112
    invoke-static {v13, v8, v14}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    new-instance v14, Landroidx/navigation/NavDeepLink;

    .line 117
    .line 118
    invoke-direct {v14, v13, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v14}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-static {v1, v11, v13, v3}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 130
    .line 131
    .line 132
    new-instance v3, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 133
    .line 134
    const/16 v11, 0x14

    .line 135
    .line 136
    invoke-direct {v3, v9, v11}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 137
    .line 138
    .line 139
    new-instance v11, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 140
    .line 141
    invoke-direct {v11, v9, v5, v6}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;-><init>(Landroidx/navigation/NavHostController;Lnet/thunderbird/app/common/feature/MessageListLauncher;Landroidx/activity/ComponentActivity;)V

    .line 142
    .line 143
    .line 144
    iget-object v13, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$3:Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;

    .line 145
    .line 146
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    new-instance v13, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;

    .line 150
    .line 151
    invoke-direct {v13, v3, v11, v4}, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;-><init>(Landroidx/navigation/NavController$$ExternalSyntheticLambda0;Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;I)V

    .line 152
    .line 153
    .line 154
    new-instance v14, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 155
    .line 156
    const v15, 0x14b7acf8

    .line 157
    .line 158
    .line 159
    invoke-direct {v14, v15, v13, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 160
    .line 161
    .line 162
    const-class v13, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;

    .line 163
    .line 164
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    invoke-static {v15}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    const-string v12, "app://thundermail/sign-in"

    .line 173
    .line 174
    invoke-static {v15, v8, v12}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    new-instance v15, Landroidx/navigation/NavDeepLink;

    .line 179
    .line 180
    invoke-direct {v15, v12, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v15}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v12

    .line 187
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    invoke-static {v1, v13, v12, v14}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 192
    .line 193
    .line 194
    new-instance v12, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;

    .line 195
    .line 196
    invoke-direct {v12, v11, v3}, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;-><init>(Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;Landroidx/navigation/NavController$$ExternalSyntheticLambda0;)V

    .line 197
    .line 198
    .line 199
    new-instance v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 200
    .line 201
    const v14, 0x1d23eaa1

    .line 202
    .line 203
    .line 204
    invoke-direct {v13, v14, v12, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 205
    .line 206
    .line 207
    const-class v12, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$ScanQrCode;

    .line 208
    .line 209
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    invoke-static {v14}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    const-string v15, "app://thundermail/scan-qr-code"

    .line 218
    .line 219
    invoke-static {v14, v8, v15}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v14

    .line 223
    new-instance v15, Landroidx/navigation/NavDeepLink;

    .line 224
    .line 225
    invoke-direct {v15, v14, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v15}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    invoke-static {v1, v12, v14, v13}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 237
    .line 238
    .line 239
    new-instance v12, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;

    .line 240
    .line 241
    const/4 v13, 0x2

    .line 242
    invoke-direct {v12, v3, v11, v13}, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;-><init>(Landroidx/navigation/NavController$$ExternalSyntheticLambda0;Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;I)V

    .line 243
    .line 244
    .line 245
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 246
    .line 247
    const v14, -0x52830dc0

    .line 248
    .line 249
    .line 250
    invoke-direct {v3, v14, v12, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 251
    .line 252
    .line 253
    const-class v12, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$IncomingSettings;

    .line 254
    .line 255
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 256
    .line 257
    .line 258
    move-result-object v14

    .line 259
    invoke-static {v14}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 260
    .line 261
    .line 262
    move-result-object v14

    .line 263
    const-string v15, "app://thundermail/incoming-settings"

    .line 264
    .line 265
    invoke-static {v14, v8, v15}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v14

    .line 269
    new-instance v15, Landroidx/navigation/NavDeepLink;

    .line 270
    .line 271
    invoke-direct {v15, v14, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v15}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    invoke-static {v1, v12, v14, v3}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 283
    .line 284
    .line 285
    new-instance v3, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;

    .line 286
    .line 287
    const/16 v12, 0xc

    .line 288
    .line 289
    invoke-direct {v3, v12, v11}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    new-instance v11, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 293
    .line 294
    const v12, 0x3dd5f9df

    .line 295
    .line 296
    .line 297
    invoke-direct {v11, v12, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 298
    .line 299
    .line 300
    const-class v3, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Permissions;

    .line 301
    .line 302
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 303
    .line 304
    .line 305
    move-result-object v12

    .line 306
    invoke-static {v12}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 307
    .line 308
    .line 309
    move-result-object v12

    .line 310
    const-string v14, "app://thundermail/permissions/{accountId}"

    .line 311
    .line 312
    invoke-static {v12, v8, v14}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    new-instance v14, Landroidx/navigation/NavDeepLink;

    .line 317
    .line 318
    invoke-direct {v14, v12, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v14}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-static {v1, v3, v12, v11}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 330
    .line 331
    .line 332
    new-instance v3, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 333
    .line 334
    const/16 v11, 0xe

    .line 335
    .line 336
    invoke-direct {v3, v11, v5, v9}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    iget-object v5, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$4:Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;

    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    new-instance v5, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;

    .line 345
    .line 346
    invoke-direct {v5, v7, v2, v3}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 350
    .line 351
    const v9, -0x1d1eee3

    .line 352
    .line 353
    .line 354
    invoke-direct {v3, v9, v5, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 355
    .line 356
    .line 357
    const-class v5, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$AccountSetup;

    .line 358
    .line 359
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    const-string v11, "app://account/setup"

    .line 368
    .line 369
    invoke-static {v9, v8, v11}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v9

    .line 373
    new-instance v11, Landroidx/navigation/NavDeepLink;

    .line 374
    .line 375
    invoke-direct {v11, v9, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-static {v1, v5, v9, v3}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 387
    .line 388
    .line 389
    new-instance v3, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 390
    .line 391
    const/16 v5, 0x19

    .line 392
    .line 393
    invoke-direct {v3, v5, v6}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    iget-object v5, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$5:Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;

    .line 397
    .line 398
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    new-instance v5, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;

    .line 402
    .line 403
    invoke-direct {v5, v3, v2, v4}, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;-><init>(Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function0;I)V

    .line 404
    .line 405
    .line 406
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 407
    .line 408
    const v6, 0x60fe80e8

    .line 409
    .line 410
    .line 411
    invoke-direct {v4, v6, v5, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 412
    .line 413
    .line 414
    const-class v5, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$IncomingServerSettings;

    .line 415
    .line 416
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    invoke-static {v6}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    const-string v9, "app://account/edit/incoming"

    .line 425
    .line 426
    invoke-static {v6, v8, v9}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    new-instance v9, Landroidx/navigation/NavDeepLink;

    .line 431
    .line 432
    invoke-direct {v9, v6, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-static {v9}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-static {v1, v5, v6, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 444
    .line 445
    .line 446
    new-instance v4, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;

    .line 447
    .line 448
    invoke-direct {v4, v3, v2, v7}, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;-><init>(Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function0;I)V

    .line 449
    .line 450
    .line 451
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 452
    .line 453
    const v5, -0x4c6692ef

    .line 454
    .line 455
    .line 456
    invoke-direct {v3, v5, v4, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 457
    .line 458
    .line 459
    const-class v4, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$OutgoingServerSettings;

    .line 460
    .line 461
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    const-string v6, "app://account/edit/outgoing"

    .line 470
    .line 471
    invoke-static {v5, v8, v6}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    new-instance v6, Landroidx/navigation/NavDeepLink;

    .line 476
    .line 477
    invoke-direct {v6, v5, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-static {v1, v4, v5, v3}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 489
    .line 490
    .line 491
    iget-object v3, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$6:Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;

    .line 492
    .line 493
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    new-instance v3, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;

    .line 497
    .line 498
    invoke-direct {v3, v7, v2}, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 499
    .line 500
    .line 501
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 502
    .line 503
    const v5, 0x68c83d89

    .line 504
    .line 505
    .line 506
    invoke-direct {v4, v5, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 507
    .line 508
    .line 509
    const-class v3, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$GeneralSettings;

    .line 510
    .line 511
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 516
    .line 517
    .line 518
    move-result-object v5

    .line 519
    const-string v6, "app://account/settings/general"

    .line 520
    .line 521
    invoke-static {v5, v8, v6}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    new-instance v6, Landroidx/navigation/NavDeepLink;

    .line 526
    .line 527
    invoke-direct {v6, v5, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    invoke-static {v1, v3, v5, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 539
    .line 540
    .line 541
    new-instance v3, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;

    .line 542
    .line 543
    invoke-direct {v3, v13, v2}, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 544
    .line 545
    .line 546
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 547
    .line 548
    const v5, 0x5e064f80

    .line 549
    .line 550
    .line 551
    invoke-direct {v4, v5, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 552
    .line 553
    .line 554
    const-class v3, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$ReadingMailSettings;

    .line 555
    .line 556
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    const-string v6, "app://account/settings/reading_mail"

    .line 565
    .line 566
    invoke-static {v5, v8, v6}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    new-instance v6, Landroidx/navigation/NavDeepLink;

    .line 571
    .line 572
    invoke-direct {v6, v5, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 576
    .line 577
    .line 578
    move-result-object v5

    .line 579
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    invoke-static {v1, v3, v5, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 584
    .line 585
    .line 586
    new-instance v3, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;

    .line 587
    .line 588
    const/4 v4, 0x3

    .line 589
    invoke-direct {v3, v4, v2}, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 590
    .line 591
    .line 592
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 593
    .line 594
    const v5, -0x572f3c3f

    .line 595
    .line 596
    .line 597
    invoke-direct {v4, v5, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 598
    .line 599
    .line 600
    const-class v3, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$FetchingMailSettings;

    .line 601
    .line 602
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 607
    .line 608
    .line 609
    move-result-object v5

    .line 610
    const-string v6, "app://account/settings/fetching_mail"

    .line 611
    .line 612
    invoke-static {v5, v8, v6}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v5

    .line 616
    new-instance v6, Landroidx/navigation/NavDeepLink;

    .line 617
    .line 618
    invoke-direct {v6, v5, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    invoke-static {v1, v3, v5, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 630
    .line 631
    .line 632
    new-instance v3, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;

    .line 633
    .line 634
    const/4 v4, 0x4

    .line 635
    invoke-direct {v3, v4, v2}, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 636
    .line 637
    .line 638
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 639
    .line 640
    const v5, -0xc64c7fe

    .line 641
    .line 642
    .line 643
    invoke-direct {v4, v5, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 644
    .line 645
    .line 646
    const-class v3, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$AdvancedFetchingMailSettings;

    .line 647
    .line 648
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 649
    .line 650
    .line 651
    move-result-object v5

    .line 652
    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    const-string v6, "app://account/settings/fetching_mail/advanced"

    .line 657
    .line 658
    invoke-static {v5, v8, v6}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v5

    .line 662
    new-instance v6, Landroidx/navigation/NavDeepLink;

    .line 663
    .line 664
    invoke-direct {v6, v5, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 668
    .line 669
    .line 670
    move-result-object v5

    .line 671
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    invoke-static {v1, v3, v5, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 676
    .line 677
    .line 678
    new-instance v3, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;

    .line 679
    .line 680
    const/4 v4, 0x5

    .line 681
    invoke-direct {v3, v4, v2}, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 682
    .line 683
    .line 684
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 685
    .line 686
    const v4, 0x3e65ac43

    .line 687
    .line 688
    .line 689
    invoke-direct {v2, v4, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 690
    .line 691
    .line 692
    const-class v3, Lnet/thunderbird/feature/account/settings/api/AccountSettingsRoute$SearchSettings;

    .line 693
    .line 694
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    invoke-static {v4}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    const-string v5, "app://account/settings/search"

    .line 703
    .line 704
    invoke-static {v4, v8, v5}, Landroidx/navigation/serialization/InternalNavType;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    new-instance v5, Landroidx/navigation/NavDeepLink;

    .line 709
    .line 710
    invoke-direct {v5, v4, v10, v10}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    invoke-static {v1, v3, v4, v2}, Lcom/fsck/k9/sasl/OAuthBearer;->composable(Landroidx/navigation/NavGraphBuilder;Lkotlin/jvm/internal/ClassReference;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 722
    .line 723
    .line 724
    iget-object v1, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$7:Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;

    .line 725
    .line 726
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    .line 728
    .line 729
    iget-object v0, v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda0;->f$8:Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;

    .line 730
    .line 731
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 732
    .line 733
    .line 734
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 735
    .line 736
    return-object v0
.end method
