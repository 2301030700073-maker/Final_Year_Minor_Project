.class public final Lorg/wikipedia/page/Namespace$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static of(I)Lorg/wikipedia/page/Namespace;
    .locals 6

    .line 1
    invoke-static {}, Lorg/wikipedia/page/Namespace;->getEntries()Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Lkotlin/collections/AbstractCollection;

    .line 14
    .line 15
    invoke-virtual {v2}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3, v2}, Landroidx/room/Room;->rangeCheck$CollectionsKt__CollectionsKt(II)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-gt v3, v2, :cond_1

    .line 30
    .line 31
    add-int v4, v3, v2

    .line 32
    .line 33
    ushr-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/Enum;

    .line 40
    .line 41
    check-cast v5, Lorg/wikipedia/model/EnumCode;

    .line 42
    .line 43
    invoke-interface {v5}, Lorg/wikipedia/model/EnumCode;->code()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v5, v1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-gez v5, :cond_0

    .line 56
    .line 57
    add-int/lit8 v3, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    if-lez v5, :cond_2

    .line 61
    .line 62
    add-int/lit8 v2, v4, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    neg-int v4, v3

    .line 68
    :cond_2
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Enum;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    check-cast v0, Lorg/wikipedia/page/Namespace;

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    const-string v0, "code="

    .line 80
    .line 81
    invoke-static {p0, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x0

    .line 89
    return-object p0
.end method
