package androidx.collection;

import androidx.compose.animation.core.Animation;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ObjectListKt {
    public static final Object[] EmptyArray = new Object[0];
    public static final MutableObjectList EmptyObjectList = new MutableObjectList(0);

    public static final void checkIndex(List list, int i) {
        int size = list.size();
        if (i < 0 || i >= size) {
            throw new IndexOutOfBoundsException("Index " + i + " is out of bounds. The list has " + size + " elements.");
        }
    }

    public static final void checkSubIndex(int i, int i2, List list) {
        int size = list.size();
        if (i > i2) {
            throw new IllegalArgumentException("Indices are out of order. fromIndex (" + i + ") is greater than toIndex (" + i2 + ").");
        }
        if (i < 0) {
            Gson$$ExternalSyntheticBUOutline0.m$2(Animation.CC.m(i, "fromIndex (", ") is less than 0."));
            return;
        }
        if (i2 <= size) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i2 + ") is more than than the list size (" + size + ')');
    }
}
