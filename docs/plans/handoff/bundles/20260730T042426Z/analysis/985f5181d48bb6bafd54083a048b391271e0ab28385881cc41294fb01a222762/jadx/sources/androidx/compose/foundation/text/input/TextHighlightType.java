package androidx.compose.foundation.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: TextFieldCharSequence.kt */
/* loaded from: classes.dex */
public abstract class TextHighlightType {
    public static final Companion Companion = new Companion(null);
    private static final int HandwritingSelectPreview = m478constructorimpl(0);
    private static final int HandwritingDeletePreview = m478constructorimpl(1);

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m478constructorimpl(int i) {
        return i;
    }

    /* compiled from: TextFieldCharSequence.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getHandwritingSelectPreview-s-xJuwY, reason: not valid java name */
        public final int m480getHandwritingSelectPreviewsxJuwY() {
            return TextHighlightType.HandwritingSelectPreview;
        }

        /* renamed from: getHandwritingDeletePreview-s-xJuwY, reason: not valid java name */
        public final int m479getHandwritingDeletePreviewsxJuwY() {
            return TextHighlightType.HandwritingDeletePreview;
        }
    }
}
