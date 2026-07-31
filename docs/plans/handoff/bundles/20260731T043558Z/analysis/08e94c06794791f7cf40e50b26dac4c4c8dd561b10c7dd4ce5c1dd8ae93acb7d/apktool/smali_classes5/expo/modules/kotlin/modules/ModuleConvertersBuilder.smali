.class public final Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;
.super Ljava/lang/Object;
.source "ModuleConvertersBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleConvertersBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleConvertersBuilder.kt\nexpo/modules/kotlin/modules/ModuleConvertersBuilder\n+ 2 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 3 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterComponent\n+ 4 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterCollection\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n18#1:60\n19#1,2:69\n148#2,8:52\n148#2,8:61\n16#3:71\n17#3,2:78\n41#4,6:72\n1557#5:80\n1628#5,3:81\n*S KotlinDebug\n*F\n+ 1 ModuleConvertersBuilder.kt\nexpo/modules/kotlin/modules/ModuleConvertersBuilder\n*L\n27#1:60\n27#1:69,2\n18#1:52,8\n27#1:61,8\n28#1:71\n28#1:78,2\n28#1:72,6\n36#1:80\n36#1:81,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J)\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0006\"\n\u0008\u0000\u0010\r\u0018\u0001*\u00020\u00012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u000fH\u0086\u0008J]\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0006\"\n\u0008\u0000\u0010\r\u0018\u0001*\u00020\u0001\"\n\u0008\u0001\u0010\u0010\u0018\u0001*\u00020\u00012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u000f2#\u0008\u0004\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u0011H\u0010\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u0002H\r0\u0012H\u0086\u0008\u00f8\u0001\u0000J\u0006\u0010\u0016\u001a\u00020\u0017R.\u0010\u0004\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u00058\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0003\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;",
        "",
        "<init>",
        "()V",
        "convertersComponent",
        "",
        "Lexpo/modules/kotlin/types/TypeConverterComponent;",
        "getConvertersComponent$annotations",
        "getConvertersComponent",
        "()Ljava/util/List;",
        "setConvertersComponent",
        "(Ljava/util/List;)V",
        "TypeConverter",
        "T",
        "classifier",
        "Lkotlin/reflect/KClass;",
        "P0",
        "body",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "p0",
        "buildTypeConverterProvider",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
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
.field private convertersComponent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->convertersComponent:Ljava/util/List;

    return-void
.end method

.method public static synthetic getConvertersComponent$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final synthetic TypeConverter(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/types/TypeConverterComponent;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p1, Lexpo/modules/kotlin/types/TypeConverterComponent;

    .line 52
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$lazyTypeOf$1;->INSTANCE:Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$lazyTypeOf$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 55
    new-instance v1, Lexpo/modules/kotlin/types/LazyKType;

    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x3

    .line 57
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v3, 0x0

    .line 55
    invoke-direct {v1, v4, v3, v0}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    .line 52
    check-cast v1, Lkotlin/reflect/KType;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$lazyTypeOf$2;->INSTANCE:Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$lazyTypeOf$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 55
    new-instance v4, Lexpo/modules/kotlin/types/LazyKType;

    const-string v6, "T?"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 57
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 55
    invoke-direct {v4, v2, v3, v0}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    .line 52
    check-cast v4, Lkotlin/reflect/KType;

    .line 18
    invoke-direct {p1, v1, v4}, Lexpo/modules/kotlin/types/TypeConverterComponent;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)V

    .line 19
    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->getConvertersComponent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final synthetic TypeConverter(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/types/TypeConverterComponent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P0:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TP0;+TT;>;)",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "body"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance p1, Lexpo/modules/kotlin/types/TypeConverterComponent;

    .line 61
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$TypeConverter$1;->INSTANCE:Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$TypeConverter$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 64
    new-instance v1, Lexpo/modules/kotlin/types/LazyKType;

    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x3

    .line 66
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 64
    invoke-direct {v1, v4, v6, v0}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    .line 61
    check-cast v1, Lkotlin/reflect/KType;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$TypeConverter$2;->INSTANCE:Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$TypeConverter$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 64
    new-instance v4, Lexpo/modules/kotlin/types/LazyKType;

    const-string v7, "T?"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 66
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 64
    invoke-direct {v4, v2, v6, v0}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    .line 61
    check-cast v4, Lkotlin/reflect/KType;

    .line 60
    invoke-direct {p1, v1, v4}, Lexpo/modules/kotlin/types/TypeConverterComponent;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)V

    .line 69
    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->getConvertersComponent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    move-object v0, p1

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverterComponent;

    .line 71
    invoke-virtual {p1}, Lexpo/modules/kotlin/types/TypeConverterComponent;->getNonNullableConverter()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverterCollection;

    .line 72
    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverterCollection;->getConverters()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "P0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v4, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$1;

    invoke-direct {v4, p2}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lexpo/modules/kotlin/types/TypeConverterComponent;->getNullableConverter()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverterCollection;

    .line 72
    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverterCollection;->getConverters()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$2;

    invoke-direct {v1, p2}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final buildTypeConverterProvider()Lexpo/modules/kotlin/types/TypeConverterProvider;
    .locals 3

    .line 35
    iget-object v0, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->convertersComponent:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 81
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 82
    check-cast v2, Lexpo/modules/kotlin/types/TypeConverterComponent;

    .line 36
    invoke-virtual {v2}, Lexpo/modules/kotlin/types/TypeConverterComponent;->build()Ljava/util/List;

    move-result-object v2

    .line 82
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 80
    check-cast v1, Ljava/lang/Iterable;

    .line 37
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 38
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 39
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$buildTypeConverterProvider$1;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$buildTypeConverterProvider$1;-><init>(Ljava/util/Map;)V

    check-cast v1, Lexpo/modules/kotlin/types/TypeConverterProvider;

    return-object v1
.end method

.method public final getConvertersComponent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "*>;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->convertersComponent:Ljava/util/List;

    return-object v0
.end method

.method public final setConvertersComponent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->convertersComponent:Ljava/util/List;

    return-void
.end method
