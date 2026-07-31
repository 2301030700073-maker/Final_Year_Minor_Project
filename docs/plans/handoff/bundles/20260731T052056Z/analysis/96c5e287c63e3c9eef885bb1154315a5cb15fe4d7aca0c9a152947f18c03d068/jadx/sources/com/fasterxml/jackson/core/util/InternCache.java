package com.fasterxml.jackson.core.util;

import j$.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InternCache extends ConcurrentHashMap {
    public static final InternCache instance = new InternCache();
    public final Object lock;

    public InternCache() {
        super(180, 0.8f, 4);
        this.lock = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String intern(String str) {
        String str2 = (String) get(str);
        if (str2 != null) {
            return str2;
        }
        if (size() >= 180) {
            synchronized (this.lock) {
                try {
                    if (size() >= 180) {
                        clear();
                    }
                } finally {
                }
            }
        }
        String intern = str.intern();
        put(intern, intern);
        return intern;
    }
}
