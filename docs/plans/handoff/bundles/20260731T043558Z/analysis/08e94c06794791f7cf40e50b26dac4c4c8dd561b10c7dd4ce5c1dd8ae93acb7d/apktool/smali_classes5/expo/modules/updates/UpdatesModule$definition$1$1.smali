.class final Lexpo/modules/updates/UpdatesModule$definition$1$1;
.super Ljava/lang/Object;
.source "UpdatesModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/UpdatesModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
.field final synthetic this$0:Lexpo/modules/updates/UpdatesModule;


# direct methods
.method constructor <init>(Lexpo/modules/updates/UpdatesModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/UpdatesModule$definition$1$1;->this$0:Lexpo/modules/updates/UpdatesModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lexpo/modules/updates/UpdatesModule$definition$1$1;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lexpo/modules/updates/logging/UpdatesLogger;

    iget-object v1, p0, Lexpo/modules/updates/UpdatesModule$definition$1$1;->this$0:Lexpo/modules/updates/UpdatesModule;

    invoke-static {v1}, Lexpo/modules/updates/UpdatesModule;->access$getContext(Lexpo/modules/updates/UpdatesModule;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "getFilesDir(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lexpo/modules/updates/logging/UpdatesLogger;-><init>(Ljava/io/File;)V

    const-string v1, "UpdatesModule: getConstants called"

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->info(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 49
    invoke-static {}, Lexpo/modules/updates/UpdatesController;->getInstance()Lexpo/modules/updates/IUpdatesController;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/updates/IUpdatesController;->getConstantsForModule()Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;->toModuleConstantsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
