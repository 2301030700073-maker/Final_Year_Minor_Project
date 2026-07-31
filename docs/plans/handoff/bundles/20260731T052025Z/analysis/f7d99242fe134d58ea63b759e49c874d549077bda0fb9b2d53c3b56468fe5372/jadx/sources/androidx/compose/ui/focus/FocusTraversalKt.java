package androidx.compose.ui.focus;

import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout$BeyondBoundsScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.platform.AndroidComposeView;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FocusTraversalKt {
    /* JADX WARN: Removed duplicated region for block: B:13:0x0076 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean backwardFocusSearch(androidx.compose.ui.focus.FocusTargetNode r7, androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1 r8) {
        /*
            androidx.compose.ui.focus.FocusStateImpl r0 = r7.getFocusState()
            int r0 = r0.ordinal()
            if (r0 == 0) goto L81
            r1 = 3
            r2 = 0
            r3 = 2
            r4 = 1
            if (r0 == r4) goto L35
            if (r0 == r3) goto L81
            if (r0 != r1) goto L31
            boolean r0 = pickChildForBackwardSearch(r7, r8)
            if (r0 != 0) goto L77
            androidx.compose.ui.focus.FocusPropertiesImpl r0 = r7.fetchFocusProperties$ui()
            boolean r0 = r0.canFocus
            if (r0 == 0) goto L2d
            java.lang.Object r7 = r8.invoke(r7)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            goto L2e
        L2d:
            r7 = r2
        L2e:
            if (r7 == 0) goto L76
            goto L77
        L31:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
            return r2
        L35:
            androidx.compose.ui.focus.FocusTargetNode r0 = getActiveChild(r7)
            java.lang.String r5 = "ActiveParent must have a focusedChild"
            if (r0 == 0) goto L7d
            androidx.compose.ui.focus.FocusStateImpl r6 = r0.getFocusState()
            int r6 = r6.ordinal()
            if (r6 == 0) goto L78
            if (r6 == r4) goto L55
            if (r6 == r3) goto L78
            if (r6 == r1) goto L51
            coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
            return r2
        L51:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r2
        L55:
            boolean r1 = backwardFocusSearch(r0, r8)
            if (r1 != 0) goto L77
            boolean r7 = m425generateAndSearchChildren4C6V_qg(r7, r0, r3, r8)
            if (r7 != 0) goto L77
            androidx.compose.ui.focus.FocusPropertiesImpl r7 = r0.fetchFocusProperties$ui()
            boolean r7 = r7.canFocus
            if (r7 == 0) goto L76
            java.lang.Object r7 = r8.invoke(r0)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L76
            goto L77
        L76:
            return r2
        L77:
            return r4
        L78:
            boolean r7 = m425generateAndSearchChildren4C6V_qg(r7, r0, r3, r8)
            return r7
        L7d:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r2
        L81:
            boolean r7 = pickChildForBackwardSearch(r7, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusTraversalKt.backwardFocusSearch(androidx.compose.ui.focus.FocusTargetNode, androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
    
        if (r21 != 3) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004d, code lost:
    
        if (r21 != 4) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0050, code lost:
    
        if (r21 != 3) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
    
        r1 = r11 - r19.right;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
    
        if (r1 >= 0.0f) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
    
        r1 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0071, code lost:
    
        if (r21 != 3) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0073, code lost:
    
        r11 = r11 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0087, code lost:
    
        if (r11 >= 1.0f) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0089, code lost:
    
        r11 = 1.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
    
        if (r1 >= r11) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008f, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
    
        if (r21 != 4) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0077, code lost:
    
        r11 = r2 - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007a, code lost:
    
        if (r21 != 5) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007c, code lost:
    
        r11 = r9 - r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007f, code lost:
    
        if (r21 != 6) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0081, code lost:
    
        r11 = r6 - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0090, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2("This function should only be used for 2-D focus search");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0093, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0057, code lost:
    
        if (r21 != 4) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0059, code lost:
    
        r1 = r19.left - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005d, code lost:
    
        if (r21 != 5) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005f, code lost:
    
        r1 = r9 - r19.bottom;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0064, code lost:
    
        if (r21 != 6) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0066, code lost:
    
        r1 = r19.top - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0094, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2("This function should only be used for 2-D focus search");
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x004f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x003a, code lost:
    
        if (r10 <= r7) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0041, code lost:
    
        if (r9 >= r6) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0048, code lost:
    
        if (r8 <= r5) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
    
        if (r11 >= r2) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0098, code lost:
    
        return true;
     */
    /* renamed from: beamBeats-I7lrPNg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m421beamBeatsI7lrPNg(androidx.compose.ui.geometry.Rect r18, androidx.compose.ui.geometry.Rect r19, androidx.compose.ui.geometry.Rect r20, int r21) {
        /*
            r0 = r18
            r1 = r19
            r2 = r20
            r3 = r21
            boolean r4 = beamBeats_I7lrPNg$inSourceBeam(r3, r2, r0)
            float r5 = r2.top
            float r6 = r2.bottom
            float r7 = r2.left
            float r2 = r2.right
            float r8 = r0.bottom
            float r9 = r0.top
            float r10 = r0.right
            float r11 = r0.left
            r12 = 0
            if (r4 != 0) goto L9c
            boolean r0 = beamBeats_I7lrPNg$inSourceBeam(r3, r1, r0)
            if (r0 != 0) goto L27
            goto L9c
        L27:
            java.lang.String r4 = "This function should only be used for 2-D focus search"
            r13 = 6
            r14 = 5
            r15 = 4
            r18 = 1
            r0 = 3
            if (r3 != r0) goto L36
            int r16 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r16 < 0) goto L98
            goto L4a
        L36:
            if (r3 != r15) goto L3d
            int r16 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r16 > 0) goto L98
            goto L4a
        L3d:
            if (r3 != r14) goto L44
            int r16 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r16 < 0) goto L98
            goto L4a
        L44:
            if (r3 != r13) goto L99
            int r16 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r16 > 0) goto L98
        L4a:
            if (r3 != r0) goto L4d
            goto L4f
        L4d:
            if (r3 != r15) goto L50
        L4f:
            return r18
        L50:
            if (r3 != r0) goto L57
            float r1 = r1.right
            float r1 = r11 - r1
            goto L69
        L57:
            if (r3 != r15) goto L5d
            float r1 = r1.left
            float r1 = r1 - r10
            goto L69
        L5d:
            if (r3 != r14) goto L64
            float r1 = r1.bottom
            float r1 = r9 - r1
            goto L69
        L64:
            if (r3 != r13) goto L94
            float r1 = r1.top
            float r1 = r1 - r8
        L69:
            r16 = 0
            int r17 = (r1 > r16 ? 1 : (r1 == r16 ? 0 : -1))
            if (r17 >= 0) goto L71
            r1 = r16
        L71:
            if (r3 != r0) goto L75
            float r11 = r11 - r7
            goto L83
        L75:
            if (r3 != r15) goto L7a
            float r11 = r2 - r10
            goto L83
        L7a:
            if (r3 != r14) goto L7f
            float r11 = r9 - r5
            goto L83
        L7f:
            if (r3 != r13) goto L90
            float r11 = r6 - r8
        L83:
            r0 = 1065353216(0x3f800000, float:1.0)
            int r2 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            if (r2 >= 0) goto L8a
            r11 = r0
        L8a:
            int r0 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r0 >= 0) goto L8f
            return r18
        L8f:
            return r12
        L90:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r12
        L94:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r12
        L98:
            return r18
        L99:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
        L9c:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusTraversalKt.m421beamBeatsI7lrPNg(androidx.compose.ui.geometry.Rect, androidx.compose.ui.geometry.Rect, androidx.compose.ui.geometry.Rect, int):boolean");
    }

    public static final boolean beamBeats_I7lrPNg$inSourceBeam(int i, Rect rect, Rect rect2) {
        if (i == 3 || i == 4) {
            return rect.bottom > rect2.top && rect.top < rect2.bottom;
        }
        if (i == 5 || i == 6) {
            return rect.right > rect2.left && rect.left < rect2.right;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This function should only be used for 2-D focus search");
        return false;
    }

    public static final boolean clearFocus(FocusTargetNode focusTargetNode, boolean z) {
        int ordinal = focusTargetNode.getFocusState().ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                FocusTargetNode activeChild = getActiveChild(focusTargetNode);
                if (!(activeChild != null ? clearFocus(activeChild, z) : true)) {
                    return false;
                }
                focusTargetNode.dispatchFocusCallbacks$ui(FocusStateImpl.ActiveParent, FocusStateImpl.Inactive);
                return true;
            }
            if (ordinal == 2) {
                return z;
            }
            if (ordinal != 3) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return false;
            }
        }
        return true;
    }

    public static final void collectAccessibleChildren(FocusTargetNode focusTargetNode, MutableVector mutableVector) {
        if (!focusTargetNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.node;
        Modifier.Node node2 = node.child;
        if (node2 == null) {
            HitTestResultKt.access$addLayoutNodeChildren(mutableVector2, node);
        } else {
            mutableVector2.add(node2);
        }
        while (true) {
            int i = mutableVector2.size;
            if (i == 0) {
                return;
            }
            Modifier.Node node3 = (Modifier.Node) mutableVector2.removeAt(i - 1);
            if ((node3.aggregateChildKindSet & 1024) == 0) {
                HitTestResultKt.access$addLayoutNodeChildren(mutableVector2, node3);
            } else {
                while (true) {
                    if (node3 == null) {
                        break;
                    }
                    if ((node3.kindSet & 1024) != 0) {
                        MutableVector mutableVector3 = null;
                        while (node3 != null) {
                            if (node3 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                if (focusTargetNode2.isAttached && !HitTestResultKt.requireLayoutNode(focusTargetNode2).isDeactivated) {
                                    if (focusTargetNode2.fetchFocusProperties$ui().canFocus) {
                                        mutableVector.add(focusTargetNode2);
                                    } else {
                                        collectAccessibleChildren(focusTargetNode2, mutableVector);
                                    }
                                }
                            } else if ((node3.kindSet & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                    if ((node4.kindSet & 1024) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            node3 = node4;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node3 != null) {
                                                mutableVector3.add(node3);
                                                node3 = null;
                                            }
                                            mutableVector3.add(node4);
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            node3 = HitTestResultKt.access$pop(mutableVector3);
                        }
                    } else {
                        node3 = node3.child;
                    }
                }
            }
        }
    }

    public static final FocusTargetNode findActiveFocusNode(FocusTargetNode focusTargetNode) {
        FocusTargetNode activeFocusTargetNode = ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode();
        if (activeFocusTargetNode == null || !activeFocusTargetNode.isAttached) {
            return null;
        }
        return activeFocusTargetNode;
    }

    /* renamed from: findBestCandidate-4WY_MpI, reason: not valid java name */
    public static final FocusTargetNode m422findBestCandidate4WY_MpI(MutableVector mutableVector, Rect rect, int i) {
        Rect translate;
        FocusTargetNode focusTargetNode = null;
        if (i == 3) {
            translate = rect.translate((rect.right - rect.left) + 1.0f, 0.0f);
        } else if (i == 4) {
            translate = rect.translate(-((rect.right - rect.left) + 1.0f), 0.0f);
        } else if (i == 5) {
            translate = rect.translate(0.0f, (rect.bottom - rect.top) + 1.0f);
        } else {
            if (i != 6) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This function should only be used for 2-D focus search");
                return null;
            }
            translate = rect.translate(0.0f, -((rect.bottom - rect.top) + 1.0f));
        }
        Object[] objArr = mutableVector.content;
        int i2 = mutableVector.size;
        for (int i3 = 0; i3 < i2; i3++) {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArr[i3];
            if (isEligibleForFocusSearch(focusTargetNode2)) {
                Rect focusRect = focusRect(focusTargetNode2);
                if (m426isBetterCandidateI7lrPNg(focusRect, translate, rect, i)) {
                    focusTargetNode = focusTargetNode2;
                    translate = focusRect;
                }
            }
        }
        return focusTargetNode;
    }

    /* renamed from: findChildCorrespondingToFocusEnter--OM-vw8, reason: not valid java name */
    public static final boolean m423findChildCorrespondingToFocusEnterOMvw8(FocusTargetNode focusTargetNode, int i, Function1 function1) {
        Rect rect;
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16]);
        collectAccessibleChildren(focusTargetNode, mutableVector);
        int i2 = mutableVector.size;
        if (i2 <= 1) {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) (i2 == 0 ? null : mutableVector.content[0]);
            if (focusTargetNode2 != null) {
                return ((Boolean) function1.invoke(focusTargetNode2)).booleanValue();
            }
        } else {
            if (i == 7) {
                i = 4;
            }
            if (i == 4 || i == 6) {
                Rect focusRect = focusRect(focusTargetNode);
                float f = focusRect.left;
                float f2 = focusRect.top;
                rect = new Rect(f, f2, f, f2);
            } else {
                if (i != 3 && i != 5) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This function should only be used for 2-D focus search");
                    return false;
                }
                Rect focusRect2 = focusRect(focusTargetNode);
                float f3 = focusRect2.right;
                float f4 = focusRect2.bottom;
                rect = new Rect(f3, f4, f3, f4);
            }
            FocusTargetNode m422findBestCandidate4WY_MpI = m422findBestCandidate4WY_MpI(mutableVector, rect, i);
            if (m422findBestCandidate4WY_MpI != null) {
                return ((Boolean) function1.invoke(m422findBestCandidate4WY_MpI)).booleanValue();
            }
        }
        return false;
    }

    public static final Modifier focusProperties(Modifier modifier, Function1 function1) {
        return modifier.then(new FocusPropertiesElement(new FocusPropertiesKt$sam$androidx_compose_ui_focus_FocusPropertiesScope$0(function1)));
    }

    public static final Rect focusRect(FocusTargetNode focusTargetNode) {
        NodeCoordinator nodeCoordinator;
        if (focusTargetNode.isAttached && (nodeCoordinator = focusTargetNode.coordinator) != null) {
            LayoutCoordinates findRootCoordinates = RulerKt.findRootCoordinates(nodeCoordinator);
            if (!findRootCoordinates.isAttached$1()) {
                findRootCoordinates = null;
            }
            if (findRootCoordinates != null) {
                return focusTargetNode.fetchFocusRect$ui(findRootCoordinates);
            }
        }
        return Rect.Zero;
    }

    public static final Modifier focusRequester(Modifier modifier, FocusRequester focusRequester) {
        return modifier.then(new FocusRequesterElement(focusRequester));
    }

    public static final boolean forwardFocusSearch(FocusTargetNode focusTargetNode, FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1) {
        int ordinal = focusTargetNode.getFocusState().ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                FocusTargetNode activeChild = getActiveChild(focusTargetNode);
                if (activeChild != null) {
                    return forwardFocusSearch(activeChild, focusOwnerImpl$focusSearch$1) || m425generateAndSearchChildren4C6V_qg(focusTargetNode, activeChild, 1, focusOwnerImpl$focusSearch$1);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("ActiveParent must have a focusedChild");
                return false;
            }
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return focusTargetNode.fetchFocusProperties$ui().canFocus ? ((Boolean) focusOwnerImpl$focusSearch$1.invoke(focusTargetNode)).booleanValue() : pickChildForForwardSearch(focusTargetNode, focusOwnerImpl$focusSearch$1);
                }
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return false;
            }
        }
        return pickChildForForwardSearch(focusTargetNode, focusOwnerImpl$focusSearch$1);
    }

    /* renamed from: generateAndSearchChildren-4C6V_qg, reason: not valid java name */
    public static final boolean m425generateAndSearchChildren4C6V_qg(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, int i, FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1) {
        if (m432searchChildren4C6V_qg(focusTargetNode, focusTargetNode2, i, focusOwnerImpl$focusSearch$1)) {
            return true;
        }
        Boolean bool = (Boolean) m430searchBeyondBoundsOMvw8(focusTargetNode, i, new OneDimensionalFocusSearchKt$generateAndSearchChildren$1(((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode(), focusTargetNode, focusTargetNode2, i, focusOwnerImpl$focusSearch$1, 0));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0027, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.focus.FocusTargetNode getActiveChild(androidx.compose.ui.focus.FocusTargetNode r8) {
        /*
            androidx.compose.ui.Modifier$Node r0 = r8.node
            boolean r0 = r0.isAttached
            r1 = 0
            if (r0 != 0) goto L9
            goto Lab
        L9:
            if (r0 != 0) goto L11
            java.lang.String r0 = "visitChildren called on an unattached node"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(r0)
        L11:
            androidx.compose.runtime.collection.MutableVector r0 = new androidx.compose.runtime.collection.MutableVector
            r2 = 16
            androidx.compose.ui.Modifier$Node[] r3 = new androidx.compose.ui.Modifier.Node[r2]
            r0.<init>(r3)
            androidx.compose.ui.Modifier$Node r8 = r8.node
            androidx.compose.ui.Modifier$Node r3 = r8.child
            if (r3 != 0) goto L24
            androidx.compose.ui.node.HitTestResultKt.access$addLayoutNodeChildren(r0, r8)
            goto L27
        L24:
            r0.add(r3)
        L27:
            int r8 = r0.size
            if (r8 == 0) goto Lab
            int r8 = r8 + (-1)
            java.lang.Object r8 = r0.removeAt(r8)
            androidx.compose.ui.Modifier$Node r8 = (androidx.compose.ui.Modifier.Node) r8
            int r3 = r8.aggregateChildKindSet
            r3 = r3 & 1024(0x400, float:1.435E-42)
            if (r3 != 0) goto L3d
            androidx.compose.ui.node.HitTestResultKt.access$addLayoutNodeChildren(r0, r8)
            goto L27
        L3d:
            if (r8 == 0) goto L27
            int r3 = r8.kindSet
            r3 = r3 & 1024(0x400, float:1.435E-42)
            if (r3 == 0) goto La8
            r3 = r1
        L46:
            if (r8 == 0) goto L27
            boolean r4 = r8 instanceof androidx.compose.ui.focus.FocusTargetNode
            r5 = 1
            if (r4 == 0) goto L6d
            androidx.compose.ui.focus.FocusTargetNode r8 = (androidx.compose.ui.focus.FocusTargetNode) r8
            androidx.compose.ui.Modifier$Node r4 = r8.node
            boolean r4 = r4.isAttached
            if (r4 == 0) goto La3
            androidx.compose.ui.focus.FocusStateImpl r4 = r8.getFocusState()
            int r4 = r4.ordinal()
            if (r4 == 0) goto L6c
            if (r4 == r5) goto L6c
            r5 = 2
            if (r4 == r5) goto L6c
            r8 = 3
            if (r4 != r8) goto L68
            goto La3
        L68:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
            return r1
        L6c:
            return r8
        L6d:
            int r4 = r8.kindSet
            r4 = r4 & 1024(0x400, float:1.435E-42)
            if (r4 == 0) goto La3
            boolean r4 = r8 instanceof androidx.compose.ui.node.DelegatingNode
            if (r4 == 0) goto La3
            r4 = r8
            androidx.compose.ui.node.DelegatingNode r4 = (androidx.compose.ui.node.DelegatingNode) r4
            androidx.compose.ui.Modifier$Node r4 = r4.delegate
            r6 = 0
        L7d:
            if (r4 == 0) goto La0
            int r7 = r4.kindSet
            r7 = r7 & 1024(0x400, float:1.435E-42)
            if (r7 == 0) goto L9d
            int r6 = r6 + 1
            if (r6 != r5) goto L8b
            r8 = r4
            goto L9d
        L8b:
            if (r3 != 0) goto L94
            androidx.compose.runtime.collection.MutableVector r3 = new androidx.compose.runtime.collection.MutableVector
            androidx.compose.ui.Modifier$Node[] r7 = new androidx.compose.ui.Modifier.Node[r2]
            r3.<init>(r7)
        L94:
            if (r8 == 0) goto L9a
            r3.add(r8)
            r8 = r1
        L9a:
            r3.add(r4)
        L9d:
            androidx.compose.ui.Modifier$Node r4 = r4.child
            goto L7d
        La0:
            if (r6 != r5) goto La3
            goto L46
        La3:
            androidx.compose.ui.Modifier$Node r8 = androidx.compose.ui.node.HitTestResultKt.access$pop(r3)
            goto L46
        La8:
            androidx.compose.ui.Modifier$Node r8 = r8.child
            goto L3d
        Lab:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusTraversalKt.getActiveChild(androidx.compose.ui.focus.FocusTargetNode):androidx.compose.ui.focus.FocusTargetNode");
    }

    /* renamed from: isBetterCandidate-I7lrPNg, reason: not valid java name */
    public static final boolean m426isBetterCandidateI7lrPNg(Rect rect, Rect rect2, Rect rect3, int i) {
        if (!isBetterCandidate_I7lrPNg$isCandidate(i, rect, rect3)) {
            return false;
        }
        if (isBetterCandidate_I7lrPNg$isCandidate(i, rect2, rect3) && !m421beamBeatsI7lrPNg(rect3, rect, rect2, i)) {
            return !m421beamBeatsI7lrPNg(rect3, rect2, rect, i) && isBetterCandidate_I7lrPNg$weightedDistance(i, rect3, rect) < isBetterCandidate_I7lrPNg$weightedDistance(i, rect3, rect2);
        }
        return true;
    }

    public static final boolean isBetterCandidate_I7lrPNg$isCandidate(int i, Rect rect, Rect rect2) {
        if (i == 3) {
            float f = rect2.right;
            float f2 = rect2.left;
            float f3 = rect.right;
            return (f > f3 || f2 >= f3) && f2 > rect.left;
        }
        if (i == 4) {
            float f4 = rect2.left;
            float f5 = rect2.right;
            float f6 = rect.left;
            return (f4 < f6 || f5 <= f6) && f5 < rect.right;
        }
        if (i == 5) {
            float f7 = rect2.bottom;
            float f8 = rect2.top;
            float f9 = rect.bottom;
            return (f7 > f9 || f8 >= f9) && f8 > rect.top;
        }
        if (i != 6) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This function should only be used for 2-D focus search");
            return false;
        }
        float f10 = rect2.top;
        float f11 = rect2.bottom;
        float f12 = rect.top;
        return (f10 < f12 || f11 <= f12) && f11 < rect.bottom;
    }

    public static final long isBetterCandidate_I7lrPNg$weightedDistance(int i, Rect rect, Rect rect2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        if (i == 3) {
            f = rect.left;
            f2 = rect2.right;
        } else if (i == 4) {
            f = rect2.left;
            f2 = rect.right;
        } else if (i == 5) {
            f = rect.top;
            f2 = rect2.bottom;
        } else {
            if (i != 6) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This function should only be used for 2-D focus search");
                return 0L;
            }
            f = rect2.top;
            f2 = rect.bottom;
        }
        float f6 = f - f2;
        if (f6 < 0.0f) {
            f6 = 0.0f;
        }
        long j = (long) f6;
        if (i == 3 || i == 4) {
            float f7 = rect.top;
            f3 = ((rect.bottom - f7) / 2.0f) + f7;
            f4 = rect2.top;
            f5 = rect2.bottom;
        } else {
            if (i != 5 && i != 6) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This function should only be used for 2-D focus search");
                return 0L;
            }
            float f8 = rect.left;
            f3 = ((rect.right - f8) / 2.0f) + f8;
            f4 = rect2.left;
            f5 = rect2.right;
        }
        long j2 = (long) (f3 - (((f5 - f4) / 2.0f) + f4));
        return (j2 * j2) + (13 * j * j);
    }

    public static final boolean isEligibleForFocusSearch(FocusTargetNode focusTargetNode) {
        LayoutNode layoutNode;
        NodeCoordinator nodeCoordinator;
        LayoutNode layoutNode2;
        NodeCoordinator nodeCoordinator2 = focusTargetNode.coordinator;
        return (nodeCoordinator2 == null || (layoutNode = nodeCoordinator2.layoutNode) == null || !layoutNode.isPlaced() || (nodeCoordinator = focusTargetNode.coordinator) == null || (layoutNode2 = nodeCoordinator.layoutNode) == null || !layoutNode2.isAttached$1()) ? false : true;
    }

    public static final Modifier onFocusChanged(Modifier modifier, Function1 function1) {
        return modifier.then(new FocusChangedElement(function1));
    }

    /* renamed from: performCustomClearFocus-Mxy_nc0, reason: not valid java name */
    public static final CustomDestinationResult m427performCustomClearFocusMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        int ordinal = focusTargetNode.getFocusState().ordinal();
        CustomDestinationResult customDestinationResult = CustomDestinationResult.None;
        if (ordinal != 0) {
            CustomDestinationResult customDestinationResult2 = CustomDestinationResult.Cancelled;
            if (ordinal == 1) {
                FocusTargetNode activeChild = getActiveChild(focusTargetNode);
                if (activeChild == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("ActiveParent with no focused child");
                    return null;
                }
                CustomDestinationResult m427performCustomClearFocusMxy_nc0 = m427performCustomClearFocusMxy_nc0(activeChild, i);
                CustomDestinationResult customDestinationResult3 = m427performCustomClearFocusMxy_nc0 != customDestinationResult ? m427performCustomClearFocusMxy_nc0 : null;
                if (customDestinationResult3 != null) {
                    return customDestinationResult3;
                }
                if (focusTargetNode.isProcessingCustomExit) {
                    return customDestinationResult;
                }
                focusTargetNode.isProcessingCustomExit = true;
                try {
                    FocusPropertiesImpl fetchFocusProperties$ui = focusTargetNode.fetchFocusProperties$ui();
                    CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i);
                    FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner();
                    FocusTargetNode activeFocusTargetNode = focusOwnerImpl.getActiveFocusTargetNode();
                    fetchFocusProperties$ui.onExit.invoke(cancelIndicatingFocusBoundaryScope);
                    FocusTargetNode activeFocusTargetNode2 = focusOwnerImpl.getActiveFocusTargetNode();
                    if (!cancelIndicatingFocusBoundaryScope.isCanceled) {
                        return (activeFocusTargetNode == activeFocusTargetNode2 || activeFocusTargetNode2 == null) ? customDestinationResult : FocusRequester.Redirect == FocusRequester.Cancel ? customDestinationResult2 : CustomDestinationResult.Redirected;
                    }
                    FocusRequester focusRequester = FocusRequester.Default;
                    return customDestinationResult2;
                } finally {
                    focusTargetNode.isProcessingCustomExit = false;
                }
            }
            if (ordinal == 2) {
                return customDestinationResult2;
            }
            if (ordinal != 3) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
        }
        return customDestinationResult;
    }

    /* renamed from: performCustomEnter-Mxy_nc0, reason: not valid java name */
    public static final CustomDestinationResult m428performCustomEnterMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        if (!focusTargetNode.isProcessingCustomEnter) {
            focusTargetNode.isProcessingCustomEnter = true;
            try {
                FocusPropertiesImpl fetchFocusProperties$ui = focusTargetNode.fetchFocusProperties$ui();
                CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i);
                FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner();
                FocusTargetNode activeFocusTargetNode = focusOwnerImpl.getActiveFocusTargetNode();
                fetchFocusProperties$ui.onEnter.invoke(cancelIndicatingFocusBoundaryScope);
                FocusTargetNode activeFocusTargetNode2 = focusOwnerImpl.getActiveFocusTargetNode();
                boolean z = cancelIndicatingFocusBoundaryScope.isCanceled;
                CustomDestinationResult customDestinationResult = CustomDestinationResult.Cancelled;
                if (z) {
                    FocusRequester focusRequester = FocusRequester.Default;
                    return customDestinationResult;
                }
                if (activeFocusTargetNode != activeFocusTargetNode2 && activeFocusTargetNode2 != null) {
                    return FocusRequester.Redirect == FocusRequester.Cancel ? customDestinationResult : CustomDestinationResult.Redirected;
                }
            } finally {
                focusTargetNode.isProcessingCustomEnter = false;
            }
        }
        return CustomDestinationResult.None;
    }

    /* renamed from: performCustomRequestFocus-Mxy_nc0, reason: not valid java name */
    public static final CustomDestinationResult m429performCustomRequestFocusMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        Modifier.Node node;
        NodeChain nodeChain;
        int ordinal = focusTargetNode.getFocusState().ordinal();
        CustomDestinationResult customDestinationResult = CustomDestinationResult.None;
        if (ordinal != 0) {
            if (ordinal == 1) {
                FocusTargetNode activeChild = getActiveChild(focusTargetNode);
                if (activeChild != null) {
                    return m427performCustomClearFocusMxy_nc0(activeChild, i);
                }
                UriKt$$ExternalSyntheticBUOutline0.m("ActiveParent with no focused child");
                return null;
            }
            if (ordinal != 2) {
                if (ordinal != 3) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                if (!focusTargetNode.node.isAttached) {
                    InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                }
                Modifier.Node node2 = focusTargetNode.node.parent;
                LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(focusTargetNode);
                loop0: while (true) {
                    if (requireLayoutNode == null) {
                        node = null;
                        break;
                    }
                    if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 1024) != 0) {
                        while (node2 != null) {
                            if ((node2.kindSet & 1024) != 0) {
                                node = node2;
                                MutableVector mutableVector = null;
                                while (node != null) {
                                    if (node instanceof FocusTargetNode) {
                                        break loop0;
                                    }
                                    if ((node.kindSet & 1024) != 0 && (node instanceof DelegatingNode)) {
                                        int i2 = 0;
                                        for (Modifier.Node node3 = ((DelegatingNode) node).delegate; node3 != null; node3 = node3.child) {
                                            if ((node3.kindSet & 1024) != 0) {
                                                i2++;
                                                if (i2 == 1) {
                                                    node = node3;
                                                } else {
                                                    if (mutableVector == null) {
                                                        mutableVector = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (node != null) {
                                                        mutableVector.add(node);
                                                        node = null;
                                                    }
                                                    mutableVector.add(node3);
                                                }
                                            }
                                        }
                                        if (i2 == 1) {
                                        }
                                    }
                                    node = HitTestResultKt.access$pop(mutableVector);
                                }
                            }
                            node2 = node2.parent;
                        }
                    }
                    requireLayoutNode = requireLayoutNode.getParent$ui();
                    node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
                }
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node;
                if (focusTargetNode2 == null) {
                    return customDestinationResult;
                }
                int ordinal2 = focusTargetNode2.getFocusState().ordinal();
                if (ordinal2 == 0) {
                    return m428performCustomEnterMxy_nc0(focusTargetNode2, i);
                }
                if (ordinal2 == 1) {
                    return m429performCustomRequestFocusMxy_nc0(focusTargetNode2, i);
                }
                if (ordinal2 == 2) {
                    return CustomDestinationResult.Cancelled;
                }
                if (ordinal2 != 3) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                CustomDestinationResult m429performCustomRequestFocusMxy_nc0 = m429performCustomRequestFocusMxy_nc0(focusTargetNode2, i);
                CustomDestinationResult customDestinationResult2 = m429performCustomRequestFocusMxy_nc0 != customDestinationResult ? m429performCustomRequestFocusMxy_nc0 : null;
                return customDestinationResult2 == null ? m428performCustomEnterMxy_nc0(focusTargetNode2, i) : customDestinationResult2;
            }
        }
        return customDestinationResult;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r1v43, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [androidx.compose.runtime.collection.MutableVector] */
    public static final boolean performRequestFocus(FocusTargetNode focusTargetNode) {
        MutableVector mutableVector;
        NodeChain nodeChain;
        FocusOwnerImpl focusOwnerImpl;
        boolean z;
        int i;
        ?? r5;
        int i2;
        int i3;
        NodeChain nodeChain2;
        FocusOwnerImpl focusOwnerImpl2 = (FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner();
        FocusTargetNode activeFocusTargetNode = focusOwnerImpl2.getActiveFocusTargetNode();
        FocusStateImpl focusState = focusTargetNode.getFocusState();
        if (activeFocusTargetNode == focusTargetNode) {
            focusTargetNode.dispatchFocusCallbacks$ui(focusState, focusState);
            return true;
        }
        if ((activeFocusTargetNode == null || activeFocusTargetNode.isInteropViewHost) && !focusTargetNode.isInteropViewHost && !((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).platformFocusOwner.m651requestOwnerFocus7o62pno()) {
            return false;
        }
        if (activeFocusTargetNode != null) {
            mutableVector = new MutableVector(new FocusTargetNode[16]);
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
                            MutableVector mutableVector2 = null;
                            while (node2 != null) {
                                if (node2 instanceof FocusTargetNode) {
                                    mutableVector.add((FocusTargetNode) node2);
                                } else if ((node2.kindSet & 1024) != 0 && (node2 instanceof DelegatingNode)) {
                                    int i4 = 0;
                                    for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                                        if ((node3.kindSet & 1024) != 0) {
                                            i4++;
                                            if (i4 == 1) {
                                                node2 = node3;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node2 != null) {
                                                    mutableVector2.add(node2);
                                                    node2 = null;
                                                }
                                                mutableVector2.add(node3);
                                            }
                                        }
                                    }
                                    if (i4 == 1) {
                                    }
                                }
                                node2 = HitTestResultKt.access$pop(mutableVector2);
                            }
                        }
                        node = node.parent;
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui();
                node = (requireLayoutNode == null || (nodeChain2 = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain2.tail;
            }
        } else {
            mutableVector = null;
        }
        FocusTargetNode[] focusTargetNodeArr = new FocusTargetNode[16];
        FocusTargetNode[] focusTargetNodeArr2 = new FocusTargetNode[16];
        if (!focusTargetNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node4 = focusTargetNode.node.parent;
        LayoutNode requireLayoutNode2 = HitTestResultKt.requireLayoutNode(focusTargetNode);
        boolean z2 = true;
        int i5 = 0;
        int i6 = 0;
        while (requireLayoutNode2 != null) {
            if ((((Modifier.Node) requireLayoutNode2.nodes.head).aggregateChildKindSet & 1024) != 0) {
                while (node4 != null) {
                    if ((node4.kindSet & 1024) != 0) {
                        FocusTargetNode focusTargetNode2 = node4;
                        MutableVector mutableVector3 = null;
                        while (focusTargetNode2 != 0) {
                            if (focusTargetNode2 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode3 = focusTargetNode2;
                                if (Intrinsics.areEqual(mutableVector != null ? Boolean.valueOf(mutableVector.remove(focusTargetNode3)) : null, Boolean.TRUE)) {
                                    int i7 = i5 + 1;
                                    if (focusTargetNodeArr.length < i7) {
                                        int length = focusTargetNodeArr.length;
                                        focusOwnerImpl = focusOwnerImpl2;
                                        ?? r1 = new Object[Math.max(i7, length * 2)];
                                        i3 = i7;
                                        System.arraycopy(focusTargetNodeArr, 0, r1, 0, length);
                                        focusTargetNodeArr = r1;
                                    } else {
                                        focusOwnerImpl = focusOwnerImpl2;
                                        i3 = i7;
                                    }
                                    focusTargetNodeArr[i5] = focusTargetNode3;
                                    i5 = i3;
                                } else {
                                    focusOwnerImpl = focusOwnerImpl2;
                                    int i8 = i6 + 1;
                                    if (focusTargetNodeArr2.length < i8) {
                                        int length2 = focusTargetNodeArr2.length;
                                        ?? r52 = new Object[Math.max(i8, length2 * 2)];
                                        i2 = i8;
                                        System.arraycopy(focusTargetNodeArr2, 0, r52, 0, length2);
                                        focusTargetNodeArr2 = r52;
                                    } else {
                                        i2 = i8;
                                    }
                                    focusTargetNodeArr2[i6] = focusTargetNode3;
                                    i6 = i2;
                                }
                                if (focusTargetNode3 == activeFocusTargetNode) {
                                    z2 = false;
                                }
                                z = false;
                            } else {
                                focusOwnerImpl = focusOwnerImpl2;
                                z = true;
                            }
                            if (z && (focusTargetNode2.kindSet & 1024) != 0 && (focusTargetNode2 instanceof DelegatingNode)) {
                                Modifier.Node node5 = focusTargetNode2.delegate;
                                int i9 = 0;
                                focusTargetNode2 = focusTargetNode2;
                                while (node5 != null) {
                                    if ((node5.kindSet & 1024) != 0) {
                                        int i10 = i9 + 1;
                                        if (i10 == 1) {
                                            focusTargetNode2 = node5;
                                            i = i10;
                                        } else {
                                            if (mutableVector3 == null) {
                                                i = i10;
                                                r5 = new MutableVector(new Modifier.Node[16]);
                                            } else {
                                                i = i10;
                                                r5 = mutableVector3;
                                            }
                                            if (focusTargetNode2 != 0) {
                                                r5.add(focusTargetNode2);
                                                focusTargetNode2 = 0;
                                            }
                                            r5.add(node5);
                                            mutableVector3 = r5;
                                            focusTargetNode2 = focusTargetNode2;
                                        }
                                        i9 = i;
                                    }
                                    node5 = node5.child;
                                    focusTargetNode2 = focusTargetNode2;
                                }
                                if (i9 == 1) {
                                    focusOwnerImpl2 = focusOwnerImpl;
                                }
                            }
                            focusTargetNode2 = HitTestResultKt.access$pop(mutableVector3);
                            focusOwnerImpl2 = focusOwnerImpl;
                        }
                    }
                    node4 = node4.parent;
                    focusOwnerImpl2 = focusOwnerImpl2;
                }
            }
            FocusOwnerImpl focusOwnerImpl3 = focusOwnerImpl2;
            requireLayoutNode2 = requireLayoutNode2.getParent$ui();
            node4 = (requireLayoutNode2 == null || (nodeChain = requireLayoutNode2.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
            focusOwnerImpl2 = focusOwnerImpl3;
        }
        FocusOwnerImpl focusOwnerImpl4 = focusOwnerImpl2;
        if (z2 && activeFocusTargetNode != null && !clearFocus(activeFocusTargetNode, false)) {
            return false;
        }
        HitTestResultKt.observeReads(focusTargetNode, new LayoutNode$_foldedChildren$1(2, focusTargetNode));
        int ordinal = focusTargetNode.getFocusState().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return false;
                    }
                }
            }
            ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).setActiveFocusTargetNode(focusTargetNode);
        }
        FocusStateImpl focusStateImpl = FocusStateImpl.Inactive;
        FocusStateImpl focusStateImpl2 = FocusStateImpl.Active;
        if (z2 && activeFocusTargetNode != null) {
            activeFocusTargetNode.dispatchFocusCallbacks$ui(focusStateImpl2, focusStateImpl);
        }
        FocusStateImpl focusStateImpl3 = FocusStateImpl.ActiveParent;
        if (mutableVector != null) {
            int i11 = mutableVector.size - 1;
            Object[] objArr = mutableVector.content;
            if (i11 < objArr.length) {
                while (i11 >= 0) {
                    FocusTargetNode focusTargetNode4 = (FocusTargetNode) objArr[i11];
                    if (focusOwnerImpl4.getActiveFocusTargetNode() != focusTargetNode) {
                        return false;
                    }
                    focusTargetNode4.dispatchFocusCallbacks$ui(focusStateImpl3, focusStateImpl);
                    i11--;
                }
            }
        }
        int i12 = i6 - 1;
        if (i12 < focusTargetNodeArr2.length) {
            while (i12 >= 0) {
                FocusTargetNode focusTargetNode5 = focusTargetNodeArr2[i12];
                if (focusOwnerImpl4.getActiveFocusTargetNode() != focusTargetNode) {
                    return false;
                }
                focusTargetNode5.dispatchFocusCallbacks$ui(focusTargetNode5 == activeFocusTargetNode ? focusStateImpl2 : focusStateImpl, focusStateImpl3);
                i12--;
            }
        }
        if (focusOwnerImpl4.getActiveFocusTargetNode() != focusTargetNode) {
            return false;
        }
        focusTargetNode.dispatchFocusCallbacks$ui(focusState, focusStateImpl2);
        return focusOwnerImpl4.getActiveFocusTargetNode() == focusTargetNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, java.lang.Object[]] */
    public static final boolean pickChildForBackwardSearch(FocusTargetNode focusTargetNode, FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1) {
        FocusTargetNode[] focusTargetNodeArr = new FocusTargetNode[16];
        if (!focusTargetNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.node;
        Modifier.Node node2 = node.child;
        if (node2 == null) {
            HitTestResultKt.access$addLayoutNodeChildren(mutableVector, node);
        } else {
            mutableVector.add(node2);
        }
        int i = 0;
        while (true) {
            int i2 = mutableVector.size;
            if (i2 == 0) {
                break;
            }
            Modifier.Node node3 = (Modifier.Node) mutableVector.removeAt(i2 - 1);
            if ((node3.aggregateChildKindSet & 1024) == 0) {
                HitTestResultKt.access$addLayoutNodeChildren(mutableVector, node3);
            } else {
                while (true) {
                    if (node3 == null) {
                        break;
                    }
                    if ((node3.kindSet & 1024) != 0) {
                        MutableVector mutableVector2 = null;
                        while (node3 != null) {
                            if (node3 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                int i3 = i + 1;
                                if (focusTargetNodeArr.length < i3) {
                                    int length = focusTargetNodeArr.length;
                                    ?? r10 = new Object[Math.max(i3, length * 2)];
                                    System.arraycopy(focusTargetNodeArr, 0, r10, 0, length);
                                    focusTargetNodeArr = r10;
                                }
                                focusTargetNodeArr[i] = focusTargetNode2;
                                i = i3;
                            } else if ((node3.kindSet & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                int i4 = 0;
                                for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                    if ((node4.kindSet & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            node3 = node4;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node3 != null) {
                                                mutableVector2.add(node3);
                                                node3 = null;
                                            }
                                            mutableVector2.add(node4);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            node3 = HitTestResultKt.access$pop(mutableVector2);
                        }
                    } else {
                        node3 = node3.child;
                    }
                }
            }
        }
        Arrays.sort(focusTargetNodeArr, 0, i, FocusableChildrenComparator.INSTANCE);
        int i5 = i - 1;
        if (i5 < focusTargetNodeArr.length) {
            while (i5 >= 0) {
                FocusTargetNode focusTargetNode3 = focusTargetNodeArr[i5];
                if (isEligibleForFocusSearch(focusTargetNode3) && backwardFocusSearch(focusTargetNode3, focusOwnerImpl$focusSearch$1)) {
                    return true;
                }
                i5--;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, java.lang.Object[]] */
    public static final boolean pickChildForForwardSearch(FocusTargetNode focusTargetNode, FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1) {
        FocusTargetNode[] focusTargetNodeArr = new FocusTargetNode[16];
        if (!focusTargetNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.node;
        Modifier.Node node2 = node.child;
        if (node2 == null) {
            HitTestResultKt.access$addLayoutNodeChildren(mutableVector, node);
        } else {
            mutableVector.add(node2);
        }
        int i = 0;
        while (true) {
            int i2 = mutableVector.size;
            if (i2 == 0) {
                break;
            }
            Modifier.Node node3 = (Modifier.Node) mutableVector.removeAt(i2 - 1);
            if ((node3.aggregateChildKindSet & 1024) == 0) {
                HitTestResultKt.access$addLayoutNodeChildren(mutableVector, node3);
            } else {
                while (true) {
                    if (node3 == null) {
                        break;
                    }
                    if ((node3.kindSet & 1024) != 0) {
                        MutableVector mutableVector2 = null;
                        while (node3 != null) {
                            if (node3 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                int i3 = i + 1;
                                if (focusTargetNodeArr.length < i3) {
                                    int length = focusTargetNodeArr.length;
                                    ?? r10 = new Object[Math.max(i3, length * 2)];
                                    System.arraycopy(focusTargetNodeArr, 0, r10, 0, length);
                                    focusTargetNodeArr = r10;
                                }
                                focusTargetNodeArr[i] = focusTargetNode2;
                                i = i3;
                            } else if ((node3.kindSet & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                int i4 = 0;
                                for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                    if ((node4.kindSet & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            node3 = node4;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node3 != null) {
                                                mutableVector2.add(node3);
                                                node3 = null;
                                            }
                                            mutableVector2.add(node4);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            node3 = HitTestResultKt.access$pop(mutableVector2);
                        }
                    } else {
                        node3 = node3.child;
                    }
                }
            }
        }
        Arrays.sort(focusTargetNodeArr, 0, i, FocusableChildrenComparator.INSTANCE);
        for (int i5 = 0; i5 < i; i5++) {
            FocusTargetNode focusTargetNode3 = focusTargetNodeArr[i5];
            if (isEligibleForFocusSearch(focusTargetNode3) && forwardFocusSearch(focusTargetNode3, focusOwnerImpl$focusSearch$1)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: searchBeyondBounds--OM-vw8, reason: not valid java name */
    public static final Object m430searchBeyondBoundsOMvw8(FocusTargetNode focusTargetNode, int i, Function1 function1) {
        int i2;
        final int i3;
        Object obj;
        Modifier.Node node;
        final LazyLayoutBeyondBoundsProviderModifierNode beyondBoundsLayoutParent;
        NodeChain nodeChain;
        if (!focusTargetNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = focusTargetNode.node.parent;
        LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(focusTargetNode);
        loop0: while (true) {
            i2 = 0;
            i3 = 1;
            obj = null;
            if (requireLayoutNode == null) {
                node = null;
                break;
            }
            if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 1024) != 0) {
                while (node2 != null) {
                    if ((node2.kindSet & 1024) != 0) {
                        node = node2;
                        MutableVector mutableVector = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((node.kindSet & 1024) != 0 && (node instanceof DelegatingNode)) {
                                int i4 = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) node).delegate; node3 != null; node3 = node3.child) {
                                    if ((node3.kindSet & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            node = node3;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node != null) {
                                                mutableVector.add(node);
                                                node = null;
                                            }
                                            mutableVector.add(node3);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            node = HitTestResultKt.access$pop(mutableVector);
                        }
                    }
                    node2 = node2.parent;
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui();
            node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
        }
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) node;
        if ((focusTargetNode2 == null || !Intrinsics.areEqual(focusTargetNode2.getBeyondBoundsLayoutParent(), focusTargetNode.getBeyondBoundsLayoutParent())) && (beyondBoundsLayoutParent = focusTargetNode.getBeyondBoundsLayoutParent()) != null) {
            int i5 = 5;
            if (i != 5) {
                i5 = 6;
                if (i != 6) {
                    i5 = 3;
                    if (i != 3) {
                        i5 = 4;
                        if (i != 4) {
                            if (i == 1) {
                                i3 = 2;
                            } else if (i != 2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unsupported direction for beyond bounds layout");
                            }
                            if (beyondBoundsLayoutParent.state.getItemCount() > 0 || !beyondBoundsLayoutParent.state.getHasVisibleItems() || !beyondBoundsLayoutParent.isAttached) {
                                return function1.invoke(LazyLayoutBeyondBoundsProviderModifierNode.emptyBeyondBoundsScope);
                            }
                            boolean m252isForward4vf7U8o = beyondBoundsLayoutParent.m252isForward4vf7U8o(i3);
                            LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState = beyondBoundsLayoutParent.state;
                            int lastPlacedIndex = m252isForward4vf7U8o ? lazyLayoutBeyondBoundsState.getLastPlacedIndex() : lazyLayoutBeyondBoundsState.getFirstPlacedIndex();
                            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                            LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo = beyondBoundsLayoutParent.beyondBoundsInfo;
                            lazyLayoutBeyondBoundsInfo.getClass();
                            LazyLayoutBeyondBoundsInfo.Interval interval = new LazyLayoutBeyondBoundsInfo.Interval(lastPlacedIndex, lastPlacedIndex);
                            lazyLayoutBeyondBoundsInfo.beyondBoundsItems.add(interval);
                            ref$ObjectRef.element = interval;
                            int itemsPerViewport = beyondBoundsLayoutParent.state.itemsPerViewport() * 2;
                            int itemCount = beyondBoundsLayoutParent.state.getItemCount();
                            if (itemsPerViewport > itemCount) {
                                itemsPerViewport = itemCount;
                            }
                            while (obj == null && beyondBoundsLayoutParent.m251hasMoreContentFR3nfPY((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.element, i3) && i2 < itemsPerViewport) {
                                LazyLayoutBeyondBoundsInfo.Interval interval2 = (LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.element;
                                int i6 = interval2.start;
                                int i7 = interval2.end;
                                if (beyondBoundsLayoutParent.m252isForward4vf7U8o(i3)) {
                                    i7++;
                                } else {
                                    i6--;
                                }
                                LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo2 = beyondBoundsLayoutParent.beyondBoundsInfo;
                                lazyLayoutBeyondBoundsInfo2.getClass();
                                LazyLayoutBeyondBoundsInfo.Interval interval3 = new LazyLayoutBeyondBoundsInfo.Interval(i6, i7);
                                lazyLayoutBeyondBoundsInfo2.beyondBoundsItems.add(interval3);
                                beyondBoundsLayoutParent.beyondBoundsInfo.beyondBoundsItems.remove((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.element);
                                ref$ObjectRef.element = interval3;
                                i2++;
                                HitTestResultKt.requireLayoutNode(beyondBoundsLayoutParent).forceRemeasure();
                                obj = function1.invoke(new BeyondBoundsLayout$BeyondBoundsScope() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode$layout$2
                                    @Override // androidx.compose.ui.layout.BeyondBoundsLayout$BeyondBoundsScope
                                    public final boolean getHasMoreContent() {
                                        return LazyLayoutBeyondBoundsProviderModifierNode.this.m251hasMoreContentFR3nfPY((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.element, i3);
                                    }
                                });
                            }
                            beyondBoundsLayoutParent.beyondBoundsInfo.beyondBoundsItems.remove((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.element);
                            HitTestResultKt.requireLayoutNode(beyondBoundsLayoutParent).forceRemeasure();
                            return obj;
                        }
                    }
                }
            }
            i3 = i5;
            if (beyondBoundsLayoutParent.state.getItemCount() > 0) {
            }
            return function1.invoke(LazyLayoutBeyondBoundsProviderModifierNode.emptyBeyondBoundsScope);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x019d A[EDGE_INSN: B:151:0x019d->B:132:0x019d BREAK  A[LOOP:5: B:91:0x012e->B:146:0x012e], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0130  */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.Object, java.lang.Object[]] */
    /* renamed from: searchChildren-4C6V_qg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m432searchChildren4C6V_qg(androidx.compose.ui.focus.FocusTargetNode r12, androidx.compose.ui.focus.FocusTargetNode r13, int r14, androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1 r15) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusTraversalKt.m432searchChildren4C6V_qg(androidx.compose.ui.focus.FocusTargetNode, androidx.compose.ui.focus.FocusTargetNode, int, androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1):boolean");
    }

    /* renamed from: twoDimensionalFocusSearch-sMXa3k8, reason: not valid java name */
    public static final Boolean m433twoDimensionalFocusSearchsMXa3k8(int i, FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1, FocusTargetNode focusTargetNode, Rect rect) {
        int ordinal = focusTargetNode.getFocusState().ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                FocusTargetNode activeChild = getActiveChild(focusTargetNode);
                if (activeChild == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("ActiveParent must have a focusedChild");
                    return null;
                }
                int ordinal2 = activeChild.getFocusState().ordinal();
                if (ordinal2 != 0) {
                    if (ordinal2 == 1) {
                        Boolean m433twoDimensionalFocusSearchsMXa3k8 = m433twoDimensionalFocusSearchsMXa3k8(i, focusOwnerImpl$focusSearch$1, activeChild, rect);
                        if (!Intrinsics.areEqual(m433twoDimensionalFocusSearchsMXa3k8, Boolean.FALSE)) {
                            return m433twoDimensionalFocusSearchsMXa3k8;
                        }
                        if (rect == null) {
                            if (activeChild.getFocusState() != FocusStateImpl.ActiveParent) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Searching for active node in inactive hierarchy");
                                return null;
                            }
                            FocusTargetNode findActiveFocusNode = findActiveFocusNode(activeChild);
                            if (findActiveFocusNode == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("ActiveParent must have a focusedChild");
                                return null;
                            }
                            rect = focusRect(findActiveFocusNode);
                        }
                        return Boolean.valueOf(m424generateAndSearchChildren4C6V_qg(i, focusOwnerImpl$focusSearch$1, focusTargetNode, rect));
                    }
                    if (ordinal2 != 2) {
                        if (ordinal2 != 3) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return null;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("ActiveParent must have a focusedChild");
                        return null;
                    }
                }
                if (rect == null) {
                    rect = focusRect(activeChild);
                }
                return Boolean.valueOf(m424generateAndSearchChildren4C6V_qg(i, focusOwnerImpl$focusSearch$1, focusTargetNode, rect));
            }
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return focusTargetNode.fetchFocusProperties$ui().canFocus ? (Boolean) focusOwnerImpl$focusSearch$1.invoke(focusTargetNode) : rect == null ? Boolean.valueOf(m423findChildCorrespondingToFocusEnterOMvw8(focusTargetNode, i, focusOwnerImpl$focusSearch$1)) : Boolean.valueOf(m431searchChildren4C6V_qg(i, focusOwnerImpl$focusSearch$1, focusTargetNode, rect));
                }
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
        }
        return Boolean.valueOf(m423findChildCorrespondingToFocusEnterOMvw8(focusTargetNode, i, focusOwnerImpl$focusSearch$1));
    }

    /* renamed from: generateAndSearchChildren-4C6V_qg, reason: not valid java name */
    public static final boolean m424generateAndSearchChildren4C6V_qg(int i, FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1, FocusTargetNode focusTargetNode, Rect rect) {
        if (m431searchChildren4C6V_qg(i, focusOwnerImpl$focusSearch$1, focusTargetNode, rect)) {
            return true;
        }
        Boolean bool = (Boolean) m430searchBeyondBoundsOMvw8(focusTargetNode, i, new OneDimensionalFocusSearchKt$generateAndSearchChildren$1(((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode(), focusTargetNode, rect, i, focusOwnerImpl$focusSearch$1, 1));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    /* renamed from: searchChildren-4C6V_qg, reason: not valid java name */
    public static final boolean m431searchChildren4C6V_qg(int i, FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1, FocusTargetNode focusTargetNode, Rect rect) {
        FocusTargetNode m422findBestCandidate4WY_MpI;
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16]);
        if (!focusTargetNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.node;
        Modifier.Node node2 = node.child;
        if (node2 == null) {
            HitTestResultKt.access$addLayoutNodeChildren(mutableVector2, node);
        } else {
            mutableVector2.add(node2);
        }
        while (true) {
            int i2 = mutableVector2.size;
            if (i2 == 0) {
                break;
            }
            Modifier.Node node3 = (Modifier.Node) mutableVector2.removeAt(i2 - 1);
            if ((node3.aggregateChildKindSet & 1024) == 0) {
                HitTestResultKt.access$addLayoutNodeChildren(mutableVector2, node3);
            } else {
                while (true) {
                    if (node3 == null) {
                        break;
                    }
                    if ((node3.kindSet & 1024) != 0) {
                        MutableVector mutableVector3 = null;
                        while (node3 != null) {
                            if (node3 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                if (focusTargetNode2.isAttached) {
                                    mutableVector.add(focusTargetNode2);
                                }
                            } else if ((node3.kindSet & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                int i3 = 0;
                                for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                    if ((node4.kindSet & 1024) != 0) {
                                        i3++;
                                        if (i3 == 1) {
                                            node3 = node4;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node3 != null) {
                                                mutableVector3.add(node3);
                                                node3 = null;
                                            }
                                            mutableVector3.add(node4);
                                        }
                                    }
                                }
                                if (i3 == 1) {
                                }
                            }
                            node3 = HitTestResultKt.access$pop(mutableVector3);
                        }
                    } else {
                        node3 = node3.child;
                    }
                }
            }
        }
        while (mutableVector.size != 0 && (m422findBestCandidate4WY_MpI = m422findBestCandidate4WY_MpI(mutableVector, rect, i)) != null) {
            if (m422findBestCandidate4WY_MpI.fetchFocusProperties$ui().canFocus) {
                return ((Boolean) focusOwnerImpl$focusSearch$1.invoke(m422findBestCandidate4WY_MpI)).booleanValue();
            }
            if (m424generateAndSearchChildren4C6V_qg(i, focusOwnerImpl$focusSearch$1, m422findBestCandidate4WY_MpI, rect)) {
                return true;
            }
            mutableVector.remove(m422findBestCandidate4WY_MpI);
        }
        return false;
    }
}
