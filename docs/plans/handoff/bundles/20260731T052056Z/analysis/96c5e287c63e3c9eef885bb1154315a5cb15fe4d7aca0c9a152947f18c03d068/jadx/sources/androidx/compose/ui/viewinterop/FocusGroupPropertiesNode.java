package androidx.compose.ui.viewinterop;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.CancelIndicatingFocusBoundaryScope;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FocusGroupPropertiesNode extends Modifier.Node implements FocusPropertiesModifierNode, ViewTreeObserver.OnGlobalFocusChangeListener {
    public ViewTreeObserver attachedViewTreeObserver;
    public View focusedChild;
    public final FocusGroupPropertiesNode$onExit$1 onEnter;
    public final FocusGroupPropertiesNode$onExit$1 onExit;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.viewinterop.FocusGroupPropertiesNode$onExit$1] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.viewinterop.FocusGroupPropertiesNode$onExit$1] */
    public FocusGroupPropertiesNode() {
        final int i = 1;
        this.onEnter = new Function1(this) { // from class: androidx.compose.ui.viewinterop.FocusGroupPropertiesNode$onExit$1
            public final /* synthetic */ FocusGroupPropertiesNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i2 = i;
                Unit unit = Unit.INSTANCE;
                FocusGroupPropertiesNode focusGroupPropertiesNode = this.this$0;
                switch (i2) {
                    case 0:
                        AndroidView_androidKt.getEmbeddedView(focusGroupPropertiesNode);
                        break;
                    default:
                        CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = (CancelIndicatingFocusBoundaryScope) obj;
                        View embeddedView = AndroidView_androidKt.getEmbeddedView(focusGroupPropertiesNode);
                        if (!embeddedView.isFocused() && !embeddedView.hasFocus()) {
                            FocusOwner focusOwner = ((AndroidComposeView) HitTestResultKt.requireOwner(focusGroupPropertiesNode)).getFocusOwner();
                            View requireView = HitTestResultKt.requireView(focusGroupPropertiesNode);
                            Integer m359toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m359toAndroidFocusDirection3ESFkO8(cancelIndicatingFocusBoundaryScope.requestedFocusDirection);
                            int[] iArr = new int[2];
                            requireView.getLocationOnScreen(iArr);
                            int[] iArr2 = new int[2];
                            embeddedView.getLocationOnScreen(iArr2);
                            FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(((FocusOwnerImpl) focusOwner).rootFocusNode);
                            Rect rect = null;
                            androidx.compose.ui.geometry.Rect focusRect = findActiveFocusNode != null ? FocusTraversalKt.focusRect(findActiveFocusNode) : null;
                            if (focusRect != null) {
                                int i3 = (int) focusRect.left;
                                int i4 = iArr[0];
                                int i5 = iArr2[0];
                                int i6 = (int) focusRect.top;
                                int i7 = iArr[1];
                                int i8 = iArr2[1];
                                rect = new Rect((i3 + i4) - i5, (i6 + i7) - i8, (((int) focusRect.right) + i4) - i5, (((int) focusRect.bottom) + i7) - i8);
                            }
                            if (!FocusInteropUtils_androidKt.requestInteropFocus(embeddedView, m359toAndroidFocusDirection3ESFkO8, rect)) {
                                cancelIndicatingFocusBoundaryScope.isCanceled = true;
                                break;
                            }
                        }
                        break;
                }
                return unit;
            }
        };
        final int i2 = 0;
        this.onExit = new Function1(this) { // from class: androidx.compose.ui.viewinterop.FocusGroupPropertiesNode$onExit$1
            public final /* synthetic */ FocusGroupPropertiesNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i22 = i2;
                Unit unit = Unit.INSTANCE;
                FocusGroupPropertiesNode focusGroupPropertiesNode = this.this$0;
                switch (i22) {
                    case 0:
                        AndroidView_androidKt.getEmbeddedView(focusGroupPropertiesNode);
                        break;
                    default:
                        CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = (CancelIndicatingFocusBoundaryScope) obj;
                        View embeddedView = AndroidView_androidKt.getEmbeddedView(focusGroupPropertiesNode);
                        if (!embeddedView.isFocused() && !embeddedView.hasFocus()) {
                            FocusOwner focusOwner = ((AndroidComposeView) HitTestResultKt.requireOwner(focusGroupPropertiesNode)).getFocusOwner();
                            View requireView = HitTestResultKt.requireView(focusGroupPropertiesNode);
                            Integer m359toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m359toAndroidFocusDirection3ESFkO8(cancelIndicatingFocusBoundaryScope.requestedFocusDirection);
                            int[] iArr = new int[2];
                            requireView.getLocationOnScreen(iArr);
                            int[] iArr2 = new int[2];
                            embeddedView.getLocationOnScreen(iArr2);
                            FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(((FocusOwnerImpl) focusOwner).rootFocusNode);
                            Rect rect = null;
                            androidx.compose.ui.geometry.Rect focusRect = findActiveFocusNode != null ? FocusTraversalKt.focusRect(findActiveFocusNode) : null;
                            if (focusRect != null) {
                                int i3 = (int) focusRect.left;
                                int i4 = iArr[0];
                                int i5 = iArr2[0];
                                int i6 = (int) focusRect.top;
                                int i7 = iArr[1];
                                int i8 = iArr2[1];
                                rect = new Rect((i3 + i4) - i5, (i6 + i7) - i8, (((int) focusRect.right) + i4) - i5, (((int) focusRect.bottom) + i7) - i8);
                            }
                            if (!FocusInteropUtils_androidKt.requestInteropFocus(embeddedView, m359toAndroidFocusDirection3ESFkO8, rect)) {
                                cancelIndicatingFocusBoundaryScope.isCanceled = true;
                                break;
                            }
                        }
                        break;
                }
                return unit;
            }
        };
    }

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public final void applyFocusProperties(FocusProperties focusProperties) {
        focusProperties.setCanFocus(false);
        focusProperties.setOnEnter(this.onEnter);
        focusProperties.setOnExit(this.onExit);
    }

    public final FocusTargetNode getFocusTargetOfEmbeddedViewWrapper() {
        boolean z;
        if (!this.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitLocalDescendants called on an unattached node");
        }
        Modifier.Node node = this.node;
        if ((node.aggregateChildKindSet & 1024) != 0) {
            boolean z2 = false;
            for (Modifier.Node node2 = node.child; node2 != null; node2 = node2.child) {
                if ((node2.kindSet & 1024) != 0) {
                    Modifier.Node node3 = node2;
                    MutableVector mutableVector = null;
                    while (node3 != null) {
                        if (node3 instanceof FocusTargetNode) {
                            FocusTargetNode focusTargetNode = (FocusTargetNode) node3;
                            if (z2) {
                                return focusTargetNode;
                            }
                            z = false;
                            z2 = true;
                        } else {
                            z = true;
                        }
                        if (z && (node3.kindSet & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                if ((node4.kindSet & 1024) != 0) {
                                    i++;
                                    if (i == 1) {
                                        node3 = node4;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (node3 != null) {
                                            mutableVector.add(node3);
                                            node3 = null;
                                        }
                                        mutableVector.add(node4);
                                    }
                                }
                            }
                            if (i == 1) {
                            }
                        }
                        node3 = HitTestResultKt.pop(mutableVector);
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Could not find focus target of embedded view wrapper");
        return null;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        ViewTreeObserver viewTreeObserver = HitTestResultKt.requireView(this).getViewTreeObserver();
        this.attachedViewTreeObserver = viewTreeObserver;
        viewTreeObserver.addOnGlobalFocusChangeListener(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        ViewTreeObserver viewTreeObserver = this.attachedViewTreeObserver;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnGlobalFocusChangeListener(this);
        }
        this.attachedViewTreeObserver = null;
        HitTestResultKt.requireView(this).getViewTreeObserver().removeOnGlobalFocusChangeListener(this);
        this.focusedChild = null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        boolean z;
        if (HitTestResultKt.requireLayoutNode(this).owner == null) {
            return;
        }
        View embeddedView = AndroidView_androidKt.getEmbeddedView(this);
        FocusOwner focusOwner = ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner();
        Owner requireOwner = HitTestResultKt.requireOwner(this);
        boolean z2 = true;
        if (view != null && !view.equals(requireOwner)) {
            for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                if (parent == embeddedView.getParent()) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (view2 != null && !view2.equals(requireOwner)) {
            for (ViewParent parent2 = view2.getParent(); parent2 != null; parent2 = parent2.getParent()) {
                if (parent2 == embeddedView.getParent()) {
                    break;
                }
            }
        }
        z2 = false;
        if (z && z2) {
            this.focusedChild = view2;
            return;
        }
        if (z2) {
            this.focusedChild = view2;
            FocusTargetNode focusTargetOfEmbeddedViewWrapper = getFocusTargetOfEmbeddedViewWrapper();
            if (focusTargetOfEmbeddedViewWrapper.getFocusState().getHasFocus()) {
                return;
            }
            FocusTraversalKt.performRequestFocus(focusTargetOfEmbeddedViewWrapper);
            return;
        }
        if (!z) {
            this.focusedChild = null;
            return;
        }
        this.focusedChild = null;
        if (getFocusTargetOfEmbeddedViewWrapper().getFocusState().isFocused()) {
            ((FocusOwnerImpl) focusOwner).m360clearFocusI7lrPNg(8, false, false);
        }
    }
}
