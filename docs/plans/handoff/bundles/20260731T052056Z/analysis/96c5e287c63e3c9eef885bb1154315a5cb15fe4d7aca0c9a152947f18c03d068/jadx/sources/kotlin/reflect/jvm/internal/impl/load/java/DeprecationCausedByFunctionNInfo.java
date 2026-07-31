package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationLevelValue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeprecationCausedByFunctionNInfo implements Comparable {
    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ((DeprecationCausedByFunctionNInfo) obj).getClass();
        DeprecationLevelValue deprecationLevelValue = DeprecationLevelValue.ERROR;
        return deprecationLevelValue.compareTo(deprecationLevelValue);
    }
}
