package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import kotlin.collections.MapsKt__MapsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MultiFieldValueClassRepresentation extends ValueClassRepresentation {
    public final ArrayList underlyingPropertyNamesToTypes;

    public MultiFieldValueClassRepresentation(ArrayList arrayList) {
        this.underlyingPropertyNamesToTypes = arrayList;
        if (MapsKt__MapsKt.toMap(arrayList).size() == arrayList.size()) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Some properties have the same names");
        throw null;
    }

    public final String toString() {
        return "MultiFieldValueClassRepresentation(underlyingPropertyNamesToTypes=" + this.underlyingPropertyNamesToTypes + ')';
    }
}
