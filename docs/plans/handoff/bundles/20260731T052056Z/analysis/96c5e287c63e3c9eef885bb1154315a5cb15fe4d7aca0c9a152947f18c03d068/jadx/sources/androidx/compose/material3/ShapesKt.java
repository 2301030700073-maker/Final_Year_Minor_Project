package androidx.compose.material3;

import androidx.compose.foundation.shape.DpCornerSize;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.tokens.ShapeKeyTokens;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ShapesKt {
    public static final StaticProvidableCompositionLocal LocalShapes = new StaticProvidableCompositionLocal(0, new Worker$$ExternalSyntheticLambda1(4));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ShapeKeyTokens.values().length];
            try {
                iArr[ShapeKeyTokens.CornerExtraLarge.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShapeKeyTokens.CornerExtraLargeIncreased.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShapeKeyTokens.CornerExtraExtraLarge.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShapeKeyTokens.CornerExtraLargeTop.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShapeKeyTokens.CornerExtraSmall.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ShapeKeyTokens.CornerExtraSmallTop.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ShapeKeyTokens.CornerFull.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ShapeKeyTokens.CornerLarge.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ShapeKeyTokens.CornerLargeIncreased.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ShapeKeyTokens.CornerLargeEnd.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ShapeKeyTokens.CornerLargeTop.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ShapeKeyTokens.CornerMedium.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ShapeKeyTokens.CornerNone.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ShapeKeyTokens.CornerSmall.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ShapeKeyTokens.CornerLargeStart.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Shape fromToken(Shapes shapes, ShapeKeyTokens shapeKeyTokens) {
        switch (WhenMappings.$EnumSwitchMapping$0[shapeKeyTokens.ordinal()]) {
            case 1:
                return shapes.extraLarge;
            case 2:
                return shapes.extraLargeIncreased;
            case 3:
                return shapes.extraExtraLarge;
            case 4:
                return top$default(shapes.extraLarge);
            case 5:
                return shapes.extraSmall;
            case 6:
                return top$default(shapes.extraSmall);
            case 7:
                return RoundedCornerShapeKt.CircleShape;
            case 8:
                return shapes.large;
            case 9:
                return shapes.largeIncreased;
            case 10:
                RoundedCornerShape roundedCornerShape = shapes.large;
                DpCornerSize dpCornerSize = ShapeDefaults.CornerNone;
                return RoundedCornerShape.copy$default(roundedCornerShape, dpCornerSize, null, null, dpCornerSize, 6);
            case 11:
                return top$default(shapes.large);
            case 12:
                return shapes.medium;
            case IMAGE_VALUE:
                return ColorKt.RectangleShape;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return shapes.small;
            case 15:
                RoundedCornerShape roundedCornerShape2 = shapes.large;
                DpCornerSize dpCornerSize2 = ShapeDefaults.CornerNone;
                return RoundedCornerShape.copy$default(roundedCornerShape2, null, dpCornerSize2, dpCornerSize2, null, 9);
            default:
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
        }
    }

    public static final Shape getValue(ShapeKeyTokens shapeKeyTokens, GapComposer gapComposer) {
        return fromToken((Shapes) gapComposer.consume(LocalShapes), shapeKeyTokens);
    }

    public static RoundedCornerShape top$default(RoundedCornerShape roundedCornerShape) {
        DpCornerSize dpCornerSize = ShapeDefaults.CornerNone;
        return RoundedCornerShape.copy$default(roundedCornerShape, null, null, dpCornerSize, dpCornerSize, 3);
    }
}
