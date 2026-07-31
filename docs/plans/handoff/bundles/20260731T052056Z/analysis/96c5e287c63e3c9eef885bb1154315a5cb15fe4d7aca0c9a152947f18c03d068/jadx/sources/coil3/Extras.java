package coil3;

import android.view.accessibility.AccessibilityNodeInfo;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Extras {
    public static final Extras EMPTY = new Extras(ExceptionsKt.toImmutableMap(new LinkedHashMap()));
    public final Map data;

    public Extras(Map map) {
        this.data = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Extras) && Intrinsics.areEqual(this.data, ((Extras) obj).data);
    }

    public final int hashCode() {
        return this.data.hashCode();
    }

    public final String toString() {
        return "Extras(data=" + this.data + ")";
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public final LinkedHashMap data;

        public Builder(Extras extras) {
            this.data = MapsKt__MapsKt.toMutableMap(extras.data);
        }

        public Builder() {
            this.data = new LinkedHashMap();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Key {

        /* renamed from: default, reason: not valid java name */
        public Object f16default;

        public /* synthetic */ Key(Object obj) {
            this.f16default = obj;
        }

        public static Key obtain(boolean z, int i, int i2, int i3, int i4) {
            return new Key(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false, z));
        }

        public static Key obtain(int i, int i2, int i3) {
            return new Key(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false, i3));
        }
    }
}
