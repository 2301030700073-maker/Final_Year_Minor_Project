package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import io.sentry.instrumentation.file.SentryFileInputStream;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.function.Function;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfzh extends zzfyz {
    private final ExecutorService zzb;
    private final zzfzg zzc;
    private final Function zzd;

    public zzfzh(File file, ExecutorService executorService, zzfzg zzfzgVar, Function function) {
        super(file);
        this.zzb = executorService;
        this.zzc = zzfzgVar;
        this.zzd = function;
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final ListenableFuture zzb() {
        return zzgui.zzd(new Callable() { // from class: com.google.android.gms.internal.ads.zzfze
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzfzh.this.zzd();
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final ListenableFuture zzc(final Object obj) {
        return zzgui.zzd(new Callable() { // from class: com.google.android.gms.internal.ads.zzfzd
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzfzh.this.zze(obj);
                return null;
            }
        }, this.zzb);
    }

    final /* synthetic */ Object zzd() {
        Object apply;
        synchronized (this) {
            try {
                try {
                    try {
                        File file = this.zza;
                        FileInputStream create = SentryFileInputStream.Factory.create(new FileInputStream(file), file);
                        try {
                            apply = this.zzc.zzb(create);
                            create.close();
                        } catch (Throwable th) {
                            try {
                                create.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (IOException e) {
                        apply = this.zzd.apply(new zzfzc(e));
                    }
                } catch (FileNotFoundException unused) {
                    apply = this.zzc.zzc();
                }
            } catch (zzfzc e2) {
                apply = this.zzd.apply(e2);
            }
        }
        return apply;
    }

    final /* synthetic */ Void zze(Object obj) {
        synchronized (this) {
            File file = this.zza;
            zzgsg.zzb(file);
            String parent = file.getParent();
            String name = file.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 5);
            sb.append(name);
            sb.append(".temp");
            File file2 = new File(parent, sb.toString());
            try {
                FileOutputStream create = SentryFileOutputStream.Factory.create(new FileOutputStream(file2), file2);
                try {
                    this.zzc.zza(obj, create);
                    create.close();
                    if (!file2.renameTo(this.zza)) {
                        throw new IOException("Failed to rename file.");
                    }
                } catch (Throwable th) {
                    try {
                        create.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                file2.delete();
                throw e;
            }
        }
        return null;
    }
}
