package com.airbnb.lottie.compose;

import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.airbnb.lottie.LottieComposition;
import kotlin.jvm.functions.Function0;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LottieAnimatableImpl implements State {
    public final ParcelableSnapshotMutableState clipSpec$delegate;
    public final ParcelableSnapshotMutableState composition$delegate;
    public final DerivedSnapshotState endProgress$delegate;
    public final DerivedSnapshotState frameSpeed$delegate;
    public final ParcelableSnapshotMutableState isPlaying$delegate;
    public final ParcelableSnapshotMutableState iteration$delegate;
    public final ParcelableSnapshotMutableState iterations$delegate;
    public final ParcelableSnapshotMutableState lastFrameNanos$delegate;
    public final MutatorMutex mutex;
    public final ParcelableSnapshotMutableState progress$delegate;
    public final ParcelableSnapshotMutableState progressRaw$delegate;
    public final ParcelableSnapshotMutableState reverseOnRepeat$delegate;
    public final ParcelableSnapshotMutableState speed$delegate;
    public final ParcelableSnapshotMutableState useCompositionFrameRate$delegate;

    public LottieAnimatableImpl() {
        Boolean bool = Boolean.FALSE;
        this.isPlaying$delegate = Updater.mutableStateOf$default(bool);
        final int i = 1;
        this.iteration$delegate = Updater.mutableStateOf$default(1);
        this.iterations$delegate = Updater.mutableStateOf$default(1);
        this.reverseOnRepeat$delegate = Updater.mutableStateOf$default(bool);
        this.clipSpec$delegate = Updater.mutableStateOf$default(null);
        this.speed$delegate = Updater.mutableStateOf$default(Float.valueOf(1.0f));
        this.useCompositionFrameRate$delegate = Updater.mutableStateOf$default(bool);
        final int i2 = 2;
        this.frameSpeed$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0(this) { // from class: com.airbnb.lottie.compose.LottieAnimatableImpl$isAtEnd$2
            public final /* synthetic */ LottieAnimatableImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                LottieAnimatableImpl lottieAnimatableImpl = this.this$0;
                switch (i3) {
                    case 0:
                        return Boolean.valueOf(lottieAnimatableImpl.getIteration() == ((Number) lottieAnimatableImpl.iterations$delegate.getValue()).intValue() && ((Number) lottieAnimatableImpl.progress$delegate.getValue()).floatValue() == ((Number) lottieAnimatableImpl.endProgress$delegate.getValue()).floatValue());
                    case 1:
                        LottieComposition lottieComposition = (LottieComposition) lottieAnimatableImpl.composition$delegate.getValue();
                        float f = RecyclerView.DECELERATION_RATE;
                        if (lottieComposition != null) {
                            float floatValue = ((Number) lottieAnimatableImpl.speed$delegate.getValue()).floatValue();
                            ParcelableSnapshotMutableState parcelableSnapshotMutableState = lottieAnimatableImpl.clipSpec$delegate;
                            if (floatValue < RecyclerView.DECELERATION_RATE) {
                                if (parcelableSnapshotMutableState.getValue() != null) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                                    return null;
                                }
                            } else {
                                if (parcelableSnapshotMutableState.getValue() != null) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                                    return null;
                                }
                                f = 1.0f;
                            }
                        }
                        return Float.valueOf(f);
                    default:
                        ParcelableSnapshotMutableState parcelableSnapshotMutableState2 = lottieAnimatableImpl.speed$delegate;
                        return Float.valueOf((((Boolean) lottieAnimatableImpl.reverseOnRepeat$delegate.getValue()).booleanValue() && lottieAnimatableImpl.getIteration() % 2 == 0) ? -((Number) parcelableSnapshotMutableState2.getValue()).floatValue() : ((Number) parcelableSnapshotMutableState2.getValue()).floatValue());
                }
            }
        });
        this.composition$delegate = Updater.mutableStateOf$default(null);
        Float valueOf = Float.valueOf(RecyclerView.DECELERATION_RATE);
        this.progressRaw$delegate = Updater.mutableStateOf$default(valueOf);
        this.progress$delegate = Updater.mutableStateOf$default(valueOf);
        this.lastFrameNanos$delegate = Updater.mutableStateOf$default(Long.MIN_VALUE);
        this.endProgress$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0(this) { // from class: com.airbnb.lottie.compose.LottieAnimatableImpl$isAtEnd$2
            public final /* synthetic */ LottieAnimatableImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i;
                LottieAnimatableImpl lottieAnimatableImpl = this.this$0;
                switch (i3) {
                    case 0:
                        return Boolean.valueOf(lottieAnimatableImpl.getIteration() == ((Number) lottieAnimatableImpl.iterations$delegate.getValue()).intValue() && ((Number) lottieAnimatableImpl.progress$delegate.getValue()).floatValue() == ((Number) lottieAnimatableImpl.endProgress$delegate.getValue()).floatValue());
                    case 1:
                        LottieComposition lottieComposition = (LottieComposition) lottieAnimatableImpl.composition$delegate.getValue();
                        float f = RecyclerView.DECELERATION_RATE;
                        if (lottieComposition != null) {
                            float floatValue = ((Number) lottieAnimatableImpl.speed$delegate.getValue()).floatValue();
                            ParcelableSnapshotMutableState parcelableSnapshotMutableState = lottieAnimatableImpl.clipSpec$delegate;
                            if (floatValue < RecyclerView.DECELERATION_RATE) {
                                if (parcelableSnapshotMutableState.getValue() != null) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                                    return null;
                                }
                            } else {
                                if (parcelableSnapshotMutableState.getValue() != null) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                                    return null;
                                }
                                f = 1.0f;
                            }
                        }
                        return Float.valueOf(f);
                    default:
                        ParcelableSnapshotMutableState parcelableSnapshotMutableState2 = lottieAnimatableImpl.speed$delegate;
                        return Float.valueOf((((Boolean) lottieAnimatableImpl.reverseOnRepeat$delegate.getValue()).booleanValue() && lottieAnimatableImpl.getIteration() % 2 == 0) ? -((Number) parcelableSnapshotMutableState2.getValue()).floatValue() : ((Number) parcelableSnapshotMutableState2.getValue()).floatValue());
                }
            }
        });
        final int i3 = 0;
        SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0(this) { // from class: com.airbnb.lottie.compose.LottieAnimatableImpl$isAtEnd$2
            public final /* synthetic */ LottieAnimatableImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i32 = i3;
                LottieAnimatableImpl lottieAnimatableImpl = this.this$0;
                switch (i32) {
                    case 0:
                        return Boolean.valueOf(lottieAnimatableImpl.getIteration() == ((Number) lottieAnimatableImpl.iterations$delegate.getValue()).intValue() && ((Number) lottieAnimatableImpl.progress$delegate.getValue()).floatValue() == ((Number) lottieAnimatableImpl.endProgress$delegate.getValue()).floatValue());
                    case 1:
                        LottieComposition lottieComposition = (LottieComposition) lottieAnimatableImpl.composition$delegate.getValue();
                        float f = RecyclerView.DECELERATION_RATE;
                        if (lottieComposition != null) {
                            float floatValue = ((Number) lottieAnimatableImpl.speed$delegate.getValue()).floatValue();
                            ParcelableSnapshotMutableState parcelableSnapshotMutableState = lottieAnimatableImpl.clipSpec$delegate;
                            if (floatValue < RecyclerView.DECELERATION_RATE) {
                                if (parcelableSnapshotMutableState.getValue() != null) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                                    return null;
                                }
                            } else {
                                if (parcelableSnapshotMutableState.getValue() != null) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                                    return null;
                                }
                                f = 1.0f;
                            }
                        }
                        return Float.valueOf(f);
                    default:
                        ParcelableSnapshotMutableState parcelableSnapshotMutableState2 = lottieAnimatableImpl.speed$delegate;
                        return Float.valueOf((((Boolean) lottieAnimatableImpl.reverseOnRepeat$delegate.getValue()).booleanValue() && lottieAnimatableImpl.getIteration() % 2 == 0) ? -((Number) parcelableSnapshotMutableState2.getValue()).floatValue() : ((Number) parcelableSnapshotMutableState2.getValue()).floatValue());
                }
            }
        });
        this.mutex = new MutatorMutex();
    }

    public final int getIteration() {
        return ((Number) this.iteration$delegate.getValue()).intValue();
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return Float.valueOf(((Number) this.progress$delegate.getValue()).floatValue());
    }

    public final boolean onFrame(long j, int i) {
        LottieComposition lottieComposition = (LottieComposition) this.composition$delegate.getValue();
        if (lottieComposition == null) {
            return true;
        }
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = this.lastFrameNanos$delegate;
        long longValue = ((Number) parcelableSnapshotMutableState.getValue()).longValue() == Long.MIN_VALUE ? 0L : j - ((Number) parcelableSnapshotMutableState.getValue()).longValue();
        parcelableSnapshotMutableState.setValue(Long.valueOf(j));
        ParcelableSnapshotMutableState parcelableSnapshotMutableState2 = this.clipSpec$delegate;
        if (parcelableSnapshotMutableState2.getValue() != null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return false;
        }
        if (parcelableSnapshotMutableState2.getValue() != null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return false;
        }
        float duration = (longValue / 1000000) / lottieComposition.getDuration();
        DerivedSnapshotState derivedSnapshotState = this.frameSpeed$delegate;
        float floatValue = ((Number) derivedSnapshotState.getValue()).floatValue() * duration;
        float floatValue2 = ((Number) derivedSnapshotState.getValue()).floatValue();
        ParcelableSnapshotMutableState parcelableSnapshotMutableState3 = this.progressRaw$delegate;
        float floatValue3 = floatValue2 < RecyclerView.DECELERATION_RATE ? RecyclerView.DECELERATION_RATE - (((Number) parcelableSnapshotMutableState3.getValue()).floatValue() + floatValue) : (((Number) parcelableSnapshotMutableState3.getValue()).floatValue() + floatValue) - 1.0f;
        if (floatValue3 < RecyclerView.DECELERATION_RATE) {
            updateProgress(RegexKt.coerceIn(((Number) parcelableSnapshotMutableState3.getValue()).floatValue(), RecyclerView.DECELERATION_RATE, 1.0f) + floatValue);
            return true;
        }
        int i2 = (int) (floatValue3 / 1.0f);
        int i3 = i2 + 1;
        if (getIteration() + i3 > i) {
            updateProgress(((Number) this.endProgress$delegate.getValue()).floatValue());
            setIteration(i);
            return false;
        }
        setIteration(getIteration() + i3);
        float f = floatValue3 - (i2 * 1.0f);
        updateProgress(((Number) derivedSnapshotState.getValue()).floatValue() < RecyclerView.DECELERATION_RATE ? 1.0f - f : RecyclerView.DECELERATION_RATE + f);
        return true;
    }

    public final void setIteration(int i) {
        this.iteration$delegate.setValue(Integer.valueOf(i));
    }

    public final void setPlaying(boolean z) {
        this.isPlaying$delegate.setValue(Boolean.valueOf(z));
    }

    public final void updateProgress(float f) {
        LottieComposition lottieComposition;
        this.progressRaw$delegate.setValue(Float.valueOf(f));
        if (((Boolean) this.useCompositionFrameRate$delegate.getValue()).booleanValue() && (lottieComposition = (LottieComposition) this.composition$delegate.getValue()) != null) {
            f -= f % (1.0f / lottieComposition.frameRate);
        }
        this.progress$delegate.setValue(Float.valueOf(f));
    }
}
