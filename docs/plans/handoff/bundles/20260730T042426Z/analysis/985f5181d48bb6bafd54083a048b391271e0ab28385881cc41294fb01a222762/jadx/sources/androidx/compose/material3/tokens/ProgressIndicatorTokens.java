package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* compiled from: ProgressIndicatorTokens.kt */
/* loaded from: classes.dex */
public final class ProgressIndicatorTokens {
    private static final ColorSchemeKeyTokens ActiveIndicatorColor;
    private static final ShapeKeyTokens ActiveShape;
    private static final float ActiveThickness;
    private static final float ActiveTrackSpace;
    public static final ProgressIndicatorTokens INSTANCE = new ProgressIndicatorTokens();
    private static final float Size;
    private static final ColorSchemeKeyTokens StopColor;
    private static final float StopShape;
    private static final float StopSize;
    private static final ColorSchemeKeyTokens TrackColor;
    private static final ShapeKeyTokens TrackShape;
    private static final float TrackThickness;

    private ProgressIndicatorTokens() {
    }

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.Primary;
        ActiveIndicatorColor = colorSchemeKeyTokens;
        ShapeKeyTokens shapeKeyTokens = ShapeKeyTokens.CornerFull;
        ActiveShape = shapeKeyTokens;
        float f = (float) 4.0d;
        ActiveThickness = Dp.m2424constructorimpl(f);
        ActiveTrackSpace = Dp.m2424constructorimpl(f);
        StopColor = colorSchemeKeyTokens;
        StopShape = Dp.m2424constructorimpl(f);
        StopSize = Dp.m2424constructorimpl(f);
        TrackColor = ColorSchemeKeyTokens.SecondaryContainer;
        TrackShape = shapeKeyTokens;
        TrackThickness = Dp.m2424constructorimpl(f);
        Size = Dp.m2424constructorimpl((float) 48.0d);
    }

    public final ColorSchemeKeyTokens getActiveIndicatorColor() {
        return ActiveIndicatorColor;
    }

    /* renamed from: getActiveTrackSpace-D9Ej5fM, reason: not valid java name */
    public final float m956getActiveTrackSpaceD9Ej5fM() {
        return ActiveTrackSpace;
    }

    /* renamed from: getStopSize-D9Ej5fM, reason: not valid java name */
    public final float m958getStopSizeD9Ej5fM() {
        return StopSize;
    }

    public final ColorSchemeKeyTokens getTrackColor() {
        return TrackColor;
    }

    /* renamed from: getTrackThickness-D9Ej5fM, reason: not valid java name */
    public final float m959getTrackThicknessD9Ej5fM() {
        return TrackThickness;
    }

    /* renamed from: getSize-D9Ej5fM, reason: not valid java name */
    public final float m957getSizeD9Ej5fM() {
        return Size;
    }
}
