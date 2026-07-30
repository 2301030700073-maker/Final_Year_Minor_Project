package defpackage;

import android.os.Bundle;
import com.facebook.internal.security.CertificateUtil;
import defpackage.C3628rT;
import j$.util.Objects;
import java.util.EnumMap;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class MP {

    /* renamed from: do, reason: not valid java name */
    public static final MP f2176do = new MP(100, (String) null, (Boolean) null, (Boolean) null);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f2177do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Boolean f2178do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f2179do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EnumMap<C3628rT.Cdo, EnumC3746tT> f2180do;

    /* renamed from: if, reason: not valid java name */
    public final String f2181if;

    public MP() {
        throw null;
    }

    public MP(int i, String str, Boolean bool, Boolean bool2) {
        EnumMap<C3628rT.Cdo, EnumC3746tT> enumMap = new EnumMap<>((Class<C3628rT.Cdo>) C3628rT.Cdo.class);
        this.f2180do = enumMap;
        enumMap.put((EnumMap<C3628rT.Cdo, EnumC3746tT>) C3628rT.Cdo.AD_USER_DATA, (C3628rT.Cdo) C3628rT.m7951else(bool));
        this.f2177do = i;
        this.f2179do = m1427case();
        this.f2178do = bool2;
        this.f2181if = str;
    }

    /* renamed from: do, reason: not valid java name */
    public static Boolean m1424do(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        int i = C2751fQ.f12936do[C3628rT.m7953goto(bundle.getString("ad_personalization")).ordinal()];
        if (i == 3) {
            return Boolean.FALSE;
        }
        if (i != 4) {
            return null;
        }
        return Boolean.TRUE;
    }

    /* renamed from: for, reason: not valid java name */
    public static MP m1425for(String str) {
        if (str == null || str.length() <= 0) {
            return f2176do;
        }
        String[] split = str.split(CertificateUtil.DELIMITER);
        int parseInt = Integer.parseInt(split[0]);
        EnumMap enumMap = new EnumMap(C3628rT.Cdo.class);
        C3628rT.Cdo[] cdoArr = EnumC3687sT.DMA.f15500do;
        int length = cdoArr.length;
        int i = 1;
        int i2 = 0;
        while (i2 < length) {
            enumMap.put((EnumMap) cdoArr[i2], (C3628rT.Cdo) C3628rT.m7948case(split[i].charAt(0)));
            i2++;
            i++;
        }
        return new MP((EnumMap<C3628rT.Cdo, EnumC3746tT>) enumMap, parseInt, (Boolean) null, (String) null);
    }

    /* renamed from: if, reason: not valid java name */
    public static MP m1426if(int i, Bundle bundle) {
        if (bundle == null) {
            return new MP(i, (String) null, (Boolean) null, (Boolean) null);
        }
        EnumMap enumMap = new EnumMap(C3628rT.Cdo.class);
        for (C3628rT.Cdo cdo : EnumC3687sT.DMA.f15500do) {
            enumMap.put((EnumMap) cdo, (C3628rT.Cdo) C3628rT.m7953goto(bundle.getString(cdo.f15284break)));
        }
        return new MP((EnumMap<C3628rT.Cdo, EnumC3746tT>) enumMap, i, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    /* renamed from: case, reason: not valid java name */
    public final String m1427case() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2177do);
        for (C3628rT.Cdo cdo : EnumC3687sT.DMA.f15500do) {
            sb.append(CertificateUtil.DELIMITER);
            sb.append(C3628rT.m7950do(this.f2180do.get(cdo)));
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof MP)) {
            return false;
        }
        MP mp = (MP) obj;
        if (this.f2179do.equalsIgnoreCase(mp.f2179do) && Objects.equals(this.f2178do, mp.f2178do)) {
            return Objects.equals(this.f2181if, mp.f2181if);
        }
        return false;
    }

    public final int hashCode() {
        Boolean bool = this.f2178do;
        int i = bool == null ? 3 : bool == Boolean.TRUE ? 7 : 13;
        String str = this.f2181if;
        return ((str == null ? 17 : str.hashCode()) * 137) + (i * 29) + this.f2179do.hashCode();
    }

    /* renamed from: new, reason: not valid java name */
    public final EnumC3746tT m1428new() {
        EnumC3746tT enumC3746tT = this.f2180do.get(C3628rT.Cdo.AD_USER_DATA);
        return enumC3746tT == null ? EnumC3746tT.UNINITIALIZED : enumC3746tT;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(C3628rT.m7954if(this.f2177do));
        for (C3628rT.Cdo cdo : EnumC3687sT.DMA.f15500do) {
            sb.append(",");
            sb.append(cdo.f15284break);
            sb.append("=");
            EnumC3746tT enumC3746tT = this.f2180do.get(cdo);
            if (enumC3746tT == null) {
                sb.append("uninitialized");
            } else {
                int i = C2751fQ.f12936do[enumC3746tT.ordinal()];
                if (i == 1) {
                    sb.append("uninitialized");
                } else if (i == 2) {
                    sb.append("eu_consent_policy");
                } else if (i == 3) {
                    sb.append("denied");
                } else if (i == 4) {
                    sb.append("granted");
                }
            }
        }
        Boolean bool = this.f2178do;
        if (bool != null) {
            sb.append(",isDmaRegion=");
            sb.append(bool);
        }
        String str = this.f2181if;
        if (str != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m1429try() {
        Iterator<EnumC3746tT> it = this.f2180do.values().iterator();
        while (it.hasNext()) {
            if (it.next() != EnumC3746tT.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public MP(EnumMap<C3628rT.Cdo, EnumC3746tT> enumMap, int i, Boolean bool, String str) {
        EnumMap<C3628rT.Cdo, EnumC3746tT> enumMap2 = new EnumMap<>((Class<C3628rT.Cdo>) C3628rT.Cdo.class);
        this.f2180do = enumMap2;
        enumMap2.putAll(enumMap);
        this.f2177do = i;
        this.f2179do = m1427case();
        this.f2178do = bool;
        this.f2181if = str;
    }
}
