package androidx.compose.material3;

import androidx.compose.foundation.shape.DpCornerSize;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.tokens.ShapeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ShapesKt {
    public static final StaticProvidableCompositionLocal LocalShapes = new StaticProvidableCompositionLocal(new TextKt$$ExternalSyntheticLambda4(7));

    public static final Shape getValue(ShapeKeyTokens shapeKeyTokens, Composer composer) {
        Shapes shapes = (Shapes) ((GapComposer) composer).consume(LocalShapes);
        switch (shapeKeyTokens.ordinal()) {
            case 0:
                return shapes.extraExtraLarge;
            case 1:
                return shapes.extraLarge;
            case 2:
                return shapes.extraLargeIncreased;
            case 3:
                return top$default(shapes.extraLarge);
            case 4:
                return shapes.extraSmall;
            case 5:
                return top$default(shapes.extraSmall);
            case 6:
                return RoundedCornerShapeKt.CircleShape;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return shapes.large;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                RoundedCornerShape roundedCornerShape = shapes.large;
                DpCornerSize dpCornerSize = ShapeDefaults.CornerNone;
                return RoundedCornerShape.copy$default(roundedCornerShape, dpCornerSize, null, null, dpCornerSize, 6);
            case 9:
                return shapes.largeIncreased;
            case 10:
                RoundedCornerShape roundedCornerShape2 = shapes.large;
                DpCornerSize dpCornerSize2 = ShapeDefaults.CornerNone;
                return RoundedCornerShape.copy$default(roundedCornerShape2, null, dpCornerSize2, dpCornerSize2, null, 9);
            case 11:
                return top$default(shapes.large);
            case BasicTextKt.ShiftMeta /* 12 */:
                return shapes.medium;
            case 13:
                return ColorKt.RectangleShape;
            case 14:
                return shapes.small;
            default:
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
        }
    }

    public static RoundedCornerShape top$default(RoundedCornerShape roundedCornerShape) {
        DpCornerSize dpCornerSize = ShapeDefaults.CornerNone;
        return RoundedCornerShape.copy$default(roundedCornerShape, null, null, dpCornerSize, dpCornerSize, 3);
    }
}
