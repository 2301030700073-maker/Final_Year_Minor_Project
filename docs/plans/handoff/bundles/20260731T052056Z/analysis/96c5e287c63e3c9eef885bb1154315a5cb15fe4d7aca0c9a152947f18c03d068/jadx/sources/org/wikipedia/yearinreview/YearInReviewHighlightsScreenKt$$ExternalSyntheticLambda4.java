package org.wikipedia.yearinreview;

import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.ScrollState;
import androidx.compose.runtime.ParcelableSnapshotMutableLongState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ float f$1;

    public /* synthetic */ YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4(Object obj, float f, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = f;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        float f = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((Density) obj).getClass();
                return new IntOffset(((int) (((ScrollState) obj2).viewportSize$delegate.getIntValue() * f)) & 4294967295L);
            default:
                Transition transition = (Transition) obj2;
                long longValue = ((Long) obj).longValue();
                boolean isSeeking = transition.isSeeking();
                ParcelableSnapshotMutableLongState parcelableSnapshotMutableLongState = transition.startTimeNanos$delegate;
                if (!isSeeking) {
                    if (parcelableSnapshotMutableLongState.getLongValue() == Long.MIN_VALUE) {
                        parcelableSnapshotMutableLongState.setLongValue(longValue);
                        ((ParcelableSnapshotMutableState) transition.transitionState.fragment).setValue(Boolean.TRUE);
                    }
                    long longValue2 = longValue - parcelableSnapshotMutableLongState.getLongValue();
                    if (f != RecyclerView.DECELERATION_RATE) {
                        longValue2 = UnsignedKt.roundToLong(longValue2 / f);
                    }
                    transition.setPlayTimeNanos(longValue2);
                    transition.onFrame$animation_core(longValue2, f == RecyclerView.DECELERATION_RATE);
                }
                return Unit.INSTANCE;
        }
    }
}
