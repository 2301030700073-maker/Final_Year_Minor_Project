package kotlin.enums;

import androidx.compose.ui.Modifier;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import java.util.RandomAccess;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EnumEntriesList extends AbstractList implements EnumEntries, RandomAccess, Serializable {
    public final Enum[] entries;

    public EnumEntriesList(Enum[] enumArr) {
        this.entries = enumArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r2 = (Enum) obj;
        return ((Enum) ArraysKt___ArraysKt.getOrNull(r2.ordinal(), this.entries)) == r2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Enum[] enumArr = this.entries;
        int length = enumArr.length;
        if (i >= 0 && i < length) {
            return enumArr[i];
        }
        Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i, length, "index: ", ", size: "));
        return null;
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.entries.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r3 = (Enum) obj;
        int ordinal = r3.ordinal();
        if (((Enum) ArraysKt___ArraysKt.getOrNull(ordinal, this.entries)) == r3) {
            return ordinal;
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r3 = (Enum) obj;
        int ordinal = r3.ordinal();
        if (((Enum) ArraysKt___ArraysKt.getOrNull(ordinal, this.entries)) == r3) {
            return ordinal;
        }
        return -1;
    }
}
