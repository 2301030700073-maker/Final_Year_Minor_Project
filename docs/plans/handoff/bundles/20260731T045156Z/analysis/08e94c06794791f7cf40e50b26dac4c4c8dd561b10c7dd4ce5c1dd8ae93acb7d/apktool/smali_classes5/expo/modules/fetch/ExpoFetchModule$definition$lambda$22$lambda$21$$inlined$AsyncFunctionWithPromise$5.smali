.class public final Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$5;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$22\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ExpoFetchModule.kt\nexpo/modules/fetch/ExpoFetchModule\n*L\n1#1,611:1\n32#2:612\n125#3,14:613\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$22\n*L\n348#1:612\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 350
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$5;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 7

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 347
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const/4 v4, 0x2

    aget-object v5, p1, v4

    const/4 v6, 0x3

    aget-object p1, p1, v6

    .line 349
    check-cast p1, [B

    check-cast v5, Lexpo/modules/fetch/NativeRequestInit;

    check-cast v3, Ljava/net/URL;

    check-cast v1, Lexpo/modules/fetch/NativeRequest;

    .line 613
    iget-object v6, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-static {v6}, Lexpo/modules/fetch/ExpoFetchModule;->access$getClient(Lexpo/modules/fetch/ExpoFetchModule;)Lokhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v1, v6, v3, v5, p1}, Lexpo/modules/fetch/NativeRequest;->start(Lokhttp3/OkHttpClient;Ljava/net/URL;Lexpo/modules/fetch/NativeRequestInit;[B)V

    .line 614
    invoke-virtual {v1}, Lexpo/modules/fetch/NativeRequest;->getResponse$expo_release()Lexpo/modules/fetch/NativeResponse;

    move-result-object p1

    .line 616
    new-array v3, v4, [Lexpo/modules/fetch/ResponseState;

    sget-object v4, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    aput-object v4, v3, v0

    .line 617
    sget-object v0, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    aput-object v0, v3, v2

    .line 615
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 614
    new-instance v2, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;

    invoke-direct {v2, p2, v1}, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/fetch/NativeRequest;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, v2}, Lexpo/modules/fetch/NativeResponse;->waitForStates(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
