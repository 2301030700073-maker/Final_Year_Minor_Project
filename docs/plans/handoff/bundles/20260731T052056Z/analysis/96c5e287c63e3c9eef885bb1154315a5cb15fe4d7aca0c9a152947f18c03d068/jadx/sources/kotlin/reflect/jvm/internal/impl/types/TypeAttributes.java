package kotlin.reflect.jvm.internal.impl.types;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.jvm.internal.impl.util.ArrayMap;
import kotlin.reflect.jvm.internal.impl.util.ArrayMapImpl;
import kotlin.reflect.jvm.internal.impl.util.EmptyArrayMap;
import kotlin.reflect.jvm.internal.impl.util.OneElementArrayMap;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeAttributes implements Iterable, KMappedMarker {
    public static final FormBody.Builder Companion = new FormBody.Builder(16);
    public static final TypeAttributes Empty = new TypeAttributes(EmptyList.INSTANCE);
    public final ArrayMap arrayMap;

    public TypeAttributes(List list) {
        this.arrayMap = EmptyArrayMap.INSTANCE;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AnnotationsTypeAttribute annotationsTypeAttribute = (AnnotationsTypeAttribute) it.next();
            annotationsTypeAttribute.getClass();
            int id = Companion.getId(Reflection.factory.getOrCreateKotlinClass(AnnotationsTypeAttribute.class));
            int size = this.arrayMap.getSize();
            if (size != 0) {
                if (size == 1) {
                    ArrayMap arrayMap = this.arrayMap;
                    arrayMap.getClass();
                    OneElementArrayMap oneElementArrayMap = (OneElementArrayMap) arrayMap;
                    int i = oneElementArrayMap.index;
                    if (i == id) {
                        this.arrayMap = new OneElementArrayMap(id, annotationsTypeAttribute);
                    } else {
                        ArrayMapImpl arrayMapImpl = new ArrayMapImpl();
                        arrayMapImpl.data = new Object[20];
                        arrayMapImpl.size = 0;
                        this.arrayMap = arrayMapImpl;
                        arrayMapImpl.set(i, oneElementArrayMap.value);
                    }
                }
                this.arrayMap.set(id, annotationsTypeAttribute);
            } else {
                this.arrayMap = new OneElementArrayMap(id, annotationsTypeAttribute);
            }
        }
    }

    public final boolean isEmpty() {
        return this.arrayMap.getSize() == 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.arrayMap.iterator();
    }
}
