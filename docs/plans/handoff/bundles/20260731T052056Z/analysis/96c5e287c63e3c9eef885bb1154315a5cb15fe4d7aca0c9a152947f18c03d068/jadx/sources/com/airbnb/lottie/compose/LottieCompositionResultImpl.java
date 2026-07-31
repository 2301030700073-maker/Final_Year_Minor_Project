package com.airbnb.lottie.compose;

import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import com.airbnb.lottie.LottieComposition;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CompletedExceptionally;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LottieCompositionResultImpl implements State {
    public final DerivedSnapshotState isComplete$delegate;
    public final DerivedSnapshotState isSuccess$delegate;
    public final CompletableDeferredImpl compositionDeferred = AwaitKt.CompletableDeferred$default();
    public final ParcelableSnapshotMutableState value$delegate = Updater.mutableStateOf$default(null);
    public final ParcelableSnapshotMutableState error$delegate = Updater.mutableStateOf$default(null);

    public LottieCompositionResultImpl() {
        final int i = 2;
        SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0(this) { // from class: com.airbnb.lottie.compose.LottieCompositionResultImpl$isFailure$2
            public final /* synthetic */ LottieCompositionResultImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                LottieCompositionResultImpl lottieCompositionResultImpl = this.this$0;
                switch (i2) {
                    case 0:
                        return Boolean.valueOf(((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) != null);
                    case 1:
                        return Boolean.valueOf((((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) == null && ((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) == null) ? false : true);
                    case 2:
                        if (((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) == null && ((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) == null) {
                            r1 = true;
                        }
                        return Boolean.valueOf(r1);
                    default:
                        return Boolean.valueOf(((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) != null);
                }
            }
        });
        final int i2 = 1;
        this.isComplete$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0(this) { // from class: com.airbnb.lottie.compose.LottieCompositionResultImpl$isFailure$2
            public final /* synthetic */ LottieCompositionResultImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                LottieCompositionResultImpl lottieCompositionResultImpl = this.this$0;
                switch (i22) {
                    case 0:
                        return Boolean.valueOf(((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) != null);
                    case 1:
                        return Boolean.valueOf((((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) == null && ((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) == null) ? false : true);
                    case 2:
                        if (((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) == null && ((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) == null) {
                            r1 = true;
                        }
                        return Boolean.valueOf(r1);
                    default:
                        return Boolean.valueOf(((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) != null);
                }
            }
        });
        final int i3 = 0;
        SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0(this) { // from class: com.airbnb.lottie.compose.LottieCompositionResultImpl$isFailure$2
            public final /* synthetic */ LottieCompositionResultImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                LottieCompositionResultImpl lottieCompositionResultImpl = this.this$0;
                switch (i22) {
                    case 0:
                        return Boolean.valueOf(((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) != null);
                    case 1:
                        return Boolean.valueOf((((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) == null && ((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) == null) ? false : true);
                    case 2:
                        if (((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) == null && ((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) == null) {
                            r1 = true;
                        }
                        return Boolean.valueOf(r1);
                    default:
                        return Boolean.valueOf(((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) != null);
                }
            }
        });
        final int i4 = 3;
        this.isSuccess$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0(this) { // from class: com.airbnb.lottie.compose.LottieCompositionResultImpl$isFailure$2
            public final /* synthetic */ LottieCompositionResultImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                LottieCompositionResultImpl lottieCompositionResultImpl = this.this$0;
                switch (i22) {
                    case 0:
                        return Boolean.valueOf(((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) != null);
                    case 1:
                        return Boolean.valueOf((((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) == null && ((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) == null) ? false : true);
                    case 2:
                        if (((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) == null && ((Throwable) lottieCompositionResultImpl.error$delegate.getValue()) == null) {
                            r1 = true;
                        }
                        return Boolean.valueOf(r1);
                    default:
                        return Boolean.valueOf(((LottieComposition) lottieCompositionResultImpl.value$delegate.getValue()) != null);
                }
            }
        });
    }

    public final synchronized void completeExceptionally$lottie_compose_release(Throwable th) {
        if (((Boolean) this.isComplete$delegate.getValue()).booleanValue()) {
            return;
        }
        this.error$delegate.setValue(th);
        CompletableDeferredImpl completableDeferredImpl = this.compositionDeferred;
        completableDeferredImpl.getClass();
        completableDeferredImpl.makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(th, false));
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return (LottieComposition) this.value$delegate.getValue();
    }
}
