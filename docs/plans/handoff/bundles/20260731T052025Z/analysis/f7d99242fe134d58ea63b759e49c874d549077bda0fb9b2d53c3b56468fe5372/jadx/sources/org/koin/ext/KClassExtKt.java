package org.koin.ext;

import j$.util.concurrent.ConcurrentHashMap;
import kotlin.reflect.KClass;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class KClassExtKt {
    public static final ConcurrentHashMap classNames = new ConcurrentHashMap();

    public static final String getFullName(KClass kClass) {
        kClass.getClass();
        ConcurrentHashMap concurrentHashMap = classNames;
        String str = (String) concurrentHashMap.get(kClass);
        if (str != null) {
            return str;
        }
        String name = Handshake.Companion.getJavaClass(kClass).getName();
        concurrentHashMap.put(kClass, name);
        return name;
    }
}
