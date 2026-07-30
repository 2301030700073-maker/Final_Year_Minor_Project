package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntSize;

/* compiled from: LayoutCoordinates.kt */
/* loaded from: classes.dex */
public abstract class LayoutCoordinatesKt {
    public static final long positionInRoot(LayoutCoordinates layoutCoordinates) {
        return layoutCoordinates.mo1756localToRootMKHz9U(Offset.Companion.m1179getZeroF1C5BW0());
    }

    public static final long positionInWindow(LayoutCoordinates layoutCoordinates) {
        return layoutCoordinates.mo1757localToWindowMKHz9U(Offset.Companion.m1179getZeroF1C5BW0());
    }

    public static final Rect boundsInRoot(LayoutCoordinates layoutCoordinates) {
        return LayoutCoordinates.CC.localBoundingBoxOf$default(findRootCoordinates(layoutCoordinates), layoutCoordinates, false, 2, null);
    }

    public static final Rect boundsInWindow(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates findRootCoordinates = findRootCoordinates(layoutCoordinates);
        float m2484getWidthimpl = IntSize.m2484getWidthimpl(findRootCoordinates.mo1753getSizeYbymL2g());
        float m2483getHeightimpl = IntSize.m2483getHeightimpl(findRootCoordinates.mo1753getSizeYbymL2g());
        Rect boundsInRoot = boundsInRoot(layoutCoordinates);
        float left = boundsInRoot.getLeft();
        if (left < 0.0f) {
            left = 0.0f;
        }
        if (left > m2484getWidthimpl) {
            left = m2484getWidthimpl;
        }
        float top = boundsInRoot.getTop();
        if (top < 0.0f) {
            top = 0.0f;
        }
        if (top > m2483getHeightimpl) {
            top = m2483getHeightimpl;
        }
        float right = boundsInRoot.getRight();
        if (right < 0.0f) {
            right = 0.0f;
        }
        if (right <= m2484getWidthimpl) {
            m2484getWidthimpl = right;
        }
        float bottom = boundsInRoot.getBottom();
        float f = bottom >= 0.0f ? bottom : 0.0f;
        if (f <= m2483getHeightimpl) {
            m2483getHeightimpl = f;
        }
        if (left == m2484getWidthimpl || top == m2483getHeightimpl) {
            return Rect.Companion.getZero();
        }
        long mo1757localToWindowMKHz9U = findRootCoordinates.mo1757localToWindowMKHz9U(OffsetKt.Offset(left, top));
        long mo1757localToWindowMKHz9U2 = findRootCoordinates.mo1757localToWindowMKHz9U(OffsetKt.Offset(m2484getWidthimpl, top));
        long mo1757localToWindowMKHz9U3 = findRootCoordinates.mo1757localToWindowMKHz9U(OffsetKt.Offset(m2484getWidthimpl, m2483getHeightimpl));
        long mo1757localToWindowMKHz9U4 = findRootCoordinates.mo1757localToWindowMKHz9U(OffsetKt.Offset(left, m2483getHeightimpl));
        float m1167getXimpl = Offset.m1167getXimpl(mo1757localToWindowMKHz9U);
        float m1167getXimpl2 = Offset.m1167getXimpl(mo1757localToWindowMKHz9U2);
        float m1167getXimpl3 = Offset.m1167getXimpl(mo1757localToWindowMKHz9U4);
        float m1167getXimpl4 = Offset.m1167getXimpl(mo1757localToWindowMKHz9U3);
        float min = Math.min(m1167getXimpl, Math.min(m1167getXimpl2, Math.min(m1167getXimpl3, m1167getXimpl4)));
        float max = Math.max(m1167getXimpl, Math.max(m1167getXimpl2, Math.max(m1167getXimpl3, m1167getXimpl4)));
        float m1168getYimpl = Offset.m1168getYimpl(mo1757localToWindowMKHz9U);
        float m1168getYimpl2 = Offset.m1168getYimpl(mo1757localToWindowMKHz9U2);
        float m1168getYimpl3 = Offset.m1168getYimpl(mo1757localToWindowMKHz9U4);
        float m1168getYimpl4 = Offset.m1168getYimpl(mo1757localToWindowMKHz9U3);
        return new Rect(min, Math.min(m1168getYimpl, Math.min(m1168getYimpl2, Math.min(m1168getYimpl3, m1168getYimpl4))), max, Math.max(m1168getYimpl, Math.max(m1168getYimpl2, Math.max(m1168getYimpl3, m1168getYimpl4))));
    }

    public static final Rect boundsInParent(LayoutCoordinates layoutCoordinates) {
        Rect localBoundingBoxOf$default;
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        return (parentLayoutCoordinates == null || (localBoundingBoxOf$default = LayoutCoordinates.CC.localBoundingBoxOf$default(parentLayoutCoordinates, layoutCoordinates, false, 2, null)) == null) ? new Rect(0.0f, 0.0f, IntSize.m2484getWidthimpl(layoutCoordinates.mo1753getSizeYbymL2g()), IntSize.m2483getHeightimpl(layoutCoordinates.mo1753getSizeYbymL2g())) : localBoundingBoxOf$default;
    }

    public static final LayoutCoordinates findRootCoordinates(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinates2;
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        while (true) {
            LayoutCoordinates layoutCoordinates3 = parentLayoutCoordinates;
            layoutCoordinates2 = layoutCoordinates;
            layoutCoordinates = layoutCoordinates3;
            if (layoutCoordinates == null) {
                break;
            }
            parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        }
        NodeCoordinator nodeCoordinator = layoutCoordinates2 instanceof NodeCoordinator ? (NodeCoordinator) layoutCoordinates2 : null;
        if (nodeCoordinator == null) {
            return layoutCoordinates2;
        }
        NodeCoordinator wrappedBy$ui_release = nodeCoordinator.getWrappedBy$ui_release();
        while (true) {
            NodeCoordinator nodeCoordinator2 = wrappedBy$ui_release;
            NodeCoordinator nodeCoordinator3 = nodeCoordinator;
            nodeCoordinator = nodeCoordinator2;
            if (nodeCoordinator == null) {
                return nodeCoordinator3;
            }
            wrappedBy$ui_release = nodeCoordinator.getWrappedBy$ui_release();
        }
    }
}
