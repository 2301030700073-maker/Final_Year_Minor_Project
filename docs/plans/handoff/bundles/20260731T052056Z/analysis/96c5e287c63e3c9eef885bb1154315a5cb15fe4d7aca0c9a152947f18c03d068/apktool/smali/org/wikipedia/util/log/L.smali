.class public abstract Lorg/wikipedia/util/log/L;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LEVEL_D:Lorg/wikipedia/util/log/L$LEVEL_D$1;

.field public static final LEVEL_E:Lorg/wikipedia/util/log/L$LEVEL_D$1;

.field public static final LEVEL_I:Lorg/wikipedia/util/log/L$LEVEL_D$1;

.field public static final LEVEL_V:Lorg/wikipedia/util/log/L$LEVEL_D$1;

.field public static final LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lorg/wikipedia/util/log/L$LEVEL_D$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/wikipedia/util/log/L;->LEVEL_V:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 8
    .line 9
    new-instance v0, Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lorg/wikipedia/util/log/L$LEVEL_D$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/wikipedia/util/log/L;->LEVEL_D:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 16
    .line 17
    new-instance v0, Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lorg/wikipedia/util/log/L$LEVEL_D$1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/wikipedia/util/log/L;->LEVEL_I:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 24
    .line 25
    new-instance v0, Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-direct {v0, v1}, Lorg/wikipedia/util/log/L$LEVEL_D$1;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 32
    .line 33
    new-instance v0, Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {v0, v1}, Lorg/wikipedia/util/log/L$LEVEL_D$1;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/wikipedia/util/log/L;->LEVEL_E:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 40
    .line 41
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/util/log/L;->LEVEL_D:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p0, v1}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/util/log/L;->LEVEL_E:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p0, v1}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2

    .line 11
    sget-object v0, Lorg/wikipedia/util/log/L;->LEVEL_E:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    const-string v1, ""

    invoke-virtual {v0, v1, p0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logRemoteError(Ljava/lang/Throwable;)V
    .locals 14

    .line 1
    sget-object v0, Lorg/wikipedia/util/log/L;->LEVEL_E:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "org.wikipedia"

    .line 9
    .line 10
    const-string v1, "beta"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    move v0, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "alpha"

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    move v0, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v1, "dev"

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v2

    .line 44
    :goto_0
    if-eqz v0, :cond_3

    .line 45
    .line 46
    if-eq v0, v3, :cond_3

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 50
    .line 51
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 58
    .line 59
    new-instance v5, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    array-length v0, p0

    .line 87
    if-lt v4, v0, :cond_4

    .line 88
    .line 89
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    :goto_1
    move-object v8, p0

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    invoke-static {p0, v2, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :goto_2
    const/4 v12, 0x0

    .line 108
    const/16 v13, 0x3e

    .line 109
    .line 110
    const-string v9, ","

    .line 111
    .line 112
    const/4 v10, 0x0

    .line 113
    const/4 v11, 0x0

    .line 114
    invoke-static/range {v8 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    const/16 v11, 0x34

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$Http;Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    invoke-static {v5}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public static logRemoteErrorIfProd(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const-string v0, "org.wikipedia"

    .line 2
    .line 3
    const-string v1, "beta"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "alpha"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "dev"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .line 9
    sget-object v0, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
