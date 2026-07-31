package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import kotlin.io.LinesSequence;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompositeAnnotations$iterator$1 extends Lambda implements Function1 {
    public static final CompositeAnnotations$iterator$1 INSTANCE = new CompositeAnnotations$iterator$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Annotations annotations = (Annotations) obj;
        annotations.getClass();
        return new LinesSequence(2, annotations);
    }
}
