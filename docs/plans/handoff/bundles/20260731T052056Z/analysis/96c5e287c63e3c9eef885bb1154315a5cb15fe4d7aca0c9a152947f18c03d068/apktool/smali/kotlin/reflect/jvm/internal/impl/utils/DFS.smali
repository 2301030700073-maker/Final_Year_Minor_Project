.class public abstract Lkotlin/reflect/jvm/internal/impl/utils/DFS;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final NULL_VALUE:Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->NULL_VALUE:Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;

    .line 7
    .line 8
    return-void
.end method

.method public static final compact(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 24
    .line 25
    return-object p0
.end method

.method public static dfs(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lkotlin/reflect/jvm/internal/impl/utils/DFS;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/airbnb/lottie/LottieFeatureFlags;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieFeatureFlags;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lcom/airbnb/lottie/LottieFeatureFlags;Lkotlin/reflect/jvm/internal/impl/utils/DFS;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->result()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lcom/airbnb/lottie/LottieFeatureFlags;Lkotlin/reflect/jvm/internal/impl/utils/DFS;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    iget-object v0, p2, Lcom/airbnb/lottie/LottieFeatureFlags;->enabledFlags:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p3, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->beforeChildren(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;->getNeighbors(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lcom/airbnb/lottie/LottieFeatureFlags;Lkotlin/reflect/jvm/internal/impl/utils/DFS;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p3, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->afterChildren(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    const/4 p0, 0x3

    .line 46
    new-array p0, p0, [Ljava/lang/Object;

    .line 47
    .line 48
    const/16 p1, 0x16

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    packed-switch p1, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    :pswitch_0
    const-string p3, "nodes"

    .line 55
    .line 56
    aput-object p3, p0, p2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :pswitch_1
    const-string p3, "current"

    .line 60
    .line 61
    aput-object p3, p0, p2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :pswitch_2
    const-string p3, "node"

    .line 65
    .line 66
    aput-object p3, p0, p2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :pswitch_3
    const-string p3, "predicate"

    .line 70
    .line 71
    aput-object p3, p0, p2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_4
    const-string p3, "handler"

    .line 75
    .line 76
    aput-object p3, p0, p2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :pswitch_5
    const-string/jumbo p3, "visited"

    .line 80
    .line 81
    .line 82
    aput-object p3, p0, p2

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :pswitch_6
    const-string p3, "neighbors"

    .line 86
    .line 87
    aput-object p3, p0, p2

    .line 88
    .line 89
    :goto_2
    const/4 p2, 0x1

    .line 90
    const-string p3, "kotlin/reflect/jvm/internal/impl/utils/DFS"

    .line 91
    .line 92
    aput-object p3, p0, p2

    .line 93
    .line 94
    const/4 p2, 0x2

    .line 95
    packed-switch p1, :pswitch_data_1

    .line 96
    .line 97
    .line 98
    const-string p1, "dfs"

    .line 99
    .line 100
    aput-object p1, p0, p2

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :pswitch_7
    const-string p1, "doDfs"

    .line 104
    .line 105
    aput-object p1, p0, p2

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :pswitch_8
    const-string/jumbo p1, "topologicalOrder"

    .line 109
    .line 110
    .line 111
    aput-object p1, p0, p2

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :pswitch_9
    const-string p1, "dfsFromNode"

    .line 115
    .line 116
    aput-object p1, p0, p2

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :pswitch_a
    const-string p1, "ifAny"

    .line 120
    .line 121
    aput-object p1, p0, p2

    .line 122
    .line 123
    :goto_3
    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 124
    .line 125
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static ifAny(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Z

    .line 3
    .line 4
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v1, p2, v0, v2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->dfs(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lkotlin/reflect/jvm/internal/impl/utils/DFS;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final isProcessCanceledException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "com.intellij.openapi.progress.ProcessCanceledException"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static unescapeThrowable(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;

    .line 7
    .line 8
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;->throwable:Ljava/lang/Throwable;

    .line 9
    .line 10
    throw p0
.end method


# virtual methods
.method public afterChildren(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract beforeChildren(Ljava/lang/Object;)Z
.end method

.method public abstract result()Ljava/lang/Object;
.end method
