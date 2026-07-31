package androidx.compose.ui.input.nestedscroll;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.TraversableNode;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        if (nestedCoroutineScope != null && JobKt.isActive(nestedCoroutineScope)) {
            return nestedCoroutineScope;
        }
        CoroutineScope coroutineScope = this.resolvedDispatcher.scope;
        if (coroutineScope != null) {
            return coroutineScope;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
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
            if ((requireLayoutNode.nodes.head.aggregateChildKindSet & 262144) != 0) {
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
                            node2 = HitTestResultKt.access$pop(mutableVector);
                        }
                    }
                    node = node.parent;
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui();
            node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : nodeChain.tail;
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
        nestedScrollDispatcher.calculateNestedScrollScope = new NestedScrollNode$updateDispatcherFields$1(this);
        nestedScrollDispatcher.scope = getCoroutineScope();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        HitTestResultKt.traverseAncestors(this, new Function1() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollNodeKt$findNearestAttachedAncestor$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean z;
                Object obj2 = (TraversableNode) obj;
                if (((Modifier.Node) obj2).node.isAttached) {
                    Ref$ObjectRef.this.element = obj2;
                    z = false;
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
        NestedScrollNode nestedScrollNode = (NestedScrollNode) ((TraversableNode) ref$ObjectRef.element);
        this.lastKnownParentNode = nestedScrollNode;
        NestedScrollDispatcher nestedScrollDispatcher = this.resolvedDispatcher;
        nestedScrollDispatcher.lastKnownParentNode = nestedScrollNode;
        if (nestedScrollDispatcher.nestedScrollNode == this) {
            nestedScrollDispatcher.nestedScrollNode = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo66onPostFlingRZ2iAVY(long r13, long r15, kotlin.coroutines.Continuation r17) {
        /*
            r12 = this;
            r1 = r17
            boolean r2 = r1 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1
            if (r2 == 0) goto L16
            r2 = r1
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1 r2 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.label = r3
        L14:
            r8 = r2
            goto L1e
        L16:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1 r2 = new androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r1 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r1
            r2.<init>(r12, r1)
            goto L14
        L1e:
            java.lang.Object r1 = r8.result
            int r2 = r8.label
            r9 = 0
            r10 = 2
            r3 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r11 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L41
            if (r2 == r3) goto L39
            if (r2 != r10) goto L33
            long r2 = r8.J$0
            kotlin.ResultKt.throwOnFailure(r1)
            goto L84
        L33:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r0)
            return r9
        L39:
            long r2 = r8.J$1
            long r4 = r8.J$0
            kotlin.ResultKt.throwOnFailure(r1)
            goto L58
        L41:
            kotlin.ResultKt.throwOnFailure(r1)
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r1 = r12.connection
            r8.J$0 = r13
            r6 = r15
            r8.J$1 = r6
            r8.label = r3
            r4 = r13
            r3 = r1
            java.lang.Object r1 = r3.mo66onPostFlingRZ2iAVY(r4, r6, r8)
            if (r1 != r11) goto L56
            goto L82
        L56:
            r4 = r13
            r2 = r15
        L58:
            androidx.compose.ui.unit.Velocity r1 = (androidx.compose.ui.unit.Velocity) r1
            long r6 = r1.packedValue
            boolean r1 = r12.isAttached
            if (r1 == 0) goto L67
            if (r1 == 0) goto L69
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r9 = r12.getParentNestedScrollNode$ui()
            goto L69
        L67:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r9 = r12.lastKnownParentNode
        L69:
            if (r9 == 0) goto L8a
            long r0 = androidx.compose.ui.unit.Velocity.m461plusAH228Gc(r4, r6)
            long r2 = androidx.compose.ui.unit.Velocity.m460minusAH228Gc(r2, r6)
            r8.J$0 = r6
            r8.label = r10
            r13 = r0
            r15 = r2
            r17 = r8
            r12 = r9
            java.lang.Object r1 = r12.mo66onPostFlingRZ2iAVY(r13, r15, r17)
            if (r1 != r11) goto L83
        L82:
            return r11
        L83:
            r2 = r6
        L84:
            androidx.compose.ui.unit.Velocity r1 = (androidx.compose.ui.unit.Velocity) r1
            long r0 = r1.packedValue
            r6 = r2
            goto L8c
        L8a:
            r0 = 0
        L8c:
            long r0 = androidx.compose.ui.unit.Velocity.m461plusAH228Gc(r6, r0)
            androidx.compose.ui.unit.Velocity r2 = new androidx.compose.ui.unit.Velocity
            r2.<init>(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollNode.mo66onPostFlingRZ2iAVY(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public final long mo67onPostScrollDzOQY0M(int i, long j, long j2) {
        long mo67onPostScrollDzOQY0M = this.connection.mo67onPostScrollDzOQY0M(i, j, j2);
        NestedScrollNode parentNestedScrollNode$ui = this.isAttached ? getParentNestedScrollNode$ui() : null;
        return Offset.m200plusMKHz9U(mo67onPostScrollDzOQY0M, parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.mo67onPostScrollDzOQY0M(i, Offset.m200plusMKHz9U(j, mo67onPostScrollDzOQY0M), Offset.m199minusMKHz9U(j2, mo67onPostScrollDzOQY0M)) : 0L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
    
        if (r9 == r5) goto L27;
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
    public final java.lang.Object mo68onPreFlingQWom1Mo(long r7, kotlin.coroutines.Continuation r9) {
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
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3b
            if (r1 == r4) goto L35
            if (r1 != r3) goto L2f
            long r6 = r0.J$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6c
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            return r2
        L35:
            long r7 = r0.J$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L53
        L3b:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = r6.isAttached
            if (r9 == 0) goto L46
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r2 = r6.getParentNestedScrollNode$ui()
        L46:
            if (r2 == 0) goto L58
            r0.J$0 = r7
            r0.label = r4
            java.lang.Object r9 = r2.mo68onPreFlingQWom1Mo(r7, r0)
            if (r9 != r5) goto L53
            goto L6a
        L53:
            androidx.compose.ui.unit.Velocity r9 = (androidx.compose.ui.unit.Velocity) r9
            long r1 = r9.packedValue
            goto L5a
        L58:
            r1 = 0
        L5a:
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r6 = r6.connection
            long r7 = androidx.compose.ui.unit.Velocity.m460minusAH228Gc(r7, r1)
            r0.J$0 = r1
            r0.label = r3
            java.lang.Object r9 = r6.mo68onPreFlingQWom1Mo(r7, r0)
            if (r9 != r5) goto L6b
        L6a:
            return r5
        L6b:
            r6 = r1
        L6c:
            androidx.compose.ui.unit.Velocity r9 = (androidx.compose.ui.unit.Velocity) r9
            long r8 = r9.packedValue
            long r6 = androidx.compose.ui.unit.Velocity.m461plusAH228Gc(r6, r8)
            androidx.compose.ui.unit.Velocity r8 = new androidx.compose.ui.unit.Velocity
            r8.<init>(r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollNode.mo68onPreFlingQWom1Mo(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public final long mo69onPreScrollOzD1aCk(int i, long j) {
        NestedScrollNode parentNestedScrollNode$ui = this.isAttached ? getParentNestedScrollNode$ui() : null;
        long mo69onPreScrollOzD1aCk = parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.mo69onPreScrollOzD1aCk(i, j) : 0L;
        return Offset.m200plusMKHz9U(mo69onPreScrollOzD1aCk, this.connection.mo69onPreScrollOzD1aCk(i, Offset.m199minusMKHz9U(j, mo69onPreScrollOzD1aCk)));
    }
}
