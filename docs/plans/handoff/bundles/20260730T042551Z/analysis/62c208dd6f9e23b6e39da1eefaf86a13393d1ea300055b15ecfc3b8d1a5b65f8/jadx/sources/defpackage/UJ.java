package defpackage;

import j$.util.DesugarCollections;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public final class UJ {

    /* renamed from: do, reason: not valid java name */
    public static final Set<Annotation> f3861do = Collections.emptySet();

    /* renamed from: do, reason: not valid java name */
    public static boolean m2372do(Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().getSimpleName().equals("Nullable")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public static Set<? extends Annotation> m2373if(Annotation[] annotationArr) {
        LinkedHashSet linkedHashSet = null;
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().isAnnotationPresent(InterfaceC3411np.class)) {
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                }
                linkedHashSet.add(annotation);
            }
        }
        return linkedHashSet != null ? DesugarCollections.unmodifiableSet(linkedHashSet) : f3861do;
    }
}
