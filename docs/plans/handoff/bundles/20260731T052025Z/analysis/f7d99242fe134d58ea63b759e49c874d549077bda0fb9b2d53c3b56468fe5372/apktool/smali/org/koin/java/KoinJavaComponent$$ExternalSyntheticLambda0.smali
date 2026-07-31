.class public final synthetic Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 12

    .line 1
    iget p0, p0, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "KoinApplication has not been started"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    move-object v2, p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-object v2

    .line 20
    :pswitch_0
    sget-object p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 25
    .line 26
    iget-object v2, p0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    return-object v2

    .line 33
    :pswitch_1
    new-instance p0, Lorg/koin/compose/ComposeContextWrapper;

    .line 34
    .line 35
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    new-instance v1, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/16 v2, 0x10

    .line 42
    .line 43
    invoke-direct {v1, v2}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0, v1}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    move-object v2, p0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    return-object v2

    .line 55
    :pswitch_2
    new-instance p0, Lorg/koin/compose/ComposeContextWrapper;

    .line 56
    .line 57
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 62
    .line 63
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 64
    .line 65
    new-instance v1, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/16 v2, 0xf

    .line 68
    .line 69
    invoke-direct {v1, v2}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v0, v1}, Lorg/koin/compose/ComposeContextWrapper;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    move-object v2, p0

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_3
    return-object v2

    .line 81
    :pswitch_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v0, "should not be used in favor of getKoin()"

    .line 84
    .line 85
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "should not be used in favor of LocalKoinScopeContext"

    .line 92
    .line 93
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :pswitch_5
    const-string p0, ""

    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_6
    sget-object p0, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 101
    .line 102
    sget-object p0, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->INSTANCE:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_7
    sget-object p0, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->DefaultComposeEnvironment:Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_8
    sget-object p0, Lorg/jetbrains/compose/resources/ImageResourcesKt;->emptyImageVector$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 109
    .line 110
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_9
    sget-object p0, Lorg/jetbrains/compose/resources/ImageResourcesKt;->emptySvgPainter$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 118
    .line 119
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    check-cast p0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_a
    new-instance p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 127
    .line 128
    sget-object v0, Lorg/jetbrains/compose/resources/ImageResourcesKt;->emptyImageBitmap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 129
    .line 130
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 135
    .line 136
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 137
    .line 138
    .line 139
    return-object p0

    .line 140
    :pswitch_b
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 141
    .line 142
    const/4 v10, 0x0

    .line 143
    const/16 v11, 0xe0

    .line 144
    .line 145
    const-string v2, "emptyImageVector"

    .line 146
    .line 147
    const/high16 v3, 0x3f800000    # 1.0f

    .line 148
    .line 149
    const/high16 v5, 0x3f800000    # 1.0f

    .line 150
    .line 151
    const/high16 v6, 0x3f800000    # 1.0f

    .line 152
    .line 153
    const-wide/16 v7, 0x0

    .line 154
    .line 155
    const/4 v9, 0x0

    .line 156
    move v4, v3

    .line 157
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    return-object p0

    .line 165
    :pswitch_c
    const/4 p0, 0x1

    .line 166
    const/16 v1, 0x1c

    .line 167
    .line 168
    invoke-static {p0, p0, v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->ImageBitmap-x__-hDU$default(IIII)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_d
    sget-object p0, Lorg/jetbrains/compose/resources/ImageResourcesKt;->emptyImageBitmap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 174
    .line 175
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 180
    .line 181
    return-object p0

    .line 182
    :pswitch_e
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 183
    .line 184
    sget-object v1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;

    .line 185
    .line 186
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 187
    .line 188
    const-string v2, "net.thunderbird.feature.thundermail.navigation.ThundermailRoute.SignInWithThundermail"

    .line 189
    .line 190
    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    .line 191
    .line 192
    .line 193
    return-object p0

    .line 194
    :pswitch_f
    const-class p0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 195
    .line 196
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 201
    .line 202
    if-eqz v0, :cond_4

    .line 203
    .line 204
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 205
    .line 206
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 207
    .line 208
    invoke-virtual {v0, p0, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    goto :goto_4

    .line 213
    :cond_4
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_4
    return-object v2

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
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
