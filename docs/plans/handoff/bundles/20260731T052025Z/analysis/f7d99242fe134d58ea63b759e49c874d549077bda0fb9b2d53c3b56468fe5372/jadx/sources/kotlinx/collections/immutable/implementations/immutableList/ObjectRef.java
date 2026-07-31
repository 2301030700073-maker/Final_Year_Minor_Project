package kotlinx.collections.immutable.implementations.immutableList;

import android.view.accessibility.AccessibilityNodeInfo;
import kotlinx.datetime.internal.format.parser.NumberConsumptionError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ObjectRef implements NumberConsumptionError {
    public Object value;

    public /* synthetic */ ObjectRef(Object obj) {
        this.value = obj;
    }

    public static ObjectRef obtain(boolean z, int i, int i2, int i3, int i4) {
        return new ObjectRef(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false, z));
    }

    @Override // kotlinx.datetime.internal.format.parser.NumberConsumptionError
    public String errorMessage() {
        return "attempted to overwrite the existing value '" + this.value + '\'';
    }
}
