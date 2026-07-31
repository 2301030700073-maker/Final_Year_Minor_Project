package androidx.compose.ui.node;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.foundation.lazy.layout.PriorityTask;
import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.wikipedia.readinglist.database.ReadingList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                return Intrinsics.compare(((PriorityTask) obj2).priority, ((PriorityTask) obj).priority);
            case 2:
                return Intrinsics.compare(((LazyLayoutMeasuredItem) obj).getIndex(), ((LazyLayoutMeasuredItem) obj2).getIndex());
            case 3:
                return Intrinsics.compare(((androidx.compose.runtime.Invalidation) obj).location, ((androidx.compose.runtime.Invalidation) obj2).location);
            case 4:
                IntRange intRange = (IntRange) obj;
                IntRange intRange2 = (IntRange) obj2;
                return (intRange.last - intRange.first) - (intRange2.last - intRange2.first);
            case 5:
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
            case 6:
                return ((String) obj2).length() - ((String) obj).length();
            case 7:
                if ((obj instanceof ReadingList) && (obj2 instanceof ReadingList)) {
                    return Intrinsics.compare(((ReadingList) obj2).mtime, ((ReadingList) obj).mtime);
                }
                return 0;
            case 8:
                if ((obj instanceof ReadingList) && (obj2 instanceof ReadingList)) {
                    return Intrinsics.compare(((ReadingList) obj).mtime, ((ReadingList) obj2).mtime);
                }
                return 0;
            case 9:
                if ((obj instanceof ReadingList) && (obj2 instanceof ReadingList)) {
                    return ((ReadingList) obj).getAccentInvariantTitle().compareToIgnoreCase(((ReadingList) obj2).getAccentInvariantTitle());
                }
                return 0;
            default:
                if ((obj instanceof ReadingList) && (obj2 instanceof ReadingList)) {
                    return ((ReadingList) obj2).getAccentInvariantTitle().compareToIgnoreCase(((ReadingList) obj).getAccentInvariantTitle());
                }
                return 0;
        }
    }
}
