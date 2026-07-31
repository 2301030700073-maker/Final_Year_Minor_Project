package net.thunderbird.core.common.cache;

import java.util.LinkedHashMap;
import java.util.Map;
import net.thunderbird.core.common.mail.EmailAddress;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InMemoryCache implements Cache {
    public final /* synthetic */ int $r8$classId;
    public final Object cache;

    public InMemoryCache() {
        this.$r8$classId = 0;
        this.cache = new LinkedHashMap();
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final void clear() {
        switch (this.$r8$classId) {
            case 0:
                ((Map) this.cache).clear();
                return;
            default:
                synchronized (((ExpiringCache) this.cache)) {
                    ((ExpiringCache) this.cache).clear();
                }
                return;
        }
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final Object get(Object obj) {
        Object obj2;
        switch (this.$r8$classId) {
            case 0:
                obj.getClass();
                return ((Map) this.cache).get(obj);
            default:
                obj.getClass();
                synchronized (((ExpiringCache) this.cache)) {
                    obj2 = ((ExpiringCache) this.cache).get(obj);
                }
                return obj2;
        }
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final boolean hasKey(Object obj) {
        boolean hasKey;
        switch (this.$r8$classId) {
            case 0:
                obj.getClass();
                return ((Map) this.cache).containsKey(obj);
            default:
                obj.getClass();
                synchronized (((ExpiringCache) this.cache)) {
                    hasKey = ((ExpiringCache) this.cache).hasKey(obj);
                }
                return hasKey;
        }
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final void set(EmailAddress emailAddress, Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((Map) this.cache).put(emailAddress, obj);
                return;
            default:
                synchronized (((ExpiringCache) this.cache)) {
                    ((ExpiringCache) this.cache).set(emailAddress, obj);
                }
                return;
        }
    }

    public InMemoryCache(ExpiringCache expiringCache) {
        this.$r8$classId = 1;
        this.cache = expiringCache;
    }
}
