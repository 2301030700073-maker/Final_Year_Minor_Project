package androidx.compose.ui.platform;

import android.content.res.Resources;
import androidx.compose.ui.semantics.SemanticsNode;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2 extends Lambda implements Function1 {
    final /* synthetic */ Resources $resources;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2(Resources resources) {
        super(1);
        this.$resources = resources;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(TestTagKt.access$isScreenReaderFocusable((SemanticsNode) obj, this.$resources));
    }
}
