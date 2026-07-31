package kotlin.reflect.jvm.internal;

import androidx.recyclerview.widget.DiffUtil;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmFunctionSignature$FakeJavaAnnotationConstructor extends KPropertyImplKt {
    public final List methods;

    public JvmFunctionSignature$FakeJavaAnnotationConstructor(Class cls) {
        Object[] declaredMethods = cls.getDeclaredMethods();
        declaredMethods.getClass();
        DiffUtil.AnonymousClass1 anonymousClass1 = new DiffUtil.AnonymousClass1(14);
        if (declaredMethods.length != 0) {
            declaredMethods = Arrays.copyOf(declaredMethods, declaredMethods.length);
            if (declaredMethods.length > 1) {
                Arrays.sort(declaredMethods, anonymousClass1);
            }
        }
        List asList = Arrays.asList(declaredMethods);
        asList.getClass();
        this.methods = asList;
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImplKt
    public final String asString() {
        return CollectionsKt.joinToString$default(this.methods, "", "<init>(", ")V", CachesKt$K_CLASS_CACHE$1.INSTANCE$2, 24);
    }
}
