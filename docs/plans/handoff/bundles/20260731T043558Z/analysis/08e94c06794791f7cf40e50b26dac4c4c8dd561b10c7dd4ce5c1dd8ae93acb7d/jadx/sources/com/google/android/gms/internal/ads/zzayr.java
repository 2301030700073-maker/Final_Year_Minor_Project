package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayInputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzayr extends zzazr {
    private static final zzazs zzh = new zzazs();
    private final zzatv zzi;
    private final Context zzj;
    private final zzavx zzk;

    public zzayr(zzayd zzaydVar, String str, String str2, zzauc zzaucVar, int i, int i2, Context context, zzato zzatoVar, zzatv zzatvVar, zzavx zzavxVar) {
        super(zzaydVar, "yYlfo3JOLIfvdgBq3U3deu0pC6YiXdEdqGnVULE/KCllAkaO/XSsVQU+sKDN/uG0", "5ZNtOO3srzHnbl5PLlxEIuHlg0l+6HDun864hT7P5ko=", zzaucVar, i, 27);
        this.zzj = context;
        this.zzi = zzatvVar;
        this.zzk = zzavxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final zzavu zzc() throws IllegalAccessException, InvocationTargetException {
        int zzb;
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdc)).booleanValue()) {
            zzb = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdi)).intValue();
        } else {
            zzb = this.zzi.zzb();
        }
        zzavu zzavuVar = new zzavu((String) this.zze.invoke(null, this.zzj, false, ""));
        zzavx zzavxVar = this.zzk;
        if (zzavxVar != null && zzavxVar.zza() != null) {
            try {
                str = (String) zzavxVar.zza().get(zzb, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            }
            zzavuVar.zza = str;
            return zzavuVar;
        }
        str = ExifInterface.LONGITUDE_EAST;
        zzavuVar.zza = str;
        return zzavuVar;
    }

    private final String zzd() {
        try {
            zzayd zzaydVar = this.zza;
            if (zzaydVar.zzm() != null) {
                zzaydVar.zzm().get();
            }
            zzauz zzl = zzaydVar.zzl();
            if (zzl == null || !zzl.zza()) {
                return null;
            }
            return zzl.zzb();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazr
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        int i;
        zzavu zzavuVar;
        zzavu zzavuVar2;
        zzazs zzazsVar = zzh;
        Context context = this.zzj;
        AtomicReference zza = zzazsVar.zza(context.getPackageName());
        synchronized (zza) {
            zzavu zzavuVar3 = (zzavu) zza.get();
            if (zzavuVar3 == null || zzayg.zzc(zzavuVar3.zza) || zzavuVar3.zza.equals(ExifInterface.LONGITUDE_EAST) || zzavuVar3.zza.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                boolean z = false;
                if (zzayg.zzc(null)) {
                    (!zzayg.zzc(null) ? false : false).booleanValue();
                    i = 3;
                } else {
                    i = 5;
                }
                if (this.zzk != null) {
                    zzavuVar = zzc();
                } else {
                    if (i == 3 && !this.zzi.zza()) {
                        z = true;
                    }
                    Boolean valueOf = Boolean.valueOf(z);
                    Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcQ);
                    String zzb = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcP)).booleanValue() ? zzb() : null;
                    if (bool.booleanValue() && this.zza.zzi() && zzayg.zzc(zzb)) {
                        zzb = zzd();
                    }
                    zzavu zzavuVar4 = new zzavu((String) this.zze.invoke(null, context, valueOf, zzb));
                    if (zzayg.zzc(zzavuVar4.zza) || zzavuVar4.zza.equals(ExifInterface.LONGITUDE_EAST)) {
                        int i2 = i - 1;
                        if (i2 == 3) {
                            String zzd = zzd();
                            if (!zzayg.zzc(zzd)) {
                                zzavuVar4.zza = zzd;
                            }
                        } else if (i2 == 4) {
                            throw null;
                        }
                    }
                    zzavuVar = zzavuVar4;
                }
                zza.set(zzavuVar);
            }
            zzavuVar2 = (zzavu) zza.get();
        }
        zzauc zzaucVar = this.zzd;
        synchronized (zzaucVar) {
            if (zzavuVar2 != null) {
                zzaucVar.zzo(zzavuVar2.zza);
                zzaucVar.zzu(zzavuVar2.zzb);
                zzaucVar.zzt(zzavuVar2.zzc);
                zzaucVar.zzD(zzavuVar2.zzd);
                zzaucVar.zzE(zzavuVar2.zze);
            }
        }
    }

    protected final String zzb() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] zzb = zzayg.zzb((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcR));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzb)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzayg.zzb((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcS)))));
            }
            Context context = this.zzj;
            return zzazu.zza(context, context.getPackageName(), arrayList, this.zza.zzd());
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }
}
