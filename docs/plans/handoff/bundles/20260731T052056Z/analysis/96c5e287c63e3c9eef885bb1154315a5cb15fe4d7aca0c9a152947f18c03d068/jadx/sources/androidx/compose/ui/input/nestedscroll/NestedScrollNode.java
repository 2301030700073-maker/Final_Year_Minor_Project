package androidx.compose.ui.input.nestedscroll;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.AndroidComposeView$focusSearch$searchResult$1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NestedScrollNode extends Modifier.Node implements TraversableNode, NestedScrollConnection {
    public NestedScrollConnection connection;
    public NestedScrollNode lastKnownParentNode;
    public NestedScrollDispatcher resolvedDispatcher;
    public final String traverseKey;

    public NestedScrollNode(NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        this.connection = nestedScrollConnection;
        this.resolvedDispatcher = nestedScrollDispatcher == null ? new NestedScrollDispatcher() : nestedScrollDispatcher;
        this.traverseKey = "androidx.compose.ui.input.nestedscroll.NestedScrollNode";
    }

    public final CoroutineScope getNestedCoroutineScope() {
        NestedScrollNode parentNestedScrollNode$ui = getParentNestedScrollNode$ui();
        CoroutineScope nestedCoroutineScope = parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.getNestedCoroutineScope() : null;
        if (nestedCoroutineScope != null && AwaitKt.isActive(nestedCoroutineScope)) {
            return nestedCoroutineScope;
        }
        CoroutineScope coroutineScope = this.resolvedDispatcher.scope;
        if (coroutineScope != null) {
            return coroutineScope;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        return null;
    }

    public final NestedScrollNode getParentNestedScrollNode$ui() {
        NodeChain nodeChain;
        TraversableNode traversableNode = null;
        if (!this.isAttached) {
            return null;
        }
        if (!this.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node = this.node.parent;
        LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(this);
        loop0: while (true) {
            if (requireLayoutNode == null) {
                break;
            }
            if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 262144) != 0) {
                while (node != null) {
                    if ((node.kindSet & 262144) != 0) {
                        Modifier.Node node2 = node;
                        MutableVector mutableVector = null;
                        while (node2 != null) {
                            if (node2 instanceof TraversableNode) {
                                TraversableNode traversableNode2 = (TraversableNode) node2;
                                if (Intrinsics.areEqual(this.traverseKey, traversableNode2.getTraverseKey()) && NestedScrollNode.class == traversableNode2.getClass()) {
                                    traversableNode = traversableNode2;
                                    break loop0;
                                }
                            }
                            if ((node2.kindSet & 262144) != 0 && (node2 instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                                    if ((node3.kindSet & 262144) != 0) {
                                        i++;
                                        if (i == 1) {
                                            node2 = node3;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node2 != null) {
                                                mutableVector.add(node2);
                                                node2 = null;
                                            }
                                            mutableVector.add(node3);
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            node2 = HitTestResultKt.pop(mutableVector);
                        }
                    }
                    node = node.parent;
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui();
            node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
        }
        return (NestedScrollNode) traversableNode;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object getTraverseKey() {
        return this.traverseKey;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        NestedScrollDispatcher nestedScrollDispatcher = this.resolvedDispatcher;
        nestedScrollDispatcher.nestedScrollNode = this;
        nestedScrollDispatcher.lastKnownParentNode = null;
        this.lastKnownParentNode = null;
        nestedScrollDispatcher.calculateNestedScrollScope = new LayoutNode$_foldedChildren$1(5, this);
        nestedScrollDispatcher.scope = getCoroutineScope();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        HitTestResultKt.traverseAncestors(this, new AndroidComposeView$focusSearch$searchResult$1(ref$ObjectRef, 1));
        NestedScrollNode nestedScrollNode = (NestedScrollNode) ((TraversableNode) ref$ObjectRef.element);
        this.lastKnownParentNode = nestedScrollNode;
        NestedScrollDispatcher nestedScrollDispatcher = this.resolvedDispatcher;
        nestedScrollDispatcher.lastKnownParentNode = nestedScrollNode;
        if (nestedScrollDispatcher.nestedScrollNode == this) {
            nestedScrollDispatcher.nestedScrollNode = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo2onPostFlingRZ2iAVY(long r13, long r15, kotlin.coroutines.Continuation r17) {
        /*
            r12 = this;
            r0 = r17
            boolean r1 = r0 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1
            if (r1 == 0) goto L16
            r1 = r0
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1 r1 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.label = r2
        L14:
            r7 = r1
            goto L1e
        L16:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1 r1 = new androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r0 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r0
            r1.<init>(r12, r0)
            goto L14
        L1e:
            java.lang.Object r0 = r7.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r7.label
            r8 = 0
            r9 = 2
            r3 = 1
            if (r2 == 0) goto L44
            if (r2 == r3) goto L39
            if (r2 != r9) goto L33
            long r12 = r7.J$0
            kotlin.ResultKt.throwOnFailure(r0)
            goto L85
        L33:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r12)
            return r8
        L39:
            long r13 = r7.J$1
            long r2 = r7.J$0
            kotlin.ResultKt.throwOnFailure(r0)
            r10 = r2
            r2 = r13
            r13 = r10
            goto L59
        L44:
            kotlin.ResultKt.throwOnFailure(r0)
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r2 = r12.connection
            r7.J$0 = r13
            r5 = r15
            r7.J$1 = r5
            r7.label = r3
            r3 = r13
            java.lang.Object r0 = r2.mo2onPostFlingRZ2iAVY(r3, r5, r7)
            if (r0 != r1) goto L58
            goto L83
        L58:
            r2 = r15
        L59:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r4 = r0.packedValue
            boolean r0 = r12.isAttached
            if (r0 == 0) goto L69
            if (r0 == 0) goto L67
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r8 = r12.getParentNestedScrollNode$ui()
        L67:
            r12 = r8
            goto L6c
        L69:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r8 = r12.lastKnownParentNode
            goto L67
        L6c:
            if (r12 == 0) goto L8b
            long r13 = androidx.compose.ui.unit.Velocity.m734plusAH228Gc(r13, r4)
            long r2 = androidx.compose.ui.unit.Velocity.m733minusAH228Gc(r2, r4)
            r7.J$0 = r4
            r7.label = r9
            r15 = r2
            r17 = r7
            java.lang.Object r0 = r12.mo2onPostFlingRZ2iAVY(r13, r15, r17)
            if (r0 != r1) goto L84
        L83:
            return r1
        L84:
            r12 = r4
        L85:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r0 = r0.packedValue
            r4 = r12
            goto L8d
        L8b:
            r0 = 0
        L8d:
            long r12 = androidx.compose.ui.unit.Velocity.m734plusAH228Gc(r4, r0)
            androidx.compose.ui.unit.Velocity r14 = new androidx.compose.ui.unit.Velocity
            r14.<init>(r12)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollNode.mo2onPostFlingRZ2iAVY(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public final long mo3onPostScrollDzOQY0M(int i, long j, long j2) {
        long mo3onPostScrollDzOQY0M = this.connection.mo3onPostScrollDzOQY0M(i, j, j2);
        NestedScrollNode parentNestedScrollNode$ui = this.isAttached ? getParentNestedScrollNode$ui() : null;
        return Offset.m386plusMKHz9U(mo3onPostScrollDzOQY0M, parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.mo3onPostScrollDzOQY0M(i, Offset.m386plusMKHz9U(j, mo3onPostScrollDzOQY0M), Offset.m385minusMKHz9U(j2, mo3onPostScrollDzOQY0M)) : 0L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
    
        if (r9 == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo4onPreFlingQWom1Mo(long r7, kotlin.coroutines.Continuation r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r9 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r9
            r0.<init>(r6, r9)
        L1a:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            long r6 = r0.J$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6c
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L35:
            long r7 = r0.J$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L53
        L3b:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = r6.isAttached
            if (r9 == 0) goto L46
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r3 = r6.getParentNestedScrollNode$ui()
        L46:
            if (r3 == 0) goto L58
            r0.J$0 = r7
            r0.label = r5
            java.lang.Object r9 = r3.mo4onPreFlingQWom1Mo(r7, r0)
            if (r9 != r1) goto L53
            goto L6a
        L53:
            androidx.compose.ui.unit.Velocity r9 = (androidx.compose.ui.unit.Velocity) r9
            long r2 = r9.packedValue
            goto L5a
        L58:
            r2 = 0
        L5a:
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r6 = r6.connection
            long r7 = androidx.compose.ui.unit.Velocity.m733minusAH228Gc(r7, r2)
            r0.J$0 = r2
            r0.label = r4
            java.lang.Object r9 = r6.mo4onPreFlingQWom1Mo(r7, r0)
            if (r9 != r1) goto L6b
        L6a:
            return r1
        L6b:
            r6 = r2
        L6c:
            androidx.compose.ui.unit.Velocity r9 = (androidx.compose.ui.unit.Velocity) r9
            long r8 = r9.packedValue
            long r6 = androidx.compose.ui.unit.Velocity.m734plusAH228Gc(r6, r8)
            androidx.compose.ui.unit.Velocity r8 = new androidx.compose.ui.unit.Velocity
            r8.<init>(r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollNode.mo4onPreFlingQWom1Mo(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public final long mo5onPreScrollOzD1aCk(long j, int i) {
        NestedScrollNode parentNestedScrollNode$ui = this.isAttached ? getParentNestedScrollNode$ui() : null;
        long mo5onPreScrollOzD1aCk = parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.mo5onPreScrollOzD1aCk(j, i) : 0L;
        return Offset.m386plusMKHz9U(mo5onPreScrollOzD1aCk, this.connection.mo5onPreScrollOzD1aCk(Offset.m385minusMKHz9U(j, mo5onPreScrollOzD1aCk), i));
    }
}
