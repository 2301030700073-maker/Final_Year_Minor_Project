package androidx.compose.foundation;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.gestures.DefaultScrollableState;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ScrollState implements ScrollableState {
    public static final CardView.AnonymousClass1 Saver = new CardView.AnonymousClass1(12, new SaversKt$$ExternalSyntheticLambda0(1), new BorderKt$$ExternalSyntheticLambda1(27));
    public float accumulator;
    public final DerivedSnapshotState canScrollBackward$delegate;
    public final DerivedSnapshotState canScrollForward$delegate;
    public final ParcelableSnapshotMutableIntState value$delegate;
    public final ParcelableSnapshotMutableIntState viewportSize$delegate = new ParcelableSnapshotMutableIntState(0);
    public final ParcelableSnapshotMutableIntState contentSize$delegate = new ParcelableSnapshotMutableIntState(0);
    public final MutableInteractionSourceImpl internalInteractionSource = new MutableInteractionSourceImpl();
    public final ParcelableSnapshotMutableIntState _maxValueState = new ParcelableSnapshotMutableIntState(Integer.MAX_VALUE);
    public final DefaultScrollableState scrollableState = new DefaultScrollableState(new AppBarKt$$ExternalSyntheticLambda11(4, this));

    public ScrollState(int i) {
        this.value$delegate = new ParcelableSnapshotMutableIntState(i);
        final int i2 = 0;
        this.canScrollForward$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0(this) { // from class: androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda1
            public final /* synthetic */ ScrollState f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                ScrollState scrollState = this.f$0;
                switch (i3) {
                    case 0:
                        return Boolean.valueOf(scrollState.value$delegate.getIntValue() < scrollState._maxValueState.getIntValue());
                    default:
                        return Boolean.valueOf(scrollState.value$delegate.getIntValue() > 0);
                }
            }
        });
        final int i3 = 1;
        this.canScrollBackward$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0(this) { // from class: androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda1
            public final /* synthetic */ ScrollState f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i32 = i3;
                ScrollState scrollState = this.f$0;
                switch (i32) {
                    case 0:
                        return Boolean.valueOf(scrollState.value$delegate.getIntValue() < scrollState._maxValueState.getIntValue());
                    default:
                        return Boolean.valueOf(scrollState.value$delegate.getIntValue() > 0);
                }
            }
        });
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float dispatchRawDelta(float f) {
        return this.scrollableState.dispatchRawDelta(f);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean getCanScrollBackward() {
        return ((Boolean) this.canScrollBackward$delegate.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean getCanScrollForward() {
        return ((Boolean) this.canScrollForward$delegate.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object scroll(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object scroll = this.scrollableState.scroll(mutatePriority, function2, continuation);
        return scroll == CoroutineSingletons.COROUTINE_SUSPENDED ? scroll : Unit.INSTANCE;
    }
}
