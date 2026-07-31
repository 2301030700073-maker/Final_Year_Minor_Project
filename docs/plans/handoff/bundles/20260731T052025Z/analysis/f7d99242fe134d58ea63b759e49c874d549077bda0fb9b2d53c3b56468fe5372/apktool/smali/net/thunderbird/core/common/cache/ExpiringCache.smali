.class public final Lnet/thunderbird/core/common/cache/ExpiringCache;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/common/cache/Cache;


# instance fields
.field public final cacheTimeValidity:J

.field public final clock:Lkotlin/time/Clock;

.field public final delegateCache:Lnet/thunderbird/core/common/cache/Cache;

.field public lastClearTime:Lkotlin/time/Instant;


# direct methods
.method public constructor <init>(Lkotlin/time/Clock;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/thunderbird/core/common/cache/InMemoryCache;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/thunderbird/core/common/cache/InMemoryCache;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->clock:Lkotlin/time/Clock;

    .line 17
    .line 18
    iput-object v0, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->delegateCache:Lnet/thunderbird/core/common/cache/Cache;

    .line 19
    .line 20
    iput-object v1, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->lastClearTime:Lkotlin/time/Instant;

    .line 21
    .line 22
    const-wide/16 v0, 0x7530

    .line 23
    .line 24
    iput-wide v0, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->cacheTimeValidity:J

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->clock:Lkotlin/time/Clock;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->lastClearTime:Lkotlin/time/Instant;

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->delegateCache:Lnet/thunderbird/core/common/cache/Cache;

    .line 10
    .line 11
    invoke-interface {p0}, Lnet/thunderbird/core/common/cache/Cache;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lnet/thunderbird/core/common/cache/ExpiringCache;->recycle()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->delegateCache:Lnet/thunderbird/core/common/cache/Cache;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lnet/thunderbird/core/common/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lnet/thunderbird/core/common/cache/ExpiringCache;->recycle()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->delegateCache:Lnet/thunderbird/core/common/cache/Cache;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lnet/thunderbird/core/common/cache/Cache;->hasKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final recycle()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->clock:Lkotlin/time/Clock;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->lastClearTime:Lkotlin/time/Instant;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkotlin/time/Instant;->minus-UwyO8pc(Lkotlin/time/Instant;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->cacheTimeValidity:J

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-ltz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lnet/thunderbird/core/common/cache/ExpiringCache;->clear()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final set(Lnet/thunderbird/core/common/mail/EmailAddress;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/thunderbird/core/common/cache/ExpiringCache;->recycle()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/core/common/cache/ExpiringCache;->delegateCache:Lnet/thunderbird/core/common/cache/Cache;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Lnet/thunderbird/core/common/cache/Cache;->set(Lnet/thunderbird/core/common/mail/EmailAddress;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
