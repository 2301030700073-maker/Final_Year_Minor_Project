package androidx.compose.ui.text.input;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.fsck.k9.message.html.EmailSection;
import com.google.zxing.PlanarYUVLuminanceSource;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SetSelectionCommand implements EditCommand {
    public final int end;
    public final int start;

    public SetSelectionCommand(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(PlanarYUVLuminanceSource planarYUVLuminanceSource) {
        int coerceIn = RangesKt.coerceIn(this.start, 0, ((EmailSection.Builder) planarYUVLuminanceSource.yuvData).getLength());
        int coerceIn2 = RangesKt.coerceIn(this.end, 0, ((EmailSection.Builder) planarYUVLuminanceSource.yuvData).getLength());
        if (coerceIn < coerceIn2) {
            planarYUVLuminanceSource.setSelection$ui_text(coerceIn, coerceIn2);
        } else {
            planarYUVLuminanceSource.setSelection$ui_text(coerceIn2, coerceIn);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetSelectionCommand)) {
            return false;
        }
        SetSelectionCommand setSelectionCommand = (SetSelectionCommand) obj;
        return this.start == setSelectionCommand.start && this.end == setSelectionCommand.end;
    }

    public final int hashCode() {
        return (this.start * 31) + this.end;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SetSelectionCommand(start=");
        sb.append(this.start);
        sb.append(", end=");
        return CameraDevices$CC.m(sb, this.end, ')');
    }
}
