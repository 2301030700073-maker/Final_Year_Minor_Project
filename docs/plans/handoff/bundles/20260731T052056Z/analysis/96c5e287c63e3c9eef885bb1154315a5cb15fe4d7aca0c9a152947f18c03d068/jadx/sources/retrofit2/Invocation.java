package retrofit2;

import j$.util.DesugarCollections;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Invocation {
    public final List arguments;
    public final Object instance;
    public final Method method;
    public final Class service;

    public Invocation(Class cls, Object obj, Method method, ArrayList arrayList) {
        this.service = cls;
        this.instance = obj;
        this.method = method;
        this.arguments = DesugarCollections.unmodifiableList(arrayList);
    }

    public final String toString() {
        return String.format("%s.%s() %s", this.service.getName(), this.method.getName(), this.arguments);
    }
}
