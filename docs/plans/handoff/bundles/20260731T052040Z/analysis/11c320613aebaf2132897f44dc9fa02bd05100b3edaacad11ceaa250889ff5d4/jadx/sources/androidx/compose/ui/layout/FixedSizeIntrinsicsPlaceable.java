package androidx.compose.ui.layout;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FixedSizeIntrinsicsPlaceable extends Placeable {
    public final /* synthetic */ int $r8$classId;

    public FixedSizeIntrinsicsPlaceable(int i, int i2, int i3) {
        this.$r8$classId = i3;
        switch (i3) {
            case 1:
                m303setMeasuredSizeozmzZPI((i2 & 4294967295L) | (i << 32));
                break;
            default:
                m303setMeasuredSizeozmzZPI((i2 & 4294967295L) | (i << 32));
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
    public final void mo295placeAtf8xVGno(long j, float f, Function1 function1) {
        int i = this.$r8$classId;
    }

    /* renamed from: placeAt-f8xVGno$androidx$compose$ui$layout$FixedSizeIntrinsicsPlaceable, reason: not valid java name */
    private final void m293xf00bb1d6(long j, float f, Function1 function1) {
    }

    /* renamed from: placeAt-f8xVGno$androidx$compose$ui$node$NodeMeasuringIntrinsics$EmptyPlaceable, reason: not valid java name */
    private final void m294x3c56d5b1(long j, float f, Function1 function1) {
    }
}
