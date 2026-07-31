package androidx.compose.ui.viewinterop;

import android.view.WindowInsets;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.IntSize;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidViewHolder$layoutNode$1$3 extends Lambda implements Function1 {
    public final /* synthetic */ LayoutNode $layoutNode;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ViewFactoryHolder $this_run;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidViewHolder$layoutNode$1$3(ViewFactoryHolder viewFactoryHolder, LayoutNode layoutNode, int i) {
        super(1);
        this.$r8$classId = i;
        this.$this_run = viewFactoryHolder;
        this.$layoutNode = layoutNode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        WindowInsets windowInsets;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final LayoutNode layoutNode = this.$layoutNode;
        ViewFactoryHolder viewFactoryHolder = this.$this_run;
        switch (i) {
            case 0:
                Owner owner = (Owner) obj;
                final AndroidComposeView androidComposeView = owner instanceof AndroidComposeView ? (AndroidComposeView) owner : null;
                if (androidComposeView != null) {
                    androidComposeView.getAndroidViewsHandler$ui().getHolderToLayoutNode().put(viewFactoryHolder, layoutNode);
                    androidComposeView.getAndroidViewsHandler$ui().addView(viewFactoryHolder);
                    androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder().put(layoutNode, viewFactoryHolder);
                    viewFactoryHolder.setImportantForAccessibility(1);
                    ViewCompat.setAccessibilityDelegate(viewFactoryHolder, new AccessibilityDelegateCompat() { // from class: androidx.compose.ui.platform.AndroidComposeView$addAndroidView$1
                        /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
                        
                            if (r4.intValue() == r8.getSemanticsOwner().getUnmergedRootSemanticsNode().id) goto L19;
                         */
                        @Override // androidx.core.view.AccessibilityDelegateCompat
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void onInitializeAccessibilityNodeInfo(android.view.View r8, androidx.core.view.accessibility.AccessibilityNodeInfoCompat r9) {
                            /*
                                r7 = this;
                                android.view.accessibility.AccessibilityNodeInfo r0 = r9.mInfo
                                android.view.View$AccessibilityDelegate r1 = r7.mOriginalDelegate
                                r1.onInitializeAccessibilityNodeInfo(r8, r0)
                                androidx.compose.ui.platform.AndroidComposeView r8 = androidx.compose.ui.platform.AndroidComposeView.this
                                androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat r1 = r8.composeAccessibilityDelegate
                                boolean r2 = r1.isEnabled$ui()
                                if (r2 == 0) goto L15
                                r2 = 0
                                r9.setVisibleToUser(r2)
                            L15:
                                androidx.compose.ui.node.LayoutNode r2 = r2
                                androidx.compose.ui.node.LayoutNode r3 = r2.getParent$ui()
                            L1b:
                                r4 = 0
                                if (r3 == 0) goto L2e
                                androidx.compose.ui.node.NodeChain r5 = r3.nodes
                                r6 = 8
                                boolean r5 = r5.m623hasH91voCI$ui(r6)
                                if (r5 == 0) goto L29
                                goto L2f
                            L29:
                                androidx.compose.ui.node.LayoutNode r3 = r3.getParent$ui()
                                goto L1b
                            L2e:
                                r3 = r4
                            L2f:
                                if (r3 == 0) goto L37
                                int r3 = r3.semanticsId
                                java.lang.Integer r4 = java.lang.Integer.valueOf(r3)
                            L37:
                                r3 = -1
                                if (r4 == 0) goto L4a
                                androidx.compose.ui.semantics.SemanticsOwner r5 = r8.getSemanticsOwner()
                                androidx.compose.ui.semantics.SemanticsNode r5 = r5.getUnmergedRootSemanticsNode()
                                int r5 = r5.id
                                int r6 = r4.intValue()
                                if (r6 != r5) goto L4e
                            L4a:
                                java.lang.Integer r4 = java.lang.Integer.valueOf(r3)
                            L4e:
                                int r4 = r4.intValue()
                                r9.mParentVirtualDescendantId = r4
                                androidx.compose.ui.platform.AndroidComposeView r7 = r3
                                r0.setParent(r7, r4)
                                int r9 = r2.semanticsId
                                androidx.collection.MutableIntIntMap r2 = r1.idToBeforeMap
                                int r2 = r2.getOrDefault(r9)
                                if (r2 == r3) goto L79
                                androidx.compose.ui.platform.AndroidViewsHandler r4 = r8.getAndroidViewsHandler$ui()
                                androidx.compose.ui.viewinterop.AndroidViewHolder r4 = androidx.compose.ui.platform.TestTagKt.semanticsIdToView(r4, r2)
                                if (r4 == 0) goto L71
                                r0.setTraversalBefore(r4)
                                goto L74
                            L71:
                                r0.setTraversalBefore(r7, r2)
                            L74:
                                java.lang.String r2 = r1.ExtraDataTestTraversalBeforeVal
                                androidx.compose.ui.platform.AndroidComposeView.access$addExtraDataToAccessibilityNodeInfoHelper(r8, r9, r0, r2)
                            L79:
                                androidx.collection.MutableIntIntMap r2 = r1.idToAfterMap
                                int r2 = r2.getOrDefault(r9)
                                if (r2 == r3) goto L97
                                androidx.compose.ui.platform.AndroidViewsHandler r3 = r8.getAndroidViewsHandler$ui()
                                androidx.compose.ui.viewinterop.AndroidViewHolder r3 = androidx.compose.ui.platform.TestTagKt.semanticsIdToView(r3, r2)
                                if (r3 == 0) goto L8f
                                r0.setTraversalAfter(r3)
                                goto L92
                            L8f:
                                r0.setTraversalAfter(r7, r2)
                            L92:
                                java.lang.String r7 = r1.ExtraDataTestTraversalAfterVal
                                androidx.compose.ui.platform.AndroidComposeView.access$addExtraDataToAccessibilityNodeInfoHelper(r8, r9, r0, r7)
                            L97:
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeView$addAndroidView$1.onInitializeAccessibilityNodeInfo(android.view.View, androidx.core.view.accessibility.AccessibilityNodeInfoCompat):void");
                        }
                    });
                }
                if (viewFactoryHolder.getView().getParent() != viewFactoryHolder) {
                    viewFactoryHolder.addView(viewFactoryHolder.getView());
                    break;
                }
                break;
            case 1:
                AndroidView_androidKt.access$layoutAccordingTo(viewFactoryHolder, layoutNode);
                break;
            default:
                AndroidView_androidKt.access$layoutAccordingTo(viewFactoryHolder, layoutNode);
                ((AndroidComposeView) viewFactoryHolder.owner).isPendingInteropViewLayoutChangeDispatch = true;
                int[] iArr = viewFactoryHolder.position;
                int i2 = iArr[0];
                int i3 = iArr[1];
                viewFactoryHolder.getView().getLocationOnScreen(iArr);
                long j = viewFactoryHolder.size;
                long mo576getSizeYbymL2g = ((LayoutCoordinates) obj).mo576getSizeYbymL2g();
                viewFactoryHolder.size = mo576getSizeYbymL2g;
                WindowInsetsCompat windowInsetsCompat = viewFactoryHolder.insets;
                if (windowInsetsCompat != null && ((i2 != iArr[0] || i3 != iArr[1] || !IntSize.m768equalsimpl0(j, mo576getSizeYbymL2g)) && (windowInsets = viewFactoryHolder.insetToLayoutPosition(windowInsetsCompat).toWindowInsets()) != null)) {
                    viewFactoryHolder.getView().dispatchApplyWindowInsets(windowInsets);
                    break;
                }
                break;
        }
        return unit;
    }
}
