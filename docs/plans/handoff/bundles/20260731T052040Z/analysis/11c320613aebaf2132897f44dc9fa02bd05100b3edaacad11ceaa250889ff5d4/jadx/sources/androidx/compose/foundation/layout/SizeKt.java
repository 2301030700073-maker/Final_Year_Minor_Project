package androidx.compose.foundation.layout;

import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SizeKt {
    public static final FillElement FillWholeMaxSize;
    public static final FillElement FillWholeMaxWidth;
    public static final WrapContentElement WrapContentWidthCenter;
    public static final WrapContentElement WrapContentWidthStart;

    static {
        Direction direction = Direction.Horizontal;
        FillWholeMaxWidth = new FillElement(direction);
        FillWholeMaxSize = new FillElement(Direction.Both);
        BiasAlignment.Horizontal horizontal = Alignment.Companion.CenterHorizontally;
        int i = 3;
        WrapContentWidthCenter = new WrapContentElement(direction, new Updater$$ExternalSyntheticLambda0(horizontal, i), horizontal);
        BiasAlignment.Horizontal horizontal2 = Alignment.Companion.Start;
        WrapContentWidthStart = new WrapContentElement(direction, new Updater$$ExternalSyntheticLambda0(horizontal2, i), horizontal2);
    }

    /* renamed from: defaultMinSize-VpY3zN4, reason: not valid java name */
    public static final Modifier m87defaultMinSizeVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new UnspecifiedConstraintsElement(f, f2));
    }

    /* renamed from: height-3ABfNKs, reason: not valid java name */
    public static final Modifier m88height3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new SizeElement(Float.NaN, f, Float.NaN, f, true));
    }

    /* renamed from: requiredSize-3ABfNKs, reason: not valid java name */
    public static final Modifier m89requiredSize3ABfNKs() {
        return new SizeElement(64.0f, 64.0f, 64.0f, 64.0f, false);
    }

    /* renamed from: size-3ABfNKs, reason: not valid java name */
    public static final Modifier m90size3ABfNKs(float f) {
        return new SizeElement(f, f, f, f, true);
    }

    /* renamed from: size-6HolHcs, reason: not valid java name */
    public static final Modifier m91size6HolHcs(Modifier modifier, long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        return modifier.then(new SizeElement(intBitsToFloat, intBitsToFloat2, intBitsToFloat, intBitsToFloat2, true));
    }

    /* renamed from: sizeIn-qDBjuR0$default, reason: not valid java name */
    public static Modifier m92sizeInqDBjuR0$default() {
        return new SizeElement(280.0f, Float.NaN, 560.0f, Float.NaN, true);
    }

    public static Modifier wrapContentWidth$default(Modifier modifier) {
        WrapContentElement wrapContentElement;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.End;
        if (horizontal.equals(Alignment.Companion.CenterHorizontally)) {
            wrapContentElement = WrapContentWidthCenter;
        } else if (horizontal.equals(Alignment.Companion.Start)) {
            wrapContentElement = WrapContentWidthStart;
        } else {
            wrapContentElement = new WrapContentElement(Direction.Horizontal, new Updater$$ExternalSyntheticLambda0(horizontal, 3), horizontal);
        }
        return modifier.then(wrapContentElement);
    }
}
