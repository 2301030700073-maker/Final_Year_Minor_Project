package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzgch extends zzgcj {
    public static zzgcf zza(Iterable iterable) {
        return new zzgcf(false, zzfxn.zzk(iterable), null);
    }

    public static zzgcf zzb(Iterable iterable) {
        return new zzgcf(true, zzfxn.zzk(iterable), null);
    }

    @SafeVarargs
    public static zzgcf zzc(InterfaceFutureC3942wq... interfaceFutureC3942wqArr) {
        return new zzgcf(true, zzfxn.zzm(interfaceFutureC3942wqArr), null);
    }

    public static InterfaceFutureC3942wq zzd(Iterable iterable) {
        return new zzgbp(zzfxn.zzk(iterable), true);
    }

    public static InterfaceFutureC3942wq zze(InterfaceFutureC3942wq interfaceFutureC3942wq, Class cls, zzfuc zzfucVar, Executor executor) {
        zzgav zzgavVar = new zzgav(interfaceFutureC3942wq, cls, zzfucVar);
        interfaceFutureC3942wq.addListener(zzgavVar, zzgcz.zzd(executor, zzgavVar));
        return zzgavVar;
    }

    public static InterfaceFutureC3942wq zzf(InterfaceFutureC3942wq interfaceFutureC3942wq, Class cls, zzgbo zzgboVar, Executor executor) {
        zzgau zzgauVar = new zzgau(interfaceFutureC3942wq, cls, zzgboVar);
        interfaceFutureC3942wq.addListener(zzgauVar, zzgcz.zzd(executor, zzgauVar));
        return zzgauVar;
    }

    public static InterfaceFutureC3942wq zzg(Throwable th) {
        th.getClass();
        return new zzgck(th);
    }

    public static InterfaceFutureC3942wq zzh(Object obj) {
        return obj == null ? zzgcl.zza : new zzgcl(obj);
    }

    public static InterfaceFutureC3942wq zzi() {
        return zzgcl.zza;
    }

    public static InterfaceFutureC3942wq zzj(Callable callable, Executor executor) {
        zzgdi zzgdiVar = new zzgdi(callable);
        executor.execute(zzgdiVar);
        return zzgdiVar;
    }

    public static InterfaceFutureC3942wq zzk(zzgbn zzgbnVar, Executor executor) {
        zzgdi zzgdiVar = new zzgdi(zzgbnVar);
        executor.execute(zzgdiVar);
        return zzgdiVar;
    }

    @SafeVarargs
    public static InterfaceFutureC3942wq zzl(InterfaceFutureC3942wq... interfaceFutureC3942wqArr) {
        return new zzgbp(zzfxn.zzm(interfaceFutureC3942wqArr), false);
    }

    public static InterfaceFutureC3942wq zzm(InterfaceFutureC3942wq interfaceFutureC3942wq, zzfuc zzfucVar, Executor executor) {
        zzgbd zzgbdVar = new zzgbd(interfaceFutureC3942wq, zzfucVar);
        interfaceFutureC3942wq.addListener(zzgbdVar, zzgcz.zzd(executor, zzgbdVar));
        return zzgbdVar;
    }

    public static InterfaceFutureC3942wq zzn(InterfaceFutureC3942wq interfaceFutureC3942wq, zzgbo zzgboVar, Executor executor) {
        int i = zzgbe.zzc;
        executor.getClass();
        zzgbc zzgbcVar = new zzgbc(interfaceFutureC3942wq, zzgboVar);
        interfaceFutureC3942wq.addListener(zzgbcVar, zzgcz.zzd(executor, zzgbcVar));
        return zzgbcVar;
    }

    public static InterfaceFutureC3942wq zzo(InterfaceFutureC3942wq interfaceFutureC3942wq, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return interfaceFutureC3942wq.isDone() ? interfaceFutureC3942wq : zzgdf.zzf(interfaceFutureC3942wq, j, timeUnit, scheduledExecutorService);
    }

    public static Object zzp(Future future) {
        if (future.isDone()) {
            return zzgdk.zza(future);
        }
        throw new IllegalStateException(zzfve.zzb("Future was expected to be done: %s", future));
    }

    public static Object zzq(Future future) {
        try {
            return zzgdk.zza(future);
        } catch (ExecutionException e) {
            if (e.getCause() instanceof Error) {
                throw new zzgbw((Error) e.getCause());
            }
            throw new zzgdj(e.getCause());
        }
    }

    public static void zzr(InterfaceFutureC3942wq interfaceFutureC3942wq, zzgcd zzgcdVar, Executor executor) {
        zzgcdVar.getClass();
        interfaceFutureC3942wq.addListener(new zzgce(interfaceFutureC3942wq, zzgcdVar), executor);
    }
}
