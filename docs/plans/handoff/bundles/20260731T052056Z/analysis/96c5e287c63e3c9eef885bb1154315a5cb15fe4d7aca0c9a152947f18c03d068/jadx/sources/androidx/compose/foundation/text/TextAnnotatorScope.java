package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextAnnotatorScope {
    public final AnnotatedString initialText;
    public AnnotatedString styledText;

    public TextAnnotatorScope(AnnotatedString annotatedString) {
        this.initialText = annotatedString;
        this.styledText = annotatedString;
    }
}
