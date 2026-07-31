package app.k9mail.core.ui.compose.designsystem.atom.textfield;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TextFieldCommonKt {
    public static final Regex LINE_BREAK = new Regex("[\\r\\n]");

    public static final ComposableLambdaImpl selectLabel(String str, boolean z) {
        if (str != null || z) {
            return new ComposableLambdaImpl(-1761586800, new TextFieldLabelKt$$ExternalSyntheticLambda0(str, z), true);
        }
        return null;
    }
}
