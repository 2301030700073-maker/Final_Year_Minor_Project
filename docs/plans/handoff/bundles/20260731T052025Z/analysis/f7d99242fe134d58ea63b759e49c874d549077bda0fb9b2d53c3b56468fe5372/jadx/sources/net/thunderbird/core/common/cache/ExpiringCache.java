package net.thunderbird.core.common.cache;

import kotlin.time.Clock;
import kotlin.time.Duration;
import kotlin.time.Instant;
import net.thunderbird.core.common.mail.EmailAddress;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExpiringCache implements Cache {
    public final long cacheTimeValidity;
    public final Clock clock;
    public final Cache delegateCache;
    public Instant lastClearTime;

    public ExpiringCache(Clock clock) {
        InMemoryCache inMemoryCache = new InMemoryCache();
        Instant now = clock.now();
        now.getClass();
        this.clock = clock;
        this.delegateCache = inMemoryCache;
        this.lastClearTime = now;
        this.cacheTimeValidity = 30000L;
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final void clear() {
        this.lastClearTime = this.clock.now();
        this.delegateCache.clear();
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final Object get(Object obj) {
        obj.getClass();
        recycle();
        return this.delegateCache.get(obj);
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final boolean hasKey(Object obj) {
        obj.getClass();
        recycle();
        return this.delegateCache.hasKey(obj);
    }

    public final void recycle() {
        if (Duration.m996getInWholeMillisecondsimpl(this.clock.now().m1004minusUwyO8pc(this.lastClearTime)) >= this.cacheTimeValidity) {
            clear();
        }
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final void set(EmailAddress emailAddress, Object obj) {
        recycle();
        this.delegateCache.set(emailAddress, obj);
    }
}
