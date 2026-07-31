package androidx.compose.foundation.layout;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk;
import androidx.camera.camera2.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.core.impl.Quirks;
import androidx.collection.IntIntPair;
import androidx.compose.ui.unit.Constraints;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowLayoutBuildingBlocks {
    public final long constraints;
    public final int crossAxisSpacing;
    public final int mainAxisSpacing;
    public final int maxLines;
    public final FlowLayoutOverflowState overflow;

    public FlowLayoutBuildingBlocks(FlowLayoutOverflowState flowLayoutOverflowState, long j, int i, int i2, int i3) {
        this.overflow = flowLayoutOverflowState;
        this.constraints = j;
        this.maxLines = i;
        this.mainAxisSpacing = i2;
        this.crossAxisSpacing = i3;
    }

    public final OffsetKt getWrapEllipsisInfo(WrapInfo wrapInfo, boolean z, int i, int i2, int i3, int i4) {
        if (!wrapInfo.isLastItemInContainer) {
            return null;
        }
        this.overflow.getClass();
        return null;
    }

    /* renamed from: getWrapInfo-OpUlnko, reason: not valid java name */
    public final WrapInfo m205getWrapInfoOpUlnko(boolean z, int i, long j, IntIntPair intIntPair, int i2, int i3, int i4, boolean z2, boolean z3) {
        int i5 = i3 + i4;
        if (intIntPair == null) {
            return new WrapInfo(true, true);
        }
        long j2 = intIntPair.packedValue;
        this.overflow.getClass();
        if (i2 >= this.maxLines || ((int) (j & 4294967295L)) - ((int) (j2 & 4294967295L)) < 0) {
            return new WrapInfo(true, true);
        }
        if (i != 0 && (i >= Integer.MAX_VALUE || ((int) (j >> 32)) - ((int) (j2 >> 32)) < 0)) {
            return z2 ? new WrapInfo(true, true) : new WrapInfo(true, m205getWrapInfoOpUlnko(z, 0, IntIntPair.m105constructorimpl(Constraints.m734getMaxWidthimpl(this.constraints), (((int) (j & 4294967295L)) - this.crossAxisSpacing) - i4), new IntIntPair(IntIntPair.m105constructorimpl(((int) (j2 >> 32)) - this.mainAxisSpacing, (int) (j2 & 4294967295L))), i2 + 1, i5, 0, true, false).isLastItemInContainer);
        }
        Math.max(i4, (int) (j2 & 4294967295L));
        return new WrapInfo(false, false);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class WrapInfo implements TemplateParamsOverride {
        public final boolean isLastItemInContainer;
        public final boolean isLastItemInLine;

        public WrapInfo(Quirks quirks) {
            boolean z;
            quirks.getClass();
            Iterator it = quirks.getAll(CaptureIntentPreviewQuirk.class).iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (((CaptureIntentPreviewQuirk) it.next()).workaroundByCaptureIntentPreview()) {
                    z = true;
                    break;
                }
            }
            this.isLastItemInLine = z;
            this.isLastItemInContainer = quirks.contains(ImageCaptureFailedForVideoSnapshotQuirk.class);
        }

        @Override // androidx.camera.camera2.compat.workaround.TemplateParamsOverride
        /* renamed from: getOverrideParams-xlOpshk */
        public Map mo18getOverrideParamsxlOpshk(RequestTemplate requestTemplate) {
            if (requestTemplate != null && requestTemplate.value == 3 && this.isLastItemInLine) {
                Map singletonMap = Collections.singletonMap(CaptureRequest.CONTROL_CAPTURE_INTENT, 1);
                singletonMap.getClass();
                return singletonMap;
            }
            if (requestTemplate == null || requestTemplate.value != 4 || !this.isLastItemInContainer) {
                return EmptyMap.INSTANCE;
            }
            Map singletonMap2 = Collections.singletonMap(CaptureRequest.CONTROL_CAPTURE_INTENT, 2);
            singletonMap2.getClass();
            return singletonMap2;
        }

        public WrapInfo(boolean z, boolean z2) {
            this.isLastItemInLine = z;
            this.isLastItemInContainer = z2;
        }
    }
}
