package com.fsck.k9.mailstore;

import com.fsck.k9.mailstore.SendState;
import java.util.LinkedHashMap;
import java.util.Map;
import net.thunderbird.core.common.mail.Flag;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListCache {
    public static final SendState.Companion Companion = new SendState.Companion();
    public static final LinkedHashMap instances = new LinkedHashMap();
    public final String accountUuid;
    public final LinkedHashMap messageCache = new LinkedHashMap();
    public final LinkedHashMap threadCache = new LinkedHashMap();
    public final LinkedHashMap hiddenMessageCache = new LinkedHashMap();

    public MessageListCache(String str) {
        this.accountUuid = str;
    }

    public static final synchronized MessageListCache getCache(String str) {
        MessageListCache cache;
        synchronized (MessageListCache.class) {
            cache = Companion.getCache(str);
        }
        return cache;
    }

    public final Boolean getFlagForMessage(long j, Flag flag) {
        Boolean bool;
        flag.getClass();
        synchronized (this.messageCache) {
            Map map = (Map) this.messageCache.get(Long.valueOf(j));
            bool = map != null ? (Boolean) map.get(flag) : null;
        }
        return bool;
    }

    public final Boolean getFlagForThread(long j, Flag flag) {
        Boolean bool;
        flag.getClass();
        synchronized (this.threadCache) {
            Map map = (Map) this.threadCache.get(Long.valueOf(j));
            bool = map != null ? (Boolean) map.get(flag) : null;
        }
        return bool;
    }

    public final boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.messageCache) {
            isEmpty = this.messageCache.isEmpty();
        }
        return isEmpty && isThreadCacheEmpty() && isHiddenMessageCacheEmpty();
    }

    public final boolean isHiddenMessageCacheEmpty() {
        boolean isEmpty;
        synchronized (this.hiddenMessageCache) {
            isEmpty = this.hiddenMessageCache.isEmpty();
        }
        return isEmpty;
    }

    public final boolean isMessageHidden(long j, long j2) {
        boolean z;
        synchronized (this.hiddenMessageCache) {
            Long l = (Long) this.hiddenMessageCache.get(Long.valueOf(j));
            if (l != null) {
                z = l.longValue() == j2;
            }
        }
        return z;
    }

    public final boolean isThreadCacheEmpty() {
        boolean isEmpty;
        synchronized (this.threadCache) {
            isEmpty = this.threadCache.isEmpty();
        }
        return isEmpty;
    }
}
