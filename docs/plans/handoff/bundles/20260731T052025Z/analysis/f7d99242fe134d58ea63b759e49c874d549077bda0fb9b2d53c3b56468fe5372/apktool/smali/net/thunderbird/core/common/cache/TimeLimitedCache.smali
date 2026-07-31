.class public final Lnet/thunderbird/core/common/cache/TimeLimitedCache;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/common/cache/Cache;


# static fields
.field public static final DEFAULT_EXPIRATION_TIME:J


# instance fields
.field public final cache:Ljava/util/Map;

.field public final clock:Lkotlin/time/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    sget-object v1, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 5
    .line 6
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sput-wide v0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->DEFAULT_EXPIRATION_TIME:J

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lkotlin/time/Clock$System;->INSTANCE:Lkotlin/time/Clock$System;

    .line 10
    .line 11
    iput-object v1, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->clock:Lkotlin/time/Clock;

    .line 12
    .line 13
    iput-object v0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->cache:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method public static set-SxA4cEA$default(Lnet/thunderbird/core/common/cache/TimeLimitedCache;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;

    .line 8
    .line 9
    iget-object v1, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->clock:Lkotlin/time/Clock;

    .line 10
    .line 11
    invoke-interface {v1}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-wide v2, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->DEFAULT_EXPIRATION_TIME:J

    .line 16
    .line 17
    invoke-direct {v0, p2, v1, v2, v3}, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;-><init>(Ljava/lang/Long;Lkotlin/time/Instant;J)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->cache:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->cache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->cache:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, v1, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresAt:Lkotlin/time/Instant;

    .line 16
    .line 17
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->clock:Lkotlin/time/Clock;

    .line 18
    .line 19
    invoke-interface {p0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-wide v2, v1, Lkotlin/time/Instant;->epochSeconds:J

    .line 30
    .line 31
    iget-wide v4, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 32
    .line 33
    invoke-static {v2, v3, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget v1, v1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 41
    .line 42
    iget p0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 43
    .line 44
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_0
    if-gez v2, :cond_2

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;

    .line 58
    .line 59
    return-object p0
.end method

.method public final hasKey(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->cache:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, v1, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresAt:Lkotlin/time/Instant;

    .line 16
    .line 17
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->clock:Lkotlin/time/Clock;

    .line 18
    .line 19
    invoke-interface {p0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-wide v2, v1, Lkotlin/time/Instant;->epochSeconds:J

    .line 30
    .line 31
    iget-wide v4, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 32
    .line 33
    invoke-static {v2, v3, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget v1, v1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 41
    .line 42
    iget p0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 43
    .line 44
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_0
    if-gez v2, :cond_2

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public final set(Lnet/thunderbird/core/common/mail/EmailAddress;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->cache:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method
