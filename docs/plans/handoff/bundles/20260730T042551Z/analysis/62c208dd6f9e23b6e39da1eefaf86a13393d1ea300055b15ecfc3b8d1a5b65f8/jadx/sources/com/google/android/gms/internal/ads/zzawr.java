package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzawr extends zzaxr {
    private static final zzaxs zzh = new zzaxs();
    private final zzary zzi;
    private final Context zzj;
    private final zzatv zzk;

    public zzawr(zzawd zzawdVar, String str, String str2, zzasc zzascVar, int i, int i2, Context context, zzarp zzarpVar, zzary zzaryVar, zzatv zzatvVar) {
        super(zzawdVar, "oRkhOtgSewU4ggMi3si9uC+Dt7XbP2h/HAjAAMrrDLJEH1okiq6gMjsyB44PqaXr", "iO2i4E5kKwgdMIyURHCZV/iLx1KtGqgpgsfiaMoXkaQ=", zzascVar, i, 27);
        this.zzj = context;
        this.zzi = zzaryVar;
        this.zzk = zzatvVar;
    }

    private final zzats zzc() {
        String str;
        int intValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcN)).booleanValue() ? ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcS)).intValue() : this.zzi.zza();
        zzats zzatsVar = new zzats((String) this.zze.invoke(null, this.zzj, Boolean.FALSE, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
        zzatv zzatvVar = this.zzk;
        if (zzatvVar != null && zzatvVar.zza() != null) {
            try {
                str = (String) zzatvVar.zza().get(intValue, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            }
            zzatsVar.zza = str;
            return zzatsVar;
        }
        str = "E";
        zzatsVar.zza = str;
        return zzatsVar;
    }

    private final String zzd() {
        try {
            if (this.zza.zzl() != null) {
                this.zza.zzl().get();
            }
            zzasy zzc = this.zza.zzc();
            if (zzc == null || !zzc.zzaj()) {
                return null;
            }
            return zzc.zzh();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxr
    public final void zza() {
        int i;
        zzats zzatsVar;
        zzats zzatsVar2;
        AtomicReference zza = zzh.zza(this.zzj.getPackageName());
        synchronized (zza) {
            zzats zzatsVar3 = (zzats) zza.get();
            if (zzatsVar3 == null || zzawg.zzd(zzatsVar3.zza) || zzatsVar3.zza.equals("E") || zzatsVar3.zza.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                if (zzawg.zzd(null)) {
                    (!zzawg.zzd(null) ? Boolean.FALSE : Boolean.FALSE).booleanValue();
                    i = 3;
                } else {
                    i = 5;
                }
                if (this.zzk != null) {
                    zzatsVar = zzc();
                } else {
                    Boolean valueOf = Boolean.valueOf(i == 3 && !this.zzi.zzd());
                    Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcB);
                    String zzb = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcA)).booleanValue() ? zzb() : null;
                    if (bool.booleanValue() && this.zza.zzp() && zzawg.zzd(zzb)) {
                        zzb = zzd();
                    }
                    zzats zzatsVar4 = new zzats((String) this.zze.invoke(null, this.zzj, valueOf, zzb));
                    if (zzawg.zzd(zzatsVar4.zza) || zzatsVar4.zza.equals("E")) {
                        int i2 = i - 1;
                        if (i2 == 3) {
                            String zzd = zzd();
                            if (!zzawg.zzd(zzd)) {
                                zzatsVar4.zza = zzd;
                            }
                        } else if (i2 == 4) {
                            throw null;
                        }
                    }
                    zzatsVar = zzatsVar4;
                }
                zza.set(zzatsVar);
            }
            zzatsVar2 = (zzats) zza.get();
        }
        synchronized (this.zzd) {
            if (zzatsVar2 != null) {
                this.zzd.zzx(zzatsVar2.zza);
                this.zzd.zzX(zzatsVar2.zzb);
                this.zzd.zzZ(zzatsVar2.zzc);
                this.zzd.zzi(zzatsVar2.zzd);
                this.zzd.zzw(zzatsVar2.zze);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.internal.ads.zzaxt] */
    public final String zzb() {
        ArrayList arrayList;
        Context context;
        String packageName;
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] zzf = zzawg.zzf((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcC));
            arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzf)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzawg.zzf((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcD)))));
            }
            context = this.zzj;
            packageName = context.getPackageName();
            this.zza.zzk();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
        }
        if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals("S")) {
            return null;
        }
        final zzgdb zze = zzgdb.zze();
        context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager.OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzaxt
            @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
            public final void onChecksumsReady(List list) {
                int type;
                byte[] value;
                zzgdb zzgdbVar = zzgdb.this;
                if (list == null) {
                    zzgdbVar.zzc(null);
                    return;
                }
                try {
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        ApkChecksum apkChecksum = (ApkChecksum) list.get(i);
                        type = apkChecksum.getType();
                        if (type == 8) {
                            value = apkChecksum.getValue();
                            zzgdbVar.zzc(zzawg.zzb(value));
                            return;
                        }
                    }
                    zzgdbVar.zzc(null);
                } catch (Throwable unused2) {
                    zzgdbVar.zzc(null);
                }
            }
        });
        return (String) zze.get();
    }
}
