package kotlin.reflect.jvm.internal.impl.types.model;

import java.util.ArrayList;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArgumentList extends ArrayList implements TypeArgumentListMarker {
    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof TypeProjectionBase) {
            return super.contains((TypeProjectionBase) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof TypeProjectionBase) {
            return super.indexOf((TypeProjectionBase) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof TypeProjectionBase) {
            return super.lastIndexOf((TypeProjectionBase) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof TypeProjectionBase) {
            return super.remove((TypeProjectionBase) obj);
        }
        return false;
    }
}
