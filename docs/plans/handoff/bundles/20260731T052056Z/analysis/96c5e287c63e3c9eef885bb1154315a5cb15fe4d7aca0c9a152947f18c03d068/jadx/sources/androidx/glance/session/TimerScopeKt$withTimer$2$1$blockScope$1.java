package androidx.glance.session;

import androidx.paging.FlowExtKt$simpleScan$1;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TimerScopeKt$withTimer$2$1$blockScope$1 implements CoroutineScope {
    public final /* synthetic */ CoroutineScope $$delegate_0;
    public final /* synthetic */ Function2 $block;
    public final /* synthetic */ TimeSource$Companion$$ExternalSyntheticLambda0 $timeSource;
    public final /* synthetic */ AtomicReference $timerJob;
    public final /* synthetic */ CoroutineScope $timerScope;
    public final AtomicReference deadline = new AtomicReference(null);

    public TimerScopeKt$withTimer$2$1$blockScope$1(CoroutineScope coroutineScope, TimeSource$Companion$$ExternalSyntheticLambda0 timeSource$Companion$$ExternalSyntheticLambda0, CoroutineScope coroutineScope2, Function2 function2, AtomicReference atomicReference) {
        this.$timeSource = timeSource$Companion$$ExternalSyntheticLambda0;
        this.$timerScope = coroutineScope2;
        this.$block = function2;
        this.$timerJob = atomicReference;
        this.$$delegate_0 = coroutineScope;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    /* renamed from: getTimeLeft-UwyO8pc, reason: not valid java name */
    public final long m750getTimeLeftUwyO8pc() {
        Long l = (Long) this.deadline.get();
        if (l == null) {
            return Duration.INFINITE;
        }
        long longValue = l.longValue();
        this.$timeSource.getClass();
        long currentTimeMillis = longValue - System.currentTimeMillis();
        Path.Companion companion = Duration.Companion;
        return InstantKt.toDuration(currentTimeMillis, DurationUnit.MILLISECONDS);
    }

    /* renamed from: startTimer-LRDsOJo, reason: not valid java name */
    public final void m751startTimerLRDsOJo(long j) {
        if (Duration.m850getInWholeMillisecondsimpl(j) <= 0) {
            AwaitKt.cancel(this.$timerScope, new TimeoutCancellationException(this.$block.hashCode(), "Timed out immediately"));
            return;
        }
        if (Duration.m849compareToLRDsOJo(m750getTimeLeftUwyO8pc(), j) < 0) {
            return;
        }
        this.$timeSource.getClass();
        this.deadline.set(Long.valueOf(Duration.m850getInWholeMillisecondsimpl(j) + System.currentTimeMillis()));
        TimeSource$Companion$$ExternalSyntheticLambda0 timeSource$Companion$$ExternalSyntheticLambda0 = this.$timeSource;
        CoroutineScope coroutineScope = this.$timerScope;
        Job job = (Job) this.$timerJob.getAndSet(AwaitKt.launch$default(coroutineScope, null, null, new FlowExtKt$simpleScan$1(this, timeSource$Companion$$ExternalSyntheticLambda0, coroutineScope, this.$block, null, 15, false), 3));
        if (job != null) {
            job.cancel(null);
        }
    }
}
