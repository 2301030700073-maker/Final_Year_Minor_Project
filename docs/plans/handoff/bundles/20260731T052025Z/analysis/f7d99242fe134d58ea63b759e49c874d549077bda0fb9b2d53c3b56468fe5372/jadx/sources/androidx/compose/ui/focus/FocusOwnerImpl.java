package androidx.compose.ui.focus;

import android.view.View;
import androidx.collection.MutableLongSet;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.platform.AndroidComposeView;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FocusOwnerImpl implements FocusOwner {
    public FocusTargetNode activeFocusTargetNode;
    public final FocusInvalidationManager focusInvalidationManager;
    public MutableLongSet keysCurrentlyDown;
    public final AndroidComposeView owner;
    public final AndroidComposeView platformFocusOwner;
    public final FocusTargetNode rootFocusNode = new FocusTargetNode(2, null, 14);
    public final FocusOwnerImpl$modifier$1 modifier = new ModifierNodeElement() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$1
        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node create() {
            return FocusOwnerImpl.this.rootFocusNode;
        }

        public final boolean equals(Object obj) {
            return obj == this;
        }

        public final int hashCode() {
            return FocusOwnerImpl.this.rootFocusNode.hashCode();
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final /* bridge */ /* synthetic */ void update(Modifier.Node node) {
        }
    };
    public final MutableObjectList listeners = new MutableObjectList(1);

    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.ui.focus.FocusOwnerImpl$modifier$1] */
    public FocusOwnerImpl(AndroidComposeView androidComposeView, AndroidComposeView androidComposeView2) {
        this.platformFocusOwner = androidComposeView;
        this.owner = androidComposeView2;
        this.focusInvalidationManager = new FocusInvalidationManager(this, androidComposeView2);
    }

    public final boolean clearFocus(boolean z) {
        NodeChain nodeChain;
        if (getActiveFocusTargetNode() != null) {
            FocusTargetNode activeFocusTargetNode = getActiveFocusTargetNode();
            setActiveFocusTargetNode(null);
            if (activeFocusTargetNode != null) {
                FocusStateImpl focusStateImpl = FocusStateImpl.Active;
                FocusStateImpl focusStateImpl2 = FocusStateImpl.Inactive;
                activeFocusTargetNode.dispatchFocusCallbacks$ui(focusStateImpl, focusStateImpl2);
                if (!activeFocusTargetNode.node.isAttached) {
                    InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                }
                Modifier.Node node = activeFocusTargetNode.node.parent;
                LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(activeFocusTargetNode);
                while (requireLayoutNode != null) {
                    if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 1024) != 0) {
                        while (node != null) {
                            if ((node.kindSet & 1024) != 0) {
                                Modifier.Node node2 = node;
                                MutableVector mutableVector = null;
                                while (node2 != null) {
                                    if (node2 instanceof FocusTargetNode) {
                                        ((FocusTargetNode) node2).dispatchFocusCallbacks$ui(FocusStateImpl.ActiveParent, focusStateImpl2);
                                    } else if ((node2.kindSet & 1024) != 0 && (node2 instanceof DelegatingNode)) {
                                        int i = 0;
                                        for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                                            if ((node3.kindSet & 1024) != 0) {
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
                    node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
                }
            }
        }
        return true;
    }

    /* renamed from: clearFocus-I7lrPNg, reason: not valid java name */
    public final boolean m412clearFocusI7lrPNg(int i, boolean z, boolean z2) {
        boolean z3 = true;
        if (z) {
            clearFocus(z);
        } else {
            int ordinal = FocusTraversalKt.m427performCustomClearFocusMxy_nc0(this.rootFocusNode, i).ordinal();
            if (ordinal == 0) {
                clearFocus(z);
            } else {
                if (ordinal != 1 && ordinal != 2 && ordinal != 3) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return false;
                }
                z3 = false;
            }
        }
        if (z3 && z2) {
            clearOwnerFocus();
        }
        return z3;
    }

    public final void clearOwnerFocus() {
        AndroidComposeView androidComposeView = this.platformFocusOwner;
        if (androidComposeView.isFocused() || androidComposeView.hasFocus()) {
            androidComposeView.clearFocus();
        } else if (androidComposeView.hasFocus()) {
            View findFocus = androidComposeView.findFocus();
            if (findFocus != null) {
                findFocus.clearFocus();
            }
            androidComposeView.clearFocus();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0059, code lost:
    
        if (r7 == null) goto L31;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0171 A[Catch: all -> 0x02f0, TryCatch #0 {all -> 0x02f0, blocks: (B:3:0x0007, B:5:0x000e, B:9:0x0019, B:13:0x0023, B:16:0x0030, B:18:0x0036, B:19:0x003c, B:21:0x0044, B:23:0x0049, B:25:0x004f, B:29:0x0055, B:34:0x0171, B:36:0x0177, B:37:0x017a, B:39:0x0185, B:42:0x0193, B:46:0x019d, B:49:0x01a3, B:50:0x01a8, B:52:0x01b0, B:54:0x01b6, B:56:0x01ba, B:58:0x01c2, B:60:0x01c8, B:66:0x01d0, B:68:0x01d9, B:69:0x01dd, B:64:0x01e0, B:75:0x01e6, B:86:0x01eb, B:89:0x01ee, B:91:0x01f4, B:98:0x01f8, B:103:0x0201, B:105:0x0209, B:113:0x0220, B:115:0x0225, B:149:0x0229, B:144:0x026b, B:117:0x0235, B:119:0x023b, B:121:0x023f, B:123:0x0247, B:125:0x024d, B:131:0x0255, B:133:0x025e, B:134:0x0262, B:129:0x0265, B:155:0x0270, B:159:0x0280, B:161:0x0285, B:195:0x0289, B:190:0x02cb, B:163:0x0295, B:165:0x029b, B:167:0x029f, B:169:0x02a7, B:171:0x02ad, B:177:0x02b5, B:179:0x02be, B:180:0x02c2, B:175:0x02c5, B:202:0x02d2, B:204:0x02d9, B:217:0x005d, B:219:0x0063, B:220:0x0066, B:222:0x006e, B:225:0x007c, B:229:0x0086, B:264:0x00db, B:266:0x00df, B:231:0x008b, B:233:0x0091, B:235:0x0095, B:237:0x009d, B:239:0x00a3, B:245:0x00ab, B:247:0x00b4, B:248:0x00b8, B:243:0x00bb, B:254:0x00c1, B:268:0x00c6, B:271:0x00c9, B:273:0x00cf, B:280:0x00d3, B:285:0x00e5, B:287:0x00eb, B:288:0x00ee, B:290:0x00f8, B:293:0x0106, B:297:0x0110, B:332:0x0165, B:334:0x0169, B:299:0x0115, B:301:0x011b, B:303:0x011f, B:305:0x0127, B:307:0x012d, B:313:0x0135, B:315:0x013e, B:316:0x0142, B:311:0x0145, B:322:0x014b, B:337:0x0150, B:340:0x0153, B:342:0x0159, B:349:0x015d), top: B:2:0x0007 }] */
    /* JADX WARN: Type inference failed for: r0v20, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r12v24, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v25, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v29, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v30, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v34, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v36, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v38 */
    /* JADX WARN: Type inference failed for: r12v39 */
    /* JADX WARN: Type inference failed for: r12v40 */
    /* JADX WARN: Type inference failed for: r12v43, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v44 */
    /* JADX WARN: Type inference failed for: r12v45, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v49 */
    /* JADX WARN: Type inference failed for: r12v64 */
    /* JADX WARN: Type inference failed for: r12v65 */
    /* JADX WARN: Type inference failed for: r12v66 */
    /* JADX WARN: Type inference failed for: r12v67 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* renamed from: dispatchKeyEvent-YhN2O0w, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m413dispatchKeyEventYhN2O0w(android.view.KeyEvent r13, kotlin.jvm.functions.Function0 r14) {
        /*
            Method dump skipped, instructions count: 757
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusOwnerImpl.m413dispatchKeyEventYhN2O0w(android.view.KeyEvent, kotlin.jvm.functions.Function0):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x011e, code lost:
    
        continue;
     */
    /* renamed from: focusSearch-ULY8qGw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Boolean m414focusSearchULY8qGw(int r19, androidx.compose.ui.geometry.Rect r20, kotlin.jvm.functions.Function1 r21) {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusOwnerImpl.m414focusSearchULY8qGw(int, androidx.compose.ui.geometry.Rect, kotlin.jvm.functions.Function1):java.lang.Boolean");
    }

    public final FocusTargetNode getActiveFocusTargetNode() {
        FocusTargetNode focusTargetNode = this.activeFocusTargetNode;
        if (focusTargetNode == null || !focusTargetNode.isAttached) {
            return null;
        }
        return focusTargetNode;
    }

    /* renamed from: moveFocus-aToIllA, reason: not valid java name */
    public final boolean m415moveFocusaToIllA(final int i, boolean z) {
        FocusTargetNode activeFocusTargetNode = getActiveFocusTargetNode();
        AndroidComposeView androidComposeView = this.platformFocusOwner;
        if (activeFocusTargetNode == null || !activeFocusTargetNode.isInteropViewHost || !androidComposeView.m650moveFocusInChildren3ESFkO8(i)) {
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = Boolean.FALSE;
            FocusTargetNode activeFocusTargetNode2 = getActiveFocusTargetNode();
            Boolean m414focusSearchULY8qGw = m414focusSearchULY8qGw(i, androidComposeView.getEmbeddedViewFocusRect(), new Function1() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$moveFocus$focusSearchSuccess$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Boolean valueOf = Boolean.valueOf(((FocusTargetNode) obj).m420requestFocus3ESFkO8(i));
                    ref$ObjectRef.element = valueOf;
                    return valueOf;
                }
            });
            if (!Intrinsics.areEqual(m414focusSearchULY8qGw, Boolean.TRUE) || activeFocusTargetNode2 == getActiveFocusTargetNode()) {
                if (m414focusSearchULY8qGw != null && ref$ObjectRef.element != null) {
                    if (!m414focusSearchULY8qGw.booleanValue() || !((Boolean) ref$ObjectRef.element).booleanValue()) {
                        if ((i == 1 || i == 2) && z && m412clearFocusI7lrPNg(i, false, false)) {
                            Boolean m414focusSearchULY8qGw2 = m414focusSearchULY8qGw(i, null, new FocusOwnerImpl$takeFocus$1(i, 0));
                            if (m414focusSearchULY8qGw2 != null ? m414focusSearchULY8qGw2.booleanValue() : false) {
                            }
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    /* renamed from: resetFocus-3ESFkO8, reason: not valid java name */
    public final boolean m416resetFocus3ESFkO8(int i) {
        if (!m412clearFocusI7lrPNg(i, false, false)) {
            return false;
        }
        Boolean m414focusSearchULY8qGw = m414focusSearchULY8qGw(i, null, new FocusOwnerImpl$takeFocus$1(i, 1));
        boolean booleanValue = m414focusSearchULY8qGw != null ? m414focusSearchULY8qGw.booleanValue() : false;
        if (!booleanValue) {
            clearOwnerFocus();
        }
        return booleanValue;
    }

    public final void setActiveFocusTargetNode(FocusTargetNode focusTargetNode) {
        FocusTargetNode focusTargetNode2 = this.activeFocusTargetNode;
        this.activeFocusTargetNode = focusTargetNode;
        MutableObjectList mutableObjectList = this.listeners;
        Object[] objArr = mutableObjectList.content;
        int i = mutableObjectList._size;
        for (int i2 = 0; i2 < i; i2++) {
            ((FocusListener) objArr[i2]).onFocusChanged(focusTargetNode2, focusTargetNode);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x034e, code lost:
    
        r10 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x009f, code lost:
    
        r30 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a9, code lost:
    
        if (((r10 & ((~r10) << 6)) & (-9187201950435737472L)) == 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ab, code lost:
    
        r0 = r4.findFirstAvailableSlot(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b1, code lost:
    
        if (r4.growthLimit != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c2, code lost:
    
        if (((r4.metadata[r0 >> 3] >> ((r0 & 7) << 3)) & 255) != 254) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00cc, code lost:
    
        r0 = r4._capacity;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ce, code lost:
    
        if (r0 <= r5) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d0, code lost:
    
        r11 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e7, code lost:
    
        if (java.lang.Long.compare((r4._size * 32) ^ Long.MIN_VALUE, (r0 * 25) ^ Long.MIN_VALUE) > 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e9, code lost:
    
        r0 = r4.metadata;
        r3 = r4._capacity;
        r5 = r4.elements;
        r6 = (r3 + 7) >> 3;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f5, code lost:
    
        if (r14 >= r6) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f7, code lost:
    
        r9 = r0[r14] & (-9187201950435737472L);
        r0[r14] = (-72340172838076674L) & ((~r9) + (r9 >>> 7));
        r14 = r14 + 1;
        r11 = r11;
        r12 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0112, code lost:
    
        r36 = r12;
        r40 = 128;
        r13 = r11;
        r6 = kotlin.collections.ArraysKt___ArraysKt.getLastIndex(r0);
        r9 = r6 - 1;
        r14 = 72057594037927935L;
        r0[r9] = (r0[r9] & 72057594037927935L) | (-72057594037927936L);
        r0[r6] = r0[0];
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0131, code lost:
    
        if (r6 == r3) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0133, code lost:
    
        r9 = r6 >> 3;
        r12 = (r6 & 7) << 3;
        r10 = (r0[r9] >> r12) & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0140, code lost:
    
        if (r10 != 128) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0147, code lost:
    
        if (r10 == 254) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x014a, code lost:
    
        r10 = r5[r6];
        r10 = ((int) (r10 ^ (r10 >>> r30))) * r31;
        r11 = (r10 ^ (r10 << 16)) >>> 7;
        r23 = r4.findFirstAvailableSlot(r11);
        r11 = r11 & r3;
        r29 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x016a, code lost:
    
        if ((((r23 - r11) & r3) / 8) != (((r6 - r11) & r3) / 8)) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x018d, code lost:
    
        r32 = r14;
        r11 = r23 >> 3;
        r13 = r0[r11];
        r15 = (r23 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x019d, code lost:
    
        if (((r13 >> r15) & 255) != 128) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x019f, code lost:
    
        r38 = r7;
        r39 = r8;
        r24 = r5;
        r25 = r6;
        r0[r11] = ((~(255 << r15)) & r13) | ((r10 & 127) << r15);
        r0[r9] = (r0[r9] & (~(255 << r12))) | (128 << r12);
        r24[r23] = r24[r25];
        r24[r25] = 0;
        r6 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01e3, code lost:
    
        r0[r0.length - 1] = (r0[0] & r32) | Long.MIN_VALUE;
        r6 = r6 + 1;
        r5 = r24;
        r13 = r29;
        r14 = r32;
        r7 = r38;
        r8 = r39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01c6, code lost:
    
        r24 = r5;
        r25 = r6;
        r38 = r7;
        r39 = r8;
        r0[r11] = ((r10 & 127) << r15) | ((~(255 << r15)) & r13);
        r5 = r24[r23];
        r24[r23] = r24[r25];
        r24[r25] = r5;
        r6 = r25 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x016c, code lost:
    
        r32 = r14;
        r0[r9] = ((r10 & 127) << r12) | (r0[r9] & (~(255 << r12)));
        r0[r0.length - r7] = (r0[0] & r32) | Long.MIN_VALUE;
        r6 = r6 + 1;
        r13 = r29;
        r14 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0142, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01fc, code lost:
    
        r38 = r7;
        r39 = r8;
        r4.growthLimit = androidx.collection.ScatterMapKt.loadedCapacity(r4._capacity) - r4._size;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0281, code lost:
    
        r0 = r4.findFirstAvailableSlot(r39);
        r38 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0285, code lost:
    
        r29 = r0;
        r4._size++;
        r0 = r4.growthLimit;
        r3 = r4.metadata;
        r5 = r29 >> 3;
        r6 = r3[r5];
        r8 = (r29 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x029f, code lost:
    
        if (((r6 >> r8) & 255) != r40) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x02a1, code lost:
    
        r22 = r38 == true ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x02a3, code lost:
    
        r4.growthLimit = r0 - r22;
        r0 = r4._capacity;
        r6 = (r6 & (~(255 << r8))) | (r36 << r8);
        r3[r5] = r6;
        r3[(((r29 - 7) & r0) + (r0 & 7)) >> 3] = r6;
        r38 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x020f, code lost:
    
        r38 = 1;
        r39 = r8;
        r36 = r12;
        r40 = 128;
        r0 = androidx.collection.ScatterMapKt.nextCapacity(r4._capacity);
        r3 = r4.metadata;
        r5 = r4.elements;
        r6 = r4._capacity;
        r4.initializeStorage(r0);
        r0 = r4.metadata;
        r7 = r4.elements;
        r8 = r4._capacity;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x022e, code lost:
    
        if (r9 >= r6) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x023d, code lost:
    
        if (((r3[r9 >> 3] >> ((r9 & 7) << 3)) & 255) >= 128) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x023f, code lost:
    
        r10 = r5[r9];
        r12 = ((int) ((r10 >>> r30) ^ r10)) * r31;
        r12 = r12 ^ (r12 << 16);
        r13 = r4.findFirstAvailableSlot(r12 >>> 7);
        r14 = r12 & 127;
        r12 = r13 >> 3;
        r16 = (r13 & 7) << 3;
        r19 = r5;
        r20 = r6;
        r5 = (r0[r12] & (~(255 << r16))) | (r14 << r16);
        r0[r12] = r5;
        r0[(((r13 - 7) & r8) + (r8 & 7)) >> 3] = r5;
        r7[r13] = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x027a, code lost:
    
        r9 = r9 + 1;
        r5 = r19;
        r6 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0276, code lost:
    
        r19 = r5;
        r20 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c4, code lost:
    
        r38 = 1;
        r36 = r12;
        r40 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x034c, code lost:
    
        if (((r6 & ((~r6) << 6)) & (-9187201950435737472L)) == 0) goto L85;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: validateKeyEvent-ZmokQxo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m417validateKeyEventZmokQxo(android.view.KeyEvent r41) {
        /*
            Method dump skipped, instructions count: 907
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusOwnerImpl.m417validateKeyEventZmokQxo(android.view.KeyEvent):boolean");
    }
}
