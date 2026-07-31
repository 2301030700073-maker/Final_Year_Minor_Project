.class public final Lexpo/modules/kotlin/objects/ObjectDefinitionBuilderKt;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilderKt\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,611:1\n581#1,11:612\n592#1,2:624\n595#1,3:627\n598#1,2:631\n601#1,9:634\n32#2:623\n33#2:626\n32#2,2:643\n216#3:630\n217#3:633\n216#3,2:645\n216#3,2:647\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilderKt\n*L\n577#1:612,11\n577#1:624,2\n577#1:627,3\n577#1:631,2\n577#1:634,9\n577#1:623\n577#1:626\n591#1:643,2\n577#1:630\n577#1:633\n597#1:645,2\n603#1:647,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a)\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a)\u0010\u0000\u001a\u00020\u0001*\u00020\u00082\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\t"
    }
    d2 = {
        "Object",
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;",
        "block",
        "Lkotlin/Function1;",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lexpo/modules/kotlin/modules/Module;",
        "expo-modules-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final Object(Lexpo/modules/kotlin/modules/Module;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/modules/Module;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    new-instance v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->buildObject()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getLegacyConstantsProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 583
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    .line 586
    new-instance v1, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v2

    invoke-direct {v1, v2}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 587
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/facebook/react/bridge/NativeMap;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerConstants(Lcom/facebook/react/bridge/NativeMap;)V

    .line 590
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getFunctions()Lexpo/modules/kotlin/ConcatIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 643
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "[Anonymous Object]"

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/functions/AnyFunction;

    .line 592
    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v2, v4, v1, v3}, Lexpo/modules/kotlin/functions/AnyFunction;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getProperties()Ljava/util/Map;

    move-result-object v0

    .line 645
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 597
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/objects/PropertyComponent;

    .line 598
    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lexpo/modules/kotlin/objects/PropertyComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    goto :goto_1

    .line 602
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getConstants()Ljava/util/Map;

    move-result-object p1

    .line 647
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/objects/ConstantComponent;

    .line 604
    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/objects/ConstantComponent;->attachToJSObject(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    goto :goto_2

    .line 607
    :cond_2
    new-instance p1, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object p0

    invoke-virtual {p0}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1, v1}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->decorate(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    return-object p1
.end method

.method public static final Object(Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 612
    new-instance v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->buildObject()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object p1

    .line 613
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getLegacyConstantsProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 614
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    .line 617
    new-instance v1, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v2

    invoke-direct {v1, v2}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 618
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/facebook/react/bridge/NativeMap;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerConstants(Lcom/facebook/react/bridge/NativeMap;)V

    .line 621
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getFunctions()Lexpo/modules/kotlin/ConcatIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 623
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "[Anonymous Object]"

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/functions/AnyFunction;

    .line 624
    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v2, v4, v1, v3}, Lexpo/modules/kotlin/functions/AnyFunction;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getProperties()Ljava/util/Map;

    move-result-object v0

    .line 630
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 629
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/objects/PropertyComponent;

    .line 631
    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lexpo/modules/kotlin/objects/PropertyComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    goto :goto_1

    .line 635
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getConstants()Ljava/util/Map;

    move-result-object p1

    .line 630
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 636
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/objects/ConstantComponent;

    .line 637
    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/objects/ConstantComponent;->attachToJSObject(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    goto :goto_2

    .line 640
    :cond_2
    new-instance p1, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object p0

    invoke-virtual {p0}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1, v1}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->decorate(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    return-object p1
.end method
