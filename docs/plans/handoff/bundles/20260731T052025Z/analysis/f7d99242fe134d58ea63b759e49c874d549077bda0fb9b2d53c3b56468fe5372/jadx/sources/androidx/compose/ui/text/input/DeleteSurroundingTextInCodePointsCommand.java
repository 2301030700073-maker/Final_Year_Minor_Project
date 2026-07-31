package androidx.compose.ui.text.input;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import com.fsck.k9.message.html.EmailSection;
import com.google.zxing.PlanarYUVLuminanceSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DeleteSurroundingTextInCodePointsCommand implements EditCommand {
    public final int lengthAfterCursor;
    public final int lengthBeforeCursor;

    public DeleteSurroundingTextInCodePointsCommand(int i, int i2) {
        this.lengthBeforeCursor = i;
        this.lengthAfterCursor = i2;
        if (i >= 0 && i2 >= 0) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i + " and " + i2 + " respectively.");
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(PlanarYUVLuminanceSource planarYUVLuminanceSource) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 < this.lengthBeforeCursor) {
                int i4 = i3 + 1;
                int i5 = planarYUVLuminanceSource.width;
                if (i5 <= i4) {
                    i3 = i5;
                    break;
                } else {
                    i3 = (Character.isHighSurrogate(planarYUVLuminanceSource.get$ui_text((i5 - i4) + (-1))) && Character.isLowSurrogate(planarYUVLuminanceSource.get$ui_text(planarYUVLuminanceSource.width - i4))) ? i3 + 2 : i4;
                    i2++;
                }
            } else {
                break;
            }
        }
        int i6 = 0;
        while (true) {
            if (i >= this.lengthAfterCursor) {
                break;
            }
            int i7 = i6 + 1;
            int i8 = planarYUVLuminanceSource.height;
            EmailSection.Builder builder = (EmailSection.Builder) planarYUVLuminanceSource.yuvData;
            if (i8 + i7 >= builder.getLength()) {
                i6 = builder.getLength() - planarYUVLuminanceSource.height;
                break;
            } else {
                i6 = (Character.isHighSurrogate(planarYUVLuminanceSource.get$ui_text((planarYUVLuminanceSource.height + i7) + (-1))) && Character.isLowSurrogate(planarYUVLuminanceSource.get$ui_text(planarYUVLuminanceSource.height + i7))) ? i6 + 2 : i7;
                i++;
            }
        }
        int i9 = planarYUVLuminanceSource.height;
        planarYUVLuminanceSource.delete$ui_text(i9, i6 + i9);
        int i10 = planarYUVLuminanceSource.width;
        planarYUVLuminanceSource.delete$ui_text(i10 - i3, i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeleteSurroundingTextInCodePointsCommand)) {
            return false;
        }
        DeleteSurroundingTextInCodePointsCommand deleteSurroundingTextInCodePointsCommand = (DeleteSurroundingTextInCodePointsCommand) obj;
        return this.lengthBeforeCursor == deleteSurroundingTextInCodePointsCommand.lengthBeforeCursor && this.lengthAfterCursor == deleteSurroundingTextInCodePointsCommand.lengthAfterCursor;
    }

    public final int hashCode() {
        return (this.lengthBeforeCursor * 31) + this.lengthAfterCursor;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor=");
        sb.append(this.lengthBeforeCursor);
        sb.append(", lengthAfterCursor=");
        return CameraDevices$CC.m(sb, this.lengthAfterCursor, ')');
    }
}
