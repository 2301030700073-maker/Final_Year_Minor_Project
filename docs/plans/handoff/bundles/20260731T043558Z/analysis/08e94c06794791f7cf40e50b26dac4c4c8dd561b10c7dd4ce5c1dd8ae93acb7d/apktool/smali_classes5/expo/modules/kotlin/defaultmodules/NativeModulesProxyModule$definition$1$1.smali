.class final Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$1$1;
.super Ljava/lang/Object;
.source "NativeModulesProxyModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
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
.field final synthetic this$0:Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$1$1;->this$0:Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$1$1;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$1$1;->this$0:Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;

    invoke-virtual {v0}, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModulesProxyHolder$expo_modules_core_release()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/adapters/react/NativeModulesProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/adapters/react/NativeModulesProxy;->getConstants()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_1
    return-object v0
.end method
