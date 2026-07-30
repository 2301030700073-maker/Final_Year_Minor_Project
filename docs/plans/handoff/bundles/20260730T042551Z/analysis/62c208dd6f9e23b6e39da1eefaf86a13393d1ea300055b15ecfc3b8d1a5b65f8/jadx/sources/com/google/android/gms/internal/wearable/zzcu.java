package com.google.android.gms.internal.wearable;

/* loaded from: classes3.dex */
final class zzcu implements zzdo {
    private static final zzda zza = new zzcs();
    private final zzda zzb;

    public zzcu() {
        zzda zzdaVar;
        zzda[] zzdaVarArr = new zzda[2];
        zzdaVarArr[0] = zzbr.zza();
        try {
            zzdaVar = (zzda) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzdaVar = zza;
        }
        zzdaVarArr[1] = zzdaVar;
        zzct zzctVar = new zzct(zzdaVarArr);
        zzcd.zzf(zzctVar, "messageInfoFactory");
        this.zzb = zzctVar;
    }

    private static boolean zzb(zzcz zzczVar) {
        return zzczVar.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.wearable.zzdo
    public final zzdn zza(Class cls) {
        zzdp.zzG(cls);
        zzcz zzb = this.zzb.zzb(cls);
        return zzb.zzb() ? zzbv.class.isAssignableFrom(cls) ? zzdg.zzc(zzdp.zzB(), zzbm.zzb(), zzb.zza()) : zzdg.zzc(zzdp.zzz(), zzbm.zza(), zzb.zza()) : zzbv.class.isAssignableFrom(cls) ? zzb(zzb) ? zzdf.zzl(cls, zzb, zzdi.zzb(), zzcq.zzd(), zzdp.zzB(), zzbm.zzb(), zzcy.zzb()) : zzdf.zzl(cls, zzb, zzdi.zzb(), zzcq.zzd(), zzdp.zzB(), null, zzcy.zzb()) : zzb(zzb) ? zzdf.zzl(cls, zzb, zzdi.zza(), zzcq.zzc(), zzdp.zzz(), zzbm.zza(), zzcy.zza()) : zzdf.zzl(cls, zzb, zzdi.zza(), zzcq.zzc(), zzdp.zzA(), null, zzcy.zza());
    }
}
