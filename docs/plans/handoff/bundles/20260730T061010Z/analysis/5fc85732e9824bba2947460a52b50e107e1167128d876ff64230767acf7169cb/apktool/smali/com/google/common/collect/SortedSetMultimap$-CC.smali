.class public final synthetic Lcom/google/common/collect/SortedSetMultimap$-CC;
.super Ljava/lang/Object;
.source "SortedSetMultimap.java"


# direct methods
.method public static synthetic $default$get(Lcom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/collect/SortedSetMultimap;

    .line 46
    invoke-interface {p0, p1}, Lcom/google/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$get(Lcom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/collect/SortedSetMultimap;

    .line 46
    invoke-interface {p0, p1}, Lcom/google/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$removeAll(Lcom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/collect/SortedSetMultimap;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 46
    invoke-interface {p0, p1}, Lcom/google/common/collect/SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$removeAll(Lcom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/collect/SortedSetMultimap;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 46
    invoke-interface {p0, p1}, Lcom/google/common/collect/SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$replaceValues(Lcom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/collect/SortedSetMultimap;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 46
    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$replaceValues(Lcom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/collect/SortedSetMultimap;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 46
    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method
