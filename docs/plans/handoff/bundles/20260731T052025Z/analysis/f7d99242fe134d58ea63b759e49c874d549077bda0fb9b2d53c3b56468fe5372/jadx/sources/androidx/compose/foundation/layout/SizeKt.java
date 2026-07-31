package androidx.compose.foundation.layout;

import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SizeKt {
    public static final FillElement FillWholeMaxHeight;
    public static final FillElement FillWholeMaxSize;
    public static final FillElement FillWholeMaxWidth = new FillElement(Direction.Horizontal);
    public static final WrapContentElement WrapContentHeightCenter;
    public static final WrapContentElement WrapContentHeightTop;
    public static final WrapContentElement WrapContentSizeCenter;
    public static final WrapContentElement WrapContentSizeTopStart;

    static {
        Direction direction = Direction.Vertical;
        FillWholeMaxHeight = new FillElement(direction);
        Direction direction2 = Direction.Both;
        FillWholeMaxSize = new FillElement(direction2);
        BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
        int i = 3;
        WrapContentHeightCenter = new WrapContentElement(direction, new ComposerKt$$ExternalSyntheticLambda0(i, vertical), vertical);
        BiasAlignment.Vertical vertical2 = Alignment.Companion.Top;
        WrapContentHeightTop = new WrapContentElement(direction, new ComposerKt$$ExternalSyntheticLambda0(i, vertical2), vertical2);
        BiasAlignment biasAlignment = Alignment.Companion.Center;
        int i2 = 4;
        WrapContentSizeCenter = new WrapContentElement(direction2, new ComposerKt$$ExternalSyntheticLambda0(i2, biasAlignment), biasAlignment);
        BiasAlignment biasAlignment2 = Alignment.Companion.TopStart;
        WrapContentSizeTopStart = new WrapContentElement(direction2, new ComposerKt$$ExternalSyntheticLambda0(i2, biasAlignment2), biasAlignment2);
    }

    /* renamed from: defaultMinSize-VpY3zN4, reason: not valid java name */
    public static final Modifier m224defaultMinSizeVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new UnspecifiedConstraintsElement(f, f2));
    }

    /* renamed from: defaultMinSize-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m225defaultMinSizeVpY3zN4$default(Modifier modifier, float f, float f2, int i) {
        if ((i & 1) != 0) {
            f = Float.NaN;
        }
        if ((i & 2) != 0) {
            f2 = Float.NaN;
        }
        return m224defaultMinSizeVpY3zN4(modifier, f, f2);
    }

    /* renamed from: height-3ABfNKs, reason: not valid java name */
    public static final Modifier m226height3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new SizeElement(0.0f, f, 0.0f, f, true, 5));
    }

    /* renamed from: heightIn-VpY3zN4, reason: not valid java name */
    public static final Modifier m227heightInVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new SizeElement(0.0f, f, 0.0f, f2, true, 5));
    }

    /* renamed from: heightIn-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m228heightInVpY3zN4$default(Modifier modifier, float f, int i) {
        if ((i & 1) != 0) {
            f = Float.NaN;
        }
        return m227heightInVpY3zN4(modifier, f, (i & 2) == 0 ? 240.0f : Float.NaN);
    }

    /* renamed from: requiredHeight-3ABfNKs, reason: not valid java name */
    public static final Modifier m229requiredHeight3ABfNKs(float f) {
        return new SizeElement(0.0f, f, 0.0f, f, false, 5);
    }

    /* renamed from: requiredSize-3ABfNKs, reason: not valid java name */
    public static final Modifier m230requiredSize3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new SizeElement(f, f, f, f, false));
    }

    /* renamed from: requiredSize-VpY3zN4, reason: not valid java name */
    public static final Modifier m231requiredSizeVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new SizeElement(f, f2, f, f2, false));
    }

    /* renamed from: requiredWidth-3ABfNKs, reason: not valid java name */
    public static final Modifier m233requiredWidth3ABfNKs() {
        float f = 8.0f;
        return new SizeElement(f, 0.0f, f, 0.0f, false, 10);
    }

    /* renamed from: size-3ABfNKs, reason: not valid java name */
    public static final Modifier m234size3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new SizeElement(f, f, f, f, true));
    }

    /* renamed from: size-VpY3zN4, reason: not valid java name */
    public static final Modifier m235sizeVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new SizeElement(f, f2, f, f2, true));
    }

    /* renamed from: sizeIn-qDBjuR0, reason: not valid java name */
    public static final Modifier m236sizeInqDBjuR0(Modifier modifier, float f, float f2, float f3, float f4) {
        return modifier.then(new SizeElement(f, f2, f3, f4, true));
    }

    /* renamed from: sizeIn-qDBjuR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m237sizeInqDBjuR0$default(Modifier modifier, float f, float f2, float f3, int i) {
        if ((i & 2) != 0) {
            f2 = Float.NaN;
        }
        return m236sizeInqDBjuR0(modifier, f, f2, f3, Float.NaN);
    }

    /* renamed from: width-3ABfNKs, reason: not valid java name */
    public static final Modifier m238width3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new SizeElement(f, 0.0f, f, 0.0f, true, 10));
    }

    /* renamed from: widthIn-VpY3zN4, reason: not valid java name */
    public static final Modifier m239widthInVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new SizeElement(f, 0.0f, f2, 0.0f, true, 10));
    }

    /* renamed from: widthIn-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m240widthInVpY3zN4$default(Modifier modifier, float f, float f2, int i) {
        if ((i & 1) != 0) {
            f = Float.NaN;
        }
        if ((i & 2) != 0) {
            f2 = Float.NaN;
        }
        return m239widthInVpY3zN4(modifier, f, f2);
    }

    public static Modifier wrapContentHeight$default(Modifier modifier) {
        WrapContentElement wrapContentElement;
        BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
        if (Intrinsics.areEqual(vertical, vertical)) {
            wrapContentElement = WrapContentHeightCenter;
        } else if (Intrinsics.areEqual(vertical, Alignment.Companion.Top)) {
            wrapContentElement = WrapContentHeightTop;
        } else {
            wrapContentElement = new WrapContentElement(Direction.Vertical, new ComposerKt$$ExternalSyntheticLambda0(3, vertical), vertical);
        }
        return modifier.then(wrapContentElement);
    }

    public static Modifier wrapContentSize$default(Modifier modifier, int i) {
        WrapContentElement wrapContentElement;
        BiasAlignment biasAlignment = Alignment.Companion.Center;
        if (biasAlignment.equals(biasAlignment)) {
            wrapContentElement = WrapContentSizeCenter;
        } else if (biasAlignment.equals(Alignment.Companion.TopStart)) {
            wrapContentElement = WrapContentSizeTopStart;
        } else {
            wrapContentElement = new WrapContentElement(Direction.Both, new ComposerKt$$ExternalSyntheticLambda0(4, biasAlignment), biasAlignment);
        }
        return modifier.then(wrapContentElement);
    }
}
