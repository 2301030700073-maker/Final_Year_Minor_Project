package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface VisualTransformation {
    TransformedText filter(AnnotatedString annotatedString);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion implements OffsetMapping {
        public static final DifferentialMotionFlingController$$ExternalSyntheticLambda0 None = new DifferentialMotionFlingController$$ExternalSyntheticLambda0(6);

        @Override // androidx.compose.ui.text.input.OffsetMapping
        public int originalToTransformed(int i) {
            return i;
        }

        @Override // androidx.compose.ui.text.input.OffsetMapping
        public int transformedToOriginal(int i) {
            return i;
        }
    }
}
