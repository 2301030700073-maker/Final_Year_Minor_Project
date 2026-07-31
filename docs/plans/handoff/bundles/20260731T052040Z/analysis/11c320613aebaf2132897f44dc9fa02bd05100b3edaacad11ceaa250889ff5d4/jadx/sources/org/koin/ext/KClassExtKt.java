package org.koin.ext;

import androidx.work.OperationKt;
import j$.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class KClassExtKt {
    public static final ConcurrentHashMap classNames = new ConcurrentHashMap();

    public static final String getFullName(ClassReference classReference) {
        classReference.getClass();
        ConcurrentHashMap concurrentHashMap = classNames;
        String str = (String) concurrentHashMap.get(classReference);
        if (str != null) {
            return str;
        }
        String name = OperationKt.getJavaClass(classReference).getName();
        concurrentHashMap.put(classReference, name);
        return name;
    }
}
