package androidx.lifecycle.viewmodel;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CreationExtras {
    public final LinkedHashMap extras = new LinkedHashMap();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Empty extends CreationExtras {
        public static final Empty INSTANCE = new Empty();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CreationExtras) {
            return Intrinsics.areEqual(this.extras, ((CreationExtras) obj).extras);
        }
        return false;
    }

    public final int hashCode() {
        return this.extras.hashCode();
    }

    public final String toString() {
        return "CreationExtras(extras=" + this.extras + ")";
    }
}
