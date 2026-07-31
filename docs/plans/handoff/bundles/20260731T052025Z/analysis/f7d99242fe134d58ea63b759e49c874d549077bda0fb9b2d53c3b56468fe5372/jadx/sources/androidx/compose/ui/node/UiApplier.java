package androidx.compose.ui.node;

import android.view.View;
import androidx.collection.MutableIntSet;
import androidx.compose.runtime.Applier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import java.util.ArrayList;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UiApplier implements Applier {
    public Object current;
    public final Object root;
    public final ArrayList stack = new ArrayList();

    public UiApplier(Object obj) {
        this.root = obj;
        this.current = obj;
    }

    @Override // androidx.compose.runtime.Applier
    public final void apply(Object obj, Function2 function2) {
        function2.invoke(getCurrent(), obj);
    }

    public final void clear() {
        this.stack.clear();
        this.current = this.root;
        ((LayoutNode) this.root).removeAll$ui();
    }

    @Override // androidx.compose.runtime.Applier
    public final void down(Object obj) {
        this.stack.add(this.current);
        this.current = obj;
    }

    public final Object getCurrent() {
        return this.current;
    }

    @Override // androidx.compose.runtime.Applier
    public final void insertBottomUp(int i, Object obj) {
        ((LayoutNode) this.current).insertAt$ui(i, (LayoutNode) obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final /* bridge */ /* synthetic */ void insertTopDown(int i, Object obj) {
    }

    @Override // androidx.compose.runtime.Applier
    public final void move(int i, int i2, int i3) {
        ((LayoutNode) this.current).move$ui(i, i2, i3);
    }

    @Override // androidx.compose.runtime.Applier
    public final void onEndChanges() {
        Owner owner = ((LayoutNode) this.root).owner;
        if (owner != null) {
            ((AndroidComposeView) owner).onEndApplyChanges();
        }
    }

    @Override // androidx.compose.runtime.Applier
    public final void remove(int i, int i2) {
        ((LayoutNode) this.current).removeAt$ui(i, i2);
    }

    @Override // androidx.compose.runtime.Applier
    public final void reuse() {
        RectManager rectManager;
        AndroidAutofillManager androidAutofillManager;
        RectManager rectManager2;
        LayoutNode layoutNode = (LayoutNode) this.current;
        NodeChain nodeChain = layoutNode.nodes;
        if (!layoutNode.isAttached$1()) {
            InlineClassHelperKt.throwIllegalArgumentException("onReuse is only expected on attached node");
        }
        ViewFactoryHolder viewFactoryHolder = layoutNode.interopViewFactoryHolder;
        if (viewFactoryHolder != null) {
            View view = viewFactoryHolder.view;
            if (view.getParent() != viewFactoryHolder) {
                viewFactoryHolder.addView(view);
            } else {
                viewFactoryHolder.reset.invoke();
            }
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNode.subcompositionsState;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.markActiveNodesAsReused(false);
        }
        layoutNode.isCurrentlyCalculatingSemanticsConfiguration = false;
        if (layoutNode.isDeactivated) {
            layoutNode.isDeactivated = false;
        } else {
            Modifier.Node node = (TailModifierNode) nodeChain.tail;
            for (Modifier.Node node2 = node; node2 != null; node2 = node2.parent) {
                if (node2.isAttached) {
                    node2.reset$ui();
                }
            }
            for (Modifier.Node node3 = node; node3 != null; node3 = node3.parent) {
                if (node3.isAttached) {
                    node3.runDetachLifecycle$ui();
                }
            }
            while (node != null) {
                if (node.isAttached) {
                    node.markAsDetached$ui();
                }
                node = node.parent;
            }
        }
        int i = layoutNode.semanticsId;
        Owner owner = layoutNode.owner;
        if (owner != null && (rectManager2 = ((AndroidComposeView) owner).getRectManager()) != null) {
            rectManager2.remove(layoutNode);
        }
        layoutNode.semanticsId = SemanticsModifierKt.lastIdentifier.addAndGet(1);
        Owner owner2 = layoutNode.owner;
        if (owner2 != null) {
            AndroidComposeView androidComposeView = (AndroidComposeView) owner2;
            androidComposeView.getLayoutNodes().remove(i);
            androidComposeView.getLayoutNodes().set(layoutNode.semanticsId, layoutNode);
        }
        for (Modifier.Node node4 = (Modifier.Node) nodeChain.head; node4 != null; node4 = node4.child) {
            node4.markAsAttached$ui();
        }
        nodeChain.runAttachLifecycle();
        if (nodeChain.m623hasH91voCI$ui(8)) {
            layoutNode.invalidateSemantics$ui();
        }
        LayoutNode.rescheduleRemeasureOrRelayout$ui(layoutNode);
        Owner owner3 = layoutNode.owner;
        if (owner3 != null) {
            AndroidComposeView androidComposeView2 = (AndroidComposeView) owner3;
            if (AndroidComposeView.autofillSupported() && (androidAutofillManager = androidComposeView2._autofillManager) != null) {
                AndroidComposeView androidComposeView3 = androidAutofillManager.view;
                AutofillIdCompat autofillIdCompat = androidAutofillManager.platformAutofillManager;
                MutableIntSet mutableIntSet = androidAutofillManager.currentlyDisplayedIDs;
                if (mutableIntSet.remove(i)) {
                    autofillIdCompat.notifyViewVisibilityChanged(androidComposeView3, i, false);
                }
                SemanticsConfiguration semanticsConfiguration = layoutNode.getSemanticsConfiguration();
                if (semanticsConfiguration != null && semanticsConfiguration.props.contains(SemanticsProperties.ContentType)) {
                    mutableIntSet.add(layoutNode.semanticsId);
                    autofillIdCompat.notifyViewVisibilityChanged(androidComposeView3, layoutNode.semanticsId, true);
                }
            }
        }
        Owner owner4 = layoutNode.owner;
        if (owner4 == null || (rectManager = ((AndroidComposeView) owner4).getRectManager()) == null) {
            return;
        }
        rectManager.recalculateRectIfDirty(layoutNode);
    }

    @Override // androidx.compose.runtime.Applier
    public final void up() {
        this.current = Modifier.CC.m(1, this.stack);
    }
}
