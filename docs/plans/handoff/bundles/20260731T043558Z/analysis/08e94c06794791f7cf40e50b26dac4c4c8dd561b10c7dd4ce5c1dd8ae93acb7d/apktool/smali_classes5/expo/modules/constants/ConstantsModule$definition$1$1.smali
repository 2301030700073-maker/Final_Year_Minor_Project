.class final Lexpo/modules/constants/ConstantsModule$definition$1$1;
.super Ljava/lang/Object;
.source "ConstantsModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/constants/ConstantsModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
.field final synthetic this$0:Lexpo/modules/constants/ConstantsModule;


# direct methods
.method constructor <init>(Lexpo/modules/constants/ConstantsModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/constants/ConstantsModule$definition$1$1;->this$0:Lexpo/modules/constants/ConstantsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lexpo/modules/constants/ConstantsModule$definition$1$1;->invoke()Ljava/util/Map;

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

    .line 13
    iget-object v0, p0, Lexpo/modules/constants/ConstantsModule$definition$1$1;->this$0:Lexpo/modules/constants/ConstantsModule;

    invoke-virtual {v0}, Lexpo/modules/constants/ConstantsModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getConstants()Lexpo/modules/interfaces/constants/ConstantsInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/interfaces/constants/ConstantsInterface;->getConstants()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_1
    return-object v0
.end method
