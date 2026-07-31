.class public final synthetic Landroidx/work/Worker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/Worker$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 7
    iput p1, p0, Landroidx/work/Worker$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Landroidx/work/Worker$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object p0, Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;->INSTANCE:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    sget-object p0, Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;->Default:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    new-instance p0, Landroidx/work/impl/AutoMigration_14_15;

    .line 19
    .line 20
    invoke-direct {p0, v3}, Landroidx/work/impl/AutoMigration_14_15;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_2
    :try_start_0
    sget-object p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->getThreadSessionMethod$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/reflect/Method;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    const-string v0, "beginTransaction"

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    new-array v1, v1, [Ljava/lang/Class;

    .line 44
    .line 45
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    aput-object v5, v1, v6

    .line 49
    .line 50
    const-class v6, Landroid/database/sqlite/SQLiteTransactionListener;

    .line 51
    .line 52
    aput-object v6, v1, v3

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    aput-object v5, v1, v3

    .line 56
    .line 57
    const-class v3, Landroid/os/CancellationSignal;

    .line 58
    .line 59
    aput-object v3, v1, v2

    .line 60
    .line 61
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :catchall_0
    :cond_0
    return-object v4

    .line 66
    :pswitch_3
    :try_start_1
    const-class p0, Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    .line 68
    const-string v0, "getThreadSession"

    .line 69
    .line 70
    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    .line 77
    move-object v4, p0

    .line 78
    :catchall_1
    return-object v4

    .line 79
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v0, "CompositionLocal LocalSavedStateRegistryOwner not present"

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :pswitch_5
    return-object v1

    .line 88
    :pswitch_6
    new-instance p0, Landroid/os/Handler;

    .line 89
    .line 90
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_7
    return-object v4

    .line 99
    :pswitch_8
    new-instance p0, Lcoil3/network/NetworkHeaders$Builder;

    .line 100
    .line 101
    invoke-direct {p0, v2}, Lcoil3/network/NetworkHeaders$Builder;-><init>(I)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    const/16 v1, 0x1a

    .line 107
    .line 108
    invoke-direct {v0, v1}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 109
    .line 110
    .line 111
    const-class v1, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    .line 112
    .line 113
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 114
    .line 115
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p0, v1, v0}, Lcoil3/network/NetworkHeaders$Builder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcoil3/network/NetworkHeaders$Builder;->build()Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_9
    new-instance p0, Landroidx/lifecycle/SavedStateViewModelFactory;

    .line 128
    .line 129
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>()V

    .line 130
    .line 131
    .line 132
    return-object p0

    .line 133
    :pswitch_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    const-string v0, "CompositionLocal LocalLifecycleOwner not present"

    .line 136
    .line 137
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :pswitch_b
    sget-object p0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_c
    return-object v4

    .line 145
    :pswitch_d
    new-instance p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 146
    .line 147
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;-><init>(Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_e
    sget-object p0, Landroidx/compose/runtime/retain/LocalRetainedValuesStoreKt;->LocalRetainedValuesStore:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 157
    .line 158
    sget-object p0, Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;->INSTANCE:Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;

    .line 159
    .line 160
    return-object p0

    .line 161
    :pswitch_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    const-string v0, "CompositionLocal LocalHostDefaultProvider not present"

    .line 164
    .line 165
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :pswitch_10
    const-string p0, "Unexpected call to default provider"

    .line 170
    .line 171
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 172
    .line 173
    .line 174
    new-instance p0, Lcoil3/network/HttpException;

    .line 175
    .line 176
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :pswitch_11
    new-instance p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 181
    .line 182
    new-instance v1, Landroidx/compose/animation/core/Animatable;

    .line 183
    .line 184
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget-object v2, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 189
    .line 190
    const/16 v3, 0xc

    .line 191
    .line 192
    invoke-direct {v1, v0, v2, v4, v3}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    .line 193
    .line 194
    .line 195
    invoke-direct {p0, v1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;-><init>(Landroidx/compose/animation/core/Animatable;)V

    .line 196
    .line 197
    .line 198
    return-object p0

    .line 199
    :pswitch_12
    new-instance p0, Landroidx/compose/material3/Typography;

    .line 200
    .line 201
    invoke-direct {p0}, Landroidx/compose/material3/Typography;-><init>()V

    .line 202
    .line 203
    .line 204
    return-object p0

    .line 205
    :pswitch_13
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokensKt;->DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 206
    .line 207
    return-object p0

    .line 208
    :pswitch_14
    new-instance p0, Landroidx/compose/ui/unit/Dp;

    .line 209
    .line 210
    invoke-direct {p0, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 211
    .line 212
    .line 213
    return-object p0

    .line 214
    :pswitch_15
    new-instance p0, Landroidx/compose/material3/Shapes;

    .line 215
    .line 216
    invoke-direct {p0}, Landroidx/compose/material3/Shapes;-><init>()V

    .line 217
    .line 218
    .line 219
    return-object p0

    .line 220
    :pswitch_16
    new-instance p0, Landroidx/compose/material3/RippleConfiguration;

    .line 221
    .line 222
    const-wide/16 v0, 0x0

    .line 223
    .line 224
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/material3/RippleConfiguration;-><init>(JI)V

    .line 225
    .line 226
    .line 227
    return-object p0

    .line 228
    :pswitch_17
    sget-object p0, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;->INSTANCE:Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;

    .line 229
    .line 230
    return-object p0

    .line 231
    :pswitch_18
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 232
    .line 233
    return-object p0

    .line 234
    :pswitch_19
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 235
    .line 236
    const-string v0, "Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`"

    .line 237
    .line 238
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p0

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
