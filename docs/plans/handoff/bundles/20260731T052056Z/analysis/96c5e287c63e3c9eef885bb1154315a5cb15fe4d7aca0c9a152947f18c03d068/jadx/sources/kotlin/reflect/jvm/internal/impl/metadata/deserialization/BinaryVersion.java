package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import androidx.compose.animation.core.Animation;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysJvmKt$asList$3;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BinaryVersion {
    public final int major;
    public final int minor;
    public final int[] numbers;
    public final int patch;
    public final List rest;

    public BinaryVersion(int... iArr) {
        List list;
        this.numbers = iArr;
        Integer orNull = ArraysKt___ArraysKt.getOrNull(iArr, 0);
        this.major = orNull != null ? orNull.intValue() : -1;
        Integer orNull2 = ArraysKt___ArraysKt.getOrNull(iArr, 1);
        this.minor = orNull2 != null ? orNull2.intValue() : -1;
        Integer orNull3 = ArraysKt___ArraysKt.getOrNull(iArr, 2);
        this.patch = orNull3 != null ? orNull3.intValue() : -1;
        if (iArr.length <= 3) {
            list = EmptyList.INSTANCE;
        } else {
            if (iArr.length > 1024) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(new StringBuilder("BinaryVersion with length more than 1024 are not supported. Provided length "), iArr.length, '.'));
                throw null;
            }
            list = CollectionsKt.toList(new AbstractList.SubList(new ArraysKt___ArraysJvmKt$asList$3(iArr), 3, iArr.length));
        }
        this.rest = list;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        BinaryVersion binaryVersion = (BinaryVersion) obj;
        return this.major == binaryVersion.major && this.minor == binaryVersion.minor && this.patch == binaryVersion.patch && this.rest.equals(binaryVersion.rest);
    }

    public final int hashCode() {
        int i = this.major;
        int i2 = (i * 31) + this.minor + i;
        int i3 = (i2 * 31) + this.patch + i2;
        return this.rest.hashCode() + (i3 * 31) + i3;
    }

    public final boolean isAtLeast(int i, int i2, int i3) {
        int i4 = this.major;
        if (i4 > i) {
            return true;
        }
        if (i4 < i) {
            return false;
        }
        int i5 = this.minor;
        if (i5 > i2) {
            return true;
        }
        return i5 >= i2 && this.patch >= i3;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        for (int i : this.numbers) {
            if (i == -1) {
                break;
            }
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList.isEmpty() ? "unknown" : CollectionsKt.joinToString$default(arrayList, ".", null, null, null, 62);
    }
}
