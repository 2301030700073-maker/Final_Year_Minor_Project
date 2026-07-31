package androidx.compose.ui.relocation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.work.OperationKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import okhttp3.Cookie;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BringIntoViewModifierNodeKt$bringIntoView$2 extends Lambda implements Function0 {
    final /* synthetic */ Function0 $bounds;
    final /* synthetic */ LayoutCoordinates $layoutCoordinates;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewModifierNodeKt$bringIntoView$2(Function0 function0, NodeCoordinator nodeCoordinator) {
        super(0);
        this.$bounds = function0;
        this.$layoutCoordinates = nodeCoordinator;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Rect rect;
        Function0 function0 = this.$bounds;
        if (function0 != null && (rect = (Rect) function0.invoke()) != null) {
            return rect;
        }
        LayoutCoordinates layoutCoordinates = this.$layoutCoordinates;
        if (!layoutCoordinates.isAttached()) {
            layoutCoordinates = null;
        }
        if (layoutCoordinates != null) {
            return OperationKt.m476Recttz77jQw(0L, Cookie.Companion.m708toSizeozmzZPI(layoutCoordinates.mo296getSizeYbymL2g()));
        }
        return null;
    }
}
