.class public final Lexpo/modules/updates/UpdatesModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "UpdatesModule.kt"

# interfaces
.implements Lexpo/modules/updates/events/IUpdatesEventManagerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/UpdatesModule$Companion;,
        Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdatesModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatesModule.kt\nexpo/modules/updates/UpdatesModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 9 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 10 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilderKt\n+ 11 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder\n+ 12 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 13 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 14 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 15 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n*L\n1#1,217:1\n61#2:218\n14#3:219\n25#3:220\n27#4,3:221\n31#4:356\n450#5,7:224\n457#5,3:232\n460#5:238\n463#5:240\n464#5:243\n468#5:245\n469#5:248\n127#5:329\n130#5,3:353\n1#6:231\n1#6:357\n11165#7:235\n11500#7,2:236\n11502#7:239\n11500#7,2:241\n11502#7:244\n37#8,2:246\n124#9,2:249\n260#10:251\n260#10:255\n260#10:259\n260#10:263\n262#10:267\n261#10:301\n260#10:325\n21#11,3:252\n21#11,3:256\n21#11,3:260\n21#11,3:264\n36#11:268\n39#11,3:298\n27#11:302\n30#11,3:322\n21#11,3:326\n181#12,8:269\n168#12:277\n158#12,8:280\n189#12:288\n168#12:289\n158#12,8:290\n171#12,7:303\n168#12:310\n158#12,8:313\n176#12:321\n171#12,7:330\n168#12:337\n158#12,8:340\n176#12:348\n143#13,2:278\n143#13,2:311\n143#13,2:338\n20#14:349\n13#15,3:350\n*S KotlinDebug\n*F\n+ 1 UpdatesModule.kt\nexpo/modules/updates/UpdatesModule\n*L\n42#1:218\n42#1:219\n42#1:220\n42#1:221,3\n42#1:356\n45#1:224,7\n45#1:232,3\n45#1:238\n45#1:240\n45#1:243\n45#1:245\n45#1:248\n161#1:329\n161#1:353,3\n45#1:231\n45#1:235\n45#1:236,2\n45#1:239\n45#1:241,2\n45#1:244\n45#1:246,2\n60#1:249,2\n64#1:251\n68#1:255\n102#1:259\n132#1:263\n137#1:267\n145#1:301\n149#1:325\n64#1:252,3\n68#1:256,3\n102#1:260,3\n132#1:264,3\n137#1:268\n137#1:298,3\n145#1:302\n145#1:322,3\n149#1:326,3\n137#1:269,8\n137#1:277\n137#1:280,8\n137#1:288\n137#1:289\n137#1:290,8\n145#1:303,7\n145#1:310\n145#1:313,8\n145#1:321\n161#1:330,7\n161#1:337\n161#1:340,8\n161#1:348\n137#1:278,2\n145#1:311,2\n161#1:338,2\n161#1:349\n161#1:350,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0002\u0012\u0013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0011H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/updates/UpdatesModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "Lexpo/modules/updates/events/IUpdatesEventManagerObserver;",
        "<init>",
        "()V",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "getLogger",
        "()Lexpo/modules/updates/logging/UpdatesLogger;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "onStateMachineContextEvent",
        "",
        "Lexpo/modules/updates/statemachine/UpdatesStateContext;",
        "Companion",
        "UpdatesConfigurationOverrideParam",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/updates/UpdatesModule$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/UpdatesModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/UpdatesModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/UpdatesModule;->Companion:Lexpo/modules/updates/UpdatesModule$Companion;

    .line 167
    const-string v0, "UpdatesModule"

    sput-object v0, Lexpo/modules/updates/UpdatesModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContext(Lexpo/modules/updates/UpdatesModule;)Landroid/content/Context;
    .locals 0

    .line 35
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesModule;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogger(Lexpo/modules/updates/UpdatesModule;)Lexpo/modules/updates/logging/UpdatesLogger;
    .locals 0

    .line 35
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesModule;->getLogger()Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object p0

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method private final getLogger()Lexpo/modules/updates/logging/UpdatesLogger;
    .locals 3

    .line 37
    new-instance v0, Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-direct {p0}, Lexpo/modules/updates/UpdatesModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "getFilesDir(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lexpo/modules/updates/logging/UpdatesLogger;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 13

    .line 42
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 218
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 43
    const-string v0, "ExpoUpdates"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 45
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-class v2, Lexpo/modules/updates/UpdatesJSEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 224
    invoke-static {v2}, Lkotlin/reflect/full/KClasses;->getPrimaryConstructor(Lkotlin/reflect/KClass;)Lkotlin/reflect/KFunction;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 225
    invoke-interface {v2}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 226
    invoke-interface {v2}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KParameter;

    invoke-interface {v2}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v6, Lexpo/modules/updates/UpdatesJSEvent;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 229
    invoke-static {v6}, Lkotlin/reflect/full/KClasses;->getDeclaredMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 230
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lkotlin/reflect/KProperty1;

    invoke-interface {v8}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_1
    move-object v7, v3

    :goto_0
    check-cast v7, Lkotlin/reflect/KProperty1;

    if-eqz v7, :cond_4

    .line 233
    invoke-interface {v7}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v2

    const-class v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    invoke-static {}, Lexpo/modules/updates/UpdatesJSEvent;->values()[Lexpo/modules/updates/UpdatesJSEvent;

    move-result-object v2

    .line 235
    new-instance v6, Ljava/util/ArrayList;

    array-length v8, v2

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 236
    array-length v8, v2

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v2, v9

    .line 237
    check-cast v10, Ljava/lang/Enum;

    .line 238
    invoke-interface {v7, v10}, Lkotlin/reflect/KProperty1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/String;

    .line 237
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 239
    :cond_2
    check-cast v6, Ljava/util/List;

    goto :goto_3

    .line 233
    :cond_3
    const-string v0, "The enum parameter has to be a string."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find a property for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parameter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_5
    invoke-static {}, Lexpo/modules/updates/UpdatesJSEvent;->values()[Lexpo/modules/updates/UpdatesJSEvent;

    move-result-object v2

    .line 235
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 241
    array-length v7, v2

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v2, v8

    .line 242
    check-cast v9, Ljava/lang/Enum;

    .line 243
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    .line 242
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 244
    :cond_6
    check-cast v6, Ljava/util/List;

    .line 245
    :goto_3
    new-instance v2, Lexpo/modules/kotlin/events/EventsDefinition;

    check-cast v6, Ljava/util/Collection;

    .line 247
    new-array v7, v5, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 245
    invoke-direct {v2, v6}, Lexpo/modules/kotlin/events/EventsDefinition;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->setEventsDefinition(Lexpo/modules/kotlin/events/EventsDefinition;)V

    .line 47
    new-instance v0, Lexpo/modules/updates/UpdatesModule$definition$1$1;

    invoke-direct {v0, p0}, Lexpo/modules/updates/UpdatesModule$definition$1$1;-><init>(Lexpo/modules/updates/UpdatesModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Constants(Lkotlin/jvm/functions/Function0;)V

    .line 52
    sget-object v0, Lexpo/modules/updates/UpdatesJSEvent;->StateChange:Lexpo/modules/updates/UpdatesJSEvent;

    check-cast v0, Ljava/lang/Enum;

    new-instance v2, Lexpo/modules/updates/UpdatesModule$definition$1$2;

    invoke-direct {v2, p0}, Lexpo/modules/updates/UpdatesModule$definition$1$2;-><init>(Lexpo/modules/updates/UpdatesModule;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v0, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->OnStartObserving(Ljava/lang/Enum;Lkotlin/jvm/functions/Function0;)V

    .line 56
    sget-object v0, Lexpo/modules/updates/UpdatesJSEvent;->StateChange:Lexpo/modules/updates/UpdatesJSEvent;

    check-cast v0, Ljava/lang/Enum;

    sget-object v2, Lexpo/modules/updates/UpdatesModule$definition$1$3;->INSTANCE:Lexpo/modules/updates/UpdatesModule$definition$1$3;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v0, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->OnStopObserving(Ljava/lang/Enum;Lkotlin/jvm/functions/Function0;)V

    .line 60
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 249
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v6, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v7, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v8, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$OnDestroy$1;

    invoke-direct {v8}, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$OnDestroy$1;-><init>()V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-direct {v6, v7, v8}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "reload"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 252
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v8, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$1;

    invoke-direct {v8, v3}, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-direct {v2, v6, v7, v8}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 253
    move-object v6, v2

    check-cast v6, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 252
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 68
    const-string v0, "checkForUpdateAsync"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 256
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v8, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$2;

    invoke-direct {v8, v3}, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-direct {v2, v6, v7, v8}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 257
    move-object v6, v2

    check-cast v6, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 256
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 102
    const-string v0, "fetchUpdateAsync"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 260
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v8, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$3;

    invoke-direct {v8, v3}, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-direct {v2, v6, v7, v8}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 261
    move-object v6, v2

    check-cast v6, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 260
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 132
    const-string v0, "getExtraParamsAsync"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 264
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v8, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$4;

    invoke-direct {v8, v3, p0}, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/updates/UpdatesModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-direct {v2, v6, v7, v8}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 265
    move-object v6, v2

    check-cast v6, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 264
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 137
    const-string v0, "setExtraParamAsync"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 268
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v7

    .line 271
    const-class v8, Ljava/lang/String;

    .line 272
    const-class v8, Ljava/lang/String;

    const/4 v8, 0x2

    .line 276
    new-array v8, v8, [Lexpo/modules/kotlin/types/AnyType;

    .line 277
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 278
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_7

    .line 277
    sget-object v9, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$5;->INSTANCE:Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$5;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 280
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 281
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v5, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 280
    invoke-direct {v10, v11, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 277
    :cond_7
    aput-object v9, v8, v5

    .line 289
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 278
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_8

    .line 289
    sget-object v9, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$6;->INSTANCE:Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$6;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 290
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 291
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 290
    invoke-direct {v10, v11, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 289
    :cond_8
    aput-object v9, v8, v4

    .line 298
    new-instance v7, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$7;

    invoke-direct {v7, v3, p0}, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$7;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/updates/UpdatesModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function3;

    .line 268
    invoke-direct {v2, v6, v8, v7}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 299
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 145
    const-string v0, "readLogEntriesAsync"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 302
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v7

    .line 305
    const-class v8, Ljava/lang/Long;

    .line 309
    new-array v8, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 310
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 311
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/Long;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_9

    .line 310
    sget-object v9, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$8;->INSTANCE:Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$8;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 313
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 314
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/Long;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v5, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 313
    invoke-direct {v10, v11, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 310
    :cond_9
    aput-object v9, v8, v5

    .line 322
    new-instance v7, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$9;

    invoke-direct {v7, v3, p0}, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$9;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/updates/UpdatesModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function3;

    .line 302
    invoke-direct {v2, v6, v8, v7}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 323
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 149
    const-string v0, "clearLogEntriesAsync"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 326
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v8, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$10;

    invoke-direct {v8, v3, p0}, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Coroutine$10;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/updates/UpdatesModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-direct {v2, v6, v7, v8}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 327
    move-object v3, v2

    check-cast v3, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 326
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 161
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setUpdateURLAndRequestHeadersOverride"

    .line 329
    new-instance v3, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 332
    const-class v7, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;

    .line 336
    new-array v7, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 337
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 338
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_a

    .line 337
    sget-object v8, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Function$1;->INSTANCE:Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Function$1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 340
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 341
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 340
    invoke-direct {v9, v10, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 337
    :cond_a
    aput-object v8, v7, v5

    .line 349
    sget-object v4, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .line 350
    invoke-virtual {v4}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v4

    const-class v5, Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v4, :cond_b

    new-instance v4, Lexpo/modules/kotlin/types/ReturnType;

    const-class v5, Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-direct {v4, v5}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    .line 351
    sget-object v5, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v5}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v5

    const-class v6, Lkotlin/Unit;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_b
    new-instance v5, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Function$2;

    invoke-direct {v5}, Lexpo/modules/updates/UpdatesModule$definition$lambda$15$$inlined$Function$2;-><init>()V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 329
    invoke-direct {v3, v2, v7, v4, v5}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 354
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public onStateMachineContextEvent(Lexpo/modules/updates/statemachine/UpdatesStateContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v1, Lexpo/modules/updates/UpdatesJSEvent;->StateChange:Lexpo/modules/updates/UpdatesJSEvent;

    check-cast v1, Ljava/lang/Enum;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v1, v2}, Lexpo/modules/updates/UpdatesModule;->sendEvent(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method
