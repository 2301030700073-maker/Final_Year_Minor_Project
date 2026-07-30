package androidx.compose.material.ripple;

import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.DrawModifierNodeKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* compiled from: CommonRipple.kt */
/* loaded from: classes.dex */
public final class CommonRippleNode extends RippleNode {
    private final MutableScatterMap ripples;

    public /* synthetic */ CommonRippleNode(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(interactionSource, z, f, colorProducer, function0);
    }

    private CommonRippleNode(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer, Function0 function0) {
        super(interactionSource, z, f, colorProducer, function0, null);
        this.ripples = new MutableScatterMap(0, 1, null);
    }

    @Override // androidx.compose.material.ripple.RippleNode
    /* renamed from: addRipple-12SF9DM */
    public void mo584addRipple12SF9DM(PressInteraction.Press press, long j, float f) {
        MutableScatterMap mutableScatterMap = this.ripples;
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j2 = jArr[i];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j2) < 128) {
                            int i4 = (i << 3) + i3;
                            ((RippleAnimation) objArr2[i4]).finish();
                        }
                        j2 >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                } else {
                    i++;
                }
            }
        }
        RippleAnimation rippleAnimation = new RippleAnimation(getBounded() ? Offset.m1158boximpl(press.m247getPressPositionF1C5BW0()) : null, f, getBounded(), null);
        this.ripples.set(press, rippleAnimation);
        BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new CommonRippleNode$addRipple$2(rippleAnimation, this, press, null), 3, null);
        DrawModifierNodeKt.invalidateDraw(this);
    }

    @Override // androidx.compose.material.ripple.RippleNode
    public void removeRipple(PressInteraction.Press press) {
        RippleAnimation rippleAnimation = (RippleAnimation) this.ripples.get(press);
        if (rippleAnimation != null) {
            rippleAnimation.finish();
        }
    }

    @Override // androidx.compose.material.ripple.RippleNode
    public void drawRipples(DrawScope drawScope) {
        float f;
        float f2;
        int i;
        int i2;
        int i3;
        float pressedAlpha = ((RippleAlpha) getRippleAlpha().invoke()).getPressedAlpha();
        if (pressedAlpha == 0.0f) {
            return;
        }
        MutableScatterMap mutableScatterMap = this.ripples;
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            long j = jArr[i4];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i5 = 8;
                int i6 = 8 - ((~(i4 - length)) >>> 31);
                long j2 = j;
                int i7 = 0;
                while (i7 < i6) {
                    if ((j2 & 255) < 128) {
                        int i8 = (i4 << 3) + i7;
                        float f3 = pressedAlpha;
                        i = i7;
                        i2 = i6;
                        f2 = pressedAlpha;
                        i3 = i5;
                        ((RippleAnimation) objArr2[i8]).m588draw4WTKRHQ(drawScope, Color.m1302copywmQWz5c$default(m597getRippleColor0d7_KjU(), f3, 0.0f, 0.0f, 0.0f, 14, null));
                    } else {
                        f2 = pressedAlpha;
                        i = i7;
                        i2 = i6;
                        i3 = i5;
                    }
                    j2 >>= i3;
                    i7 = i + 1;
                    i5 = i3;
                    pressedAlpha = f2;
                    i6 = i2;
                }
                f = pressedAlpha;
                if (i6 != i5) {
                    return;
                }
            } else {
                f = pressedAlpha;
            }
            if (i4 == length) {
                return;
            }
            i4++;
            pressedAlpha = f;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.ripples.clear();
    }
}
