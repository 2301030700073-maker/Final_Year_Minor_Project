package androidx.compose.ui.focus;

import android.view.KeyEvent;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.collection.MutableLongSet;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: FocusOwnerImpl.kt */
/* loaded from: classes.dex */
public final class FocusOwnerImpl implements FocusOwner {
    private final FocusInvalidationManager focusInvalidationManager;
    private MutableLongSet keysCurrentlyDown;
    private final Function0 onClearFocusForOwner;
    private final Function0 onFocusRectInterop;
    private final Function0 onLayoutDirection;
    private final Function1 onMoveFocusInterop;
    private final Function2 onRequestFocusForOwner;
    private FocusTargetNode rootFocusNode = new FocusTargetNode();
    private final FocusTransactionManager focusTransactionManager = new FocusTransactionManager();
    private final Modifier modifier = FocusPropertiesKt.focusProperties(Modifier.Companion, new Function1() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((FocusProperties) obj);
            return Unit.INSTANCE;
        }

        public final void invoke(FocusProperties focusProperties) {
            focusProperties.setCanFocus(false);
        }
    }).then(new ModifierNodeElement() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$2
        public boolean equals(Object other) {
            return other == this;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public void update(FocusTargetNode node) {
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        /* renamed from: create */
        public FocusTargetNode getNode() {
            return FocusOwnerImpl.this.getRootFocusNode$ui_release();
        }

        public int hashCode() {
            return FocusOwnerImpl.this.getRootFocusNode$ui_release().hashCode();
        }
    });

    /* compiled from: FocusOwnerImpl.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FocusOwnerImpl(Function1 function1, Function2 function2, Function1 function12, Function0 function0, Function0 function02, Function0 function03) {
        this.onRequestFocusForOwner = function2;
        this.onMoveFocusInterop = function12;
        this.onClearFocusForOwner = function0;
        this.onFocusRectInterop = function02;
        this.onLayoutDirection = function03;
        this.focusInvalidationManager = new FocusInvalidationManager(function1, new FocusOwnerImpl$focusInvalidationManager$1(this));
    }

    public final FocusTargetNode getRootFocusNode$ui_release() {
        return this.rootFocusNode;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public FocusTransactionManager getFocusTransactionManager() {
        return this.focusTransactionManager;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public Modifier getModifier() {
        return this.modifier;
    }

    private final Modifier.Node lastLocalKeyInputNode(DelegatableNode delegatableNode) {
        int m1903constructorimpl = NodeKind.m1903constructorimpl(1024) | NodeKind.m1903constructorimpl(8192);
        if (!delegatableNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitLocalDescendants called on an unattached node");
        }
        Modifier.Node node = delegatableNode.getNode();
        Modifier.Node node2 = null;
        if ((node.getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
            for (Modifier.Node child$ui_release = node.getChild$ui_release(); child$ui_release != null; child$ui_release = child$ui_release.getChild$ui_release()) {
                if ((child$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                    if ((NodeKind.m1903constructorimpl(1024) & child$ui_release.getKindSet$ui_release()) != 0) {
                        return node2;
                    }
                    node2 = child$ui_release;
                }
            }
        }
        return node2;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: requestFocusForOwner-7o62pno */
    public boolean mo1118requestFocusForOwner7o62pno(FocusDirection focusDirection, Rect rect) {
        return ((Boolean) this.onRequestFocusForOwner.invoke(focusDirection, rect)).booleanValue();
    }

    /* renamed from: takeFocus-aToIllA, reason: not valid java name */
    public boolean m1121takeFocusaToIllA(final int i, Rect rect) {
        Boolean mo1117focusSearchULY8qGw = mo1117focusSearchULY8qGw(i, rect, new Function1() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$takeFocus$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode focusTargetNode) {
                Boolean m1134requestFocusMxy_nc0 = FocusTransactionsKt.m1134requestFocusMxy_nc0(focusTargetNode, i);
                return Boolean.valueOf(m1134requestFocusMxy_nc0 != null ? m1134requestFocusMxy_nc0.booleanValue() : false);
            }
        });
        if (mo1117focusSearchULY8qGw != null) {
            return mo1117focusSearchULY8qGw.booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void releaseFocus() {
        boolean z;
        FocusTransactionManager focusTransactionManager = getFocusTransactionManager();
        z = focusTransactionManager.ongoingTransaction;
        if (!z) {
            try {
                focusTransactionManager.beginTransaction();
                FocusTransactionsKt.clearFocus(this.rootFocusNode, true, true);
                return;
            } finally {
                focusTransactionManager.commitTransaction();
            }
        }
        FocusTransactionsKt.clearFocus(this.rootFocusNode, true, true);
    }

    @Override // androidx.compose.ui.focus.FocusManager
    public void clearFocus(boolean z) {
        mo1114clearFocusI7lrPNg(z, true, true, FocusDirection.Companion.m1105getExitdhqQ8s());
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: clearFocus-I7lrPNg */
    public boolean mo1114clearFocusI7lrPNg(boolean z, boolean z2, boolean z3, int i) {
        boolean z4;
        boolean clearFocus;
        MutableVector mutableVector;
        FocusTransactionManager focusTransactionManager = getFocusTransactionManager();
        FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1 focusOwnerImpl$clearFocus$clearedFocusSuccessfully$1 = new Function0() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1
            /* renamed from: invoke, reason: collision with other method in class */
            public final void m1122invoke() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m1122invoke();
                return Unit.INSTANCE;
            }
        };
        try {
            z4 = focusTransactionManager.ongoingTransaction;
            if (z4) {
                focusTransactionManager.cancelTransaction();
            }
            focusTransactionManager.beginTransaction();
            if (focusOwnerImpl$clearFocus$clearedFocusSuccessfully$1 != null) {
                mutableVector = focusTransactionManager.cancellationListener;
                mutableVector.add(focusOwnerImpl$clearFocus$clearedFocusSuccessfully$1);
            }
            if (!z) {
                int i2 = WhenMappings.$EnumSwitchMapping$0[FocusTransactionsKt.m1130performCustomClearFocusMxy_nc0(this.rootFocusNode, i).ordinal()];
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    clearFocus = false;
                    if (clearFocus && z3) {
                        this.onClearFocusForOwner.invoke();
                    }
                    return clearFocus;
                }
            }
            clearFocus = FocusTransactionsKt.clearFocus(this.rootFocusNode, z, z2);
            if (clearFocus) {
                this.onClearFocusForOwner.invoke();
            }
            return clearFocus;
        } finally {
            focusTransactionManager.commitTransaction();
        }
    }

    @Override // androidx.compose.ui.focus.FocusManager
    /* renamed from: moveFocus-3ESFkO8 */
    public boolean mo1113moveFocus3ESFkO8(final int i) {
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = Boolean.FALSE;
        Boolean mo1117focusSearchULY8qGw = mo1117focusSearchULY8qGw(i, (Rect) this.onFocusRectInterop.invoke(), new Function1() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$moveFocus$focusSearchSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode focusTargetNode) {
                Ref$ObjectRef.this.element = FocusTransactionsKt.m1134requestFocusMxy_nc0(focusTargetNode, i);
                Boolean bool = (Boolean) Ref$ObjectRef.this.element;
                return Boolean.valueOf(bool != null ? bool.booleanValue() : false);
            }
        });
        if (mo1117focusSearchULY8qGw == null || ref$ObjectRef.element == null) {
            return false;
        }
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.areEqual(mo1117focusSearchULY8qGw, bool) && Intrinsics.areEqual(ref$ObjectRef.element, bool)) {
            return true;
        }
        if (FocusOwnerImplKt.m1124is1dFocusSearch3ESFkO8(i)) {
            return mo1114clearFocusI7lrPNg(false, true, false, i) && m1121takeFocusaToIllA(i, null);
        }
        return ((Boolean) this.onMoveFocusInterop.invoke(FocusDirection.m1096boximpl(i))).booleanValue();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: focusSearch-ULY8qGw */
    public Boolean mo1117focusSearchULY8qGw(int i, Rect rect, final Function1 function1) {
        final FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (findActiveFocusNode != null) {
            FocusRequester m1137customFocusSearchOMvw8 = FocusTraversalKt.m1137customFocusSearchOMvw8(findActiveFocusNode, i, (LayoutDirection) this.onLayoutDirection.invoke());
            FocusRequester.Companion companion = FocusRequester.Companion;
            if (Intrinsics.areEqual(m1137customFocusSearchOMvw8, companion.getCancel())) {
                return null;
            }
            if (!Intrinsics.areEqual(m1137customFocusSearchOMvw8, companion.getDefault())) {
                return Boolean.valueOf(m1137customFocusSearchOMvw8.findFocusTargetNode$ui_release(function1));
            }
        } else {
            findActiveFocusNode = null;
        }
        return FocusTraversalKt.m1138focusSearch0X8WOeE(this.rootFocusNode, i, (LayoutDirection) this.onLayoutDirection.invoke(), rect, new Function1() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode focusTargetNode) {
                boolean booleanValue;
                if (Intrinsics.areEqual(focusTargetNode, FocusTargetNode.this)) {
                    booleanValue = false;
                } else {
                    if (Intrinsics.areEqual(focusTargetNode, this.getRootFocusNode$ui_release())) {
                        throw new IllegalStateException("Focus search landed at the root.");
                    }
                    booleanValue = ((Boolean) function1.invoke(focusTargetNode)).booleanValue();
                }
                return Boolean.valueOf(booleanValue);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v28, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v30, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v31, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r11v33 */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v64 */
    /* JADX WARN: Type inference failed for: r11v65 */
    /* JADX WARN: Type inference failed for: r11v66 */
    /* JADX WARN: Type inference failed for: r11v67 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v36 */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v38 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r5v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v9, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: dispatchKeyEvent-YhN2O0w */
    public boolean mo1116dispatchKeyEventYhN2O0w(KeyEvent keyEvent, Function0 function0) {
        DelegatingNode delegatingNode;
        Modifier.Node node;
        NodeChain nodes$ui_release;
        DelegatingNode delegatingNode2;
        NodeChain nodes$ui_release2;
        NodeChain nodes$ui_release3;
        if (this.focusInvalidationManager.hasPendingInvalidation()) {
            System.out.println((Object) "FocusRelatedWarning: Dispatching key event while focus system is invalidated.");
            return false;
        }
        if (!m1120validateKeyEventZmokQxo(keyEvent)) {
            return false;
        }
        FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (findActiveFocusNode == null || (node = lastLocalKeyInputNode(findActiveFocusNode)) == null) {
            if (findActiveFocusNode != null) {
                int m1903constructorimpl = NodeKind.m1903constructorimpl(8192);
                if (!findActiveFocusNode.getNode().isAttached()) {
                    throw new IllegalStateException("visitAncestors called on an unattached node");
                }
                Modifier.Node node2 = findActiveFocusNode.getNode();
                LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(findActiveFocusNode);
                loop10: while (true) {
                    if (requireLayoutNode == null) {
                        delegatingNode2 = 0;
                        break;
                    }
                    if ((requireLayoutNode.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
                        while (node2 != null) {
                            if ((node2.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                ?? r12 = 0;
                                delegatingNode2 = node2;
                                while (delegatingNode2 != 0) {
                                    if (delegatingNode2 instanceof KeyInputModifierNode) {
                                        break loop10;
                                    }
                                    if ((delegatingNode2.getKindSet$ui_release() & m1903constructorimpl) != 0 && (delegatingNode2 instanceof DelegatingNode)) {
                                        Modifier.Node delegate$ui_release = delegatingNode2.getDelegate$ui_release();
                                        int i = 0;
                                        delegatingNode2 = delegatingNode2;
                                        r12 = r12;
                                        while (delegate$ui_release != null) {
                                            if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                                i++;
                                                r12 = r12;
                                                if (i == 1) {
                                                    delegatingNode2 = delegate$ui_release;
                                                } else {
                                                    if (r12 == 0) {
                                                        r12 = new MutableVector(new Modifier.Node[16], 0);
                                                    }
                                                    if (delegatingNode2 != 0) {
                                                        r12.add(delegatingNode2);
                                                        delegatingNode2 = 0;
                                                    }
                                                    r12.add(delegate$ui_release);
                                                }
                                            }
                                            delegate$ui_release = delegate$ui_release.getChild$ui_release();
                                            delegatingNode2 = delegatingNode2;
                                            r12 = r12;
                                        }
                                        if (i == 1) {
                                        }
                                    }
                                    delegatingNode2 = DelegatableNodeKt.pop(r12);
                                }
                            }
                            node2 = node2.getParent$ui_release();
                        }
                    }
                    requireLayoutNode = requireLayoutNode.getParent$ui_release();
                    node2 = (requireLayoutNode == null || (nodes$ui_release2 = requireLayoutNode.getNodes$ui_release()) == null) ? null : nodes$ui_release2.getTail$ui_release();
                }
                KeyInputModifierNode keyInputModifierNode = (KeyInputModifierNode) delegatingNode2;
                if (keyInputModifierNode != null) {
                    node = keyInputModifierNode.getNode();
                }
            }
            FocusTargetNode focusTargetNode = this.rootFocusNode;
            int m1903constructorimpl2 = NodeKind.m1903constructorimpl(8192);
            if (!focusTargetNode.getNode().isAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node parent$ui_release = focusTargetNode.getNode().getParent$ui_release();
            LayoutNode requireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
            loop14: while (true) {
                if (requireLayoutNode2 == null) {
                    delegatingNode = 0;
                    break;
                }
                if ((requireLayoutNode2.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl2) != 0) {
                    while (parent$ui_release != null) {
                        if ((parent$ui_release.getKindSet$ui_release() & m1903constructorimpl2) != 0) {
                            ?? r122 = 0;
                            delegatingNode = parent$ui_release;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof KeyInputModifierNode) {
                                    break loop14;
                                }
                                if ((delegatingNode.getKindSet$ui_release() & m1903constructorimpl2) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node delegate$ui_release2 = delegatingNode.getDelegate$ui_release();
                                    int i2 = 0;
                                    delegatingNode = delegatingNode;
                                    r122 = r122;
                                    while (delegate$ui_release2 != null) {
                                        if ((delegate$ui_release2.getKindSet$ui_release() & m1903constructorimpl2) != 0) {
                                            i2++;
                                            r122 = r122;
                                            if (i2 == 1) {
                                                delegatingNode = delegate$ui_release2;
                                            } else {
                                                if (r122 == 0) {
                                                    r122 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (delegatingNode != 0) {
                                                    r122.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r122.add(delegate$ui_release2);
                                            }
                                        }
                                        delegate$ui_release2 = delegate$ui_release2.getChild$ui_release();
                                        delegatingNode = delegatingNode;
                                        r122 = r122;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.pop(r122);
                            }
                        }
                        parent$ui_release = parent$ui_release.getParent$ui_release();
                    }
                }
                requireLayoutNode2 = requireLayoutNode2.getParent$ui_release();
                parent$ui_release = (requireLayoutNode2 == null || (nodes$ui_release = requireLayoutNode2.getNodes$ui_release()) == null) ? null : nodes$ui_release.getTail$ui_release();
            }
            KeyInputModifierNode keyInputModifierNode2 = (KeyInputModifierNode) delegatingNode;
            node = keyInputModifierNode2 != null ? keyInputModifierNode2.getNode() : null;
        }
        if (node != null) {
            int m1903constructorimpl3 = NodeKind.m1903constructorimpl(8192);
            if (!node.getNode().isAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node parent$ui_release2 = node.getNode().getParent$ui_release();
            LayoutNode requireLayoutNode3 = DelegatableNodeKt.requireLayoutNode(node);
            ArrayList arrayList = null;
            while (requireLayoutNode3 != null) {
                if ((requireLayoutNode3.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl3) != 0) {
                    while (parent$ui_release2 != null) {
                        if ((parent$ui_release2.getKindSet$ui_release() & m1903constructorimpl3) != 0) {
                            Modifier.Node node3 = parent$ui_release2;
                            MutableVector mutableVector = null;
                            while (node3 != null) {
                                if (node3 instanceof KeyInputModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(node3);
                                } else if ((node3.getKindSet$ui_release() & m1903constructorimpl3) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node delegate$ui_release3 = ((DelegatingNode) node3).getDelegate$ui_release(); delegate$ui_release3 != null; delegate$ui_release3 = delegate$ui_release3.getChild$ui_release()) {
                                        if ((delegate$ui_release3.getKindSet$ui_release() & m1903constructorimpl3) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                node3 = delegate$ui_release3;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (node3 != null) {
                                                    mutableVector.add(node3);
                                                    node3 = null;
                                                }
                                                mutableVector.add(delegate$ui_release3);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                node3 = DelegatableNodeKt.pop(mutableVector);
                            }
                        }
                        parent$ui_release2 = parent$ui_release2.getParent$ui_release();
                    }
                }
                requireLayoutNode3 = requireLayoutNode3.getParent$ui_release();
                parent$ui_release2 = (requireLayoutNode3 == null || (nodes$ui_release3 = requireLayoutNode3.getNodes$ui_release()) == null) ? null : nodes$ui_release3.getTail$ui_release();
            }
            if (arrayList != null) {
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i4 = size - 1;
                        if (((KeyInputModifierNode) arrayList.get(size)).mo88onPreKeyEventZmokQxo(keyEvent)) {
                            return true;
                        }
                        if (i4 < 0) {
                            break;
                        }
                        size = i4;
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
            DelegatingNode node4 = node.getNode();
            ?? r6 = 0;
            while (node4 != 0) {
                if (node4 instanceof KeyInputModifierNode) {
                    if (((KeyInputModifierNode) node4).mo88onPreKeyEventZmokQxo(keyEvent)) {
                        return true;
                    }
                } else if ((node4.getKindSet$ui_release() & m1903constructorimpl3) != 0 && (node4 instanceof DelegatingNode)) {
                    Modifier.Node delegate$ui_release4 = node4.getDelegate$ui_release();
                    int i5 = 0;
                    node4 = node4;
                    r6 = r6;
                    while (delegate$ui_release4 != null) {
                        if ((delegate$ui_release4.getKindSet$ui_release() & m1903constructorimpl3) != 0) {
                            i5++;
                            r6 = r6;
                            if (i5 == 1) {
                                node4 = delegate$ui_release4;
                            } else {
                                if (r6 == 0) {
                                    r6 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (node4 != 0) {
                                    r6.add(node4);
                                    node4 = 0;
                                }
                                r6.add(delegate$ui_release4);
                            }
                        }
                        delegate$ui_release4 = delegate$ui_release4.getChild$ui_release();
                        node4 = node4;
                        r6 = r6;
                    }
                    if (i5 == 1) {
                    }
                }
                node4 = DelegatableNodeKt.pop(r6);
            }
            if (((Boolean) function0.invoke()).booleanValue()) {
                return true;
            }
            DelegatingNode node5 = node.getNode();
            ?? r62 = 0;
            while (node5 != 0) {
                if (node5 instanceof KeyInputModifierNode) {
                    if (((KeyInputModifierNode) node5).mo86onKeyEventZmokQxo(keyEvent)) {
                        return true;
                    }
                } else if ((node5.getKindSet$ui_release() & m1903constructorimpl3) != 0 && (node5 instanceof DelegatingNode)) {
                    Modifier.Node delegate$ui_release5 = node5.getDelegate$ui_release();
                    int i6 = 0;
                    node5 = node5;
                    r62 = r62;
                    while (delegate$ui_release5 != null) {
                        if ((delegate$ui_release5.getKindSet$ui_release() & m1903constructorimpl3) != 0) {
                            i6++;
                            r62 = r62;
                            if (i6 == 1) {
                                node5 = delegate$ui_release5;
                            } else {
                                if (r62 == 0) {
                                    r62 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (node5 != 0) {
                                    r62.add(node5);
                                    node5 = 0;
                                }
                                r62.add(delegate$ui_release5);
                            }
                        }
                        delegate$ui_release5 = delegate$ui_release5.getChild$ui_release();
                        node5 = node5;
                        r62 = r62;
                    }
                    if (i6 == 1) {
                    }
                }
                node5 = DelegatableNodeKt.pop(r62);
            }
            if (arrayList != null) {
                int size2 = arrayList.size();
                for (int i7 = 0; i7 < size2; i7++) {
                    if (((KeyInputModifierNode) arrayList.get(i7)).mo86onKeyEventZmokQxo(keyEvent)) {
                        return true;
                    }
                }
                Unit unit2 = Unit.INSTANCE;
            }
            Unit unit3 = Unit.INSTANCE;
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: dispatchInterceptedSoftKeyboardEvent-ZmokQxo */
    public boolean mo1115dispatchInterceptedSoftKeyboardEventZmokQxo(KeyEvent keyEvent) {
        NodeChain nodes$ui_release;
        if (this.focusInvalidationManager.hasPendingInvalidation()) {
            System.out.println((Object) "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated.");
            return false;
        }
        FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (findActiveFocusNode != null) {
            int m1903constructorimpl = NodeKind.m1903constructorimpl(PKIFailureInfo.unsupportedVersion);
            if (!findActiveFocusNode.getNode().isAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node = findActiveFocusNode.getNode();
            LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(findActiveFocusNode);
            while (requireLayoutNode != null) {
                if ((requireLayoutNode.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
                    while (node != null) {
                        if ((node.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                            Modifier.Node node2 = node;
                            MutableVector mutableVector = null;
                            while (node2 != null) {
                                if ((node2.getKindSet$ui_release() & m1903constructorimpl) != 0 && (node2 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node delegate$ui_release = ((DelegatingNode) node2).getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
                                        if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node2 = delegate$ui_release;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (node2 != null) {
                                                    mutableVector.add(node2);
                                                    node2 = null;
                                                }
                                                mutableVector.add(delegate$ui_release);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                node2 = DelegatableNodeKt.pop(mutableVector);
                            }
                        }
                        node = node.getParent$ui_release();
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui_release();
                node = (requireLayoutNode == null || (nodes$ui_release = requireLayoutNode.getNodes$ui_release()) == null) ? null : nodes$ui_release.getTail$ui_release();
            }
            ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(null);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v45 */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r9v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean dispatchRotaryEvent(RotaryScrollEvent rotaryScrollEvent) {
        RotaryInputModifierNode rotaryInputModifierNode;
        int size;
        NodeChain nodes$ui_release;
        DelegatingNode delegatingNode;
        NodeChain nodes$ui_release2;
        if (this.focusInvalidationManager.hasPendingInvalidation()) {
            throw new IllegalStateException("Dispatching rotary event while focus system is invalidated.");
        }
        FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (findActiveFocusNode != null) {
            int m1903constructorimpl = NodeKind.m1903constructorimpl(16384);
            if (!findActiveFocusNode.getNode().isAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node = findActiveFocusNode.getNode();
            LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(findActiveFocusNode);
            loop0: while (true) {
                if (requireLayoutNode == null) {
                    delegatingNode = 0;
                    break;
                }
                if ((requireLayoutNode.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
                    while (node != null) {
                        if ((node.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                            ?? r10 = 0;
                            delegatingNode = node;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof RotaryInputModifierNode) {
                                    break loop0;
                                }
                                if ((delegatingNode.getKindSet$ui_release() & m1903constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node delegate$ui_release = delegatingNode.getDelegate$ui_release();
                                    int i = 0;
                                    delegatingNode = delegatingNode;
                                    r10 = r10;
                                    while (delegate$ui_release != null) {
                                        if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                            i++;
                                            r10 = r10;
                                            if (i == 1) {
                                                delegatingNode = delegate$ui_release;
                                            } else {
                                                if (r10 == 0) {
                                                    r10 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (delegatingNode != 0) {
                                                    r10.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r10.add(delegate$ui_release);
                                            }
                                        }
                                        delegate$ui_release = delegate$ui_release.getChild$ui_release();
                                        delegatingNode = delegatingNode;
                                        r10 = r10;
                                    }
                                    if (i == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.pop(r10);
                            }
                        }
                        node = node.getParent$ui_release();
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui_release();
                node = (requireLayoutNode == null || (nodes$ui_release2 = requireLayoutNode.getNodes$ui_release()) == null) ? null : nodes$ui_release2.getTail$ui_release();
            }
            rotaryInputModifierNode = (RotaryInputModifierNode) delegatingNode;
        } else {
            rotaryInputModifierNode = null;
        }
        if (rotaryInputModifierNode != null) {
            int m1903constructorimpl2 = NodeKind.m1903constructorimpl(16384);
            if (!rotaryInputModifierNode.getNode().isAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node parent$ui_release = rotaryInputModifierNode.getNode().getParent$ui_release();
            LayoutNode requireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(rotaryInputModifierNode);
            ArrayList arrayList = null;
            while (requireLayoutNode2 != null) {
                if ((requireLayoutNode2.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl2) != 0) {
                    while (parent$ui_release != null) {
                        if ((parent$ui_release.getKindSet$ui_release() & m1903constructorimpl2) != 0) {
                            Modifier.Node node2 = parent$ui_release;
                            MutableVector mutableVector = null;
                            while (node2 != null) {
                                if (node2 instanceof RotaryInputModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(node2);
                                } else if ((node2.getKindSet$ui_release() & m1903constructorimpl2) != 0 && (node2 instanceof DelegatingNode)) {
                                    int i2 = 0;
                                    for (Modifier.Node delegate$ui_release2 = ((DelegatingNode) node2).getDelegate$ui_release(); delegate$ui_release2 != null; delegate$ui_release2 = delegate$ui_release2.getChild$ui_release()) {
                                        if ((delegate$ui_release2.getKindSet$ui_release() & m1903constructorimpl2) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                node2 = delegate$ui_release2;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (node2 != null) {
                                                    mutableVector.add(node2);
                                                    node2 = null;
                                                }
                                                mutableVector.add(delegate$ui_release2);
                                            }
                                        }
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                node2 = DelegatableNodeKt.pop(mutableVector);
                            }
                        }
                        parent$ui_release = parent$ui_release.getParent$ui_release();
                    }
                }
                requireLayoutNode2 = requireLayoutNode2.getParent$ui_release();
                parent$ui_release = (requireLayoutNode2 == null || (nodes$ui_release = requireLayoutNode2.getNodes$ui_release()) == null) ? null : nodes$ui_release.getTail$ui_release();
            }
            if (arrayList != null && arrayList.size() - 1 >= 0) {
                while (true) {
                    int i3 = size - 1;
                    if (((RotaryInputModifierNode) arrayList.get(size)).onPreRotaryScrollEvent(rotaryScrollEvent)) {
                        return true;
                    }
                    if (i3 < 0) {
                        break;
                    }
                    size = i3;
                }
            }
            DelegatingNode node3 = rotaryInputModifierNode.getNode();
            ?? r2 = 0;
            while (node3 != 0) {
                if (node3 instanceof RotaryInputModifierNode) {
                    if (((RotaryInputModifierNode) node3).onPreRotaryScrollEvent(rotaryScrollEvent)) {
                        return true;
                    }
                } else if ((node3.getKindSet$ui_release() & m1903constructorimpl2) != 0 && (node3 instanceof DelegatingNode)) {
                    Modifier.Node delegate$ui_release3 = node3.getDelegate$ui_release();
                    int i4 = 0;
                    node3 = node3;
                    r2 = r2;
                    while (delegate$ui_release3 != null) {
                        if ((delegate$ui_release3.getKindSet$ui_release() & m1903constructorimpl2) != 0) {
                            i4++;
                            r2 = r2;
                            if (i4 == 1) {
                                node3 = delegate$ui_release3;
                            } else {
                                if (r2 == 0) {
                                    r2 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (node3 != 0) {
                                    r2.add(node3);
                                    node3 = 0;
                                }
                                r2.add(delegate$ui_release3);
                            }
                        }
                        delegate$ui_release3 = delegate$ui_release3.getChild$ui_release();
                        node3 = node3;
                        r2 = r2;
                    }
                    if (i4 == 1) {
                    }
                }
                node3 = DelegatableNodeKt.pop(r2);
            }
            DelegatingNode node4 = rotaryInputModifierNode.getNode();
            ?? r22 = 0;
            while (node4 != 0) {
                if (node4 instanceof RotaryInputModifierNode) {
                    if (((RotaryInputModifierNode) node4).onRotaryScrollEvent(rotaryScrollEvent)) {
                        return true;
                    }
                } else if ((node4.getKindSet$ui_release() & m1903constructorimpl2) != 0 && (node4 instanceof DelegatingNode)) {
                    Modifier.Node delegate$ui_release4 = node4.getDelegate$ui_release();
                    int i5 = 0;
                    node4 = node4;
                    r22 = r22;
                    while (delegate$ui_release4 != null) {
                        if ((delegate$ui_release4.getKindSet$ui_release() & m1903constructorimpl2) != 0) {
                            i5++;
                            r22 = r22;
                            if (i5 == 1) {
                                node4 = delegate$ui_release4;
                            } else {
                                if (r22 == 0) {
                                    r22 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (node4 != 0) {
                                    r22.add(node4);
                                    node4 = 0;
                                }
                                r22.add(delegate$ui_release4);
                            }
                        }
                        delegate$ui_release4 = delegate$ui_release4.getChild$ui_release();
                        node4 = node4;
                        r22 = r22;
                    }
                    if (i5 == 1) {
                    }
                }
                node4 = DelegatableNodeKt.pop(r22);
            }
            if (arrayList != null) {
                int size2 = arrayList.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    if (((RotaryInputModifierNode) arrayList.get(i6)).onRotaryScrollEvent(rotaryScrollEvent)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusTargetNode focusTargetNode) {
        this.focusInvalidationManager.scheduleInvalidation(focusTargetNode);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusEventModifierNode focusEventModifierNode) {
        this.focusInvalidationManager.scheduleInvalidation(focusEventModifierNode);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusPropertiesModifierNode focusPropertiesModifierNode) {
        this.focusInvalidationManager.scheduleInvalidation(focusPropertiesModifierNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateOwnerFocusState() {
        if (this.rootFocusNode.getFocusState() == FocusStateImpl.Inactive) {
            this.onClearFocusForOwner.invoke();
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public Rect getFocusRect() {
        FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (findActiveFocusNode != null) {
            return FocusTraversalKt.focusRect(findActiveFocusNode);
        }
        return null;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public FocusState getRootState() {
        return this.rootFocusNode.getFocusState();
    }

    /* renamed from: validateKeyEvent-ZmokQxo, reason: not valid java name */
    private final boolean m1120validateKeyEventZmokQxo(KeyEvent keyEvent) {
        long m1634getKeyZmokQxo = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
        int m1635getTypeZmokQxo = KeyEvent_androidKt.m1635getTypeZmokQxo(keyEvent);
        KeyEventType.Companion companion = KeyEventType.Companion;
        if (KeyEventType.m1630equalsimpl0(m1635getTypeZmokQxo, companion.m1631getKeyDownCS__XNY())) {
            MutableLongSet mutableLongSet = this.keysCurrentlyDown;
            if (mutableLongSet == null) {
                mutableLongSet = new MutableLongSet(3);
                this.keysCurrentlyDown = mutableLongSet;
            }
            mutableLongSet.plusAssign(m1634getKeyZmokQxo);
        } else if (KeyEventType.m1630equalsimpl0(m1635getTypeZmokQxo, companion.m1632getKeyUpCS__XNY())) {
            MutableLongSet mutableLongSet2 = this.keysCurrentlyDown;
            if (mutableLongSet2 == null || !mutableLongSet2.contains(m1634getKeyZmokQxo)) {
                return false;
            }
            MutableLongSet mutableLongSet3 = this.keysCurrentlyDown;
            if (mutableLongSet3 != null) {
                mutableLongSet3.remove(m1634getKeyZmokQxo);
            }
        }
        return true;
    }
}
