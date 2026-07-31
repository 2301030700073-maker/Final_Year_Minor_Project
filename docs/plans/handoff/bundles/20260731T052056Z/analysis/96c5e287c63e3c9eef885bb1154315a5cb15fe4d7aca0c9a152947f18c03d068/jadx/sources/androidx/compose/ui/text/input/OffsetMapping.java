package androidx.compose.ui.text.input;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface OffsetMapping {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static final VisualTransformation$Companion Identity = new VisualTransformation$Companion();
    }

    int originalToTransformed(int i);

    int transformedToOriginal(int i);
}
