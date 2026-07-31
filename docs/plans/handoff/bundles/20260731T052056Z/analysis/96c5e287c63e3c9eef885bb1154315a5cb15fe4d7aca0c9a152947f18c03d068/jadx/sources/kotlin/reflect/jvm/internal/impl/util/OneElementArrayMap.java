package kotlin.reflect.jvm.internal.impl.util;

import java.util.Iterator;
import kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute;
import kotlin.sequences.SequencesKt__SequencesKt$sequenceOf$1$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OneElementArrayMap extends ArrayMap {
    public final int index;
    public final AnnotationsTypeAttribute value;

    public OneElementArrayMap(int i, AnnotationsTypeAttribute annotationsTypeAttribute) {
        this.value = annotationsTypeAttribute;
        this.index = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final Object get(int i) {
        if (i == this.index) {
            return this.value;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final int getSize() {
        return 1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap, java.lang.Iterable
    public final Iterator iterator() {
        return new SequencesKt__SequencesKt$sequenceOf$1$1(2, this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final void set(int i, AnnotationsTypeAttribute annotationsTypeAttribute) {
        throw new IllegalStateException();
    }
}
