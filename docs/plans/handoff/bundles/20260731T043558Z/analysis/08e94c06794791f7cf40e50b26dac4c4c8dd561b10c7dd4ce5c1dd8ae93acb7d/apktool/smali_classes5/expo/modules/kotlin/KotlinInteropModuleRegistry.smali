.class public final Lexpo/modules/kotlin/KotlinInteropModuleRegistry;
.super Ljava/lang/Object;
.source "KotlinInteropModuleRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/KotlinInteropModuleRegistry$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinInteropModuleRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinInteropModuleRegistry.kt\nexpo/modules/kotlin/KotlinInteropModuleRegistry\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,114:1\n14#2:115\n25#2:116\n14#2:131\n25#2:132\n14#2:147\n25#2:148\n14#2:164\n25#2:165\n27#3,3:117\n31#3:130\n27#3,3:133\n31#3:146\n27#3,3:149\n31#3:163\n27#3,3:166\n31#3:175\n1368#4:120\n1454#4,2:121\n1456#4,3:127\n1368#4:136\n1454#4,2:137\n1456#4,3:143\n808#4,11:152\n1557#4:169\n1628#4,3:170\n1863#4,2:173\n126#5:123\n153#5,3:124\n126#5:139\n153#5,3:140\n*S KotlinDebug\n*F\n+ 1 KotlinInteropModuleRegistry.kt\nexpo/modules/kotlin/KotlinInteropModuleRegistry\n*L\n44#1:115\n44#1:116\n58#1:131\n58#1:132\n74#1:147\n74#1:148\n87#1:164\n87#1:165\n44#1:117,3\n44#1:130\n58#1:133,3\n58#1:146\n74#1:149,3\n74#1:163\n87#1:166,3\n87#1:175\n46#1:120\n46#1:121,2\n46#1:127,3\n59#1:136\n59#1:137,2\n59#1:143,3\n75#1:152,11\n89#1:169\n89#1:170,3\n90#1:173,2\n47#1:123\n47#1:124,3\n60#1:139\n60#1:140,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J&\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u0014\u0010\u001f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030!0 J\u001e\u0010\"\u001a\u001a\u0012\u0004\u0012\u00020\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010#0#J\"\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0 2\u0014\u0010&\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030!0 J\u0014\u0010\'\u001a\u00020\u00182\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020%0 J\u0006\u0010)\u001a\u00020\u0018J\u0006\u0010*\u001a\u00020\u0018J\u0006\u0010+\u001a\u00020\u0018J\u000e\u0010,\u001a\u00020\u00182\u0006\u0010-\u001a\u00020.R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006/"
    }
    d2 = {
        "Lexpo/modules/kotlin/KotlinInteropModuleRegistry;",
        "",
        "modulesProvider",
        "Lexpo/modules/kotlin/ModulesProvider;",
        "legacyModuleRegistry",
        "Lexpo/modules/core/ModuleRegistry;",
        "reactContext",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "getAppContext",
        "()Lexpo/modules/kotlin/AppContext;",
        "registry",
        "Lexpo/modules/kotlin/ModuleRegistry;",
        "getRegistry",
        "()Lexpo/modules/kotlin/ModuleRegistry;",
        "hasModule",
        "",
        "name",
        "",
        "callMethod",
        "",
        "moduleName",
        "method",
        "arguments",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "exportViewManagers",
        "",
        "Lcom/facebook/react/uimanager/ViewManager;",
        "viewManagersMetadata",
        "",
        "extractViewManagersDelegateHolders",
        "Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;",
        "viewManagers",
        "updateModuleHoldersInViewManagers",
        "viewWrapperHolders",
        "onDestroy",
        "installJSIInterop",
        "emitOnCreate",
        "setLegacyModulesProxy",
        "proxyModule",
        "Lexpo/modules/adapters/react/NativeModulesProxy;",
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
.field private final appContext:Lexpo/modules/kotlin/AppContext;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/ModulesProvider;",
            "Lexpo/modules/core/ModuleRegistry;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modulesProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyModuleRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lexpo/modules/kotlin/AppContext;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/kotlin/AppContext;-><init>(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    return-void
.end method

.method public static final synthetic access$getRegistry(Lexpo/modules/kotlin/KotlinInteropModuleRegistry;)Lexpo/modules/kotlin/ModuleRegistry;
    .locals 0

    .line 18
    invoke-direct {p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object p0

    return-object p0
.end method

.method private final getRegistry()Lexpo/modules/kotlin/ModuleRegistry;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final callMethod(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lexpo/modules/kotlin/Promise;)V
    .locals 2

    const-string v0, "Trying to call \'"

    const-string v1, "moduleName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "method"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "arguments"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promise"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v1

    invoke-virtual {v1, p1}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "toArray(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2, p1, p4}, Lexpo/modules/kotlin/ModuleHolder;->call(Ljava/lang/String;[Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    goto :goto_0

    .line 34
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' on the non-existing module \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 39
    new-instance p2, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {p2, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p4, p2}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-interface {p4, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    :goto_0
    return-void
.end method

.method public final emitOnCreate()V
    .locals 1

    .line 107
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->onCreate()V

    return-void
.end method

.method public final exportViewManagers()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager<",
            "**>;>;"
        }
    .end annotation

    .line 116
    const-string v0, "[ExpoModulesCore] KotlinInteropModuleRegistry.exportViewManagers"

    .line 117
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 45
    :try_start_0
    invoke-static {p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->access$getRegistry(Lexpo/modules/kotlin/KotlinInteropModuleRegistry;)Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 121
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 122
    check-cast v2, Lexpo/modules/kotlin/ModuleHolder;

    .line 47
    invoke-virtual {v2}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object v3

    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 124
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    .line 48
    new-instance v7, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    const-string v8, "DEFAULT_MODULE_VIEW"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    invoke-direct {v7, v2, v5, v6}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;-><init>(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/views/ViewManagerDefinition;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getViewManagerType()Lexpo/modules/kotlin/views/ViewManagerType;

    move-result-object v5

    sget-object v6, Lexpo/modules/kotlin/KotlinInteropModuleRegistry$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewManagerType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 51
    new-instance v5, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;

    invoke-direct {v5, v7}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;-><init>(Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;)V

    goto :goto_3

    .line 49
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 50
    :cond_2
    new-instance v5, Lexpo/modules/kotlin/views/SimpleViewManagerWrapper;

    invoke-direct {v5, v7}, Lexpo/modules/kotlin/views/SimpleViewManagerWrapper;-><init>(Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;)V

    .line 125
    :goto_3
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 123
    check-cast v4, Ljava/lang/Iterable;

    .line 127
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_0

    .line 129
    :cond_4
    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final extractViewManagersDelegateHolders(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/react/uimanager/ViewManager<",
            "**>;>;)",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;",
            ">;"
        }
    .end annotation

    const-string v0, "viewManagers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const-string v0, "[ExpoModulesCore] KotlinInteropModuleRegistry.extractViewManagersDelegateHolders"

    .line 149
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 75
    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 161
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final getAppContext()Lexpo/modules/kotlin/AppContext;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    return-object v0
.end method

.method public final hasModule(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/ModuleRegistry;->hasModule(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final installJSIInterop()V
    .locals 1

    .line 103
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->installJSIInterop()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 98
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->onDestroy$expo_modules_core_release()V

    .line 99
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "\u2705 KotlinInteropModuleRegistry was destroyed"

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final setLegacyModulesProxy(Lexpo/modules/adapters/react/NativeModulesProxy;)V
    .locals 2

    const-string v0, "proxyModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/AppContext;->setLegacyModulesProxyHolder$expo_modules_core_release(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public final updateModuleHoldersInViewManagers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "viewWrapperHolders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    const-string v0, "[ExpoModulesCore] KotlinInteropModuleRegistry.updateModuleHoldersInViewManagers"

    .line 166
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 88
    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 170
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 171
    check-cast v1, Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;

    .line 89
    invoke-interface {v1}, Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v1

    .line 171
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 169
    check-cast v0, Ljava/lang/Iterable;

    .line 173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    .line 91
    invoke-static {p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->access$getRegistry(Lexpo/modules/kotlin/KotlinInteropModuleRegistry;)Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v1

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getModuleHolder$expo_modules_core_release()Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->setModuleHolder$expo_modules_core_release(Lexpo/modules/kotlin/ModuleHolder;)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getModuleHolder$expo_modules_core_release()Lexpo/modules/kotlin/ModuleHolder;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot update the module holder for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final viewManagersMetadata()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 132
    const-string v0, "[ExpoModulesCore] KotlinInteropModuleRegistry.viewManagersMetadata"

    .line 133
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-static {p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->access$getRegistry(Lexpo/modules/kotlin/KotlinInteropModuleRegistry;)Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 137
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 138
    check-cast v2, Lexpo/modules/kotlin/ModuleHolder;

    .line 60
    invoke-virtual {v2}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object v3

    .line 139
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 140
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    .line 61
    const-string v7, "DEFAULT_MODULE_VIEW"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    invoke-virtual {v2}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 64
    :cond_0
    invoke-virtual {v2}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 67
    :goto_2
    const-string v7, "propsNames"

    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getPropsNames()Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 141
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 139
    check-cast v4, Ljava/lang/Iterable;

    .line 143
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_0

    .line 145
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 136
    check-cast v1, Ljava/lang/Iterable;

    .line 69
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
