.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Companion;


# instance fields
.field public final batchcomplete:Z

.field public final continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

.field public final query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x5

    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v0, v1, v2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    aput-object v2, v1, v0

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    aput-object v2, v1, v0

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    aput-object v2, v1, v0

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    aput-object v2, v1, v0

    .line 39
    .line 40
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->$childSerializers:[Lkotlin/Lazy;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwResponse;->errors:Ljava/util/List;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/2addr v0, v1

    .line 14
    if-ne v0, v1, :cond_8

    .line 15
    .line 16
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwResponse;->errors:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v4, v1

    .line 35
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 36
    .line 37
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getKey()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v6, "blocked"

    .line 42
    .line 43
    invoke-static {v5, v6, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_2

    .line 48
    .line 49
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getKey()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "abusefilter-"

    .line 54
    .line 55
    invoke-static {v4, v5, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v1, v3

    .line 63
    :cond_2
    :goto_0
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 64
    .line 65
    if-nez v1, :cond_7

    .line 66
    .line 67
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwResponse;->errors:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    move-object v4, v1

    .line 84
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 85
    .line 86
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getKey()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v6, "assertuserfailed"

    .line 91
    .line 92
    invoke-static {v5, v6, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_4

    .line 97
    .line 98
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getKey()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const-string v5, "notloggedin"

    .line 103
    .line 104
    invoke-static {v4, v5, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    :cond_4
    move-object v3, v1

    .line 111
    :cond_5
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 112
    .line 113
    if-eqz v3, :cond_6

    .line 114
    .line 115
    new-instance p0, Lorg/wikipedia/dataclient/mwapi/MwNotLoggedInException;

    .line 116
    .line 117
    invoke-direct {p0, v3}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_6
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 122
    .line 123
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwResponse;->errors:Ljava/util/List;

    .line 124
    .line 125
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_7
    new-instance p0, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 136
    .line 137
    invoke-direct {p0, v1}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_8
    iput-boolean v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->batchcomplete:Z

    .line 142
    .line 143
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/String;ZLorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;Lorg/wikipedia/dataclient/mwapi/MwQueryResult;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p3, p2}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->batchcomplete:Z

    goto :goto_0

    :cond_0
    iput-boolean p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->batchcomplete:Z

    :goto_0
    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_1

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    :goto_1
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_2

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    return-void

    :cond_2
    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    return-void
.end method
