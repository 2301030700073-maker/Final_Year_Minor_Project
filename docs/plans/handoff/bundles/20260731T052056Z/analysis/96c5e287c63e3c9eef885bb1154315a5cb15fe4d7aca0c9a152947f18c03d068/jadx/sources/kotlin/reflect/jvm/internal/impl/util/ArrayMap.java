package kotlin.reflect.jvm.internal.impl.util;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ArrayMap implements Iterable, KMappedMarker {
    public abstract Object get(int i);

    public abstract int getSize();

    @Override // java.lang.Iterable
    public abstract Iterator iterator();

    public abstract void set(int i, AnnotationsTypeAttribute annotationsTypeAttribute);
}
