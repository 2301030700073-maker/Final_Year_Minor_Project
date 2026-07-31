package androidx.compose.foundation.text;

import androidx.camera.core.impl.Config;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import okhttp3.internal.http2.Huffman;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ValidatingOffsetMappingKt {
    public static final Huffman.Node ValidatingEmptyOffsetMappingIdentity = new Huffman.Node(OffsetMapping.Companion.Identity, 0, 0);

    public static final TransformedText filterWithValidation(VisualTransformation visualTransformation, AnnotatedString annotatedString) {
        TransformedText filter = visualTransformation.filter(annotatedString);
        int length = annotatedString.text.length();
        AnnotatedString annotatedString2 = filter.text;
        OffsetMapping offsetMapping = filter.offsetMapping;
        int length2 = annotatedString2.text.length();
        int min = Math.min(length, 100);
        for (int i = 0; i < min; i++) {
            validateOriginalToTransformed(offsetMapping.originalToTransformed(i), length2, i);
        }
        validateOriginalToTransformed(offsetMapping.originalToTransformed(length), length2, length);
        int min2 = Math.min(length2, 100);
        for (int i2 = 0; i2 < min2; i2++) {
            validateTransformedToOriginal(offsetMapping.transformedToOriginal(i2), length, i2);
        }
        validateTransformedToOriginal(offsetMapping.transformedToOriginal(length2), length, length2);
        return new TransformedText(annotatedString2, new Huffman.Node(offsetMapping, annotatedString.text.length(), annotatedString2.text.length()));
    }

    public static final void validateOriginalToTransformed(int i, int i2, int i3) {
        boolean z = false;
        if (i >= 0 && i <= i2) {
            z = true;
        }
        if (z) {
            return;
        }
        StringBuilder m91m = Config.CC.m91m("OffsetMapping.originalToTransformed returned invalid mapping: ", i3, " -> ", i, " is not in range of transformed text [0, ");
        m91m.append(i2);
        m91m.append(']');
        InlineClassHelperKt.throwIllegalStateException(m91m.toString());
    }

    public static final void validateTransformedToOriginal(int i, int i2, int i3) {
        boolean z = false;
        if (i >= 0 && i <= i2) {
            z = true;
        }
        if (z) {
            return;
        }
        StringBuilder m91m = Config.CC.m91m("OffsetMapping.transformedToOriginal returned invalid mapping: ", i3, " -> ", i, " is not in range of original text [0, ");
        m91m.append(i2);
        m91m.append(']');
        InlineClassHelperKt.throwIllegalStateException(m91m.toString());
    }
}
