package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.OffsetMapping;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PasswordVisualTransformation implements VisualTransformation {
    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof PasswordVisualTransformation);
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    public final TransformedText filter(AnnotatedString annotatedString) {
        return new TransformedText(new AnnotatedString(StringsKt__StringsJVMKt.repeat(String.valueOf((char) 8226), annotatedString.text.length())), OffsetMapping.Companion.Identity);
    }

    public final int hashCode() {
        return 8226;
    }
}
