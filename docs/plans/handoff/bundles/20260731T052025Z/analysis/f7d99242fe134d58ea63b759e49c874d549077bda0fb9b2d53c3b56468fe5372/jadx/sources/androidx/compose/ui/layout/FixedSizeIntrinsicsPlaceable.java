package androidx.compose.ui.layout;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FixedSizeIntrinsicsPlaceable extends Placeable {
    public final /* synthetic */ int $r8$classId;

    public FixedSizeIntrinsicsPlaceable(int i, int i2, int i3) {
        this.$r8$classId = i3;
        switch (i3) {
            case 1:
                m590setMeasuredSizeozmzZPI((i2 & 4294967295L) | (i << 32));
                break;
            case 2:
                m590setMeasuredSizeozmzZPI((i2 & 4294967295L) | (i << 32));
                break;
            default:
                m590setMeasuredSizeozmzZPI((i2 & 4294967295L) | (i << 32));
                break;
        }
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int get(AlignmentLine alignmentLine) {
        switch (this.$r8$classId) {
        }
        return Integer.MIN_VALUE;
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno, reason: not valid java name */
    public final void mo575placeAtf8xVGno(long j, float f, Function1 function1) {
        int i = this.$r8$classId;
    }

    /* renamed from: placeAt-f8xVGno$androidx$compose$ui$layout$FixedSizeIntrinsicsPlaceable, reason: not valid java name */
    private final void m572xf00bb1d6(long j, float f, Function1 function1) {
    }

    /* renamed from: placeAt-f8xVGno$androidx$compose$ui$layout$MeasuringIntrinsics$EmptyPlaceable, reason: not valid java name */
    private final void m573xa65dbe67(long j, float f, Function1 function1) {
    }

    /* renamed from: placeAt-f8xVGno$androidx$compose$ui$node$NodeMeasuringIntrinsics$EmptyPlaceable, reason: not valid java name */
    private final void m574x3c56d5b1(long j, float f, Function1 function1) {
    }
}
