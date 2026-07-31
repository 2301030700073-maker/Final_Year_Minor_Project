package androidx.compose.ui.text.input;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.text.AnnotatedString;
import com.fsck.k9.message.html.EmailSection;
import com.google.zxing.PlanarYUVLuminanceSource;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CommitTextCommand implements EditCommand {
    public final AnnotatedString annotatedString;
    public final int newCursorPosition;

    public CommitTextCommand(String str, int i) {
        this(new AnnotatedString(str), i);
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(PlanarYUVLuminanceSource planarYUVLuminanceSource) {
        int i = planarYUVLuminanceSource.dataWidth;
        AnnotatedString annotatedString = this.annotatedString;
        if (i != -1) {
            planarYUVLuminanceSource.replace$ui_text(i, annotatedString.text, planarYUVLuminanceSource.dataHeight);
        } else {
            planarYUVLuminanceSource.replace$ui_text(planarYUVLuminanceSource.width, annotatedString.text, planarYUVLuminanceSource.height);
        }
        int i2 = planarYUVLuminanceSource.width;
        int i3 = planarYUVLuminanceSource.height;
        int i4 = i2 == i3 ? i3 : -1;
        int i5 = this.newCursorPosition;
        int coerceIn = RangesKt.coerceIn(i5 > 0 ? (i4 + i5) - 1 : (i4 + i5) - annotatedString.text.length(), 0, ((EmailSection.Builder) planarYUVLuminanceSource.yuvData).getLength());
        planarYUVLuminanceSource.setSelection$ui_text(coerceIn, coerceIn);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommitTextCommand)) {
            return false;
        }
        CommitTextCommand commitTextCommand = (CommitTextCommand) obj;
        return Intrinsics.areEqual(this.annotatedString.text, commitTextCommand.annotatedString.text) && this.newCursorPosition == commitTextCommand.newCursorPosition;
    }

    public final int hashCode() {
        return (this.annotatedString.text.hashCode() * 31) + this.newCursorPosition;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CommitTextCommand(text='");
        sb.append(this.annotatedString.text);
        sb.append("', newCursorPosition=");
        return CameraDevices$CC.m(sb, this.newCursorPosition, ')');
    }

    public CommitTextCommand(AnnotatedString annotatedString, int i) {
        this.annotatedString = annotatedString;
        this.newCursorPosition = i;
    }
}
