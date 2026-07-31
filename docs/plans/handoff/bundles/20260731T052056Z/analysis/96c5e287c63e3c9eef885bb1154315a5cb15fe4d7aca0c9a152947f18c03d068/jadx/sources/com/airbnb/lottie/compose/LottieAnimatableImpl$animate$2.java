package com.airbnb.lottie.compose;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import coil3.network.HttpException;
import com.airbnb.lottie.LottieComposition;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.NonCancellable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.WikipediaApp$logOut$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LottieAnimatableImpl$animate$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ LottieCancellationBehavior $cancellationBehavior;
    public final /* synthetic */ LottieComposition $composition;
    public final /* synthetic */ float $initialProgress;
    public final /* synthetic */ int $iteration;
    public final /* synthetic */ float $speed;
    public int label;
    public final /* synthetic */ LottieAnimatableImpl this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LottieCancellationBehavior.values().length];
            try {
                iArr[LottieCancellationBehavior.OnIterationFinish.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LottieCancellationBehavior.Immediately.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LottieAnimatableImpl$animate$2(LottieAnimatableImpl lottieAnimatableImpl, int i, float f, LottieComposition lottieComposition, float f2, LottieCancellationBehavior lottieCancellationBehavior, Continuation continuation) {
        super(1, continuation);
        this.this$0 = lottieAnimatableImpl;
        this.$iteration = i;
        this.$speed = f;
        this.$composition = lottieComposition;
        this.$initialProgress = f2;
        this.$cancellationBehavior = lottieCancellationBehavior;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        float f = this.$initialProgress;
        LottieCancellationBehavior lottieCancellationBehavior = this.$cancellationBehavior;
        return new LottieAnimatableImpl$animate$2(this.this$0, this.$iteration, this.$speed, this.$composition, f, lottieCancellationBehavior, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineContext coroutineContext;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        CoroutineContext coroutineContext2 = this._context;
        Unit unit = Unit.INSTANCE;
        LottieAnimatableImpl lottieAnimatableImpl = this.this$0;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                lottieAnimatableImpl.setIteration(this.$iteration);
                lottieAnimatableImpl.iterations$delegate.setValue(Integer.MAX_VALUE);
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = lottieAnimatableImpl.reverseOnRepeat$delegate;
                Boolean bool = Boolean.FALSE;
                parcelableSnapshotMutableState.setValue(bool);
                ParcelableSnapshotMutableState parcelableSnapshotMutableState2 = lottieAnimatableImpl.speed$delegate;
                float f = this.$speed;
                parcelableSnapshotMutableState2.setValue(Float.valueOf(f));
                lottieAnimatableImpl.clipSpec$delegate.setValue(null);
                ParcelableSnapshotMutableState parcelableSnapshotMutableState3 = lottieAnimatableImpl.composition$delegate;
                LottieComposition lottieComposition = this.$composition;
                parcelableSnapshotMutableState3.setValue(lottieComposition);
                lottieAnimatableImpl.updateProgress(this.$initialProgress);
                lottieAnimatableImpl.useCompositionFrameRate$delegate.setValue(bool);
                lottieAnimatableImpl.lastFrameNanos$delegate.setValue(Long.MIN_VALUE);
                if (lottieComposition == null) {
                    lottieAnimatableImpl.setPlaying(false);
                    return unit;
                }
                if (Float.isInfinite(f)) {
                    lottieAnimatableImpl.updateProgress(((Number) lottieAnimatableImpl.endProgress$delegate.getValue()).floatValue());
                    lottieAnimatableImpl.setPlaying(false);
                    lottieAnimatableImpl.setIteration(Integer.MAX_VALUE);
                    return unit;
                }
                lottieAnimatableImpl.setPlaying(true);
                int i2 = WhenMappings.$EnumSwitchMapping$0[this.$cancellationBehavior.ordinal()];
                if (i2 == 1) {
                    coroutineContext = NonCancellable.INSTANCE;
                } else {
                    if (i2 != 2) {
                        throw new HttpException();
                    }
                    coroutineContext = EmptyCoroutineContext.INSTANCE;
                }
                coroutineContext2.getClass();
                WikipediaApp$logOut$2 wikipediaApp$logOut$2 = new WikipediaApp$logOut$2(this.$cancellationBehavior, AwaitKt.getJob(coroutineContext2), this.$iteration, this.this$0, (Continuation) null);
                this.label = 1;
                if (AwaitKt.withContext(coroutineContext, wikipediaApp$logOut$2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            coroutineContext2.getClass();
            AwaitKt.ensureActive(coroutineContext2);
            lottieAnimatableImpl.setPlaying(false);
            return unit;
        } catch (Throwable th) {
            lottieAnimatableImpl.setPlaying(false);
            throw th;
        }
    }
}
