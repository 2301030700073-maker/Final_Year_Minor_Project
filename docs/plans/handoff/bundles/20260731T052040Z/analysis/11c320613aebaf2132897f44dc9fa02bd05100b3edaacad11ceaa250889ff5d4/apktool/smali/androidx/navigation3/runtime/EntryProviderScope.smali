.class public final Landroidx/navigation3/runtime/EntryProviderScope;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final clazzProviders:Ljava/util/LinkedHashMap;

.field public final providers:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/navigation3/runtime/EntryProviderScope;->clazzProviders:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/navigation3/runtime/EntryProviderScope;->providers:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final addEntryProvider(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/navigation3/runtime/EntryProviderScope;->clazzProviders:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/navigation3/runtime/EntryClassProvider;

    .line 10
    .line 11
    new-instance v1, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;

    .line 12
    .line 13
    const/16 v2, 0x19

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1, p2, v1, p3}, Landroidx/navigation3/runtime/EntryClassProvider;-><init>(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/16 p1, 0x2e

    .line 30
    .line 31
    const-string p2, "An `entry` with the same `clazz` has already been added: "

    .line 32
    .line 33
    invoke-static {p0, p2, p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
