.class final Lexpo/modules/application/ApplicationModule$definition$1$1;
.super Ljava/lang/Object;
.source "ApplicationModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/application/ApplicationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
.field final synthetic this$0:Lexpo/modules/application/ApplicationModule;


# direct methods
.method constructor <init>(Lexpo/modules/application/ApplicationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/application/ApplicationModule$definition$1$1;->this$0:Lexpo/modules/application/ApplicationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lexpo/modules/application/ApplicationModule$definition$1$1;->invoke()Ljava/util/Map;

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

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$1;->this$0:Lexpo/modules/application/ApplicationModule;

    invoke-static {v1}, Lexpo/modules/application/ApplicationModule;->access$getApplicationName(Lexpo/modules/application/ApplicationModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationName"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$1;->this$0:Lexpo/modules/application/ApplicationModule;

    invoke-static {v1}, Lexpo/modules/application/ApplicationModule;->access$getPackageName(Lexpo/modules/application/ApplicationModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationId"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$1;->this$0:Lexpo/modules/application/ApplicationModule;

    invoke-static {v1}, Lexpo/modules/application/ApplicationModule;->access$getVersionName(Lexpo/modules/application/ApplicationModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeApplicationVersion"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 32
    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$1;->this$0:Lexpo/modules/application/ApplicationModule;

    invoke-static {v1}, Lexpo/modules/application/ApplicationModule;->access$getVersionCode(Lexpo/modules/application/ApplicationModule;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeBuildVersion"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 28
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
