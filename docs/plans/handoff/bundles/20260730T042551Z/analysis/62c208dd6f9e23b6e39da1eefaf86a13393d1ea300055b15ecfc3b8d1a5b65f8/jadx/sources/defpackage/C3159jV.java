package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzad;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzgu;
import com.google.android.gms.internal.measurement.zzhj;
import com.google.android.gms.internal.measurement.zzhk;
import com.google.android.gms.internal.measurement.zzjg;
import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.internal.measurement.zzlb;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpo;
import com.google.android.gms.internal.measurement.zzpu;
import com.google.android.gms.measurement.internal.zzbe;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzno;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* renamed from: jV, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3159jV extends WU {
    public C3159jV(ZU zu) {
        super(zu);
    }

    public static void a(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        m7120implements(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    /* renamed from: abstract, reason: not valid java name */
    public static ArrayList m7116abstract(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i << 6) + i2;
                if (i3 < bitSet.length()) {
                    if (bitSet.get(i3)) {
                        j |= 1 << i2;
                    }
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    public static void c(StringBuilder sb, String str, zzfy.zzm zzmVar) {
        if (zzmVar == null) {
            return;
        }
        m7120implements(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzmVar.zzb() != 0) {
            m7120implements(sb, 4);
            sb.append("results: ");
            int i = 0;
            for (Long l : zzmVar.zzi()) {
                int i2 = i + 1;
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i = i2;
            }
            sb.append('\n');
        }
        if (zzmVar.zzd() != 0) {
            m7120implements(sb, 4);
            sb.append("status: ");
            int i3 = 0;
            for (Long l2 : zzmVar.zzk()) {
                int i4 = i3 + 1;
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i3 = i4;
            }
            sb.append('\n');
        }
        if (zzmVar.zza() != 0) {
            m7120implements(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i5 = 0;
            for (zzfy.zze zzeVar : zzmVar.zzh()) {
                int i6 = i5 + 1;
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(zzeVar.zzf() ? Integer.valueOf(zzeVar.zza()) : null);
                sb.append(CertificateUtil.DELIMITER);
                sb.append(zzeVar.zze() ? Long.valueOf(zzeVar.zzb()) : null);
                i5 = i6;
            }
            sb.append("}\n");
        }
        if (zzmVar.zzc() != 0) {
            m7120implements(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i7 = 0;
            for (zzfy.zzn zznVar : zzmVar.zzj()) {
                int i8 = i7 + 1;
                if (i7 != 0) {
                    sb.append(", ");
                }
                sb.append(zznVar.zzf() ? Integer.valueOf(zznVar.zzb()) : null);
                sb.append(": [");
                Iterator<Long> it = zznVar.zze().iterator();
                int i9 = 0;
                while (it.hasNext()) {
                    long longValue = it.next().longValue();
                    int i10 = i9 + 1;
                    if (i9 != 0) {
                        sb.append(", ");
                    }
                    sb.append(longValue);
                    i9 = i10;
                }
                sb.append("]");
                i7 = i8;
            }
            sb.append("}\n");
        }
        m7120implements(sb, 3);
        sb.append("}\n");
    }

    /* renamed from: continue, reason: not valid java name */
    public static HashMap m7117continue(Bundle bundle, boolean z) {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            boolean z2 = obj instanceof Parcelable[];
            if (z2 || (obj instanceof ArrayList) || (obj instanceof Bundle)) {
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    if (z2) {
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if (parcelable instanceof Bundle) {
                                arrayList.add(m7117continue((Bundle) parcelable, false));
                            }
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList2 = (ArrayList) obj;
                        int size = arrayList2.size();
                        int i = 0;
                        while (i < size) {
                            Object obj2 = arrayList2.get(i);
                            i++;
                            if (obj2 instanceof Bundle) {
                                arrayList.add(m7117continue((Bundle) obj2, false));
                            }
                        }
                    } else if (obj instanceof Bundle) {
                        arrayList.add(m7117continue((Bundle) obj, false));
                    }
                    hashMap.put(str, arrayList);
                }
            } else if (obj != null) {
                hashMap.put(str, obj);
            }
        }
        return hashMap;
    }

    public static boolean d(int i, List list) {
        if (i < (list.size() << 6)) {
            return ((1 << (i % 64)) & ((Long) list.get(i / 64)).longValue()) != 0;
        }
        return false;
    }

    /* renamed from: default, reason: not valid java name */
    public static zzlb m7118default(zzjt.zzb zzbVar, byte[] bArr) {
        zzjg zza = zzjg.zza();
        return zza != null ? zzbVar.zza(bArr, zza) : zzbVar.zza(bArr);
    }

    /* renamed from: extends, reason: not valid java name */
    public static zzbf m7119extends(zzad zzadVar) {
        Object obj;
        Bundle m7126return = m7126return(zzadVar.zzc(), true);
        String obj2 = (!m7126return.containsKey("_o") || (obj = m7126return.get("_o")) == null) ? "app" : obj.toString();
        String m1592throw = O2.m1592throw(zzadVar.zzb(), O4.f2538do, O4.f2547for);
        if (m1592throw == null) {
            m1592throw = zzadVar.zzb();
        }
        return new zzbf(m1592throw, new zzbe(m7126return), obj2, zzadVar.zza());
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [android.os.Bundle[], java.io.Serializable] */
    public static Serializable f(zzfy.zzf zzfVar, String str) {
        zzfy.zzh m7128throws = m7128throws(zzfVar, str);
        if (m7128throws == null) {
            return null;
        }
        if (m7128throws.zzn()) {
            return m7128throws.zzh();
        }
        if (m7128throws.zzl()) {
            return Long.valueOf(m7128throws.zzd());
        }
        if (m7128throws.zzj()) {
            return Double.valueOf(m7128throws.zza());
        }
        if (m7128throws.zzc() > 0) {
            return i(m7128throws.zzi());
        }
        return null;
    }

    public static boolean g(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static Bundle[] i(List<zzfy.zzh> list) {
        ArrayList arrayList = new ArrayList();
        for (zzfy.zzh zzhVar : list) {
            if (zzhVar != null) {
                Bundle bundle = new Bundle();
                for (zzfy.zzh zzhVar2 : zzhVar.zzi()) {
                    if (zzhVar2.zzn()) {
                        bundle.putString(zzhVar2.zzg(), zzhVar2.zzh());
                    } else if (zzhVar2.zzl()) {
                        bundle.putLong(zzhVar2.zzg(), zzhVar2.zzd());
                    } else if (zzhVar2.zzj()) {
                        bundle.putDouble(zzhVar2.zzg(), zzhVar2.zza());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m7120implements(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static int m7121import(zzfy.zzk.zza zzaVar, String str) {
        if (zzaVar == null) {
            return -1;
        }
        for (int i = 0; i < zzaVar.zzd(); i++) {
            if (str.equals(zzaVar.zzk(i).zzg())) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m7122interface(Uri.Builder builder, String[] strArr, Bundle bundle, Set<String> set) {
        for (String str : strArr) {
            String[] split = str.split(",");
            String str2 = split[0];
            String str3 = split[split.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                m7129volatile(builder, str3, string, set);
            }
        }
    }

    /* renamed from: private, reason: not valid java name */
    public static String m7123private(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: protected, reason: not valid java name */
    public static void m7124protected(zzfy.zzf.zza zzaVar, String str, Long l) {
        List<zzfy.zzh> zzf = zzaVar.zzf();
        int i = 0;
        while (true) {
            if (i >= zzf.size()) {
                i = -1;
                break;
            } else if (str.equals(zzf.get(i).zzg())) {
                break;
            } else {
                i++;
            }
        }
        zzfy.zzh.zza zza = zzfy.zzh.zze().zza(str);
        if (l instanceof Long) {
            zza.zza(l.longValue());
        } else if (l instanceof String) {
            zza.zzb((String) l);
        } else if (l instanceof Double) {
            zza.zza(((Double) l).doubleValue());
        }
        if (i >= 0) {
            zzaVar.zza(i, zza);
        } else {
            zzaVar.zza(zza);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static Bundle m7125public(List<zzfy.zzh> list) {
        Bundle bundle = new Bundle();
        for (zzfy.zzh zzhVar : list) {
            String zzg = zzhVar.zzg();
            if (zzhVar.zzj()) {
                bundle.putDouble(zzg, zzhVar.zza());
            } else if (zzhVar.zzk()) {
                bundle.putFloat(zzg, zzhVar.zzb());
            } else if (zzhVar.zzn()) {
                bundle.putString(zzg, zzhVar.zzh());
            } else if (zzhVar.zzl()) {
                bundle.putLong(zzg, zzhVar.zzd());
            }
        }
        return bundle;
    }

    /* renamed from: return, reason: not valid java name */
    public static Bundle m7126return(Map map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    arrayList2.add(m7126return((Map) obj2, false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m7127synchronized(StringBuilder sb, int i, String str, zzfo.zzd zzdVar) {
        if (zzdVar == null) {
            return;
        }
        m7120implements(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (zzdVar.zzh()) {
            a(sb, i, "comparison_type", zzdVar.zza().name());
        }
        if (zzdVar.zzj()) {
            a(sb, i, "match_as_float", Boolean.valueOf(zzdVar.zzg()));
        }
        if (zzdVar.zzi()) {
            a(sb, i, "comparison_value", zzdVar.zzd());
        }
        if (zzdVar.zzl()) {
            a(sb, i, "min_comparison_value", zzdVar.zzf());
        }
        if (zzdVar.zzk()) {
            a(sb, i, "max_comparison_value", zzdVar.zze());
        }
        m7120implements(sb, i);
        sb.append("}\n");
    }

    /* renamed from: throws, reason: not valid java name */
    public static zzfy.zzh m7128throws(zzfy.zzf zzfVar, String str) {
        for (zzfy.zzh zzhVar : zzfVar.zzh()) {
            if (zzhVar.zzg().equals(str)) {
                return zzhVar;
            }
        }
        return null;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m7129volatile(Uri.Builder builder, String str, String str2, Set<String> set) {
        if (set.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    public final void b(StringBuilder sb, int i, List<zzfy.zzh> list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        for (zzfy.zzh zzhVar : list) {
            if (zzhVar != null) {
                m7120implements(sb, i2);
                sb.append("param {\n");
                a(sb, i2, FacebookRequestErrorClassification.KEY_NAME, zzhVar.zzm() ? m7573goto().m6449case(zzhVar.zzg()) : null);
                a(sb, i2, "string_value", zzhVar.zzn() ? zzhVar.zzh() : null);
                a(sb, i2, "int_value", zzhVar.zzl() ? Long.valueOf(zzhVar.zzd()) : null);
                a(sb, i2, "double_value", zzhVar.zzj() ? Double.valueOf(zzhVar.zza()) : null);
                if (zzhVar.zzc() > 0) {
                    b(sb, i2, zzhVar.zzi());
                }
                m7120implements(sb, i2);
                sb.append("}\n");
            }
        }
    }

    public final boolean e(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(mo2257new().currentTimeMillis() - j) > j2;
    }

    @TargetApi(30)
    /* renamed from: finally, reason: not valid java name */
    public final zzno m7130finally(String str, zzfy.zzk.zza zzaVar, zzfy.zzf.zza zzaVar2, String str2) {
        int indexOf;
        if (!zzpn.zza() || !m7572else().m3012throws(str, C3684sQ.T)) {
            return null;
        }
        long currentTimeMillis = mo2257new().currentTimeMillis();
        String[] split = m7572else().m3007return(str, C3684sQ.t).split(",");
        HashSet hashSet = new HashSet(split.length);
        for (String str3 : split) {
            Objects.requireNonNull(str3);
            if (!hashSet.add(str3)) {
                throw new IllegalArgumentException("duplicate element: " + ((Object) str3));
            }
        }
        Set unmodifiableSet = DesugarCollections.unmodifiableSet(hashSet);
        YU yu = ((XU) this).f4519do.f4835do;
        String m950strictfp = yu.m2834final().m950strictfp(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(yu.m7572else().m3007return(str, C3684sQ.m));
        if (TextUtils.isEmpty(m950strictfp)) {
            builder.authority(yu.m7572else().m3007return(str, C3684sQ.n));
        } else {
            builder.authority(m950strictfp + "." + yu.m7572else().m3007return(str, C3684sQ.n));
        }
        builder.path(yu.m7572else().m3007return(str, C3684sQ.o));
        m7129volatile(builder, "gmp_app_id", zzaVar.zzx(), unmodifiableSet);
        m7129volatile(builder, "gmp_version", "106000", unmodifiableSet);
        String zzu = zzaVar.zzu();
        ZO m7572else = m7572else();
        SR<Boolean> sr = C3684sQ.W;
        if (m7572else.m3012throws(str, sr) && m2834final().m947protected(str)) {
            zzu = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        m7129volatile(builder, "app_instance_id", zzu, unmodifiableSet);
        m7129volatile(builder, "rdid", zzaVar.zzz(), unmodifiableSet);
        m7129volatile(builder, "bundle_id", zzaVar.zzt(), unmodifiableSet);
        String zze = zzaVar2.zze();
        String m1592throw = O2.m1592throw(zze, O4.f2547for, O4.f2538do);
        if (!TextUtils.isEmpty(m1592throw)) {
            zze = m1592throw;
        }
        m7129volatile(builder, "app_event_name", zze, unmodifiableSet);
        m7129volatile(builder, "app_version", String.valueOf(zzaVar.zzb()), unmodifiableSet);
        String zzy = zzaVar.zzy();
        if (m7572else().m3012throws(str, sr) && m2834final().m953transient(str) && !TextUtils.isEmpty(zzy) && (indexOf = zzy.indexOf(".")) != -1) {
            zzy = zzy.substring(0, indexOf);
        }
        m7129volatile(builder, "os_version", zzy, unmodifiableSet);
        m7129volatile(builder, "timestamp", String.valueOf(zzaVar2.zzc()), unmodifiableSet);
        boolean zzad = zzaVar.zzad();
        String str4 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        if (zzad) {
            m7129volatile(builder, "lat", AppEventsConstants.EVENT_PARAM_VALUE_YES, unmodifiableSet);
        }
        m7129volatile(builder, "privacy_sandbox_version", String.valueOf(zzaVar.zza()), unmodifiableSet);
        m7129volatile(builder, "trigger_uri_source", AppEventsConstants.EVENT_PARAM_VALUE_YES, unmodifiableSet);
        m7129volatile(builder, "trigger_uri_timestamp", String.valueOf(currentTimeMillis), unmodifiableSet);
        m7129volatile(builder, "request_uuid", str2, unmodifiableSet);
        List<zzfy.zzh> zzf = zzaVar2.zzf();
        Bundle bundle = new Bundle();
        for (zzfy.zzh zzhVar : zzf) {
            String zzg = zzhVar.zzg();
            if (zzhVar.zzj()) {
                bundle.putString(zzg, String.valueOf(zzhVar.zza()));
            } else if (zzhVar.zzk()) {
                bundle.putString(zzg, String.valueOf(zzhVar.zzb()));
            } else if (zzhVar.zzn()) {
                bundle.putString(zzg, zzhVar.zzh());
            } else if (zzhVar.zzl()) {
                bundle.putString(zzg, String.valueOf(zzhVar.zzd()));
            }
        }
        m7122interface(builder, m7572else().m3007return(str, C3684sQ.s).split("\\|"), bundle, unmodifiableSet);
        List<zzfy.zzo> zzab = zzaVar.zzab();
        Bundle bundle2 = new Bundle();
        for (zzfy.zzo zzoVar : zzab) {
            String zzg2 = zzoVar.zzg();
            if (zzoVar.zzi()) {
                bundle2.putString(zzg2, String.valueOf(zzoVar.zza()));
            } else if (zzoVar.zzj()) {
                bundle2.putString(zzg2, String.valueOf(zzoVar.zzb()));
            } else if (zzoVar.zzm()) {
                bundle2.putString(zzg2, zzoVar.zzh());
            } else if (zzoVar.zzk()) {
                bundle2.putString(zzg2, String.valueOf(zzoVar.zzc()));
            }
        }
        m7122interface(builder, m7572else().m3007return(str, C3684sQ.r).split("\\|"), bundle2, unmodifiableSet);
        if (!zzaVar.zzac()) {
            str4 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
        m7129volatile(builder, "dma", str4, unmodifiableSet);
        if (!zzaVar.zzw().isEmpty()) {
            m7129volatile(builder, "dma_cps", zzaVar.zzw(), unmodifiableSet);
        }
        if (m7572else().m3012throws(null, C3684sQ.Y) && zzaVar.zzae()) {
            zzfy.zza zzg3 = zzaVar.zzg();
            if (!zzg3.zzh().isEmpty()) {
                m7129volatile(builder, "dl_gclid", zzg3.zzh(), unmodifiableSet);
            }
            if (!zzg3.zzg().isEmpty()) {
                m7129volatile(builder, "dl_gbraid", zzg3.zzg(), unmodifiableSet);
            }
            if (!zzg3.zzf().isEmpty()) {
                m7129volatile(builder, "dl_gs", zzg3.zzf(), unmodifiableSet);
            }
            if (zzg3.zza() > 0) {
                m7129volatile(builder, "dl_ss_ts", String.valueOf(zzg3.zza()), unmodifiableSet);
            }
            if (!zzg3.zzk().isEmpty()) {
                m7129volatile(builder, "mr_gclid", zzg3.zzk(), unmodifiableSet);
            }
            if (!zzg3.zzj().isEmpty()) {
                m7129volatile(builder, "mr_gbraid", zzg3.zzj(), unmodifiableSet);
            }
            if (!zzg3.zzi().isEmpty()) {
                m7129volatile(builder, "mr_gs", zzg3.zzi(), unmodifiableSet);
            }
            if (zzg3.zzb() > 0) {
                m7129volatile(builder, "mr_click_ts", String.valueOf(zzg3.zzb()), unmodifiableSet);
            }
        }
        return new zzno(1, currentTimeMillis, builder.build().toString());
    }

    public final byte[] h(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            mo2249case().f13717do.m7368for("Failed to gzip content", e);
            throw e;
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final void m7131instanceof(StringBuilder sb, int i, zzfo.zzc zzcVar) {
        if (zzcVar == null) {
            return;
        }
        m7120implements(sb, i);
        sb.append("filter {\n");
        if (zzcVar.zzg()) {
            a(sb, i, "complement", Boolean.valueOf(zzcVar.zzf()));
        }
        if (zzcVar.zzi()) {
            a(sb, i, "param_name", m7573goto().m6449case(zzcVar.zze()));
        }
        if (zzcVar.zzj()) {
            int i2 = i + 1;
            zzfo.zzf zzd = zzcVar.zzd();
            if (zzd != null) {
                m7120implements(sb, i2);
                sb.append("string_filter");
                sb.append(" {\n");
                if (zzd.zzj()) {
                    a(sb, i2, "match_type", zzd.zzb().name());
                }
                if (zzd.zzi()) {
                    a(sb, i2, "expression", zzd.zze());
                }
                if (zzd.zzh()) {
                    a(sb, i2, "case_sensitive", Boolean.valueOf(zzd.zzg()));
                }
                if (zzd.zza() > 0) {
                    m7120implements(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str : zzd.zzf()) {
                        m7120implements(sb, i2 + 2);
                        sb.append(str);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                m7120implements(sb, i2);
                sb.append("}\n");
            }
        }
        if (zzcVar.zzh()) {
            m7127synchronized(sb, i + 1, "number_filter", zzcVar.zzc());
        }
        m7120implements(sb, i);
        sb.append("}\n");
    }

    public final byte[] j(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read <= 0) {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
        } catch (IOException e) {
            mo2249case().f13717do.m7368for("Failed to ungzip content", e);
            throw e;
        }
    }

    public final ArrayList k() {
        Context context = ((XU) this).f4519do.f4833do.f3688do;
        List<SR<?>> list = C3684sQ.f15460do;
        zzgu zza = zzgu.zza(context.getContentResolver(), zzhk.zza("com.google.android.gms.measurement"), new Runnable() { // from class: zQ
            @Override // java.lang.Runnable
            public final void run() {
                zzhj.zzc();
            }
        });
        Map<String, String> emptyMap = zza == null ? Collections.emptyMap() : zza.zza();
        if (emptyMap == null || emptyMap.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int intValue = C3684sQ.e.m2158do(null).intValue();
        for (Map.Entry<String, String> entry : emptyMap.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int parseInt = Integer.parseInt(entry.getValue());
                    if (parseInt != 0) {
                        arrayList.add(Integer.valueOf(parseInt));
                        if (arrayList.size() >= intValue) {
                            mo2249case().f13722new.m7368for("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e) {
                    mo2249case().f13722new.m7368for("Experiment ID NumberFormatException", e);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    /* renamed from: native, reason: not valid java name */
    public final long m7132native(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        m7571break().mo1960catch();
        MessageDigest N = C3395nV.N();
        if (N != null) {
            return C3395nV.m7579native(N.digest(bArr));
        }
        mo2249case().f13717do.m7369if("Failed to get MD5");
        return 0L;
    }

    /* renamed from: package, reason: not valid java name */
    public final String m7133package(zzfy.zzj zzjVar) {
        zzfy.zzc zzv;
        if (zzjVar == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        if (zzpu.zza() && m7572else().m3012throws(null, C3684sQ.J) && zzjVar.zza() > 0) {
            m7571break();
            if (C3395nV.C(zzjVar.zza(0).zzz())) {
                if (zzjVar.zzh()) {
                    a(sb, 0, "upload_subdomain", zzjVar.zze());
                }
                if (zzjVar.zzg()) {
                    a(sb, 0, "sgtm_join_id", zzjVar.zzd());
                }
            }
        }
        for (zzfy.zzk zzkVar : zzjVar.zzf()) {
            if (zzkVar != null) {
                m7120implements(sb, 1);
                sb.append("bundle {\n");
                if (zzkVar.zzbp()) {
                    a(sb, 1, "protocol_version", Integer.valueOf(zzkVar.zzf()));
                }
                if (zzpo.zza() && m7572else().m3012throws(zzkVar.zzz(), C3684sQ.I) && zzkVar.zzbs()) {
                    a(sb, 1, "session_stitching_token", zzkVar.zzao());
                }
                a(sb, 1, "platform", zzkVar.zzam());
                if (zzkVar.zzbk()) {
                    a(sb, 1, "gmp_version", Long.valueOf(zzkVar.zzn()));
                }
                if (zzkVar.zzbx()) {
                    a(sb, 1, "uploading_gmp_version", Long.valueOf(zzkVar.zzt()));
                }
                if (zzkVar.zzbi()) {
                    a(sb, 1, "dynamite_version", Long.valueOf(zzkVar.zzl()));
                }
                if (zzkVar.zzbb()) {
                    a(sb, 1, "config_version", Long.valueOf(zzkVar.zzj()));
                }
                a(sb, 1, "gmp_app_id", zzkVar.zzaj());
                a(sb, 1, "admob_app_id", zzkVar.zzy());
                a(sb, 1, "app_id", zzkVar.zzz());
                a(sb, 1, "app_version", zzkVar.zzac());
                if (zzkVar.zzay()) {
                    a(sb, 1, "app_version_major", Integer.valueOf(zzkVar.zzb()));
                }
                a(sb, 1, "firebase_instance_id", zzkVar.zzai());
                if (zzkVar.zzbg()) {
                    a(sb, 1, "dev_cert_hash", Long.valueOf(zzkVar.zzk()));
                }
                a(sb, 1, "app_store", zzkVar.zzab());
                if (zzkVar.zzbw()) {
                    a(sb, 1, "upload_timestamp_millis", Long.valueOf(zzkVar.zzs()));
                }
                if (zzkVar.zzbt()) {
                    a(sb, 1, "start_timestamp_millis", Long.valueOf(zzkVar.zzq()));
                }
                if (zzkVar.zzbj()) {
                    a(sb, 1, "end_timestamp_millis", Long.valueOf(zzkVar.zzm()));
                }
                if (zzkVar.zzbo()) {
                    a(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzkVar.zzp()));
                }
                if (zzkVar.zzbn()) {
                    a(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzkVar.zzo()));
                }
                a(sb, 1, "app_instance_id", zzkVar.zzaa());
                a(sb, 1, "resettable_device_id", zzkVar.zzan());
                a(sb, 1, "ds_id", zzkVar.zzah());
                if (zzkVar.zzbm()) {
                    a(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzkVar.zzav()));
                }
                a(sb, 1, "os_version", zzkVar.zzal());
                a(sb, 1, "device_model", zzkVar.zzag());
                a(sb, 1, "user_default_language", zzkVar.zzap());
                if (zzkVar.zzbv()) {
                    a(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzkVar.zzh()));
                }
                if (zzkVar.zzba()) {
                    a(sb, 1, "bundle_sequential_index", Integer.valueOf(zzkVar.zzc()));
                }
                if (zzpu.zza()) {
                    m7571break();
                    if (C3395nV.C(zzkVar.zzz()) && m7572else().m3012throws(null, C3684sQ.J) && zzkVar.zzbf()) {
                        a(sb, 1, "delivery_index", Integer.valueOf(zzkVar.zzd()));
                    }
                }
                if (zzkVar.zzbr()) {
                    a(sb, 1, "service_upload", Boolean.valueOf(zzkVar.zzaw()));
                }
                a(sb, 1, "health_monitor", zzkVar.zzak());
                if (zzkVar.zzbq()) {
                    a(sb, 1, "retry_counter", Integer.valueOf(zzkVar.zzg()));
                }
                if (zzkVar.zzbd()) {
                    a(sb, 1, "consent_signals", zzkVar.zzae());
                }
                if (zzkVar.zzbl()) {
                    a(sb, 1, "is_dma_region", Boolean.valueOf(zzkVar.zzau()));
                }
                if (zzkVar.zzbe()) {
                    a(sb, 1, "core_platform_services", zzkVar.zzaf());
                }
                if (zzkVar.zzbc()) {
                    a(sb, 1, "consent_diagnostics", zzkVar.zzad());
                }
                if (zzkVar.zzbu()) {
                    a(sb, 1, "target_os_version", Long.valueOf(zzkVar.zzr()));
                }
                if (zzpn.zza() && m7572else().m3012throws(zzkVar.zzz(), C3684sQ.T)) {
                    a(sb, 1, "ad_services_version", Integer.valueOf(zzkVar.zza()));
                    if (zzkVar.zzaz() && (zzv = zzkVar.zzv()) != null) {
                        m7120implements(sb, 2);
                        sb.append("attribution_eligibility_status {\n");
                        a(sb, 2, "eligible", Boolean.valueOf(zzv.zzf()));
                        a(sb, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(zzv.zzh()));
                        a(sb, 2, "pre_r", Boolean.valueOf(zzv.zzi()));
                        a(sb, 2, "r_extensions_too_old", Boolean.valueOf(zzv.zzj()));
                        a(sb, 2, "adservices_extension_too_old", Boolean.valueOf(zzv.zze()));
                        a(sb, 2, "ad_storage_not_allowed", Boolean.valueOf(zzv.zzd()));
                        a(sb, 2, "measurement_manager_disabled", Boolean.valueOf(zzv.zzg()));
                        m7120implements(sb, 2);
                        sb.append("}\n");
                    }
                }
                if (zzov.zza() && m7572else().m3012throws(null, C3684sQ.g0) && zzkVar.zzax()) {
                    zzfy.zza zzu = zzkVar.zzu();
                    m7120implements(sb, 2);
                    sb.append("ad_campaign_info {\n");
                    if (zzu.zzn()) {
                        a(sb, 2, "deep_link_gclid", zzu.zzh());
                    }
                    if (zzu.zzm()) {
                        a(sb, 2, "deep_link_gbraid", zzu.zzg());
                    }
                    if (zzu.zzl()) {
                        a(sb, 2, "deep_link_gad_source", zzu.zzf());
                    }
                    if (zzu.zzo()) {
                        a(sb, 2, "deep_link_session_millis", Long.valueOf(zzu.zza()));
                    }
                    if (zzu.zzs()) {
                        a(sb, 2, "market_referrer_gclid", zzu.zzk());
                    }
                    if (zzu.zzr()) {
                        a(sb, 2, "market_referrer_gbraid", zzu.zzj());
                    }
                    if (zzu.zzq()) {
                        a(sb, 2, "market_referrer_gad_source", zzu.zzi());
                    }
                    if (zzu.zzp()) {
                        a(sb, 2, "market_referrer_click_millis", Long.valueOf(zzu.zzb()));
                    }
                    m7120implements(sb, 2);
                    sb.append("}\n");
                }
                List<zzfy.zzo> zzas = zzkVar.zzas();
                if (zzas != null) {
                    for (zzfy.zzo zzoVar : zzas) {
                        if (zzoVar != null) {
                            m7120implements(sb, 2);
                            sb.append("user_property {\n");
                            a(sb, 2, "set_timestamp_millis", zzoVar.zzl() ? Long.valueOf(zzoVar.zzd()) : null);
                            a(sb, 2, FacebookRequestErrorClassification.KEY_NAME, m7573goto().m6451else(zzoVar.zzg()));
                            a(sb, 2, "string_value", zzoVar.zzh());
                            a(sb, 2, "int_value", zzoVar.zzk() ? Long.valueOf(zzoVar.zzc()) : null);
                            a(sb, 2, "double_value", zzoVar.zzi() ? Double.valueOf(zzoVar.zza()) : null);
                            m7120implements(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzfy.zzd> zzaq = zzkVar.zzaq();
                zzkVar.zzz();
                if (zzaq != null) {
                    for (zzfy.zzd zzdVar : zzaq) {
                        if (zzdVar != null) {
                            m7120implements(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzdVar.zzg()) {
                                a(sb, 2, "audience_id", Integer.valueOf(zzdVar.zza()));
                            }
                            if (zzdVar.zzh()) {
                                a(sb, 2, "new_audience", Boolean.valueOf(zzdVar.zzf()));
                            }
                            c(sb, "current_data", zzdVar.zzd());
                            if (zzdVar.zzi()) {
                                c(sb, "previous_data", zzdVar.zze());
                            }
                            m7120implements(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzfy.zzf> zzar = zzkVar.zzar();
                if (zzar != null) {
                    for (zzfy.zzf zzfVar : zzar) {
                        if (zzfVar != null) {
                            m7120implements(sb, 2);
                            sb.append("event {\n");
                            a(sb, 2, FacebookRequestErrorClassification.KEY_NAME, m7573goto().m6452for(zzfVar.zzg()));
                            if (zzfVar.zzk()) {
                                a(sb, 2, "timestamp_millis", Long.valueOf(zzfVar.zzd()));
                            }
                            if (zzfVar.zzj()) {
                                a(sb, 2, "previous_timestamp_millis", Long.valueOf(zzfVar.zzc()));
                            }
                            if (zzfVar.zzi()) {
                                a(sb, 2, "count", Integer.valueOf(zzfVar.zza()));
                            }
                            if (zzfVar.zzb() != 0) {
                                b(sb, 2, zzfVar.zzh());
                            }
                            m7120implements(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                m7120implements(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("} // End-of-batch\n");
        return sb.toString();
    }

    /* renamed from: static, reason: not valid java name */
    public final <T extends Parcelable> T m7134static(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            return creator.createFromParcel(obtain);
        } catch (SafeParcelReader.ParseException unused) {
            mo2249case().f13717do.m7369if("Failed to load parcelable from buffer");
            return null;
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final List<Long> m7135strictfp(List<Long> list, List<Integer> list2) {
        int i;
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                mo2249case().f13722new.m7368for("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    mo2249case().f13722new.m7367do(num, "Ignoring bit index greater than bitSet size", Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i2 = size2;
            i = size;
            size = i2;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i);
    }

    /* renamed from: switch, reason: not valid java name */
    public final zzfy.zzf m7136switch(C3213kQ c3213kQ) {
        zzfy.zzf.zza zza = zzfy.zzf.zze().zza(c3213kQ.f13986if);
        zzbe zzbeVar = c3213kQ.f13983do;
        zzbeVar.getClass();
        Bundle bundle = zzbeVar.f10312do;
        for (String str : bundle.keySet()) {
            zzfy.zzh.zza zza2 = zzfy.zzh.zze().zza(str);
            Object obj = bundle.get(str);
            Preconditions.checkNotNull(obj);
            m7137transient(zza2, obj);
            zza.zza(zza2);
        }
        if (m7572else().m3012throws(null, C3684sQ.u0)) {
            String str2 = c3213kQ.f13985for;
            if (!TextUtils.isEmpty(str2) && bundle.get("_o") == null) {
                zza.zza((zzfy.zzh) ((zzjt) zzfy.zzh.zze().zza("_o").zzb(str2).zzai()));
            }
        }
        return (zzfy.zzf) ((zzjt) zza.zzai());
    }

    /* renamed from: transient, reason: not valid java name */
    public final void m7137transient(zzfy.zzh.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zze().zzc().zzb().zzd();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
            return;
        }
        if (!(obj instanceof Bundle[])) {
            mo2249case().f13717do.m7368for("Ignoring invalid (type) event param value", obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                zzfy.zzh.zza zze = zzfy.zzh.zze();
                for (String str : bundle.keySet()) {
                    zzfy.zzh.zza zza = zzfy.zzh.zze().zza(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        zza.zza(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        zza.zzb((String) obj2);
                    } else if (obj2 instanceof Double) {
                        zza.zza(((Double) obj2).doubleValue());
                    }
                    zze.zza(zza);
                }
                if (zze.zza() > 0) {
                    arrayList.add((zzfy.zzh) ((zzjt) zze.zzai()));
                }
            }
        }
        zzaVar.zza(arrayList);
    }

    @Override // defpackage.WU
    /* renamed from: while */
    public final boolean mo372while() {
        return false;
    }
}
