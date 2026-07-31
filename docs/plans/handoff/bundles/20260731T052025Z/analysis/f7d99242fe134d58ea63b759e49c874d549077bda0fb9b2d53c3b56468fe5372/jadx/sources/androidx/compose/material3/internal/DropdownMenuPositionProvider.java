package androidx.compose.material3.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.material3.AndroidMenu_androidKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAbsoluteAlignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DropdownMenuPositionProvider implements PopupPositionProvider {
    public final AnchorAlignmentOffsetPosition$Vertical bottomToAnchorTop;
    public final WindowAlignmentMarginPosition$Vertical bottomToWindowBottom;
    public final AnchorAlignmentOffsetPosition$Vertical centerToAnchorTop;
    public final long contentOffset;
    public final Density density;
    public final AnchorAlignmentOffsetPosition$Horizontal endToAnchorEnd;
    public final WindowAlignmentMarginPosition$Horizontal leftToWindowLeft;
    public final AndroidMenu_androidKt$$ExternalSyntheticLambda0 onPositionCalculated;
    public final WindowAlignmentMarginPosition$Horizontal rightToWindowRight;
    public final AnchorAlignmentOffsetPosition$Horizontal startToAnchorStart;
    public final AnchorAlignmentOffsetPosition$Vertical topToAnchorBottom;
    public final WindowAlignmentMarginPosition$Vertical topToWindowTop;
    public final int verticalMargin;

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Horizontal] */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Horizontal] */
    /* JADX WARN: Type inference failed for: r4v5, types: [androidx.compose.material3.internal.WindowAlignmentMarginPosition$Vertical] */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.material3.internal.WindowAlignmentMarginPosition$Vertical] */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Vertical] */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Vertical] */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Vertical] */
    /* JADX WARN: Type inference failed for: r7v5, types: [androidx.compose.material3.internal.WindowAlignmentMarginPosition$Horizontal] */
    /* JADX WARN: Type inference failed for: r7v6, types: [androidx.compose.material3.internal.WindowAlignmentMarginPosition$Horizontal] */
    public DropdownMenuPositionProvider(long j, Density density, AndroidMenu_androidKt$$ExternalSyntheticLambda0 androidMenu_androidKt$$ExternalSyntheticLambda0) {
        final int mo171roundToPx0680j_4 = density.mo171roundToPx0680j_4(48.0f);
        this.contentOffset = j;
        this.density = density;
        this.verticalMargin = mo171roundToPx0680j_4;
        this.onPositionCalculated = androidMenu_androidKt$$ExternalSyntheticLambda0;
        final int mo171roundToPx0680j_42 = density.mo171roundToPx0680j_4(Float.intBitsToFloat((int) (j >> 32)));
        final BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
        this.startToAnchorStart = new MenuPosition$Horizontal(horizontal, horizontal, mo171roundToPx0680j_42) { // from class: androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Horizontal
            public final BiasAlignment.Horizontal anchorAlignment;
            public final BiasAlignment.Horizontal menuAlignment;
            public final int offset;

            {
                this.menuAlignment = horizontal;
                this.anchorAlignment = horizontal;
                this.offset = mo171roundToPx0680j_42;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof AnchorAlignmentOffsetPosition$Horizontal)) {
                    return false;
                }
                AnchorAlignmentOffsetPosition$Horizontal anchorAlignmentOffsetPosition$Horizontal = (AnchorAlignmentOffsetPosition$Horizontal) obj;
                return this.menuAlignment.equals(anchorAlignmentOffsetPosition$Horizontal.menuAlignment) && this.anchorAlignment.equals(anchorAlignmentOffsetPosition$Horizontal.anchorAlignment) && this.offset == anchorAlignmentOffsetPosition$Horizontal.offset;
            }

            public final int hashCode() {
                return CameraDevices$CC.m(Float.floatToIntBits(this.menuAlignment.bias) * 31, this.anchorAlignment.bias, 31) + this.offset;
            }

            @Override // androidx.compose.material3.internal.MenuPosition$Horizontal
            /* renamed from: position-95KtPRI, reason: not valid java name */
            public final int mo365position95KtPRI(IntRect intRect, long j2, int i, LayoutDirection layoutDirection) {
                int align = this.anchorAlignment.align(0, intRect.getWidth(), layoutDirection);
                int i2 = -this.menuAlignment.align(0, i, layoutDirection);
                LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
                int i3 = this.offset;
                if (layoutDirection != layoutDirection2) {
                    i3 = -i3;
                }
                return intRect.left + align + i2 + i3;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("Horizontal(menuAlignment=");
                sb.append(this.menuAlignment);
                sb.append(", anchorAlignment=");
                sb.append(this.anchorAlignment);
                sb.append(", offset=");
                return CameraDevices$CC.m(sb, this.offset, ')');
            }
        };
        final BiasAlignment.Horizontal horizontal2 = Alignment.Companion.End;
        this.endToAnchorEnd = new MenuPosition$Horizontal(horizontal2, horizontal2, mo171roundToPx0680j_42) { // from class: androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Horizontal
            public final BiasAlignment.Horizontal anchorAlignment;
            public final BiasAlignment.Horizontal menuAlignment;
            public final int offset;

            {
                this.menuAlignment = horizontal2;
                this.anchorAlignment = horizontal2;
                this.offset = mo171roundToPx0680j_42;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof AnchorAlignmentOffsetPosition$Horizontal)) {
                    return false;
                }
                AnchorAlignmentOffsetPosition$Horizontal anchorAlignmentOffsetPosition$Horizontal = (AnchorAlignmentOffsetPosition$Horizontal) obj;
                return this.menuAlignment.equals(anchorAlignmentOffsetPosition$Horizontal.menuAlignment) && this.anchorAlignment.equals(anchorAlignmentOffsetPosition$Horizontal.anchorAlignment) && this.offset == anchorAlignmentOffsetPosition$Horizontal.offset;
            }

            public final int hashCode() {
                return CameraDevices$CC.m(Float.floatToIntBits(this.menuAlignment.bias) * 31, this.anchorAlignment.bias, 31) + this.offset;
            }

            @Override // androidx.compose.material3.internal.MenuPosition$Horizontal
            /* renamed from: position-95KtPRI, reason: not valid java name */
            public final int mo365position95KtPRI(IntRect intRect, long j2, int i, LayoutDirection layoutDirection) {
                int align = this.anchorAlignment.align(0, intRect.getWidth(), layoutDirection);
                int i2 = -this.menuAlignment.align(0, i, layoutDirection);
                LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
                int i3 = this.offset;
                if (layoutDirection != layoutDirection2) {
                    i3 = -i3;
                }
                return intRect.left + align + i2 + i3;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("Horizontal(menuAlignment=");
                sb.append(this.menuAlignment);
                sb.append(", anchorAlignment=");
                sb.append(this.anchorAlignment);
                sb.append(", offset=");
                return CameraDevices$CC.m(sb, this.offset, ')');
            }
        };
        final BiasAbsoluteAlignment.Horizontal horizontal3 = AbsoluteAlignment.Left;
        this.leftToWindowLeft = new MenuPosition$Horizontal(horizontal3) { // from class: androidx.compose.material3.internal.WindowAlignmentMarginPosition$Horizontal
            public final BiasAbsoluteAlignment.Horizontal alignment;

            {
                this.alignment = horizontal3;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof WindowAlignmentMarginPosition$Horizontal) && this.alignment.equals(((WindowAlignmentMarginPosition$Horizontal) obj).alignment);
            }

            public final int hashCode() {
                return Float.floatToIntBits(this.alignment.bias) * 31;
            }

            @Override // androidx.compose.material3.internal.MenuPosition$Horizontal
            /* renamed from: position-95KtPRI */
            public final int mo365position95KtPRI(IntRect intRect, long j2, int i, LayoutDirection layoutDirection) {
                int i2 = (int) (j2 >> 32);
                if (i >= i2) {
                    return Math.round((1.0f + (layoutDirection == LayoutDirection.Ltr ? 0.0f : -0.0f)) * ((i2 - i) / 2.0f));
                }
                return RangesKt.coerceIn(this.alignment.align(i, i2, layoutDirection), 0, i2 - i);
            }

            public final String toString() {
                return "Horizontal(alignment=" + this.alignment + ", margin=0)";
            }
        };
        final BiasAbsoluteAlignment.Horizontal horizontal4 = AbsoluteAlignment.Right;
        this.rightToWindowRight = new MenuPosition$Horizontal(horizontal4) { // from class: androidx.compose.material3.internal.WindowAlignmentMarginPosition$Horizontal
            public final BiasAbsoluteAlignment.Horizontal alignment;

            {
                this.alignment = horizontal4;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof WindowAlignmentMarginPosition$Horizontal) && this.alignment.equals(((WindowAlignmentMarginPosition$Horizontal) obj).alignment);
            }

            public final int hashCode() {
                return Float.floatToIntBits(this.alignment.bias) * 31;
            }

            @Override // androidx.compose.material3.internal.MenuPosition$Horizontal
            /* renamed from: position-95KtPRI */
            public final int mo365position95KtPRI(IntRect intRect, long j2, int i, LayoutDirection layoutDirection) {
                int i2 = (int) (j2 >> 32);
                if (i >= i2) {
                    return Math.round((1.0f + (layoutDirection == LayoutDirection.Ltr ? 0.0f : -0.0f)) * ((i2 - i) / 2.0f));
                }
                return RangesKt.coerceIn(this.alignment.align(i, i2, layoutDirection), 0, i2 - i);
            }

            public final String toString() {
                return "Horizontal(alignment=" + this.alignment + ", margin=0)";
            }
        };
        final int mo171roundToPx0680j_43 = density.mo171roundToPx0680j_4(Float.intBitsToFloat((int) (j & 4294967295L)));
        final BiasAlignment.Vertical vertical = Alignment.Companion.Top;
        final BiasAlignment.Vertical vertical2 = Alignment.Companion.Bottom;
        this.topToAnchorBottom = new MenuPosition$Vertical(vertical, vertical2, mo171roundToPx0680j_43) { // from class: androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Vertical
            public final BiasAlignment.Vertical anchorAlignment;
            public final BiasAlignment.Vertical menuAlignment;
            public final int offset;

            {
                this.menuAlignment = vertical;
                this.anchorAlignment = vertical2;
                this.offset = mo171roundToPx0680j_43;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof AnchorAlignmentOffsetPosition$Vertical)) {
                    return false;
                }
                AnchorAlignmentOffsetPosition$Vertical anchorAlignmentOffsetPosition$Vertical = (AnchorAlignmentOffsetPosition$Vertical) obj;
                return this.menuAlignment.equals(anchorAlignmentOffsetPosition$Vertical.menuAlignment) && this.anchorAlignment.equals(anchorAlignmentOffsetPosition$Vertical.anchorAlignment) && this.offset == anchorAlignmentOffsetPosition$Vertical.offset;
            }

            public final int hashCode() {
                return CameraDevices$CC.m(Float.floatToIntBits(this.menuAlignment.bias) * 31, this.anchorAlignment.bias, 31) + this.offset;
            }

            @Override // androidx.compose.material3.internal.MenuPosition$Vertical
            /* renamed from: position-JVtK1S4, reason: not valid java name */
            public final int mo366positionJVtK1S4(IntRect intRect, long j2, int i) {
                int align = this.anchorAlignment.align(0, intRect.getHeight());
                return intRect.top + align + (-this.menuAlignment.align(0, i)) + this.offset;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("Vertical(menuAlignment=");
                sb.append(this.menuAlignment);
                sb.append(", anchorAlignment=");
                sb.append(this.anchorAlignment);
                sb.append(", offset=");
                return CameraDevices$CC.m(sb, this.offset, ')');
            }
        };
        this.bottomToAnchorTop = new MenuPosition$Vertical(vertical2, vertical, mo171roundToPx0680j_43) { // from class: androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Vertical
            public final BiasAlignment.Vertical anchorAlignment;
            public final BiasAlignment.Vertical menuAlignment;
            public final int offset;

            {
                this.menuAlignment = vertical2;
                this.anchorAlignment = vertical;
                this.offset = mo171roundToPx0680j_43;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof AnchorAlignmentOffsetPosition$Vertical)) {
                    return false;
                }
                AnchorAlignmentOffsetPosition$Vertical anchorAlignmentOffsetPosition$Vertical = (AnchorAlignmentOffsetPosition$Vertical) obj;
                return this.menuAlignment.equals(anchorAlignmentOffsetPosition$Vertical.menuAlignment) && this.anchorAlignment.equals(anchorAlignmentOffsetPosition$Vertical.anchorAlignment) && this.offset == anchorAlignmentOffsetPosition$Vertical.offset;
            }

            public final int hashCode() {
                return CameraDevices$CC.m(Float.floatToIntBits(this.menuAlignment.bias) * 31, this.anchorAlignment.bias, 31) + this.offset;
            }

            @Override // androidx.compose.material3.internal.MenuPosition$Vertical
            /* renamed from: position-JVtK1S4, reason: not valid java name */
            public final int mo366positionJVtK1S4(IntRect intRect, long j2, int i) {
                int align = this.anchorAlignment.align(0, intRect.getHeight());
                return intRect.top + align + (-this.menuAlignment.align(0, i)) + this.offset;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("Vertical(menuAlignment=");
                sb.append(this.menuAlignment);
                sb.append(", anchorAlignment=");
                sb.append(this.anchorAlignment);
                sb.append(", offset=");
                return CameraDevices$CC.m(sb, this.offset, ')');
            }
        };
        final BiasAlignment.Vertical vertical3 = Alignment.Companion.CenterVertically;
        this.centerToAnchorTop = new MenuPosition$Vertical(vertical3, vertical, mo171roundToPx0680j_43) { // from class: androidx.compose.material3.internal.AnchorAlignmentOffsetPosition$Vertical
            public final BiasAlignment.Vertical anchorAlignment;
            public final BiasAlignment.Vertical menuAlignment;
            public final int offset;

            {
                this.menuAlignment = vertical3;
                this.anchorAlignment = vertical;
                this.offset = mo171roundToPx0680j_43;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof AnchorAlignmentOffsetPosition$Vertical)) {
                    return false;
                }
                AnchorAlignmentOffsetPosition$Vertical anchorAlignmentOffsetPosition$Vertical = (AnchorAlignmentOffsetPosition$Vertical) obj;
                return this.menuAlignment.equals(anchorAlignmentOffsetPosition$Vertical.menuAlignment) && this.anchorAlignment.equals(anchorAlignmentOffsetPosition$Vertical.anchorAlignment) && this.offset == anchorAlignmentOffsetPosition$Vertical.offset;
            }

            public final int hashCode() {
                return CameraDevices$CC.m(Float.floatToIntBits(this.menuAlignment.bias) * 31, this.anchorAlignment.bias, 31) + this.offset;
            }

            @Override // androidx.compose.material3.internal.MenuPosition$Vertical
            /* renamed from: position-JVtK1S4, reason: not valid java name */
            public final int mo366positionJVtK1S4(IntRect intRect, long j2, int i) {
                int align = this.anchorAlignment.align(0, intRect.getHeight());
                return intRect.top + align + (-this.menuAlignment.align(0, i)) + this.offset;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("Vertical(menuAlignment=");
                sb.append(this.menuAlignment);
                sb.append(", anchorAlignment=");
                sb.append(this.anchorAlignment);
                sb.append(", offset=");
                return CameraDevices$CC.m(sb, this.offset, ')');
            }
        };
        this.topToWindowTop = new MenuPosition$Vertical(vertical, mo171roundToPx0680j_4) { // from class: androidx.compose.material3.internal.WindowAlignmentMarginPosition$Vertical
            public final BiasAlignment.Vertical alignment;
            public final int margin;

            {
                this.alignment = vertical;
                this.margin = mo171roundToPx0680j_4;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof WindowAlignmentMarginPosition$Vertical)) {
                    return false;
                }
                WindowAlignmentMarginPosition$Vertical windowAlignmentMarginPosition$Vertical = (WindowAlignmentMarginPosition$Vertical) obj;
                return this.alignment.equals(windowAlignmentMarginPosition$Vertical.alignment) && this.margin == windowAlignmentMarginPosition$Vertical.margin;
            }

            public final int hashCode() {
                return (Float.floatToIntBits(this.alignment.bias) * 31) + this.margin;
            }

            @Override // androidx.compose.material3.internal.MenuPosition$Vertical
            /* renamed from: position-JVtK1S4 */
            public final int mo366positionJVtK1S4(IntRect intRect, long j2, int i) {
                int i2 = (int) (j2 & 4294967295L);
                int i3 = this.margin;
                return i >= i2 - (i3 * 2) ? Math.round(((i2 - i) / 2.0f) * 1.0f) : RangesKt.coerceIn(this.alignment.align(i, i2), i3, (i2 - i3) - i);
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("Vertical(alignment=");
                sb.append(this.alignment);
                sb.append(", margin=");
                return CameraDevices$CC.m(sb, this.margin, ')');
            }
        };
        this.bottomToWindowBottom = new MenuPosition$Vertical(vertical2, mo171roundToPx0680j_4) { // from class: androidx.compose.material3.internal.WindowAlignmentMarginPosition$Vertical
            public final BiasAlignment.Vertical alignment;
            public final int margin;

            {
                this.alignment = vertical2;
                this.margin = mo171roundToPx0680j_4;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof WindowAlignmentMarginPosition$Vertical)) {
                    return false;
                }
                WindowAlignmentMarginPosition$Vertical windowAlignmentMarginPosition$Vertical = (WindowAlignmentMarginPosition$Vertical) obj;
                return this.alignment.equals(windowAlignmentMarginPosition$Vertical.alignment) && this.margin == windowAlignmentMarginPosition$Vertical.margin;
            }

            public final int hashCode() {
                return (Float.floatToIntBits(this.alignment.bias) * 31) + this.margin;
            }

            @Override // androidx.compose.material3.internal.MenuPosition$Vertical
            /* renamed from: position-JVtK1S4 */
            public final int mo366positionJVtK1S4(IntRect intRect, long j2, int i) {
                int i2 = (int) (j2 & 4294967295L);
                int i3 = this.margin;
                return i >= i2 - (i3 * 2) ? Math.round(((i2 - i) / 2.0f) * 1.0f) : RangesKt.coerceIn(this.alignment.align(i, i2), i3, (i2 - i3) - i);
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("Vertical(alignment=");
                sb.append(this.alignment);
                sb.append(", margin=");
                return CameraDevices$CC.m(sb, this.margin, ')');
            }
        };
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4 */
    public final long mo96calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        IntRect intRect2;
        long j3;
        char c;
        int i;
        int i2;
        int i3;
        char c2 = ' ';
        int i4 = (int) (j >> 32);
        boolean z = true;
        List listOf = IntOffsetKt.listOf((Object[]) new MenuPosition$Horizontal[]{this.startToAnchorStart, this.endToAnchorEnd, ((int) (intRect.m762getCenternOccac() >> 32)) < i4 / 2 ? this.leftToWindowLeft : this.rightToWindowRight});
        int size = listOf.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                intRect2 = intRect;
                j3 = j;
                c = c2;
                i = 0;
                break;
            }
            MenuPosition$Horizontal menuPosition$Horizontal = (MenuPosition$Horizontal) listOf.get(i5);
            int i6 = (int) (j2 >> c2);
            int i7 = size;
            c = c2;
            j3 = j;
            int i8 = i5;
            intRect2 = intRect;
            i = menuPosition$Horizontal.mo365position95KtPRI(intRect2, j3, i6, layoutDirection);
            if (i8 == listOf.size() - 1 || (i >= 0 && i6 + i <= i4)) {
                break;
            }
            i5 = i8 + 1;
            size = i7;
            c2 = c;
        }
        int i9 = (int) (j3 & 4294967295L);
        List listOf2 = IntOffsetKt.listOf((Object[]) new MenuPosition$Vertical[]{this.topToAnchorBottom, this.bottomToAnchorTop, this.centerToAnchorTop, ((int) (intRect2.m762getCenternOccac() & 4294967295L)) < i9 / 2 ? this.topToWindowTop : this.bottomToWindowBottom});
        int size2 = listOf2.size();
        int i10 = 0;
        while (i10 < size2) {
            boolean z2 = z;
            int i11 = (int) (j2 & 4294967295L);
            int mo366positionJVtK1S4 = ((MenuPosition$Vertical) listOf2.get(i10)).mo366positionJVtK1S4(intRect2, j3, i11);
            if (i10 == listOf2.size() - 1 || (mo366positionJVtK1S4 >= (i3 = this.verticalMargin) && i11 + mo366positionJVtK1S4 <= i9 - i3)) {
                i2 = mo366positionJVtK1S4;
                break;
            }
            i10++;
            z = z2;
        }
        i2 = 0;
        long j4 = (i << c) | (i2 & 4294967295L);
        this.onPositionCalculated.invoke(intRect2, IntRectKt.m764IntRectVbeCjmY(j4, j2));
        return j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DropdownMenuPositionProvider)) {
            return false;
        }
        DropdownMenuPositionProvider dropdownMenuPositionProvider = (DropdownMenuPositionProvider) obj;
        return this.contentOffset == dropdownMenuPositionProvider.contentOffset && Intrinsics.areEqual(this.density, dropdownMenuPositionProvider.density) && this.verticalMargin == dropdownMenuPositionProvider.verticalMargin && Intrinsics.areEqual(this.onPositionCalculated, dropdownMenuPositionProvider.onPositionCalculated);
    }

    public final int hashCode() {
        long j = this.contentOffset;
        return this.onPositionCalculated.hashCode() + ((((this.density.hashCode() + (((int) (j ^ (j >>> 32))) * 31)) * 31) + this.verticalMargin) * 31);
    }

    public final String toString() {
        return "DropdownMenuPositionProvider(contentOffset=" + ((Object) DpOffset.m747toStringimpl(this.contentOffset)) + ", density=" + this.density + ", verticalMargin=" + this.verticalMargin + ", onPositionCalculated=" + this.onPositionCalculated + ')';
    }
}
