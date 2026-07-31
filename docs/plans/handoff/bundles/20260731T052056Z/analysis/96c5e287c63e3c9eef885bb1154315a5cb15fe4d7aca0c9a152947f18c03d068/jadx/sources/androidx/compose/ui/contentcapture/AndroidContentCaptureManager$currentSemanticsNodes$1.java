package androidx.compose.ui.contentcapture;

import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidContentCaptureManager$currentSemanticsNodes$1 extends Lambda implements Function1 {
    public static final AndroidContentCaptureManager$currentSemanticsNodes$1 INSTANCE = new AndroidContentCaptureManager$currentSemanticsNodes$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SemanticsConfiguration config = ((SemanticsNode) obj).getConfig();
        return Boolean.valueOf(config.props.containsKey(SemanticsProperties.LinkTestMarker));
    }
}
