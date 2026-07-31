package androidx.compose.ui.node;

import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.foundation.lazy.layout.PriorityTask;
import androidx.core.text.util.LinkifyCompat;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.android.exoplayer2.source.dash.BaseUrlExclusionList;
import com.google.android.exoplayer2.source.dash.manifest.BaseUrl;
import com.google.android.exoplayer2.upstream.cache.CacheSpan;
import com.google.android.exoplayer2.upstream.cache.LeastRecentlyUsedCacheEvictor;
import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.schabi.newpipe.util.ListHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LayoutNode$$ExternalSyntheticLambda3 implements Comparator {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ LayoutNode$$ExternalSyntheticLambda3(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$static$0;
        int compareBaseUrl;
        int compare;
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
                return Intrinsics.compare(((LazyListMeasuredItem) obj).index, ((LazyListMeasuredItem) obj2).index);
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
                LinkifyCompat.LinkSpec linkSpec = (LinkifyCompat.LinkSpec) obj;
                LinkifyCompat.LinkSpec linkSpec2 = (LinkifyCompat.LinkSpec) obj2;
                int i2 = linkSpec.start;
                int i3 = linkSpec2.start;
                if (i2 < i3) {
                    return -1;
                }
                if (i2 > i3) {
                    return 1;
                }
                return Integer.compare(linkSpec2.end, linkSpec.end);
            case 7:
                lambda$static$0 = SlowMotionData.Segment.lambda$static$0((SlowMotionData.Segment) obj, (SlowMotionData.Segment) obj2);
                return lambda$static$0;
            case 8:
                compareBaseUrl = BaseUrlExclusionList.compareBaseUrl((BaseUrl) obj, (BaseUrl) obj2);
                return compareBaseUrl;
            case 9:
                compare = LeastRecentlyUsedCacheEvictor.compare((CacheSpan) obj, (CacheSpan) obj2);
                return compare;
            case 10:
                return ((String) obj2).length() - ((String) obj).length();
            case 11:
                return ((String) obj).compareTo((String) obj2);
            default:
                return ListHelper.compareVideoStreamResolution((String) obj, (String) obj2);
        }
    }
}
