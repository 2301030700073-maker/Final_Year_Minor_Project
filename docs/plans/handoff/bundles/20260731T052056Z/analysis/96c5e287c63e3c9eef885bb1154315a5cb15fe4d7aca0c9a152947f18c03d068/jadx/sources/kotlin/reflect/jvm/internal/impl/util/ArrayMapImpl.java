package kotlin.reflect.jvm.internal.impl.util;

import java.util.Arrays;
import java.util.Iterator;
import kotlin.collections.AbstractIterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArrayMapImpl extends ArrayMap {
    public Object[] data;
    public int size;

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final Object get(int i) {
        return ArraysKt___ArraysKt.getOrNull(i, this.data);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final int getSize() {
        return this.size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap, java.lang.Iterable
    public final Iterator iterator() {
        return new AbstractIterator() { // from class: kotlin.reflect.jvm.internal.impl.util.ArrayMapImpl$iterator$1
            public int index = -1;

            @Override // kotlin.collections.AbstractIterator
            public final void computeNext() {
                int i;
                Object[] objArr;
                do {
                    i = this.index + 1;
                    this.index = i;
                    objArr = ArrayMapImpl.this.data;
                    if (i >= objArr.length) {
                        break;
                    }
                } while (objArr[i] == null);
                if (i >= objArr.length) {
                    this.state = 2;
                    return;
                }
                Object obj = objArr[i];
                obj.getClass();
                this.nextValue = obj;
                this.state = 1;
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final void set(int i, AnnotationsTypeAttribute annotationsTypeAttribute) {
        Object[] objArr = this.data;
        if (objArr.length <= i) {
            objArr = Arrays.copyOf(objArr, objArr.length * 2);
            this.data = objArr;
        }
        if (objArr[i] == null) {
            this.size++;
        }
        objArr[i] = annotationsTypeAttribute;
    }
}
