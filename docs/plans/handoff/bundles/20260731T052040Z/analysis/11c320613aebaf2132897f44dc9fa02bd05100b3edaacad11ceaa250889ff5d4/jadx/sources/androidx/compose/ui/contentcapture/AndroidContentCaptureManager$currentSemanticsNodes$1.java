package androidx.compose.ui.contentcapture;

import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidContentCaptureManager$currentSemanticsNodes$1 extends Lambda implements Function1 {
    public static final AndroidContentCaptureManager$currentSemanticsNodes$1 INSTANCE = new AndroidContentCaptureManager$currentSemanticsNodes$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SemanticsConfiguration config = ((SemanticsNode) obj).getConfig();
        return Boolean.valueOf(config.props.containsKey(SemanticsProperties.LinkTestMarker));
    }
}
