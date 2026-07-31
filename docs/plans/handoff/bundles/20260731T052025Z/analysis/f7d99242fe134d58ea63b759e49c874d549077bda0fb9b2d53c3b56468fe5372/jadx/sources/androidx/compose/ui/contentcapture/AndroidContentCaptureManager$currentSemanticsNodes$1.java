package androidx.compose.ui.contentcapture;

import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidContentCaptureManager$currentSemanticsNodes$1 extends Lambda implements Function1 {
    public static final AndroidContentCaptureManager$currentSemanticsNodes$1 INSTANCE = new AndroidContentCaptureManager$currentSemanticsNodes$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SemanticsConfiguration config = ((SemanticsNode) obj).getConfig();
        return Boolean.valueOf(config.props.containsKey(SemanticsProperties.LinkTestMarker));
    }
}
