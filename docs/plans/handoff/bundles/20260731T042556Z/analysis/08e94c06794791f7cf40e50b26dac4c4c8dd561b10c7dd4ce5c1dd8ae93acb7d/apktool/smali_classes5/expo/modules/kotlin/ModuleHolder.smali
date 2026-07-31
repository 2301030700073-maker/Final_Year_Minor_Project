.class public final Lexpo/modules/kotlin/ModuleHolder;
.super Ljava/lang/Object;
.source "ModuleHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lexpo/modules/kotlin/modules/Module;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleHolder.kt\nexpo/modules/kotlin/ModuleHolder\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 6 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 7 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 9 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,178:1\n14#2:179\n25#2:180\n14#2:187\n25#2:188\n14#2:195\n25#2:196\n14#2:213\n25#2:214\n14#2:218\n25#2:219\n27#3,3:181\n31#3:186\n27#3,3:189\n31#3:194\n27#3,3:197\n31#3:202\n27#3,3:215\n27#3,3:220\n31#3:227\n31#3:228\n216#4,2:184\n216#4,2:200\n32#5,2:192\n5#6,4:203\n11#7,6:207\n1863#8:223\n1864#8:226\n37#9,2:224\n*S KotlinDebug\n*F\n+ 1 ModuleHolder.kt\nexpo/modules/kotlin/ModuleHolder\n*L\n96#1:179\n96#1:180\n108#1:187\n108#1:188\n116#1:195\n116#1:196\n41#1:213\n41#1:214\n68#1:218\n68#1:219\n96#1:181,3\n96#1:186\n108#1:189,3\n108#1:194\n116#1:197,3\n116#1:202\n41#1:215,3\n68#1:220,3\n68#1:227\n41#1:228\n103#1:184,2\n119#1:200,2\n111#1:192,2\n128#1:203,4\n128#1:207,6\n69#1:223\n69#1:226\n83#1:224,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J(\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J+\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u000f2\u000e\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030&2\u0006\u0010\'\u001a\u00020(\u00a2\u0006\u0002\u0010)J%\u0010*\u001a\u0004\u0018\u00010\u00032\u0006\u0010$\u001a\u00020\u000f2\u000e\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030&\u00a2\u0006\u0002\u0010+J\u000e\u0010,\u001a\u00020\u001d2\u0006\u0010-\u001a\u00020.J!\u0010,\u001a\u00020\u001d\"\u0004\u0008\u0001\u0010/2\u0006\u0010-\u001a\u00020.2\u0006\u00100\u001a\u0002H/\u00a2\u0006\u0002\u00101J/\u0010,\u001a\u00020\u001d\"\u0004\u0008\u0001\u00102\"\u0004\u0008\u0002\u0010/2\u0006\u0010-\u001a\u00020.2\u0006\u00103\u001a\u0002H22\u0006\u00100\u001a\u0002H/\u00a2\u0006\u0002\u00104J\u0006\u00105\u001a\u00020\u001dR\u0013\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00158FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0019\u0010\u0017\u00a8\u00066"
    }
    d2 = {
        "Lexpo/modules/kotlin/ModuleHolder;",
        "T",
        "Lexpo/modules/kotlin/modules/Module;",
        "",
        "module",
        "<init>",
        "(Lexpo/modules/kotlin/modules/Module;)V",
        "getModule",
        "()Lexpo/modules/kotlin/modules/Module;",
        "Lexpo/modules/kotlin/modules/Module;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "getDefinition",
        "()Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "wasInitialized",
        "",
        "safeJSObject",
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        "getSafeJSObject",
        "()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        "jsObject",
        "getJsObject",
        "jsObject$delegate",
        "Lkotlin/Lazy;",
        "attachPrimitives",
        "",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        "moduleDecorator",
        "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
        "call",
        "methodName",
        "args",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Ljava/lang/String;[Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "callSync",
        "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;",
        "post",
        "eventName",
        "Lexpo/modules/kotlin/events/EventName;",
        "Payload",
        "payload",
        "(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V",
        "Sender",
        "sender",
        "(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V",
        "registerContracts",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

.field private final jsObject$delegate:Lkotlin/Lazy;

.field private final module:Lexpo/modules/kotlin/modules/Module;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private wasInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$2JyXghbPklilKDHtcp33c7DxSIQ(Lexpo/modules/kotlin/ModuleHolder;)Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/ModuleHolder;->jsObject_delegate$lambda$4(Lexpo/modules/kotlin/ModuleHolder;)Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lexpo/modules/kotlin/modules/Module;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/ModuleHolder;->module:Lexpo/modules/kotlin/modules/Module;

    .line 22
    invoke-virtual {p1}, Lexpo/modules/kotlin/modules/Module;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/ModuleHolder;->definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    .line 38
    new-instance p1, Lexpo/modules/kotlin/ModuleHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/kotlin/ModuleHolder$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/ModuleHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/ModuleHolder;->jsObject$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$attachPrimitives(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/kotlin/ModuleHolder;->attachPrimitives(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    return-void
.end method

.method private final attachPrimitives(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V
    .locals 2

    .line 180
    const-string v0, "[ExpoModulesCore] Exporting constants"

    .line 181
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 97
    :try_start_0
    invoke-virtual {p2}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getLegacyConstantsProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 98
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/facebook/react/bridge/NativeMap;

    invoke-virtual {p3, v0}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerConstants(Lcom/facebook/react/bridge/NativeMap;)V

    .line 102
    invoke-virtual {p2}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getConstants()Ljava/util/Map;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/objects/ConstantComponent;

    .line 104
    invoke-virtual {v1, p3}, Lexpo/modules/kotlin/objects/ConstantComponent;->attachToJSObject(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 186
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 188
    const-string v0, "[ExpoModulesCore] Attaching functions"

    .line 189
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 110
    :try_start_1
    invoke-virtual {p2}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getFunctions()Lexpo/modules/kotlin/ConcatIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 192
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/functions/AnyFunction;

    .line 112
    invoke-virtual {v1, p1, p3, p4}, Lexpo/modules/kotlin/functions/AnyFunction;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_1
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 196
    const-string p4, "[ExpoModulesCore] Attaching properties"

    .line 197
    invoke-static {p4}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 118
    :try_start_2
    invoke-virtual {p2}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getProperties()Ljava/util/Map;

    move-result-object p2

    .line 200
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lexpo/modules/kotlin/objects/PropertyComponent;

    .line 120
    invoke-virtual {p4, p1, p3}, Lexpo/modules/kotlin/objects/PropertyComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    goto :goto_2

    .line 122
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1

    :catchall_1
    move-exception p1

    .line 194
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1

    :catchall_2
    move-exception p1

    .line 186
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method private static final jsObject_delegate$lambda$4(Lexpo/modules/kotlin/ModuleHolder;)Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 14

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lexpo/modules/kotlin/ModuleHolder;->wasInitialized:Z

    .line 41
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jsObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ExpoModulesCore] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v1

    .line 46
    new-instance v10, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v10, v1}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 47
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v2

    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v2, v10, v3}, Lexpo/modules/kotlin/ModuleHolder;->access$attachPrimitives(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    .line 50
    const-string v3, "__expo_module_name__"

    const/4 v11, 0x0

    new-array v5, v11, [Lexpo/modules/kotlin/jni/ExpectedType;

    new-instance v2, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$1;

    invoke-direct {v2, p0}, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$1;-><init>(Lexpo/modules/kotlin/ModuleHolder;)V

    move-object v6, v2

    check-cast v6, Lexpo/modules/kotlin/jni/JNIFunctionBody;

    new-array v8, v11, [Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v9}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerProperty(Ljava/lang/String;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V

    .line 52
    new-instance v2, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v2, v1}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 53
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;

    invoke-direct {v4, v1, v2, p0, v0}, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    new-instance v5, Lexpo/modules/kotlin/ModuleHolder$sam$java_util_function_BiConsumer$0;

    invoke-direct {v5, v4}, Lexpo/modules/kotlin/ModuleHolder$sam$java_util_function_BiConsumer$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Ljava/util/function/BiConsumer;

    invoke-interface {v3, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 66
    const-string v3, "ViewPrototypes"

    invoke-virtual {v10, v3, v2}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerObject(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 219
    const-string v2, "[ExpoModulesCore] Attaching classes"

    .line 220
    invoke-static {v2}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getClassData()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 223
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;

    .line 70
    new-instance v4, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v4, v1}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 72
    invoke-virtual {v2}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v3

    invoke-virtual {v2}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v3, v4, v5}, Lexpo/modules/kotlin/ModuleHolder;->access$attachPrimitives(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getConstructor()Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getOwnerType()Lkotlin/reflect/KType;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v6

    :goto_1
    instance-of v7, v5, Lkotlin/reflect/KClass;

    if-eqz v7, :cond_1

    check-cast v5, Lkotlin/reflect/KClass;

    goto :goto_2

    :cond_1
    move-object v5, v6

    :goto_2
    if-eqz v5, :cond_2

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v5

    move-object v6, v5

    .line 78
    :cond_2
    invoke-virtual {v2}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getTakesOwner$expo_modules_core_release()Z

    move-result v7

    .line 82
    invoke-virtual {v2}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->isSharedRef()Z

    move-result v8

    .line 83
    invoke-virtual {v3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getCppRequiredTypes$expo_modules_core_release()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    .line 225
    new-array v13, v11, [Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-interface {v9, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 84
    invoke-virtual {v2}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getJNIFunctionBody$expo_modules_core_release(Ljava/lang/String;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/jni/JNIFunctionBody;

    move-result-object v13

    move-object v2, v10

    move-object v3, v5

    move v5, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v13

    .line 77
    invoke-virtual/range {v2 .. v9}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerClass(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;ZLjava/lang/Class;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V

    goto :goto_0

    .line 87
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 89
    new-instance v0, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v10}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->decorate(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception p0

    .line 227
    :try_start_3
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 228
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method


# virtual methods
.method public final call(Ljava/lang/String;[Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 3

    const-string v0, "Cannot call a "

    const-string v1, "methodName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promise"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    :try_start_0
    iget-object v1, p0, Lexpo/modules/kotlin/ModuleHolder;->definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    if-eqz v1, :cond_1

    .line 134
    instance-of v2, v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    if-eqz v2, :cond_0

    .line 135
    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->module:Lexpo/modules/kotlin/modules/Module;

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v1, p2, p3, v0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->callUserImplementation$expo_modules_core_release([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/AppContext;)V

    .line 139
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " method in test context"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 132
    :cond_1
    new-instance p2, Lexpo/modules/kotlin/exception/MethodNotFoundException;

    invoke-direct {p2}, Lexpo/modules/kotlin/exception/MethodNotFoundException;-><init>()V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p2

    .line 209
    instance-of p3, p2, Lexpo/modules/kotlin/exception/CodedException;

    if-nez p3, :cond_3

    .line 210
    instance-of p3, p2, Lexpo/modules/core/errors/CodedException;

    if-eqz p3, :cond_2

    new-instance p3, Lexpo/modules/kotlin/exception/CodedException;

    check-cast p2, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {p2}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lexpo/modules/core/errors/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lexpo/modules/core/errors/CodedException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p3, v0, v1, p2}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 211
    :cond_2
    new-instance p3, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {p3, p2}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast p3, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 209
    :cond_3
    move-object p3, p2

    check-cast p3, Lexpo/modules/kotlin/exception/CodedException;

    .line 129
    :goto_0
    new-instance p2, Lexpo/modules/kotlin/exception/FunctionCallException;

    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0, p3}, Lexpo/modules/kotlin/exception/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast p2, Ljava/lang/Throwable;

    .line 206
    throw p2
.end method

.method public final callSync(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getSyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 150
    invoke-static {p1, p2, v1, v0, v1}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->callUserImplementation$default(Lexpo/modules/kotlin/functions/SyncFunctionComponent;[Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    new-instance p1, Lexpo/modules/kotlin/exception/MethodNotFoundException;

    invoke-direct {p1}, Lexpo/modules/kotlin/exception/MethodNotFoundException;-><init>()V

    throw p1
.end method

.method public final getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    return-object v0
.end method

.method public final getJsObject()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->jsObject$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    return-object v0
.end method

.method public final getModule()Lexpo/modules/kotlin/modules/Module;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->module:Lexpo/modules/kotlin/modules/Module;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSafeJSObject()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 1

    .line 29
    iget-boolean v0, p0, Lexpo/modules/kotlin/ModuleHolder;->wasInitialized:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder;->getJsObject()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final post(Lexpo/modules/kotlin/events/EventName;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/events/EventListener;

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    instance-of v0, p1, Lexpo/modules/kotlin/events/BasicEventListener;

    if-eqz v0, :cond_1

    check-cast p1, Lexpo/modules/kotlin/events/BasicEventListener;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lexpo/modules/kotlin/events/BasicEventListener;->call()V

    :cond_2
    return-void
.end method

.method public final post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Payload:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/events/EventName;",
            "TPayload;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/events/EventListener;

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    instance-of v0, p1, Lexpo/modules/kotlin/events/EventListenerWithPayload;

    if-eqz v0, :cond_1

    check-cast p1, Lexpo/modules/kotlin/events/EventListenerWithPayload;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lexpo/modules/kotlin/events/EventListenerWithPayload;->call(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Sender:",
            "Ljava/lang/Object;",
            "Payload:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/events/EventName;",
            "TSender;TPayload;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/events/EventListener;

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    instance-of v0, p1, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;

    if-eqz v0, :cond_1

    check-cast p1, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final registerContracts()V
    .locals 8

    .line 171
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleHolder;->definition:Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getRegisterContracts()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lexpo/modules/kotlin/ModuleHolder;->module:Lexpo/modules/kotlin/modules/Module;

    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lexpo/modules/kotlin/ModuleHolder$registerContracts$1$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p0, v3}, Lexpo/modules/kotlin/ModuleHolder$registerContracts$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/ModuleHolder;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
