.class public final synthetic Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget p0, p0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "KoinApplication has not been started"

    .line 7
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->Companion:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$Companion;

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_0
    sget-boolean p0, Lorg/schabi/newpipe/util/DeviceUtils;->SAMSUNG:Z

    .line 19
    .line 20
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move v0, v1

    .line 25
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_1
    invoke-static {}, Lkotlin/text/HexExtensionsKt;->hexToByteArray$default()[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Lkotlin/Pair;

    .line 39
    .line 40
    invoke-direct {v2, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object v0, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v0, v3, p0}, Lorg/acra/util/PackageManagerWrapperKt;->hasSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/Map;)Z

    .line 65
    .line 66
    .line 67
    move-result v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    move-object p0, v0

    .line 71
    move-object v4, p0

    .line 72
    sget-object p0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 73
    .line 74
    new-instance v3, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    const/16 v8, 0x18

    .line 78
    .line 79
    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->CHECK_FOR_NEW_APP_VERSION:Lorg/schabi/newpipe/error/UserAction;

    .line 80
    .line 81
    const-string v6, "Could not find package info"

    .line 82
    .line 83
    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v3}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_2
    sget-object p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$Companion;

    .line 98
    .line 99
    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    .line 100
    .line 101
    sget-object v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem$$serializer;->INSTANCE:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem$$serializer;

    .line 102
    .line 103
    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_3
    sget-object p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 108
    .line 109
    if-eqz p0, :cond_0

    .line 110
    .line 111
    move-object v2, p0

    .line 112
    goto :goto_2

    .line 113
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_2
    return-object v2

    .line 117
    :pswitch_4
    sget-object p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 118
    .line 119
    if-eqz p0, :cond_1

    .line 120
    .line 121
    iget-object p0, p0, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p0, Lorg/koin/core/registry/ScopeRegistry;

    .line 124
    .line 125
    iget-object v2, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_1
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_3
    return-object v2

    .line 132
    :pswitch_5
    new-instance p0, Lorg/koin/compose/ComposeContextWrapper;

    .line 133
    .line 134
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 135
    .line 136
    if-eqz v0, :cond_2

    .line 137
    .line 138
    new-instance v1, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 139
    .line 140
    const/16 v2, 0xa

    .line 141
    .line 142
    invoke-direct {v1, v2}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, v0, v1}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 146
    .line 147
    .line 148
    move-object v2, p0

    .line 149
    goto :goto_4

    .line 150
    :cond_2
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_4
    return-object v2

    .line 154
    :pswitch_6
    new-instance p0, Lorg/koin/compose/ComposeContextWrapper;

    .line 155
    .line 156
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 157
    .line 158
    if-eqz v0, :cond_3

    .line 159
    .line 160
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Lorg/koin/core/registry/ScopeRegistry;

    .line 163
    .line 164
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 165
    .line 166
    new-instance v1, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    const/16 v2, 0x9

    .line 169
    .line 170
    invoke-direct {v1, v2}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, v0, v1}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 174
    .line 175
    .line 176
    move-object v2, p0

    .line 177
    goto :goto_5

    .line 178
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :goto_5
    return-object v2

    .line 182
    :pswitch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    const-string/jumbo v0, "should not be used in favor of getKoin()"

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :pswitch_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 192
    .line 193
    const-string/jumbo v0, "should not be used in favor of LocalKoinScopeContext"

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :pswitch_9
    sget-object p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 201
    .line 202
    if-eqz p0, :cond_4

    .line 203
    .line 204
    iget-object p0, p0, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Lorg/koin/core/registry/ScopeRegistry;

    .line 207
    .line 208
    iget-object v2, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_4
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :goto_6
    return-object v2

    .line 215
    :pswitch_a
    const-string p0, ""

    .line 216
    .line 217
    return-object p0

    .line 218
    :pswitch_b
    sget-object p0, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 219
    .line 220
    sget-object p0, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->INSTANCE:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 221
    .line 222
    return-object p0

    .line 223
    :pswitch_c
    sget-object p0, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->DefaultComposeEnvironment:Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;

    .line 224
    .line 225
    return-object p0

    .line 226
    :pswitch_d
    sget-object p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 227
    .line 228
    if-eqz p0, :cond_5

    .line 229
    .line 230
    move-object v2, p0

    .line 231
    goto :goto_7

    .line 232
    :cond_5
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :goto_7
    return-object v2

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
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
