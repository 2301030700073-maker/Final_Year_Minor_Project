package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzhwi;
import com.google.android.gms.internal.ads.zzhwo;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzhwo<MessageType extends zzhwo<MessageType, BuilderType>, BuilderType extends zzhwi<MessageType, BuilderType>> extends zzhur<MessageType, BuilderType> {
    private static final int zza = Integer.MIN_VALUE;
    private static final int zzb = Integer.MAX_VALUE;
    private static Map<Class<?>, zzhwo<?, ?>> zzd = new ConcurrentHashMap();
    static final int zzr = Integer.MAX_VALUE;
    static final int zzs = 0;
    private int zzc = -1;
    protected zzhzd zzt = zzhzd.zza();

    static Method zzbA(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            String name = cls.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 43 + String.valueOf(str).length() + 2);
            sb.append("Generated message class \"");
            sb.append(name);
            sb.append("\" missing method \"");
            sb.append(str);
            sb.append("\".");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    static Object zzbB(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static zzhww zzbC() {
        return zzhwp.zzd();
    }

    protected static zzhww zzbD(zzhww zzhwwVar) {
        int size = zzhwwVar.size();
        return zzhwwVar.zzh(size + size);
    }

    protected static zzhwz zzbE() {
        return zzhxn.zzg();
    }

    protected static zzhwz zzbF(zzhwz zzhwzVar) {
        int size = zzhwzVar.size();
        return zzhwzVar.zzh(size + size);
    }

    protected static zzhwv zzbG() {
        return zzhwf.zzd();
    }

    protected static zzhwv zzbH(zzhwv zzhwvVar) {
        int size = zzhwvVar.size();
        return zzhwvVar.zzh(size + size);
    }

    protected static zzhwr zzbI() {
        return zzhvv.zzd();
    }

    protected static zzhwr zzbJ(zzhwr zzhwrVar) {
        int size = zzhwrVar.size();
        return zzhwrVar.zzh(size + size);
    }

    protected static zzhwq zzbK() {
        return zzhuy.zzd();
    }

    protected static zzhwq zzbL(zzhwq zzhwqVar) {
        int size = zzhwqVar.size();
        return zzhwqVar.zzh(size + size);
    }

    protected static <E> zzhxa<E> zzbM() {
        return zzhyk.zzd();
    }

    protected static <E> zzhxa<E> zzbN(zzhxa<E> zzhxaVar) {
        int size = zzhxaVar.size();
        return zzhxaVar.zzh(size + size);
    }

    static <T extends zzhwo<T, ?>> T zzbO(T t, zzhvn zzhvnVar, zzhvy zzhvyVar) throws zzhxd {
        T t2 = (T) t.zzbg();
        try {
            zzhyr zzb2 = zzhyj.zza().zzb(t2.getClass());
            zzb2.zzg(t2, zzhvo.zza(zzhvnVar), zzhvyVar);
            zzb2.zzk(t2);
            return t2;
        } catch (zzhxd e) {
            if (e.zzb()) {
                throw new zzhxd(e);
            }
            throw e;
        } catch (zzhzb e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzhxd) {
                throw ((zzhxd) e3.getCause());
            }
            throw new zzhxd(e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzhxd) {
                throw ((zzhxd) e4.getCause());
            }
            throw e4;
        }
    }

    protected static <T extends zzhwo<T, ?>> T zzbP(T t, zzhvn zzhvnVar) throws zzhxd {
        int i = zzhvy.zzb;
        int i2 = zzhuv.zza;
        return (T) zzbO(t, zzhvnVar, zzhvy.zza);
    }

    protected static <T extends zzhwo<T, ?>> T zzbQ(T t, ByteBuffer byteBuffer, zzhvy zzhvyVar) throws zzhxd {
        zzhvn zzG;
        int i = zzhvn.zzf;
        boolean z = false;
        if (byteBuffer.hasArray()) {
            zzG = zzhvn.zzG(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), false);
        } else {
            if (byteBuffer.isDirect()) {
                int i2 = zzhvm.zza;
                if (zzhzj.zzb()) {
                    zzG = new zzhvm(byteBuffer, z, null);
                }
            }
            int remaining = byteBuffer.remaining();
            byte[] bArr = new byte[remaining];
            byteBuffer.duplicate().get(bArr);
            zzG = zzhvn.zzG(bArr, 0, remaining, true);
        }
        T t2 = (T) zzbZ(t, zzG, zzhvyVar);
        zzi(t2);
        return t2;
    }

    protected static <T extends zzhwo<T, ?>> T zzbR(T t, ByteBuffer byteBuffer) throws zzhxd {
        int i = zzhvy.zzb;
        int i2 = zzhuv.zza;
        return (T) zzbQ(t, byteBuffer, zzhvy.zza);
    }

    protected static <T extends zzhwo<T, ?>> T zzbS(T t, zzhvi zzhviVar) throws zzhxd {
        int i = zzhvy.zzb;
        int i2 = zzhuv.zza;
        T t2 = (T) zzbT(t, zzhviVar, zzhvy.zza);
        zzi(t2);
        return t2;
    }

    protected static <T extends zzhwo<T, ?>> T zzbT(T t, zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        T t2 = (T) zzj(t, zzhviVar, zzhvyVar);
        zzi(t2);
        return t2;
    }

    protected static <T extends zzhwo<T, ?>> T zzbU(T t, byte[] bArr) throws zzhxd {
        int length = bArr.length;
        int i = zzhvy.zzb;
        int i2 = zzhuv.zza;
        T t2 = (T) zzh(t, bArr, 0, length, zzhvy.zza);
        zzi(t2);
        return t2;
    }

    protected static <T extends zzhwo<T, ?>> T zzbV(T t, byte[] bArr, zzhvy zzhvyVar) throws zzhxd {
        T t2 = (T) zzh(t, bArr, 0, bArr.length, zzhvyVar);
        zzi(t2);
        return t2;
    }

    protected static <T extends zzhwo<T, ?>> T zzbW(T t, InputStream inputStream) throws zzhxd {
        zzhvn zzF = zzhvn.zzF(inputStream, 4096);
        int i = zzhvy.zzb;
        int i2 = zzhuv.zza;
        T t2 = (T) zzbO(t, zzF, zzhvy.zza);
        zzi(t2);
        return t2;
    }

    protected static <T extends zzhwo<T, ?>> T zzbX(T t, InputStream inputStream, zzhvy zzhvyVar) throws zzhxd {
        T t2 = (T) zzbO(t, zzhvn.zzF(inputStream, 4096), zzhvyVar);
        zzi(t2);
        return t2;
    }

    protected static <T extends zzhwo<T, ?>> T zzbY(T t, zzhvn zzhvnVar) throws zzhxd {
        int i = zzhvy.zzb;
        int i2 = zzhuv.zza;
        return (T) zzbZ(t, zzhvnVar, zzhvy.zza);
    }

    protected static <T extends zzhwo<T, ?>> T zzbZ(T t, zzhvn zzhvnVar, zzhvy zzhvyVar) throws zzhxd {
        T t2 = (T) zzbO(t, zzhvnVar, zzhvyVar);
        zzi(t2);
        return t2;
    }

    static <T extends zzhwo> T zzbt(Class<T> cls) {
        zzhwo<?, ?> zzhwoVar = zzd.get(cls);
        if (zzhwoVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzhwoVar = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzhwoVar == null) {
            zzhwoVar = ((zzhwo) zzhzj.zzc(cls)).zzbw();
            if (zzhwoVar == null) {
                throw new IllegalStateException();
            }
            zzd.put(cls, zzhwoVar);
        }
        return zzhwoVar;
    }

    protected static <T extends zzhwo> void zzbu(Class<T> cls, T t) {
        t.zzaY();
        zzd.put(cls, t);
    }

    protected static Object zzbv(zzhxz zzhxzVar, String str, Object[] objArr) {
        return new zzhyl(zzhxzVar, str, objArr);
    }

    public static <ContainingType extends zzhxz, Type> zzhwm<ContainingType, Type> zzby(ContainingType containingtype, Type type, zzhxz zzhxzVar, zzhwt zzhwtVar, int i, zzhzp zzhzpVar, Class cls) {
        return new zzhwm<>(containingtype, type, zzhxzVar, new zzhwl(zzhwtVar, i, zzhzpVar, false, false), cls);
    }

    public static <ContainingType extends zzhxz, Type> zzhwm<ContainingType, Type> zzbz(ContainingType containingtype, zzhxz zzhxzVar, zzhwt zzhwtVar, int i, zzhzp zzhzpVar, boolean z, Class cls) {
        return new zzhwm<>(containingtype, zzhyk.zzd(), zzhxzVar, new zzhwl(zzhwtVar, i, zzhzpVar, true, z), cls);
    }

    private void zzc() {
        if (this.zzt == zzhzd.zza()) {
            this.zzt = zzhzd.zzb();
        }
    }

    protected static <T extends zzhwo<T, ?>> T zzca(T t, InputStream inputStream) throws zzhxd {
        int i = zzhvy.zzb;
        int i2 = zzhuv.zza;
        T t2 = (T) zzk(t, inputStream, zzhvy.zza);
        zzi(t2);
        return t2;
    }

    protected static <T extends zzhwo<T, ?>> T zzcb(T t, InputStream inputStream, zzhvy zzhvyVar) throws zzhxd {
        T t2 = (T) zzk(t, inputStream, zzhvyVar);
        zzi(t2);
        return t2;
    }

    private int zzd(zzhyr<?> zzhyrVar) {
        if (zzhyrVar != null) {
            return zzhyrVar.zze(this);
        }
        return zzhyj.zza().zzb(getClass()).zze(this);
    }

    private static <MessageType extends zzhwk<MessageType, BuilderType>, BuilderType, T> zzhwm<MessageType, T> zze(zzhvw<MessageType, T> zzhvwVar) {
        return (zzhwm) zzhvwVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends zzhwo<T, ?>> boolean zzg(T t, boolean z) {
        byte byteValue = ((Byte) t.zzdh(zzhwn.GET_MEMOIZED_IS_INITIALIZED, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzl = zzhyj.zza().zzb(t.getClass()).zzl(t);
        if (z) {
            t.zzdh(zzhwn.SET_MEMOIZED_IS_INITIALIZED, true != zzl ? null : t, null);
        }
        return zzl;
    }

    private static <T extends zzhwo<T, ?>> T zzh(T t, byte[] bArr, int i, int i2, zzhvy zzhvyVar) throws zzhxd {
        if (i2 == 0) {
            return t;
        }
        T t2 = (T) t.zzbg();
        try {
            zzhyr zzb2 = zzhyj.zza().zzb(t2.getClass());
            zzb2.zzj(t2, bArr, i, i + i2, new zzhuw(zzhvyVar));
            zzb2.zzk(t2);
            return t2;
        } catch (zzhxd e) {
            if (e.zzb()) {
                throw new zzhxd(e);
            }
            throw e;
        } catch (zzhzb e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzhxd) {
                throw ((zzhxd) e3.getCause());
            }
            throw new zzhxd(e3);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    private static <T extends zzhwo<T, ?>> T zzi(T t) throws zzhxd {
        if (t == null || t.zzbi()) {
            return t;
        }
        throw t.zzaU().zza();
    }

    private static <T extends zzhwo<T, ?>> T zzj(T t, zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        zzhvn zzp = zzhviVar.zzp();
        T t2 = (T) zzbO(t, zzp, zzhvyVar);
        zzp.zzb(0);
        return t2;
    }

    private static <T extends zzhwo<T, ?>> T zzk(T t, InputStream inputStream, zzhvy zzhvyVar) throws zzhxd {
        try {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            zzhvn zzF = zzhvn.zzF(new zzhup(inputStream, zzhvn.zzM(read, inputStream)), 4096);
            T t2 = (T) zzbO(t, zzF, zzhvyVar);
            zzF.zzb(0);
            return t2;
        } catch (zzhxd e) {
            if (e.zzb()) {
                throw new zzhxd(e);
            }
            throw e;
        } catch (IOException e2) {
            throw new zzhxd(e2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzhyj.zza().zzb(getClass()).zzb(this, (zzhwo) obj);
    }

    public int hashCode() {
        if (zzaX()) {
            return zzbh();
        }
        if (zzbc()) {
            zzba(zzbh());
        }
        return zzaZ();
    }

    public String toString() {
        return zzhyb.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzhur
    int zzaQ() {
        return this.zzc & Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzhur
    void zzaR(int i) {
        if (i >= 0) {
            this.zzc = i | (this.zzc & Integer.MIN_VALUE);
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 42);
        sb.append("serialized size must be non-negative, was ");
        sb.append(i);
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzhur
    int zzaT(zzhyr zzhyrVar) {
        if (!zzaX()) {
            if (zzaQ() != Integer.MAX_VALUE) {
                return zzaQ();
            }
            int zzd2 = zzd(zzhyrVar);
            zzaR(zzd2);
            return zzd2;
        }
        int zzd3 = zzd(zzhyrVar);
        if (zzd3 >= 0) {
            return zzd3;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(zzd3).length() + 42);
        sb.append("serialized size must be non-negative, was ");
        sb.append(zzd3);
        throw new IllegalStateException(sb.toString());
    }

    boolean zzaX() {
        return (this.zzc & Integer.MIN_VALUE) != 0;
    }

    void zzaY() {
        this.zzc &= Integer.MAX_VALUE;
    }

    int zzaZ() {
        return this.zzq;
    }

    void zzba(int i) {
        this.zzq = i;
    }

    void zzbb() {
        this.zzq = 0;
    }

    boolean zzbc() {
        return zzaZ() == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhxz
    public final zzhyh<MessageType> zzbd() {
        return (zzhyh) zzdh(zzhwn.GET_PARSER, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhya
    /* renamed from: zzbe, reason: merged with bridge method [inline-methods] */
    public final MessageType zzbw() {
        return (MessageType) zzdh(zzhwn.GET_DEFAULT_INSTANCE, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhxz
    /* renamed from: zzbf, reason: merged with bridge method [inline-methods] */
    public final BuilderType zzdd() {
        return (BuilderType) zzdh(zzhwn.NEW_BUILDER, null, null);
    }

    MessageType zzbg() {
        return (MessageType) zzdh(zzhwn.NEW_MUTABLE_INSTANCE, null, null);
    }

    int zzbh() {
        return zzhyj.zza().zzb(getClass()).zzc(this);
    }

    @Override // com.google.android.gms.internal.ads.zzhya
    public final boolean zzbi() {
        return zzg(this, true);
    }

    protected boolean zzbj(int i, zzhvn zzhvnVar) throws IOException {
        if ((i & 7) == 4) {
            return false;
        }
        zzc();
        return this.zzt.zzl(i, zzhvnVar);
    }

    protected void zzbk(int i, int i2) {
        zzc();
        zzhzd zzhzdVar = this.zzt;
        zzhzdVar.zze();
        if (i == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        zzhzdVar.zzk(i << 3, Long.valueOf(i2));
    }

    protected void zzbl(int i, zzhvi zzhviVar) {
        zzc();
        zzhzd zzhzdVar = this.zzt;
        zzhzdVar.zze();
        if (i == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        zzhzdVar.zzk((i << 3) | 2, zzhviVar);
    }

    protected void zzbm() {
        zzhyj.zza().zzb(getClass()).zzk(this);
        zzaY();
    }

    protected final <MessageType2 extends zzhwo<MessageType2, BuilderType2>, BuilderType2 extends zzhwi<MessageType2, BuilderType2>> BuilderType2 zzbn() {
        return (BuilderType2) zzdh(zzhwn.NEW_BUILDER, null, null);
    }

    protected final <MessageType2 extends zzhwo<MessageType2, BuilderType2>, BuilderType2 extends zzhwi<MessageType2, BuilderType2>> BuilderType2 zzbo(MessageType2 messagetype2) {
        BuilderType2 buildertype2 = (BuilderType2) zzbn();
        buildertype2.zzbo(messagetype2);
        return buildertype2;
    }

    /* renamed from: zzbp, reason: merged with bridge method [inline-methods] */
    public final BuilderType zzcc() {
        BuilderType buildertype = (BuilderType) zzdh(zzhwn.NEW_BUILDER, null, null);
        buildertype.zzbo(this);
        return buildertype;
    }

    void zzbq() {
        zzaR(Integer.MAX_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zzhxz
    public int zzbr() {
        return zzaT(null);
    }

    Object zzbs() throws Exception {
        return zzdh(zzhwn.BUILD_MESSAGE_INFO, null, null);
    }

    protected final void zzbx(zzhzd zzhzdVar) {
        this.zzt = zzhzd.zzc(this.zzt, zzhzdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhxz
    public void zzdc(zzhvt zzhvtVar) throws IOException {
        zzhyj.zza().zzb(getClass()).zzf(this, zzhvu.zza(zzhvtVar));
    }

    protected abstract Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2);
}
