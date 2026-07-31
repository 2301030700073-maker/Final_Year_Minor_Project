package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$3;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AndroidView_androidKt {
    public static final AndroidViewHolder_androidKt$NoOpScrollConnection$1 NoOpScrollConnection = new AndroidViewHolder_androidKt$NoOpScrollConnection$1();

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f4, code lost:
    
        if (r10.changed(r25) != false) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x019e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AndroidView(int r22, androidx.compose.runtime.Composer r23, androidx.compose.ui.Modifier r24, kotlin.jvm.functions.Function1 r25) {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.viewinterop.AndroidView_androidKt.AndroidView(int, androidx.compose.runtime.Composer, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1):void");
    }

    public static final View access$getEmbeddedView(Modifier.Node node) {
        ViewFactoryHolder viewFactoryHolder = HitTestResultKt.requireLayoutNode(node.node).interopViewFactoryHolder;
        View interopView = viewFactoryHolder != null ? viewFactoryHolder.getInteropView() : null;
        if (interopView != null) {
            return interopView;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Could not fetch interop view");
        return null;
    }

    public static final void access$layoutAccordingTo(ViewFactoryHolder viewFactoryHolder, LayoutNode layoutNode) {
        long mo579localToRootMKHz9U = ((InnerNodeCoordinator) layoutNode.nodes.innerCoordinator).mo579localToRootMKHz9U(0L);
        int round = Math.round(Float.intBitsToFloat((int) (mo579localToRootMKHz9U >> 32)));
        int round2 = Math.round(Float.intBitsToFloat((int) (mo579localToRootMKHz9U & 4294967295L)));
        viewFactoryHolder.layout(round, round2, viewFactoryHolder.getMeasuredWidth() + round, viewFactoryHolder.getMeasuredHeight() + round2);
    }

    public static final ViewFactoryHolder access$requireViewFactoryHolder(LayoutNode layoutNode) {
        ViewFactoryHolder viewFactoryHolder = layoutNode.interopViewFactoryHolder;
        if (viewFactoryHolder != null) {
            return viewFactoryHolder;
        }
        throw Modifier.CC.m405m("Required value was null.");
    }

    public static final void AndroidView(Function1 function1, Modifier modifier, Function1 function12, Composer composer, int i) {
        int i2;
        Function1 function13;
        AndroidView_androidKt$NoOpUpdate$1 androidView_androidKt$NoOpUpdate$1 = AndroidView_androidKt$NoOpUpdate$1.INSTANCE;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1783766393);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function1) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            AndroidView((i3 & 14) | 3072 | (i3 & 112) | ((i3 << 6) & 57344), gapComposer, modifier, function1);
            function13 = androidView_androidKt$NoOpUpdate$1;
        } else {
            gapComposer.skipToGroupEnd();
            function13 = function12;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AndroidDialog_androidKt$Dialog$3(function1, modifier, function13, i, 2);
        }
    }
}
