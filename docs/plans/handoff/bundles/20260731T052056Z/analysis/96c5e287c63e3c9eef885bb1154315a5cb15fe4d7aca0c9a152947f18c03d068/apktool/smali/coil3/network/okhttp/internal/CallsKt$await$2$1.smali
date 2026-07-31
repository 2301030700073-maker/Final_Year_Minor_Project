.class public final Lcoil3/network/okhttp/internal/CallsKt$await$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public $this_await:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 9
    const/4 v0, 0x4

    iput v0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/wikipedia/search/StandardSearchResults;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lorg/wikipedia/search/SearchResultsViewModel;

    .line 17
    .line 18
    iget-object v0, p1, Lorg/wikipedia/search/StandardSearchResults;->xSearchIdPrefix:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move-object v0, v3

    .line 25
    :cond_0
    iput-object v0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdPrefix:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p1, Lorg/wikipedia/search/StandardSearchResults;->xSearchIdFullText:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v3, v0

    .line 33
    :goto_0
    iput-object v3, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdFullText:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->_lexicalResultsForLogging:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 36
    .line 37
    iget-object p1, p1, Lorg/wikipedia/search/StandardSearchResults;->results:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lkotlin/enums/EnumEntries;

    .line 55
    .line 56
    check-cast p0, Lkotlin/enums/EnumEntriesList;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lkotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 63
    .line 64
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :pswitch_2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1;

    .line 79
    .line 80
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1;->val$errorReporter:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;

    .line 81
    .line 82
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;->reportCannotInferVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    .line 83
    .line 84
    .line 85
    move-object v1, v2

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string p0, "Argument for @NotNull parameter \'descriptor\' of kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1.invoke must not be null"

    .line 88
    .line 89
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-object v1

    .line 93
    :pswitch_3
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    .line 94
    .line 95
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor$1;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor$1;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;

    .line 103
    .line 104
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;->defaultType:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 105
    .line 106
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 111
    .line 112
    return-object p0

    .line 113
    :pswitch_4
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 114
    .line 115
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 118
    .line 119
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInsModule()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;->memberScope:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/LazyScopeAdapter;

    .line 130
    .line 131
    if-eqz p0, :cond_5

    .line 132
    .line 133
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_BUILTINS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    .line 134
    .line 135
    invoke-virtual {p0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/LazyScopeAdapter;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-eqz p0, :cond_4

    .line 140
    .line 141
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 142
    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    move-object v1, p0

    .line 146
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v2, "Must be a class descriptor "

    .line 154
    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, ", but was "

    .line 162
    .line 163
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :cond_4
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    const-string p1, " is not found"

    .line 182
    .line 183
    const-string v0, "Built-in class "

    .line 184
    .line 185
    invoke-static {p0, p1, v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_2
    return-object v1

    .line 189
    :cond_5
    const/16 p0, 0xb

    .line 190
    .line 191
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->$$$reportNull$$$0(I)V

    .line 192
    .line 193
    .line 194
    throw v1

    .line 195
    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 204
    .line 205
    if-eqz p0, :cond_6

    .line 206
    .line 207
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->disallowIntercept:Z

    .line 208
    .line 209
    :cond_6
    return-object v2

    .line 210
    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    .line 211
    .line 212
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p0, Landroidx/compose/runtime/CancellationHandle;

    .line 215
    .line 216
    invoke-interface {p0}, Landroidx/compose/runtime/CancellationHandle;->cancel()V

    .line 217
    .line 218
    .line 219
    return-object v2

    .line 220
    :pswitch_7
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 221
    .line 222
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    .line 223
    .line 224
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 227
    .line 228
    sget-object v0, Landroidx/compose/foundation/text/BasicTextKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    .line 229
    .line 230
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    .line 235
    .line 236
    if-ne p1, v0, :cond_7

    .line 237
    .line 238
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->copy$foundation()V

    .line 239
    .line 240
    .line 241
    const/4 p0, 0x1

    .line 242
    goto :goto_3

    .line 243
    :cond_7
    const/4 p0, 0x0

    .line 244
    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    return-object p0

    .line 249
    :pswitch_8
    check-cast p1, Landroidx/compose/ui/graphics/Matrix;

    .line 250
    .line 251
    iget-object p1, p1, Landroidx/compose/ui/graphics/Matrix;->values:[F

    .line 252
    .line 253
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 256
    .line 257
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_8

    .line 262
    .line 263
    invoke-static {p0}, Landroidx/compose/ui/layout/RulerKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-interface {v0, p0, p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->transformFrom-EL8BTi8(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V

    .line 268
    .line 269
    .line 270
    :cond_8
    return-object v2

    .line 271
    :pswitch_9
    check-cast p1, Ljava/lang/Throwable;

    .line 272
    .line 273
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->$this_await:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast p0, Lokhttp3/internal/connection/RealCall;

    .line 276
    .line 277
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 278
    .line 279
    .line 280
    return-object v2

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
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
