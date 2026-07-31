.class public final Lexpo/modules/kotlin/jni/SingleType$Companion;
.super Ljava/lang/Object;
.source "ExpectedType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/jni/SingleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpectedType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/SingleType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,218:1\n1557#2:219\n1628#2,3:220\n37#3,2:223\n*S KotlinDebug\n*F\n+ 1 ExpectedType.kt\nexpo/modules/kotlin/jni/SingleType$Companion\n*L\n86#1:219\n86#1:220,3\n92#1:223,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/SingleType$Companion;",
        "",
        "<init>",
        "()V",
        "merge",
        "Lexpo/modules/kotlin/jni/SingleType;",
        "first",
        "second",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/kotlin/jni/SingleType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final merge(Lexpo/modules/kotlin/jni/SingleType;Lexpo/modules/kotlin/jni/SingleType;)Lexpo/modules/kotlin/jni/SingleType;
    .locals 8

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_release()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_release()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v1

    const-string v2, " and "

    if-ne v0, v1, :cond_4

    .line 75
    invoke-static {p1}, Lexpo/modules/kotlin/jni/SingleType;->access$getParameterTypes$p(Lexpo/modules/kotlin/jni/SingleType;)[Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v0

    .line 76
    invoke-static {p2}, Lexpo/modules/kotlin/jni/SingleType;->access$getParameterTypes$p(Lexpo/modules/kotlin/jni/SingleType;)[Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 81
    :cond_0
    array-length v3, v0

    array-length v4, v1

    if-ne v3, v4, :cond_2

    .line 85
    array-length p2, v0

    const/4 v2, 0x0

    .line 86
    invoke-static {v2, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 219
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 220
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, p2

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    .line 87
    sget-object v5, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    const/4 v6, 0x2

    new-array v6, v6, [Lexpo/modules/kotlin/jni/ExpectedType;

    aget-object v7, v0, v4

    aput-object v7, v6, v2

    const/4 v7, 0x1

    aget-object v4, v1, v4

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->merge([Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v4

    .line 221
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 90
    new-instance p2, Lexpo/modules/kotlin/jni/SingleType;

    .line 91
    invoke-virtual {p1}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_release()Lexpo/modules/kotlin/jni/CppType;

    move-result-object p1

    .line 92
    check-cast v3, Ljava/util/Collection;

    .line 224
    new-array v0, v2, [Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-interface {v3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 90
    invoke-direct {p2, p1, v0}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;)V

    return-object p2

    .line 82
    :cond_2
    invoke-static {p1}, Lexpo/modules/kotlin/jni/SingleType;->access$getParameterTypes$p(Lexpo/modules/kotlin/jni/SingleType;)[Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object p1

    array-length p1, p1

    invoke-static {p2}, Lexpo/modules/kotlin/jni/SingleType;->access$getParameterTypes$p(Lexpo/modules/kotlin/jni/SingleType;)[Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object p2

    array-length p2, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot merge types with different number of parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    return-object p1

    .line 70
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    invoke-virtual {p1}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_release()Lexpo/modules/kotlin/jni/CppType;

    move-result-object p1

    invoke-virtual {p2}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_release()Lexpo/modules/kotlin/jni/CppType;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot merge types with different CppType: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
