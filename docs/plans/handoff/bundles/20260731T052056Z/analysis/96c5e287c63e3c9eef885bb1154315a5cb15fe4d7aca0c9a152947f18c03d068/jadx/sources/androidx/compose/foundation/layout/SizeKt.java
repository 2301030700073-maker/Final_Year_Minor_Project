package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SizeKt {
    public static final FillElement FillWholeMaxHeight;
    public static final FillElement FillWholeMaxSize;
    public static final FillElement FillWholeMaxWidth;
    public static final WrapContentElement WrapContentHeightCenter;
    public static final WrapContentElement WrapContentHeightTop;
    public static final WrapContentElement WrapContentSizeCenter;
    public static final WrapContentElement WrapContentSizeTopStart;
    public static final WrapContentElement WrapContentWidthCenter;
    public static final WrapContentElement WrapContentWidthStart;

    static {
        Direction direction = Direction.Horizontal;
        FillWholeMaxWidth = new FillElement(direction, 1.0f);
        Direction direction2 = Direction.Vertical;
        FillWholeMaxHeight = new FillElement(direction2, 1.0f);
        Direction direction3 = Direction.Both;
        FillWholeMaxSize = new FillElement(direction3, 1.0f);
        BiasAlignment.Horizontal horizontal = Alignment.Companion.CenterHorizontally;
        int i = 2;
        WrapContentWidthCenter = new WrapContentElement(direction, new HintHandler$$ExternalSyntheticLambda0(i, horizontal), horizontal);
        BiasAlignment.Horizontal horizontal2 = Alignment.Companion.Start;
        WrapContentWidthStart = new WrapContentElement(direction, new HintHandler$$ExternalSyntheticLambda0(i, horizontal2), horizontal2);
        BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
        int i2 = 3;
        WrapContentHeightCenter = new WrapContentElement(direction2, new HintHandler$$ExternalSyntheticLambda0(i2, vertical), vertical);
        BiasAlignment.Vertical vertical2 = Alignment.Companion.Top;
        WrapContentHeightTop = new WrapContentElement(direction2, new HintHandler$$ExternalSyntheticLambda0(i2, vertical2), vertical2);
        BiasAlignment biasAlignment = Alignment.Companion.Center;
        int i3 = 4;
        WrapContentSizeCenter = new WrapContentElement(direction3, new HintHandler$$ExternalSyntheticLambda0(i3, biasAlignment), biasAlignment);
        BiasAlignment biasAlignment2 = Alignment.Companion.TopStart;
        WrapContentSizeTopStart = new WrapContentElement(direction3, new HintHandler$$ExternalSyntheticLambda0(i3, biasAlignment2), biasAlignment2);
    }

    /* renamed from: defaultMinSize-VpY3zN4, reason: not valid java name */
    public static final Modifier m138defaultMinSizeVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new UnspecifiedConstraintsElement(f, f2));
    }

    /* renamed from: defaultMinSize-VpY3zN4$default, reason: not valid java name */
    public static Modifier m139defaultMinSizeVpY3zN4$default(float f, float f2, int i) {
        if ((i & 1) != 0) {
            f = Float.NaN;
        }
        if ((i & 2) != 0) {
            f2 = Float.NaN;
        }
        return new UnspecifiedConstraintsElement(f, f2);
    }

    public static final Modifier fillMaxHeight(Modifier modifier, float f) {
        return modifier.then(f == 1.0f ? FillWholeMaxHeight : new FillElement(Direction.Vertical, f));
    }

    public static final Modifier fillMaxWidth(Modifier modifier, float f) {
        return modifier.then(f == 1.0f ? FillWholeMaxWidth : new FillElement(Direction.Horizontal, f));
    }

    /* renamed from: height-3ABfNKs, reason: not valid java name */
    public static final Modifier m140height3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new SizeElement(RecyclerView.DECELERATION_RATE, f, RecyclerView.DECELERATION_RATE, f, 5));
    }

    /* renamed from: requiredSize-3ABfNKs, reason: not valid java name */
    public static final Modifier m142requiredSize3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new SizeElement(f, f, f, f, false));
    }

    /* renamed from: requiredSize-VpY3zN4, reason: not valid java name */
    public static final Modifier m143requiredSizeVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new SizeElement(f, f2, f, f2, false));
    }

    /* renamed from: size-3ABfNKs, reason: not valid java name */
    public static final Modifier m145size3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new SizeElement(f, f, f, f, true));
    }

    /* renamed from: size-VpY3zN4, reason: not valid java name */
    public static final Modifier m146sizeVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new SizeElement(f, f2, f, f2, true));
    }

    /* renamed from: sizeIn-qDBjuR0, reason: not valid java name */
    public static final Modifier m147sizeInqDBjuR0(Modifier modifier, float f, float f2, float f3, float f4) {
        return modifier.then(new SizeElement(f, f2, f3, f4, true));
    }

    /* renamed from: sizeIn-qDBjuR0$default, reason: not valid java name */
    public static Modifier m148sizeInqDBjuR0$default(Modifier modifier, float f, float f2, float f3, int i) {
        if ((i & 2) != 0) {
            f2 = Float.NaN;
        }
        return m147sizeInqDBjuR0(modifier, f, f2, f3, Float.NaN);
    }

    /* renamed from: width-3ABfNKs, reason: not valid java name */
    public static final Modifier m149width3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new SizeElement(f, RecyclerView.DECELERATION_RATE, f, RecyclerView.DECELERATION_RATE, 10));
    }

    public static Modifier wrapContentHeight$default(Modifier modifier, int i) {
        BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
        return modifier.then(vertical.equals(vertical) ? WrapContentHeightCenter : vertical.equals(Alignment.Companion.Top) ? WrapContentHeightTop : new WrapContentElement(Direction.Vertical, new HintHandler$$ExternalSyntheticLambda0(3, vertical), vertical));
    }

    public static Modifier wrapContentSize$default(Modifier modifier) {
        BiasAlignment biasAlignment = Alignment.Companion.Center;
        return modifier.then(biasAlignment.equals(biasAlignment) ? WrapContentSizeCenter : biasAlignment.equals(Alignment.Companion.TopStart) ? WrapContentSizeTopStart : new WrapContentElement(Direction.Both, new HintHandler$$ExternalSyntheticLambda0(4, biasAlignment), biasAlignment));
    }

    public static Modifier wrapContentWidth$default(Modifier modifier, BiasAlignment.Horizontal horizontal, int i) {
        BiasAlignment.Horizontal horizontal2 = Alignment.Companion.CenterHorizontally;
        if ((i & 1) != 0) {
            horizontal = horizontal2;
        }
        return modifier.then(horizontal.equals(horizontal2) ? WrapContentWidthCenter : horizontal.equals(Alignment.Companion.Start) ? WrapContentWidthStart : new WrapContentElement(Direction.Horizontal, new HintHandler$$ExternalSyntheticLambda0(2, horizontal), horizontal));
    }
}
