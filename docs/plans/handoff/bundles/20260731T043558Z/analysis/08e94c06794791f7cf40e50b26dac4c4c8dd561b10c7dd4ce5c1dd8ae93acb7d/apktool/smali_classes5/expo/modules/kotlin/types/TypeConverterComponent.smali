.class public final Lexpo/modules/kotlin/types/TypeConverterComponent;
.super Ljava/lang/Object;
.source "TypeConverterCollection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeConverterCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterComponent\n+ 2 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterCollection\n*L\n1#1,82:1\n41#2,6:83\n41#2,6:89\n*S KotlinDebug\n*F\n+ 1 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterComponent\n*L\n16#1:83,6\n17#1:89,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007JC\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\n\u0008\u0001\u0010\u0013\u0018\u0001*\u00020\u00022#\u0008\u0004\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u0011H\u0013\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00028\u00000\u0015H\u0086\u0008\u00f8\u0001\u0000J\u001c\u0010\u0019\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001c0\u001b0\u001aR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u001d\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000f\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001d"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/TypeConverterComponent;",
        "Type",
        "",
        "notNullableType",
        "Lkotlin/reflect/KType;",
        "nullableType",
        "<init>",
        "(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)V",
        "getNotNullableType",
        "()Lkotlin/reflect/KType;",
        "getNullableType",
        "nonNullableConverter",
        "Lkotlin/Lazy;",
        "Lexpo/modules/kotlin/types/TypeConverterCollection;",
        "getNonNullableConverter",
        "()Lkotlin/Lazy;",
        "nullableConverter",
        "getNullableConverter",
        "from",
        "P0",
        "body",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "p0",
        "build",
        "",
        "Lkotlin/Pair;",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final nonNullableConverter:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lexpo/modules/kotlin/types/TypeConverterCollection<",
            "TType;>;>;"
        }
    .end annotation
.end field

.field private final notNullableType:Lkotlin/reflect/KType;

.field private final nullableConverter:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lexpo/modules/kotlin/types/TypeConverterCollection<",
            "TType;>;>;"
        }
    .end annotation
.end field

.field private final nullableType:Lkotlin/reflect/KType;


# direct methods
.method public static synthetic $r8$lambda$TjGAOjiOZs1tpUDxtggGT09YgiI(Lexpo/modules/kotlin/types/TypeConverterComponent;)Lexpo/modules/kotlin/types/TypeConverterCollection;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableConverter$lambda$1(Lexpo/modules/kotlin/types/TypeConverterComponent;)Lexpo/modules/kotlin/types/TypeConverterCollection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bEZ3NulFbpRMoQjMTTRluxQweeU(Lexpo/modules/kotlin/types/TypeConverterComponent;)Lexpo/modules/kotlin/types/TypeConverterCollection;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/types/TypeConverterComponent;->nonNullableConverter$lambda$0(Lexpo/modules/kotlin/types/TypeConverterComponent;)Lexpo/modules/kotlin/types/TypeConverterCollection;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)V
    .locals 1

    const-string v0, "notNullableType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nullableType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->notNullableType:Lkotlin/reflect/KType;

    iput-object p2, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableType:Lkotlin/reflect/KType;

    .line 12
    new-instance p1, Lexpo/modules/kotlin/types/TypeConverterComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/kotlin/types/TypeConverterComponent$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/types/TypeConverterComponent;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nonNullableConverter:Lkotlin/Lazy;

    .line 13
    new-instance p1, Lexpo/modules/kotlin/types/TypeConverterComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lexpo/modules/kotlin/types/TypeConverterComponent$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/types/TypeConverterComponent;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableConverter:Lkotlin/Lazy;

    return-void
.end method

.method private static final nonNullableConverter$lambda$0(Lexpo/modules/kotlin/types/TypeConverterComponent;)Lexpo/modules/kotlin/types/TypeConverterCollection;
    .locals 2

    .line 12
    new-instance v0, Lexpo/modules/kotlin/types/TypeConverterCollection;

    iget-object p0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->notNullableType:Lkotlin/reflect/KType;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lexpo/modules/kotlin/types/TypeConverterCollection;-><init>(Lkotlin/reflect/KType;Z)V

    return-object v0
.end method

.method private static final nullableConverter$lambda$1(Lexpo/modules/kotlin/types/TypeConverterComponent;)Lexpo/modules/kotlin/types/TypeConverterCollection;
    .locals 2

    .line 13
    new-instance v0, Lexpo/modules/kotlin/types/TypeConverterCollection;

    iget-object p0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableType:Lkotlin/reflect/KType;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lexpo/modules/kotlin/types/TypeConverterCollection;-><init>(Lkotlin/reflect/KType;Z)V

    return-object v0
.end method


# virtual methods
.method public final build()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lkotlin/reflect/KType;",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;>;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nonNullableConverter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableConverter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->notNullableType:Lkotlin/reflect/KType;

    iget-object v2, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nonNullableConverter:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 25
    iget-object v1, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableType:Lkotlin/reflect/KType;

    iget-object v2, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableConverter:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic from(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/types/TypeConverterComponent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P0:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TP0;+TType;>;)",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "TType;>;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/TypeConverterComponent;->getNonNullableConverter()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverterCollection;

    .line 83
    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverterCollection;->getConverters()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "P0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-instance v3, Lexpo/modules/kotlin/types/TypeConverterCollection$from$1;

    invoke-direct {v3, p1}, Lexpo/modules/kotlin/types/TypeConverterCollection$from$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v4, 0x0

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/TypeConverterComponent;->getNullableConverter()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverterCollection;

    .line 89
    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverterCollection;->getConverters()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-instance v1, Lexpo/modules/kotlin/types/TypeConverterCollection$from$1;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/types/TypeConverterCollection$from$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getNonNullableConverter()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lexpo/modules/kotlin/types/TypeConverterCollection<",
            "TType;>;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nonNullableConverter:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getNotNullableType()Lkotlin/reflect/KType;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->notNullableType:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final getNullableConverter()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lexpo/modules/kotlin/types/TypeConverterCollection<",
            "TType;>;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableConverter:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getNullableType()Lkotlin/reflect/KType;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableType:Lkotlin/reflect/KType;

    return-object v0
.end method
