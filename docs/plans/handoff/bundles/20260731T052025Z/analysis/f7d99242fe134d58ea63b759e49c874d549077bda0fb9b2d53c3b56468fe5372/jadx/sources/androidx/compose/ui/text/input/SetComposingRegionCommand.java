package androidx.compose.ui.text.input;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.fsck.k9.message.html.EmailSection;
import com.google.zxing.PlanarYUVLuminanceSource;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SetComposingRegionCommand implements EditCommand {
    public final int end;
    public final int start;

    public SetComposingRegionCommand(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(PlanarYUVLuminanceSource planarYUVLuminanceSource) {
        boolean z = planarYUVLuminanceSource.dataWidth != -1;
        EmailSection.Builder builder = (EmailSection.Builder) planarYUVLuminanceSource.yuvData;
        if (z) {
            planarYUVLuminanceSource.dataWidth = -1;
            planarYUVLuminanceSource.dataHeight = -1;
        }
        int coerceIn = RangesKt.coerceIn(this.start, 0, builder.getLength());
        int coerceIn2 = RangesKt.coerceIn(this.end, 0, builder.getLength());
        if (coerceIn != coerceIn2) {
            if (coerceIn < coerceIn2) {
                planarYUVLuminanceSource.setComposition$ui_text(coerceIn, coerceIn2);
            } else {
                planarYUVLuminanceSource.setComposition$ui_text(coerceIn2, coerceIn);
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingRegionCommand)) {
            return false;
        }
        SetComposingRegionCommand setComposingRegionCommand = (SetComposingRegionCommand) obj;
        return this.start == setComposingRegionCommand.start && this.end == setComposingRegionCommand.end;
    }

    public final int hashCode() {
        return (this.start * 31) + this.end;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SetComposingRegionCommand(start=");
        sb.append(this.start);
        sb.append(", end=");
        return CameraDevices$CC.m(sb, this.end, ')');
    }
}
