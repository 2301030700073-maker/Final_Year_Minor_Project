.class final Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;
.super Ljava/lang/Object;
.source "ModuleHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/ModuleHolder;-><init>(Lexpo/modules/kotlin/modules/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Lexpo/modules/kotlin/views/ViewManagerDefinition;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleHolder.kt\nexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,178:1\n14#2:179\n25#2:180\n27#3,3:181\n31#3:186\n1863#4,2:184\n*S KotlinDebug\n*F\n+ 1 ModuleHolder.kt\nexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2\n*L\n58#1:179\n58#1:180\n58#1:181,3\n58#1:186\n60#1:184,2\n*E\n"
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
.field final synthetic $appContext:Lexpo/modules/kotlin/AppContext;

.field final synthetic $jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

.field final synthetic $viewPrototypesDecorator:Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

.field final synthetic this$0:Lexpo/modules/kotlin/ModuleHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/ModuleHolder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/jni/JNIDeallocator;",
            "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "TT;>;",
            "Lexpo/modules/kotlin/AppContext;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    iput-object p2, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$viewPrototypesDecorator:Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    iput-object p3, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    iput-object p4, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$appContext:Lexpo/modules/kotlin/AppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->invoke(Ljava/lang/String;Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Lexpo/modules/kotlin/views/ViewManagerDefinition;)V
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getAsyncFunctions()Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    iget-object v2, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$viewPrototypesDecorator:Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    iget-object v3, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    iget-object v4, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;->$appContext:Lexpo/modules/kotlin/AppContext;

    .line 180
    const-string v5, "[ExpoModulesCore] Attaching view prototype"

    .line 181
    invoke-static {v5}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 59
    :try_start_0
    new-instance v5, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v5, v1}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 60
    check-cast v0, Ljava/lang/Iterable;

    .line 184
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 61
    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2d8c8b7a

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "DEFAULT_MODULE_VIEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getName$expo_modules_core_release()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v2, p1, v5}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerObject(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 64
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method
