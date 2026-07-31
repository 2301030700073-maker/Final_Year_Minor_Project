.class public abstract Lorg/koin/compose/KoinApplicationKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final LocalKoinApplicationContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final LocalKoinScopeContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/LazyValueHolder;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroidx/compose/runtime/LazyValueHolder;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    invoke-direct {v0, v1}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroidx/compose/runtime/LazyValueHolder;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Landroidx/compose/runtime/LazyValueHolder;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 v1, 0x7

    .line 26
    invoke-direct {v0, v1}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 35
    .line 36
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    sput-object v1, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 49
    .line 50
    return-void
.end method

.method public static final KoinApplication(Lokhttp3/ConnectionPool;Lorg/koin/core/logger/Level;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x228e1aff

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x4

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    or-int/2addr v0, p4

    .line 21
    or-int/lit8 v0, v0, 0x30

    .line 22
    .line 23
    and-int/lit16 v3, v0, 0x93

    .line 24
    .line 25
    const/16 v4, 0x92

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x1

    .line 29
    if-eq v3, v4, :cond_1

    .line 30
    .line 31
    move v3, v6

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v3, v5

    .line 34
    :goto_1
    and-int/2addr v0, v6

    .line 35
    invoke-virtual {p3, v0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_b

    .line 40
    .line 41
    sget-object p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 42
    .line 43
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_a

    .line 54
    .line 55
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    or-int/2addr v0, v3

    .line 64
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 69
    .line 70
    sget-object v7, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    if-ne v3, v4, :cond_3

    .line 75
    .line 76
    :cond_2
    new-instance v3, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;

    .line 77
    .line 78
    const/4 v0, 0x7

    .line 79
    invoke-direct {v3, v0, p1, v7, p0}, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance p1, Lokhttp3/ConnectionPool;

    .line 91
    .line 92
    invoke-direct {p1, v3}, Lokhttp3/ConnectionPool;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-nez p1, :cond_4

    .line 104
    .line 105
    if-ne v0, v4, :cond_6

    .line 106
    .line 107
    :cond_4
    new-instance v0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    .line 108
    .line 109
    sget-object p1, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 110
    .line 111
    if-nez p1, :cond_5

    .line 112
    .line 113
    new-instance p1, Lorg/koin/core/KoinApplication;

    .line 114
    .line 115
    invoke-direct {p1}, Lorg/koin/core/KoinApplication;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget-object v3, p1, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    .line 122
    .line 123
    invoke-virtual {v3}, Lorg/koin/core/Koin;->createEagerInstances()V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    const/4 p1, 0x0

    .line 128
    :goto_2
    invoke-direct {v0, p1}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;-><init>(Lorg/koin/core/KoinApplication;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    check-cast v0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;

    .line 135
    .line 136
    iget-object p1, v0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koin:Lorg/koin/core/Koin;

    .line 137
    .line 138
    if-eqz p1, :cond_9

    .line 139
    .line 140
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-ne v0, v4, :cond_7

    .line 145
    .line 146
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    invoke-direct {v0, v5}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 155
    .line 156
    new-instance v3, Lorg/koin/compose/ComposeContextWrapper;

    .line 157
    .line 158
    invoke-direct {v3, p1, v0}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lorg/koin/compose/KoinApplicationKt;->LocalKoinApplicationContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 162
    .line 163
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object p1, p1, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p1, Lorg/koin/core/registry/ScopeRegistry;

    .line 170
    .line 171
    iget-object p1, p1, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 172
    .line 173
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    if-ne v3, v4, :cond_8

    .line 178
    .line 179
    new-instance v3, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    invoke-direct {v3, v2}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_8
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 188
    .line 189
    new-instance v2, Lorg/koin/compose/ComposeContextWrapper;

    .line 190
    .line 191
    invoke-direct {v2, p1, v3}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 192
    .line 193
    .line 194
    sget-object p1, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 195
    .line 196
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    new-array v1, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 201
    .line 202
    aput-object v0, v1, v5

    .line 203
    .line 204
    aput-object p1, v1, v6

    .line 205
    .line 206
    const/16 p1, 0x38

    .line 207
    .line 208
    invoke-static {v1, p2, p3, p1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 209
    .line 210
    .line 211
    move-object v2, v7

    .line 212
    goto :goto_3

    .line 213
    :cond_9
    const-string p0, "Koin context has not been initialized in rememberKoinApplication"

    .line 214
    .line 215
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_a
    const-string p0, "Android ApplicationContext not found in current Compose context!"

    .line 220
    .line 221
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_b
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 226
    .line 227
    .line 228
    move-object v2, p1

    .line 229
    :goto_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    if-eqz p1, :cond_c

    .line 234
    .line 235
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda2;

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    move-object v1, p0

    .line 239
    move-object v3, p2

    .line 240
    move v4, p4

    .line 241
    invoke-direct/range {v0 .. v5}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 242
    .line 243
    .line 244
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 245
    .line 246
    :cond_c
    return-void
.end method

.method public static final currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;
    .locals 6

    .line 1
    const-string v0, "Can\'t get Koin scope. Scope \'"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 5
    .line 6
    move-object v3, p0

    .line 7
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    check-cast v4, Lorg/koin/compose/ComposeContextWrapper;

    .line 14
    .line 15
    iget-object v5, v4, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 16
    .line 17
    if-nez v5, :cond_1

    .line 18
    .line 19
    iget-object v5, v4, Lorg/koin/compose/ComposeContextWrapper;->setValue:Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v5, v1

    .line 29
    :goto_0
    iput-object v5, v4, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 30
    .line 31
    :cond_1
    iget-object v4, v4, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 32
    .line 33
    if-eqz v4, :cond_5

    .line 34
    .line 35
    check-cast v4, Lorg/koin/core/scope/Scope;

    .line 36
    .line 37
    iget-boolean v5, v4, Lorg/koin/core/scope/Scope;->_closed:Z

    .line 38
    .line 39
    if-eqz v5, :cond_4

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lorg/koin/compose/ComposeContextWrapper;

    .line 46
    .line 47
    iget-object v3, v2, Lorg/koin/compose/ComposeContextWrapper;->setValue:Lkotlin/jvm/functions/Function0;

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move-object v3, v1

    .line 57
    :goto_1
    iput-object v3, v2, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, Lorg/koin/core/scope/Scope;

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    return-object v3

    .line 64
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, "\' is closed"

    .line 75
    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    return-object v4

    .line 94
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    const-string v2, "Can\'t retrieve Koin context value. Ensure Koin is properly initialized with startKoin() or KoinApplication."

    .line 97
    .line 98
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_2
    sget-object v2, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 103
    .line 104
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Lorg/koin/compose/ComposeContextWrapper;

    .line 111
    .line 112
    iget-object v2, p0, Lorg/koin/compose/ComposeContextWrapper;->setValue:Lkotlin/jvm/functions/Function0;

    .line 113
    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    move-object v2, v1

    .line 122
    :goto_3
    iput-object v2, p0, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v2, Lorg/koin/core/scope/Scope;

    .line 125
    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    return-object v2

    .line 129
    :cond_7
    const-string p0, "Can\'t get Koin scope due to error: "

    .line 130
    .line 131
    invoke-static {v0, p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v1
.end method
