package androidx.compose.foundation.text;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.text.Placeholder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InlineTextContent {
    public final ComposableLambdaImpl children;
    public final Placeholder placeholder;

    public InlineTextContent(Placeholder placeholder, ComposableLambdaImpl composableLambdaImpl) {
        this.placeholder = placeholder;
        this.children = composableLambdaImpl;
    }
}
