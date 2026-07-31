package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextFieldValue {
    public final AnnotatedString annotatedString;
    public final TextRange composition;
    public final long selection;

    public TextFieldValue(AnnotatedString annotatedString, long j, TextRange textRange) {
        this.annotatedString = annotatedString;
        this.selection = ParagraphKt.m633coerceIn8ffj60Q(j, annotatedString.text.length());
        this.composition = textRange != null ? new TextRange(ParagraphKt.m633coerceIn8ffj60Q(textRange.packedValue, annotatedString.text.length())) : null;
    }

    /* renamed from: copy-3r_uNRQ$default, reason: not valid java name */
    public static TextFieldValue m659copy3r_uNRQ$default(TextFieldValue textFieldValue, AnnotatedString annotatedString, long j, int i) {
        if ((i & 1) != 0) {
            annotatedString = textFieldValue.annotatedString;
        }
        if ((i & 2) != 0) {
            j = textFieldValue.selection;
        }
        TextRange textRange = (i & 4) != 0 ? textFieldValue.composition : null;
        textFieldValue.getClass();
        return new TextFieldValue(annotatedString, j, textRange);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldValue)) {
            return false;
        }
        TextFieldValue textFieldValue = (TextFieldValue) obj;
        return TextRange.m640equalsimpl0(this.selection, textFieldValue.selection) && Intrinsics.areEqual(this.composition, textFieldValue.composition) && Intrinsics.areEqual(this.annotatedString, textFieldValue.annotatedString);
    }

    public final int hashCode() {
        int i;
        int hashCode = this.annotatedString.hashCode() * 31;
        int i2 = TextRange.$r8$clinit;
        long j = this.selection;
        int i3 = (((int) (j ^ (j >>> 32))) + hashCode) * 31;
        TextRange textRange = this.composition;
        if (textRange != null) {
            long j2 = textRange.packedValue;
            i = (int) ((j2 >>> 32) ^ j2);
        } else {
            i = 0;
        }
        return i3 + i;
    }

    public final String toString() {
        return "TextFieldValue(text='" + ((Object) this.annotatedString) + "', selection=" + ((Object) TextRange.m646toStringimpl(this.selection)) + ", composition=" + this.composition + ')';
    }

    public TextFieldValue(int i, long j, String str) {
        this(new AnnotatedString((i & 1) != 0 ? "" : str), (i & 2) != 0 ? TextRange.Zero : j, (TextRange) null);
    }
}
