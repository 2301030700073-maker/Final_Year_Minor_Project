package coil3;

import android.view.accessibility.AccessibilityNodeInfo;
import coil3.util.UtilsKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Extras {
    public static final Extras EMPTY = new Extras(UtilsKt.toImmutableMap(new LinkedHashMap()));
    public final Map data;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Key {

        /* renamed from: default, reason: not valid java name */
        public Object f8default;

        public /* synthetic */ Key(Object obj) {
            this.f8default = obj;
        }

        public static Key obtain(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new Key(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
        }
    }

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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public final LinkedHashMap data;

        public Builder(Extras extras) {
            Map map = extras.data;
            map.getClass();
            this.data = new LinkedHashMap(map);
        }

        public Builder() {
            this.data = new LinkedHashMap();
        }
    }
}
