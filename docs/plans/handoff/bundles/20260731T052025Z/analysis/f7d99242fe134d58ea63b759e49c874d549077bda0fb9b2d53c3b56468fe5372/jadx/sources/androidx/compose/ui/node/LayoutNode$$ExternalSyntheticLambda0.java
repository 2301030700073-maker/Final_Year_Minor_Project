package androidx.compose.ui.node;

import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.foundation.lazy.layout.PriorityTask;
import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LayoutNode$$ExternalSyntheticLambda0 implements Comparator {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ LayoutNode$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                LayoutNode layoutNode = (LayoutNode) obj;
                LayoutNode layoutNode2 = (LayoutNode) obj2;
                float f = layoutNode.layoutDelegate.measurePassDelegate.zIndex;
                float f2 = layoutNode2.layoutDelegate.measurePassDelegate.zIndex;
                return f == f2 ? Intrinsics.compare(layoutNode.getPlaceOrder$ui(), layoutNode2.getPlaceOrder$ui()) : Float.compare(f, f2);
            case 1:
                return ((AutoValue_Config_Option) obj).id.compareTo(((AutoValue_Config_Option) obj2).id);
            case 2:
                return Intrinsics.compare(((PriorityTask) obj2).priority, ((PriorityTask) obj).priority);
            case 3:
                return Intrinsics.compare(((LazyLayoutMeasuredItem) obj).getIndex(), ((LazyLayoutMeasuredItem) obj2).getIndex());
            case 4:
                return Intrinsics.compare(((androidx.compose.runtime.Invalidation) obj).location, ((androidx.compose.runtime.Invalidation) obj2).location);
            case 5:
                IntRange intRange = (IntRange) obj;
                IntRange intRange2 = (IntRange) obj2;
                return (intRange.last - intRange.first) - (intRange2.last - intRange2.first);
            case 6:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length != bArr2.length) {
                    return bArr.length - bArr2.length;
                }
                for (int i = 0; i < bArr.length; i++) {
                    byte b = bArr[i];
                    byte b2 = bArr2[i];
                    if (b != b2) {
                        return b - b2;
                    }
                }
                return 0;
            default:
                return ((String) obj2).length() - ((String) obj).length();
        }
    }
}
