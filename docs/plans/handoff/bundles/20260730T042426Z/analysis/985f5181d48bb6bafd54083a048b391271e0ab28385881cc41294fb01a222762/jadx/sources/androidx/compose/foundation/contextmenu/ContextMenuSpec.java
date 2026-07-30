package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;

/* compiled from: ContextMenuUi.android.kt */
/* loaded from: classes.dex */
public final class ContextMenuSpec {
    public static final ContextMenuSpec INSTANCE = new ContextMenuSpec();
    private static final float ContainerWidthMin = Dp.m2424constructorimpl(112);
    private static final float ContainerWidthMax = Dp.m2424constructorimpl(280);
    private static final float ListItemHeight = Dp.m2424constructorimpl(48);
    private static final float MenuContainerElevation = Dp.m2424constructorimpl(3);
    private static final float CornerRadius = Dp.m2424constructorimpl(4);
    private static final Alignment.Vertical LabelVerticalTextAlignment = Alignment.Companion.getCenterVertically();
    private static final int LabelHorizontalTextAlignment = TextAlign.Companion.m2353getStarte0LSkKk();
    private static final float HorizontalPadding = Dp.m2424constructorimpl(12);
    private static final float VerticalPadding = Dp.m2424constructorimpl(8);
    private static final float IconSize = Dp.m2424constructorimpl(24);
    private static final long FontSize = TextUnitKt.getSp(14);
    private static final FontWeight FontWeight = FontWeight.Companion.getMedium();
    private static final long LineHeight = TextUnitKt.getSp(20);
    private static final long LetterSpacing = TextUnitKt.getSp(0.1f);

    private ContextMenuSpec() {
    }

    /* renamed from: getContainerWidthMin-D9Ej5fM, reason: not valid java name */
    public final float m156getContainerWidthMinD9Ej5fM() {
        return ContainerWidthMin;
    }

    /* renamed from: getContainerWidthMax-D9Ej5fM, reason: not valid java name */
    public final float m155getContainerWidthMaxD9Ej5fM() {
        return ContainerWidthMax;
    }

    /* renamed from: getListItemHeight-D9Ej5fM, reason: not valid java name */
    public final float m160getListItemHeightD9Ej5fM() {
        return ListItemHeight;
    }

    /* renamed from: getMenuContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m161getMenuContainerElevationD9Ej5fM() {
        return MenuContainerElevation;
    }

    /* renamed from: getCornerRadius-D9Ej5fM, reason: not valid java name */
    public final float m157getCornerRadiusD9Ej5fM() {
        return CornerRadius;
    }

    public final Alignment.Vertical getLabelVerticalTextAlignment() {
        return LabelVerticalTextAlignment;
    }

    /* renamed from: getHorizontalPadding-D9Ej5fM, reason: not valid java name */
    public final float m158getHorizontalPaddingD9Ej5fM() {
        return HorizontalPadding;
    }

    /* renamed from: getVerticalPadding-D9Ej5fM, reason: not valid java name */
    public final float m162getVerticalPaddingD9Ej5fM() {
        return VerticalPadding;
    }

    /* renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m159getIconSizeD9Ej5fM() {
        return IconSize;
    }

    /* renamed from: textStyle-8_81llA, reason: not valid java name */
    public final TextStyle m163textStyle8_81llA(long j) {
        int i = LabelHorizontalTextAlignment;
        return new TextStyle(j, FontSize, FontWeight, null, null, null, null, LetterSpacing, null, null, null, 0L, null, null, null, i, 0, LineHeight, null, null, null, 0, 0, null, 16613240, null);
    }
}
