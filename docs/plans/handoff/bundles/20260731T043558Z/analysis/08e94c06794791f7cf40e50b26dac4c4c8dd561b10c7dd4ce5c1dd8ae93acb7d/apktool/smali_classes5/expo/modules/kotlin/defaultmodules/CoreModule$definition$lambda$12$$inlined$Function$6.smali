.class public final Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$6;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/defaultmodules/CoreModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,611:1\n18#2:612\n57#3,10:613\n70#3,2:629\n68#3,2:631\n72#3,4:637\n79#3,2:642\n78#3:644\n1279#4,2:623\n1293#4,4:625\n8506#5,2:633\n9188#5,2:635\n9191#5:641\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8\n+ 2 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n*L\n140#1:612\n66#2:623,2\n66#2:625,4\n71#2:633,2\n71#2:635,2\n71#2:641\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$6;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$6;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 139
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    .line 141
    check-cast p1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    .line 613
    iget-object v3, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$6;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    invoke-virtual {v3}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v3

    invoke-virtual {v3, v1}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 616
    :cond_0
    invoke-virtual {v1}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object v1

    if-nez p1, :cond_1

    const-string p1, "DEFAULT_MODULE_VIEW"

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 620
    :cond_2
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getProps$expo_modules_core_release()Ljava/util/Map;

    move-result-object v1

    .line 621
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 623
    new-instance v4, Ljava/util/LinkedHashMap;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 625
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 626
    move-object v7, v4

    check-cast v7, Ljava/util/Map;

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 622
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 626
    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 628
    :cond_3
    check-cast v4, Ljava/util/Map;

    .line 632
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getCallbacksDefinition()Lexpo/modules/kotlin/views/CallbacksDefinition;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 629
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/CallbacksDefinition;->getNames()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 633
    array-length v1, p1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-static {v1, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 634
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .line 635
    array-length v1, p1

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_4

    aget-object v6, p1, v5

    .line 637
    invoke-static {v6}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapperKt;->normalizeEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 639
    const-string v8, "registrationName"

    invoke-static {v8, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 638
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 636
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    .line 642
    new-array p1, p1, [Lkotlin/Pair;

    const-string v1, "validAttributes"

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    .line 643
    const-string v0, "directEventTypes"

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v2

    .line 644
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    :goto_2
    return-object v3
.end method
