package kotlin.reflect.jvm.internal.impl.utils;

import androidx.compose.ui.graphics.vector.VectorGroup$iterator$1;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.SequencesKt__SequencesKt$sequenceOf$1$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SmartSet extends AbstractSet {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Object data;
    public int size;

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0061, code lost:
    
        if (kotlin.jvm.internal.TypeIntrinsics.asMutableSet(r2).add(r6) == false) goto L23;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean add(java.lang.Object r6) {
        /*
            r5 = this;
            int r0 = r5.size
            r1 = 1
            if (r0 != 0) goto L8
            r5.data = r6
            goto L64
        L8:
            java.lang.Object r2 = r5.data
            r3 = 0
            if (r0 != r1) goto L20
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r6)
            if (r0 == 0) goto L14
            goto L63
        L14:
            java.lang.Object r0 = r5.data
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r3] = r0
            r2[r1] = r6
            r5.data = r2
            goto L64
        L20:
            r4 = 5
            if (r0 >= r4) goto L56
            r2.getClass()
            java.lang.Object[] r2 = (java.lang.Object[]) r2
            boolean r0 = kotlin.collections.ArraysKt___ArraysKt.contains(r6, r2)
            if (r0 == 0) goto L2f
            goto L63
        L2f:
            int r0 = r5.size
            r3 = 4
            if (r0 != r3) goto L4a
            int r0 = r2.length
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r2, r0)
            java.util.LinkedHashSet r2 = new java.util.LinkedHashSet
            int r3 = r0.length
            int r3 = kotlin.collections.MapsKt__MapsKt.mapCapacity(r3)
            r2.<init>(r3)
            kotlin.collections.ArraysKt___ArraysKt.toCollection(r0, r2)
            r2.add(r6)
            goto L53
        L4a:
            int r0 = r0 + r1
            java.lang.Object[] r2 = java.util.Arrays.copyOf(r2, r0)
            int r0 = r2.length
            int r0 = r0 - r1
            r2[r0] = r6
        L53:
            r5.data = r2
            goto L64
        L56:
            r2.getClass()
            java.util.Set r0 = kotlin.jvm.internal.TypeIntrinsics.asMutableSet(r2)
            boolean r6 = r0.add(r6)
            if (r6 != 0) goto L64
        L63:
            return r3
        L64:
            int r6 = r5.size
            int r6 = r6 + r1
            r5.size = r6
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.utils.SmartSet.add(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.data = null;
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int i = this.size;
        if (i == 0) {
            return false;
        }
        if (i == 1) {
            return Intrinsics.areEqual(this.data, obj);
        }
        Object obj2 = this.data;
        if (i < 5) {
            obj2.getClass();
            return ArraysKt___ArraysKt.contains(obj, (Object[]) obj2);
        }
        obj2.getClass();
        return ((Set) obj2).contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i = this.size;
        if (i == 0) {
            return Collections.EMPTY_SET.iterator();
        }
        Object obj = this.data;
        int i2 = 1;
        if (i == 1) {
            return new SequencesKt__SequencesKt$sequenceOf$1$1(i2, obj);
        }
        if (i < 5) {
            obj.getClass();
            return new VectorGroup$iterator$1((Object[]) obj);
        }
        obj.getClass();
        return TypeIntrinsics.asMutableSet(obj).iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.size;
    }
}
