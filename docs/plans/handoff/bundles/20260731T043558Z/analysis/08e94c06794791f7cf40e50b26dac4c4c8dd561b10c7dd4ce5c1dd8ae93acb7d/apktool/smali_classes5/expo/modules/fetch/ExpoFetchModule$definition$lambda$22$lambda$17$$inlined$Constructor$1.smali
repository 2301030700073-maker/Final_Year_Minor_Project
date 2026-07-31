.class public final Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Constructor$1;
.super Ljava/lang/Object;
.source "ClassComponentBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/fetch/ExpoFetchModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nClassComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassComponentBuilder.kt\nexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$1\n+ 2 ExpoFetchModule.kt\nexpo/modules/fetch/ExpoFetchModule\n*L\n1#1,88:1\n63#2:89\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/fetch/ExpoFetchModule;


# direct methods
.method public constructor <init>(Lexpo/modules/fetch/ExpoFetchModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Constructor$1;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Constructor$1;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance p1, Lexpo/modules/fetch/NativeResponse;

    iget-object v0, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Constructor$1;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-virtual {v0}, Lexpo/modules/fetch/ExpoFetchModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Constructor$1;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-static {v1}, Lexpo/modules/fetch/ExpoFetchModule;->access$getModuleCoroutineScope(Lexpo/modules/fetch/ExpoFetchModule;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lexpo/modules/fetch/NativeResponse;-><init>(Lexpo/modules/kotlin/AppContext;Lkotlinx/coroutines/CoroutineScope;)V

    return-object p1
.end method
