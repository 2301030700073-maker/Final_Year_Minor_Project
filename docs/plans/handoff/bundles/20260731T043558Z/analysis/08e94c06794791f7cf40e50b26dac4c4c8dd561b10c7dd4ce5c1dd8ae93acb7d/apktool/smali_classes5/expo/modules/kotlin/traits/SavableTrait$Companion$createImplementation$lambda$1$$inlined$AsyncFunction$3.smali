.class public final Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/traits/SavableTrait$Companion;->createImplementation(Lexpo/modules/kotlin/AppContext;Lkotlin/jvm/functions/Function3;)Lexpo/modules/kotlin/objects/ObjectDefinitionData;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion\n*L\n1#1,611:1\n18#2:612\n34#3,6:613\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n260#1:612\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $appContextWeakRef$inlined:Ljava/lang/ref/WeakReference;

.field final synthetic $saveToFile$inlined:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;->$appContextWeakRef$inlined:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;->$saveToFile$inlined:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 259
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 259
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 613
    iget-object v1, p0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;->$appContextWeakRef$inlined:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/AppContext;

    if-eqz v1, :cond_0

    .line 614
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 615
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 617
    iget-object v1, p0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;->$saveToFile$inlined:Lkotlin/jvm/functions/Function3;

    invoke-interface {v1, v2, v0, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 613
    :cond_0
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {p1}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw p1
.end method
