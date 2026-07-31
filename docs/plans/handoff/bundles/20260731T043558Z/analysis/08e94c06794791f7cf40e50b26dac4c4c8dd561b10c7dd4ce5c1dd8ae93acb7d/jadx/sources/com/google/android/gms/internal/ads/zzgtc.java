package com.google.android.gms.internal.ads;

import androidx.concurrent.futures.AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;
import com.google.android.gms.internal.ads.zzgtb;
import com.google.common.util.concurrent.ListenableFuture;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import sun.misc.Unsafe;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
abstract class zzgtc<V> extends zzgvk implements ListenableFuture<V> {
    private static final zza zzbi;
    static final Object zze = new Object();
    static final zzguq zzf = new zzguq(zzgtb.class);
    static final boolean zzg;
    volatile zzgtb.zzd listenersField;
    volatile Object valueField;
    volatile zze waitersField;

    /* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
    abstract class zza {
        /* synthetic */ zza(byte[] bArr) {
        }

        abstract void zza(zze zzeVar, Thread thread);

        abstract void zzb(zze zzeVar, zze zzeVar2);

        abstract boolean zzc(zzgtc zzgtcVar, zze zzeVar, zze zzeVar2);

        abstract boolean zzd(zzgtc zzgtcVar, zzgtb.zzd zzdVar, zzgtb.zzd zzdVar2);

        abstract zze zze(zzgtc zzgtcVar, zze zzeVar);

        abstract zzgtb.zzd zzf(zzgtc zzgtcVar, zzgtb.zzd zzdVar);

        abstract boolean zzg(zzgtc zzgtcVar, Object obj, Object obj2);
    }

    /* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
    final class zzb extends zza {
        private static final AtomicReferenceFieldUpdater<zze, Thread> zza = AtomicReferenceFieldUpdater.newUpdater(zze.class, Thread.class, "thread");
        private static final AtomicReferenceFieldUpdater<zze, zze> zzb = AtomicReferenceFieldUpdater.newUpdater(zze.class, zze.class, "next");
        private static final AtomicReferenceFieldUpdater<? super zzgtc<?>, zze> zzc = AtomicReferenceFieldUpdater.newUpdater(zzgtc.class, zze.class, "waitersField");
        private static final AtomicReferenceFieldUpdater<? super zzgtc<?>, zzgtb.zzd> zzd = AtomicReferenceFieldUpdater.newUpdater(zzgtc.class, zzgtb.zzd.class, "listenersField");
        private static final AtomicReferenceFieldUpdater<? super zzgtc<?>, Object> zze = AtomicReferenceFieldUpdater.newUpdater(zzgtc.class, Object.class, "valueField");

        private zzb() {
            throw null;
        }

        /* synthetic */ zzb(byte[] bArr) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final void zza(zze zzeVar, Thread thread) {
            zza.lazySet(zzeVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final void zzb(zze zzeVar, zze zzeVar2) {
            zzb.lazySet(zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final boolean zzc(zzgtc zzgtcVar, zze zzeVar, zze zzeVar2) {
            return AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(zzc, zzgtcVar, zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final boolean zzd(zzgtc zzgtcVar, zzgtb.zzd zzdVar, zzgtb.zzd zzdVar2) {
            return AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(zzd, zzgtcVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final zze zze(zzgtc zzgtcVar, zze zzeVar) {
            return zzc.getAndSet(zzgtcVar, zzeVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final zzgtb.zzd zzf(zzgtc zzgtcVar, zzgtb.zzd zzdVar) {
            return zzd.getAndSet(zzgtcVar, zzdVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final boolean zzg(zzgtc zzgtcVar, Object obj, Object obj2) {
            return AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(zze, zzgtcVar, obj, obj2);
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
    final class zzc extends zza {
        private zzc() {
            throw null;
        }

        /* synthetic */ zzc(byte[] bArr) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final void zza(zze zzeVar, Thread thread) {
            zzeVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final void zzb(zze zzeVar, zze zzeVar2) {
            zzeVar.next = zzeVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final boolean zzc(zzgtc zzgtcVar, zze zzeVar, zze zzeVar2) {
            synchronized (zzgtcVar) {
                if (zzgtcVar.waitersField != zzeVar) {
                    return false;
                }
                zzgtcVar.waitersField = zzeVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final boolean zzd(zzgtc zzgtcVar, zzgtb.zzd zzdVar, zzgtb.zzd zzdVar2) {
            synchronized (zzgtcVar) {
                if (zzgtcVar.listenersField != zzdVar) {
                    return false;
                }
                zzgtcVar.listenersField = zzdVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final zze zze(zzgtc zzgtcVar, zze zzeVar) {
            zze zzeVar2;
            synchronized (zzgtcVar) {
                zzeVar2 = zzgtcVar.waitersField;
                if (zzeVar2 != zzeVar) {
                    zzgtcVar.waitersField = zzeVar;
                }
            }
            return zzeVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final zzgtb.zzd zzf(zzgtc zzgtcVar, zzgtb.zzd zzdVar) {
            zzgtb.zzd zzdVar2;
            synchronized (zzgtcVar) {
                zzdVar2 = zzgtcVar.listenersField;
                if (zzdVar2 != zzdVar) {
                    zzgtcVar.listenersField = zzdVar;
                }
            }
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final boolean zzg(zzgtc zzgtcVar, Object obj, Object obj2) {
            synchronized (zzgtcVar) {
                if (zzgtcVar.valueField != obj) {
                    return false;
                }
                zzgtcVar.valueField = obj2;
                return true;
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
    final class zzd extends zza {
        static final Unsafe zza;
        static final long zzb;
        static final long zzc;
        static final long zzd;
        static final long zze;
        static final long zzf;
        public static final /* synthetic */ int zzg = 0;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (SecurityException unused) {
                    unsafe = (Unsafe) AccessController.doPrivileged(zzgtd.zza);
                }
                try {
                    zzc = unsafe.objectFieldOffset(zzgtc.class.getDeclaredField("waitersField"));
                    zzb = unsafe.objectFieldOffset(zzgtc.class.getDeclaredField("listenersField"));
                    zzd = unsafe.objectFieldOffset(zzgtc.class.getDeclaredField("valueField"));
                    zze = unsafe.objectFieldOffset(zze.class.getDeclaredField("thread"));
                    zzf = unsafe.objectFieldOffset(zze.class.getDeclaredField("next"));
                    zza = unsafe;
                } catch (NoSuchFieldException e) {
                    throw new RuntimeException(e);
                }
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        }

        private zzd() {
            throw null;
        }

        /* synthetic */ zzd(byte[] bArr) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final void zza(zze zzeVar, Thread thread) {
            zza.putObject(zzeVar, zze, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final void zzb(zze zzeVar, zze zzeVar2) {
            zza.putObject(zzeVar, zzf, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final boolean zzc(zzgtc zzgtcVar, zze zzeVar, zze zzeVar2) {
            return zzeg$$ExternalSyntheticBackport0.m(zza, zzgtcVar, zzc, zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final boolean zzd(zzgtc zzgtcVar, zzgtb.zzd zzdVar, zzgtb.zzd zzdVar2) {
            return zzeg$$ExternalSyntheticBackport0.m(zza, zzgtcVar, zzb, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final zze zze(zzgtc zzgtcVar, zze zzeVar) {
            zze zzeVar2;
            do {
                zzeVar2 = zzgtcVar.waitersField;
                if (zzeVar == zzeVar2) {
                    break;
                }
            } while (!zzc(zzgtcVar, zzeVar2, zzeVar));
            return zzeVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final zzgtb.zzd zzf(zzgtc zzgtcVar, zzgtb.zzd zzdVar) {
            zzgtb.zzd zzdVar2;
            do {
                zzdVar2 = zzgtcVar.listenersField;
                if (zzdVar == zzdVar2) {
                    break;
                }
            } while (!zzd(zzgtcVar, zzdVar2, zzdVar));
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgtc.zza
        final boolean zzg(zzgtc zzgtcVar, Object obj, Object obj2) {
            return zzeg$$ExternalSyntheticBackport0.m(zza, zzgtcVar, zzd, obj, obj2);
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
    final class zze {
        static final zze zza = new zze(false);
        volatile zze next;
        volatile Thread thread;

        zze() {
            zzgtc.zzv(this, Thread.currentThread());
        }

        zze(boolean z) {
        }
    }

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        zza zzcVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        zzg = z;
        String property = System.getProperty("java.runtime.name", "");
        byte[] bArr = null;
        if (property == null || property.contains("Android")) {
            try {
                zzcVar = new zzd(bArr);
            } catch (Error | Exception e) {
                try {
                    th = e;
                    th2 = null;
                    zzcVar = new zzb(bArr);
                } catch (Error | Exception e2) {
                    th = e;
                    th2 = e2;
                    zzcVar = new zzc(bArr);
                }
            }
        } else {
            try {
                zzcVar = new zzb(bArr);
            } catch (NoClassDefFoundError unused2) {
                zzcVar = new zzc(bArr);
            }
        }
        th2 = null;
        th = null;
        zzbi = zzcVar;
        if (th2 != null) {
            zzguq zzguqVar = zzf;
            zzguqVar.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th);
            zzguqVar.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th2);
        }
    }

    zzgtc() {
    }

    private final void zza(zze zzeVar) {
        zzeVar.thread = null;
        while (true) {
            zze zzeVar2 = this.waitersField;
            if (zzeVar2 != zze.zza) {
                zze zzeVar3 = null;
                while (zzeVar2 != null) {
                    zze zzeVar4 = zzeVar2.next;
                    if (zzeVar2.thread != null) {
                        zzeVar3 = zzeVar2;
                    } else if (zzeVar3 != null) {
                        zzeVar3.next = zzeVar4;
                        if (zzeVar3.thread == null) {
                            break;
                        }
                    } else if (!zzbi.zzc(this, zzeVar2, zzeVar4)) {
                        break;
                    }
                    zzeVar2 = zzeVar4;
                }
                return;
            }
            return;
        }
    }

    static boolean zzr(zzgtc zzgtcVar, Object obj, Object obj2) {
        return zzbi.zzg(zzgtcVar, obj, obj2);
    }

    static /* synthetic */ void zzv(zze zzeVar, Thread thread) {
        zzbi.zza(zzeVar, thread);
    }

    final boolean zzp(zzgtb.zzd zzdVar, zzgtb.zzd zzdVar2) {
        return zzbi.zzd(this, zzdVar, zzdVar2);
    }

    final zzgtb.zzd zzq(zzgtb.zzd zzdVar) {
        return zzbi.zzf(this, zzdVar);
    }

    final void zzs() {
        for (zze zze2 = zzbi.zze(this, zze.zza); zze2 != null; zze2 = zze2.next) {
            Thread thread = zze2.thread;
            if (thread != null) {
                zze2.thread = null;
                LockSupport.unpark(thread);
            }
        }
    }

    final Object zzt(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.valueField;
        if ((obj != null) && zzgtb.zzh(obj)) {
            return zzgtb.zzg(obj);
        }
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            zze zzeVar = this.waitersField;
            if (zzeVar != zze.zza) {
                zze zzeVar2 = new zze();
                do {
                    zza zzaVar = zzbi;
                    zzaVar.zzb(zzeVar2, zzeVar);
                    if (zzaVar.zzc(this, zzeVar, zzeVar2)) {
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                zza(zzeVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.valueField;
                            if ((obj2 != null) && zzgtb.zzh(obj2)) {
                                return zzgtb.zzg(obj2);
                            }
                            nanos = nanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        zza(zzeVar2);
                    } else {
                        zzeVar = this.waitersField;
                    }
                } while (zzeVar != zze.zza);
            }
            return zzgtb.zzg(Objects.requireNonNull(this.valueField));
        }
        while (nanos > 0) {
            Object obj3 = this.valueField;
            if ((obj3 != null) && zzgtb.zzh(obj3)) {
                return zzgtb.zzg(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = nanoTime - System.nanoTime();
        }
        String obj4 = toString();
        String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
        String lowerCase2 = timeUnit.toString().toLowerCase(Locale.ROOT);
        StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 8 + String.valueOf(lowerCase2).length());
        sb.append("Waited ");
        sb.append(j);
        sb.append(" ");
        sb.append(lowerCase2);
        String sb2 = sb.toString();
        if (nanos + 1000 < 0) {
            String concat = sb2.concat(" (plus ");
            long j2 = -nanos;
            long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(convert);
            boolean z = convert == 0 || nanos2 > 1000;
            if (convert > 0) {
                StringBuilder sb3 = new StringBuilder(concat.length() + String.valueOf(convert).length() + 1 + String.valueOf(lowerCase).length());
                sb3.append(concat);
                sb3.append(convert);
                sb3.append(" ");
                sb3.append(lowerCase);
                String sb4 = sb3.toString();
                if (z) {
                    sb4 = sb4.concat(",");
                }
                concat = sb4.concat(" ");
            }
            if (z) {
                StringBuilder sb5 = new StringBuilder(concat.length() + String.valueOf(nanos2).length() + 13);
                sb5.append(concat);
                sb5.append(nanos2);
                sb5.append(" nanoseconds ");
                concat = sb5.toString();
            }
            sb2 = concat.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(sb2.concat(" but future completed as timeout expired"));
        }
        StringBuilder sb6 = new StringBuilder(sb2.length() + 5 + String.valueOf(obj4).length());
        sb6.append(sb2);
        sb6.append(" for ");
        sb6.append(obj4);
        throw new TimeoutException(sb6.toString());
    }

    final Object zzu() throws InterruptedException, ExecutionException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.valueField;
        if ((obj2 != null) && zzgtb.zzh(obj2)) {
            return zzgtb.zzg(obj2);
        }
        zze zzeVar = this.waitersField;
        if (zzeVar != zze.zza) {
            zze zzeVar2 = new zze();
            do {
                zza zzaVar = zzbi;
                zzaVar.zzb(zzeVar2, zzeVar);
                if (zzaVar.zzc(this, zzeVar, zzeVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            zza(zzeVar2);
                            throw new InterruptedException();
                        }
                        obj = this.valueField;
                    } while (!((obj != null) & zzgtb.zzh(obj)));
                    return zzgtb.zzg(obj);
                }
                zzeVar = this.waitersField;
            } while (zzeVar != zze.zza);
        }
        return zzgtb.zzg(Objects.requireNonNull(this.valueField));
    }
}
