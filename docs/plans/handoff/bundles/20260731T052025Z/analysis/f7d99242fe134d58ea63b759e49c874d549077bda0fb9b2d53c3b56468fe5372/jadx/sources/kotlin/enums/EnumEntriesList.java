package kotlin.enums;

import androidx.compose.ui.Modifier;
import java.io.Serializable;
import java.util.RandomAccess;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EnumEntriesList extends AbstractList implements EnumEntries, RandomAccess, Serializable {
    public final Enum[] entries;

    public EnumEntriesList(Enum[] enumArr) {
        enumArr.getClass();
        this.entries = enumArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r3 = (Enum) obj;
        return ((Enum) ArraysKt___ArraysKt.getOrNull(r3.ordinal(), this.entries)) == r3;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Enum[] enumArr = this.entries;
        int length = enumArr.length;
        if (i >= 0 && i < length) {
            return enumArr[i];
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, length, "index: ", ", size: "));
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
