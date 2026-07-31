package androidx.compose.ui.text.input;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.text.AnnotatedString;
import com.fsck.k9.message.html.EmailSection;
import com.google.zxing.PlanarYUVLuminanceSource;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SetComposingTextCommand implements EditCommand {
    public final AnnotatedString annotatedString;
    public final int newCursorPosition;

    public SetComposingTextCommand(String str, int i) {
        this.annotatedString = new AnnotatedString(str);
        this.newCursorPosition = i;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(PlanarYUVLuminanceSource planarYUVLuminanceSource) {
        int i = planarYUVLuminanceSource.dataWidth;
        AnnotatedString annotatedString = this.annotatedString;
        if (i != -1) {
            int i2 = planarYUVLuminanceSource.dataHeight;
            String str = annotatedString.text;
            String str2 = annotatedString.text;
            planarYUVLuminanceSource.replace$ui_text(i, str, i2);
            if (str2.length() > 0) {
                planarYUVLuminanceSource.setComposition$ui_text(i, str2.length() + i);
            }
        } else {
            int i3 = planarYUVLuminanceSource.width;
            int i4 = planarYUVLuminanceSource.height;
            String str3 = annotatedString.text;
            String str4 = annotatedString.text;
            planarYUVLuminanceSource.replace$ui_text(i3, str3, i4);
            if (str4.length() > 0) {
                planarYUVLuminanceSource.setComposition$ui_text(i3, str4.length() + i3);
            }
        }
        int i5 = planarYUVLuminanceSource.width;
        int i6 = planarYUVLuminanceSource.height;
        int i7 = i5 == i6 ? i6 : -1;
        int i8 = this.newCursorPosition;
        int coerceIn = RangesKt.coerceIn(i8 > 0 ? (i7 + i8) - 1 : (i7 + i8) - annotatedString.text.length(), 0, ((EmailSection.Builder) planarYUVLuminanceSource.yuvData).getLength());
        planarYUVLuminanceSource.setSelection$ui_text(coerceIn, coerceIn);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingTextCommand)) {
            return false;
        }
        SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) obj;
        return Intrinsics.areEqual(this.annotatedString.text, setComposingTextCommand.annotatedString.text) && this.newCursorPosition == setComposingTextCommand.newCursorPosition;
    }

    public final int hashCode() {
        return (this.annotatedString.text.hashCode() * 31) + this.newCursorPosition;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SetComposingTextCommand(text='");
        sb.append(this.annotatedString.text);
        sb.append("', newCursorPosition=");
        return CameraDevices$CC.m(sb, this.newCursorPosition, ')');
    }
}
