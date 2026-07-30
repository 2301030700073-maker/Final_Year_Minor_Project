package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzc;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfr;
import com.google.android.gms.internal.measurement.zzgd;
import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.internal.measurement.zzkb;
import com.google.android.gms.internal.measurement.zzm;
import com.google.android.gms.internal.measurement.zzr;
import defpackage.C3628rT;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class IS extends WU implements InterfaceC2691eP {

    /* renamed from: case, reason: not valid java name */
    public final F2 f1514case;

    /* renamed from: do, reason: not valid java name */
    public final F2 f1515do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LS f1516do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0806cM f1517do;

    /* renamed from: else, reason: not valid java name */
    public final F2 f1518else;

    /* renamed from: for, reason: not valid java name */
    public final F2 f1519for;

    /* renamed from: goto, reason: not valid java name */
    public final F2 f1520goto;

    /* renamed from: if, reason: not valid java name */
    public final F2 f1521if;

    /* renamed from: new, reason: not valid java name */
    public final F2 f1522new;

    /* renamed from: this, reason: not valid java name */
    public final F2 f1523this;

    /* renamed from: try, reason: not valid java name */
    public final F2 f1524try;

    public IS(ZU zu) {
        super(zu);
        this.f1515do = new F2();
        this.f1521if = new F2();
        this.f1519for = new F2();
        this.f1522new = new F2();
        this.f1524try = new F2();
        this.f1518else = new F2();
        this.f1520goto = new F2();
        this.f1523this = new F2();
        this.f1514case = new F2();
        this.f1516do = new LS(this);
        this.f1517do = new C0806cM(this, 3);
    }

    /* renamed from: native, reason: not valid java name */
    public static F2 m934native(zzfr.zzd zzdVar) {
        F2 f2 = new F2();
        if (zzdVar != null) {
            for (zzfr.zzh zzhVar : zzdVar.zzn()) {
                f2.put(zzhVar.zzb(), zzhVar.zzc());
            }
        }
        return f2;
    }

    /* renamed from: return, reason: not valid java name */
    public static C3628rT.Cdo m935return(zzfr.zza.zze zzeVar) {
        int i = PS.f2788if[zzeVar.ordinal()];
        if (i == 1) {
            return C3628rT.Cdo.AD_STORAGE;
        }
        if (i == 2) {
            return C3628rT.Cdo.ANALYTICS_STORAGE;
        }
        if (i == 3) {
            return C3628rT.Cdo.AD_USER_DATA;
        }
        if (i != 4) {
            return null;
        }
        return C3628rT.Cdo.AD_PERSONALIZATION;
    }

    /* renamed from: abstract, reason: not valid java name */
    public final boolean m936abstract(String str, C3628rT.Cdo cdo) {
        mo1960catch();
        m942implements(str);
        zzfr.zza m940finally = m940finally(str);
        if (m940finally == null) {
            return false;
        }
        Iterator<zzfr.zza.C0061zza> it = m940finally.zzd().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            zzfr.zza.C0061zza next = it.next();
            if (cdo == m935return(next.zzc())) {
                if (next.zzb() == zzfr.zza.zzd.GRANTED) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: continue, reason: not valid java name */
    public final boolean m937continue(String str, String str2) {
        Boolean bool;
        mo1960catch();
        m942implements(str);
        if (AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(mo941if(str, "measurement.upload.blacklist_internal")) && C3395nV.E(str2)) {
            return true;
        }
        if (AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(mo941if(str, "measurement.upload.blacklist_public")) && C3395nV.F(str2)) {
            return true;
        }
        Map map = (Map) this.f1519for.getOrDefault(str, null);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* renamed from: default, reason: not valid java name */
    public final boolean m938default(String str, String str2, String str3, byte[] bArr) {
        byte[] bArr2;
        boolean z;
        boolean z2;
        m2733super();
        mo1960catch();
        Preconditions.checkNotEmpty(str);
        zzfr.zzd.zza zzcd = m948public(str, bArr).zzcd();
        if (zzcd == null) {
            return false;
        }
        m951switch(str, zzcd);
        m952throws(str, (zzfr.zzd) ((zzjt) zzcd.zzai()));
        zzfr.zzd zzdVar = (zzfr.zzd) ((zzjt) zzcd.zzai());
        F2 f2 = this.f1524try;
        f2.put(str, zzdVar);
        this.f1518else.put(str, zzcd.zzc());
        this.f1520goto.put(str, str2);
        this.f1523this.put(str, str3);
        this.f1515do.put(str, m934native((zzfr.zzd) ((zzjt) zzcd.zzai())));
        C2868hP m2833const = m2833const();
        ArrayList arrayList = new ArrayList(zzcd.zzd());
        String str4 = "app_id=? and audience_id=?";
        Preconditions.checkNotNull(arrayList);
        int i = 0;
        while (i < arrayList.size()) {
            zzfo.zza.C0060zza zzcd2 = ((zzfo.zza) arrayList.get(i)).zzcd();
            if (zzcd2.zza() != 0) {
                int i2 = 0;
                while (i2 < zzcd2.zza()) {
                    zzfo.zzb.zza zzcd3 = zzcd2.zza(i2).zzcd();
                    zzfo.zzb.zza zzaVar = (zzfo.zzb.zza) ((zzjt.zzb) zzcd3.clone());
                    F2 f22 = f2;
                    String m1592throw = O2.m1592throw(zzcd3.zzb(), O4.f2538do, O4.f2547for);
                    if (m1592throw != null) {
                        zzaVar.zza(m1592throw);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    boolean z3 = z2;
                    int i3 = 0;
                    while (i3 < zzcd3.zza()) {
                        zzfo.zzc zza = zzcd3.zza(i3);
                        zzfo.zzb.zza zzaVar2 = zzcd3;
                        zzfr.zzd.zza zzaVar3 = zzcd;
                        String str5 = str4;
                        String m1592throw2 = O2.m1592throw(zza.zze(), C0315Kc.f1831do, C0315Kc.f1838if);
                        if (m1592throw2 != null) {
                            zzaVar.zza(i3, (zzfo.zzc) ((zzjt) zza.zzcd().zza(m1592throw2).zzai()));
                            z3 = true;
                        }
                        i3++;
                        zzcd3 = zzaVar2;
                        zzcd = zzaVar3;
                        str4 = str5;
                    }
                    zzfr.zzd.zza zzaVar4 = zzcd;
                    String str6 = str4;
                    if (z3) {
                        zzcd2 = zzcd2.zza(i2, zzaVar);
                        arrayList.set(i, (zzfo.zza) ((zzjt) zzcd2.zzai()));
                    }
                    i2++;
                    f2 = f22;
                    zzcd = zzaVar4;
                    str4 = str6;
                }
            }
            zzfr.zzd.zza zzaVar5 = zzcd;
            F2 f23 = f2;
            String str7 = str4;
            if (zzcd2.zzb() != 0) {
                for (int i4 = 0; i4 < zzcd2.zzb(); i4++) {
                    zzfo.zze zzb = zzcd2.zzb(i4);
                    String m1592throw3 = O2.m1592throw(zzb.zze(), C3645ro.f15326if, C3645ro.f15323for);
                    if (m1592throw3 != null) {
                        zzfo.zza.C0060zza zza2 = zzcd2.zza(i4, zzb.zzcd().zza(m1592throw3));
                        arrayList.set(i, (zzfo.zza) ((zzjt) zza2.zzai()));
                        zzcd2 = zza2;
                    }
                }
            }
            i++;
            f2 = f23;
            zzcd = zzaVar5;
            str4 = str7;
        }
        zzfr.zzd.zza zzaVar6 = zzcd;
        F2 f24 = f2;
        String str8 = str4;
        m2833const.m2733super();
        m2833const.mo1960catch();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(arrayList);
        SQLiteDatabase m6806native = m2833const.m6806native();
        m6806native.beginTransaction();
        try {
            m2833const.m2733super();
            m2833const.mo1960catch();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase m6806native2 = m2833const.m6806native();
            m6806native2.delete("property_filters", "app_id=?", new String[]{str});
            m6806native2.delete("event_filters", "app_id=?", new String[]{str});
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                zzfo.zza zzaVar7 = (zzfo.zza) it.next();
                m2833const.m2733super();
                m2833const.mo1960catch();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzaVar7);
                if (zzaVar7.zzg()) {
                    int zza3 = zzaVar7.zza();
                    Iterator<zzfo.zzb> it2 = zzaVar7.zze().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (!it2.next().zzl()) {
                                m2833const.mo2249case().f13722new.m7367do(C3156jS.m7106while(str), "Event filter with no ID. Audience definition ignored. appId, audienceId", Integer.valueOf(zza3));
                                break;
                            }
                        } else {
                            Iterator<zzfo.zze> it3 = zzaVar7.zzf().iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    if (!it3.next().zzi()) {
                                        m2833const.mo2249case().f13722new.m7367do(C3156jS.m7106while(str), "Property filter with no ID. Audience definition ignored. appId, audienceId", Integer.valueOf(zza3));
                                        break;
                                    }
                                } else {
                                    Iterator<zzfo.zzb> it4 = zzaVar7.zze().iterator();
                                    while (true) {
                                        if (!it4.hasNext()) {
                                            z = true;
                                            break;
                                        }
                                        if (!m2833const.f(str, zza3, it4.next())) {
                                            z = false;
                                            break;
                                        }
                                    }
                                    if (z) {
                                        Iterator<zzfo.zze> it5 = zzaVar7.zzf().iterator();
                                        while (true) {
                                            if (!it5.hasNext()) {
                                                break;
                                            }
                                            if (!m2833const.g(str, zza3, it5.next())) {
                                                z = false;
                                                break;
                                            }
                                        }
                                    }
                                    if (!z) {
                                        m2833const.m2733super();
                                        m2833const.mo1960catch();
                                        Preconditions.checkNotEmpty(str);
                                        SQLiteDatabase m6806native3 = m2833const.m6806native();
                                        String str9 = str8;
                                        m6806native3.delete("property_filters", str9, new String[]{str, String.valueOf(zza3)});
                                        m6806native3.delete("event_filters", str9, new String[]{str, String.valueOf(zza3)});
                                        str8 = str9;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    m2833const.mo2249case().f13722new.m7368for("Audience with no ID. appId", C3156jS.m7106while(str));
                }
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it6 = arrayList.iterator();
            while (it6.hasNext()) {
                zzfo.zza zzaVar8 = (zzfo.zza) it6.next();
                arrayList2.add(zzaVar8.zzg() ? Integer.valueOf(zzaVar8.zza()) : null);
            }
            m2833const.q(str, arrayList2);
            m6806native.setTransactionSuccessful();
            try {
                zzaVar6.zzb();
                bArr2 = ((zzfr.zzd) ((zzjt) zzaVar6.zzai())).zzca();
            } catch (RuntimeException e) {
                mo2249case().f13722new.m7367do(C3156jS.m7106while(str), "Unable to serialize reduced-size config. Storing full config instead. appId", e);
                bArr2 = bArr;
            }
            C2868hP m2833const2 = m2833const();
            Preconditions.checkNotEmpty(str);
            m2833const2.mo1960catch();
            m2833const2.m2733super();
            ContentValues contentValues = new ContentValues();
            contentValues.put("remote_config", bArr2);
            contentValues.put("config_last_modified_time", str2);
            contentValues.put("e_tag", str3);
            try {
                if (m2833const2.m6806native().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                    m2833const2.mo2249case().f13717do.m7368for("Failed to update remote config (got 0). appId", C3156jS.m7106while(str));
                }
            } catch (SQLiteException e2) {
                m2833const2.mo2249case().f13717do.m7367do(C3156jS.m7106while(str), "Error storing remote config. appId", e2);
            }
            f24.put(str, (zzfr.zzd) ((zzjt) zzaVar6.zzai()));
            return true;
        } finally {
            m6806native.endTransaction();
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final int m939extends(String str, String str2) {
        Integer num;
        mo1960catch();
        m942implements(str);
        Map map = (Map) this.f1514case.getOrDefault(str, null);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* renamed from: finally, reason: not valid java name */
    public final zzfr.zza m940finally(String str) {
        mo1960catch();
        m942implements(str);
        zzfr.zzd m945package = m945package(str);
        if (m945package == null || !m945package.zzo()) {
            return null;
        }
        return m945package.zzd();
    }

    @Override // defpackage.InterfaceC2691eP
    /* renamed from: if, reason: not valid java name */
    public final String mo941if(String str, String str2) {
        mo1960catch();
        m942implements(str);
        Map map = (Map) this.f1515do.getOrDefault(str, null);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0112  */
    /* renamed from: implements, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m942implements(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.IS.m942implements(java.lang.String):void");
    }

    /* renamed from: import, reason: not valid java name */
    public final long m943import(String str) {
        String mo941if = mo941if(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(mo941if)) {
            return 0L;
        }
        try {
            return Long.parseLong(mo941if);
        } catch (NumberFormatException e) {
            C3156jS mo2249case = mo2249case();
            mo2249case.f13722new.m7367do(C3156jS.m7106while(str), "Unable to parse timezone offset. appId", e);
            return 0L;
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public final boolean m944interface(String str) {
        mo1960catch();
        m942implements(str);
        zzfr.zza m940finally = m940finally(str);
        return m940finally == null || !m940finally.zzh() || m940finally.zzg();
    }

    /* renamed from: package, reason: not valid java name */
    public final zzfr.zzd m945package(String str) {
        m2733super();
        mo1960catch();
        Preconditions.checkNotEmpty(str);
        m942implements(str);
        return (zzfr.zzd) this.f1524try.getOrDefault(str, null);
    }

    /* renamed from: private, reason: not valid java name */
    public final boolean m946private(String str, String str2) {
        Boolean bool;
        mo1960catch();
        m942implements(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.f1522new.getOrDefault(str, null);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* renamed from: protected, reason: not valid java name */
    public final boolean m947protected(String str) {
        mo1960catch();
        m942implements(str);
        F2 f2 = this.f1521if;
        return f2.getOrDefault(str, null) != null && ((Set) f2.getOrDefault(str, null)).contains("app_instance_id");
    }

    /* renamed from: public, reason: not valid java name */
    public final zzfr.zzd m948public(String str, byte[] bArr) {
        if (bArr == null) {
            return zzfr.zzd.zzg();
        }
        try {
            zzfr.zzd zzdVar = (zzfr.zzd) ((zzjt) ((zzfr.zzd.zza) C3159jV.m7118default(zzfr.zzd.zze(), bArr)).zzai());
            mo2249case().f13723this.m7367do(zzdVar.zzr() ? Long.valueOf(zzdVar.zzc()) : null, "Parsed config. version, gmp_app_id", zzdVar.zzp() ? zzdVar.zzi() : null);
            return zzdVar;
        } catch (zzkb e) {
            mo2249case().f13722new.m7367do(C3156jS.m7106while(str), "Unable to merge remote config. appId", e);
            return zzfr.zzd.zzg();
        } catch (RuntimeException e2) {
            mo2249case().f13722new.m7367do(C3156jS.m7106while(str), "Unable to merge remote config. appId", e2);
            return zzfr.zzd.zzg();
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final EnumC3746tT m949static(String str, C3628rT.Cdo cdo) {
        mo1960catch();
        m942implements(str);
        zzfr.zza m940finally = m940finally(str);
        EnumC3746tT enumC3746tT = EnumC3746tT.UNINITIALIZED;
        if (m940finally == null) {
            return enumC3746tT;
        }
        for (zzfr.zza.C0061zza c0061zza : m940finally.zzf()) {
            if (m935return(c0061zza.zzc()) == cdo) {
                int i = PS.f2787for[c0061zza.zzb().ordinal()];
                return i != 1 ? i != 2 ? enumC3746tT : EnumC3746tT.GRANTED : EnumC3746tT.DENIED;
            }
        }
        return enumC3746tT;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final String m950strictfp(String str) {
        mo1960catch();
        m942implements(str);
        return (String) this.f1518else.getOrDefault(str, null);
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m951switch(String str, zzfr.zzd.zza zzaVar) {
        HashSet hashSet = new HashSet();
        F2 f2 = new F2();
        F2 f22 = new F2();
        F2 f23 = new F2();
        if (zzaVar != null) {
            Iterator<zzfr.zzb> it = zzaVar.zze().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().zzb());
            }
            for (int i = 0; i < zzaVar.zza(); i++) {
                zzfr.zzc.zza zzcd = zzaVar.zza(i).zzcd();
                if (zzcd.zzb().isEmpty()) {
                    mo2249case().f13722new.m7369if("EventConfig contained null event name");
                } else {
                    String zzb = zzcd.zzb();
                    String m1592throw = O2.m1592throw(zzcd.zzb(), O4.f2538do, O4.f2547for);
                    if (!TextUtils.isEmpty(m1592throw)) {
                        zzcd = zzcd.zza(m1592throw);
                        zzaVar.zza(i, zzcd);
                    }
                    if (zzcd.zze() && zzcd.zzc()) {
                        f2.put(zzb, Boolean.TRUE);
                    }
                    if (zzcd.zzf() && zzcd.zzd()) {
                        f22.put(zzcd.zzb(), Boolean.TRUE);
                    }
                    if (zzcd.zzg()) {
                        if (zzcd.zza() < 2 || zzcd.zza() > 65535) {
                            C3156jS mo2249case = mo2249case();
                            mo2249case.f13722new.m7367do(zzcd.zzb(), "Invalid sampling rate. Event name, sample rate", Integer.valueOf(zzcd.zza()));
                        } else {
                            f23.put(zzcd.zzb(), Integer.valueOf(zzcd.zza()));
                        }
                    }
                }
            }
        }
        this.f1521if.put(str, hashSet);
        this.f1519for.put(str, f2);
        this.f1522new.put(str, f22);
        this.f1514case.put(str, f23);
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m952throws(final String str, zzfr.zzd zzdVar) {
        int zza = zzdVar.zza();
        LS ls = this.f1516do;
        if (zza == 0) {
            ls.remove(str);
            return;
        }
        C3156jS mo2249case = mo2249case();
        mo2249case.f13723this.m7368for("EES programs found", Integer.valueOf(zzdVar.zza()));
        zzgd.zzc zzcVar = zzdVar.zzm().get(0);
        try {
            zzb zzbVar = new zzb();
            zzbVar.zza("internal.remoteConfig", new Callable() { // from class: KS
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzm("internal.remoteConfig", new NS(IS.this, str));
                }
            });
            zzbVar.zza("internal.appMetadata", new JS(this, str));
            zzbVar.zza("internal.logger", new Callable() { // from class: MS
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzr(IS.this.f1517do);
                }
            });
            zzbVar.zza(zzcVar);
            ls.put(str, zzbVar);
            mo2249case().f13723this.m7367do(str, "EES program loaded for appId, activities", Integer.valueOf(zzcVar.zza().zza()));
            Iterator<zzgd.zzb> it = zzcVar.zza().zzd().iterator();
            while (it.hasNext()) {
                mo2249case().f13723this.m7368for("EES program activity", it.next().zzb());
            }
        } catch (zzc unused) {
            mo2249case().f13717do.m7368for("Failed to load EES program. appId", str);
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public final boolean m953transient(String str) {
        mo1960catch();
        m942implements(str);
        F2 f2 = this.f1521if;
        if (f2.getOrDefault(str, null) != null) {
            return ((Set) f2.getOrDefault(str, null)).contains("os_version") || ((Set) f2.getOrDefault(str, null)).contains("device_info");
        }
        return false;
    }

    /* renamed from: volatile, reason: not valid java name */
    public final boolean m954volatile(String str) {
        zzfr.zzd zzdVar;
        return (TextUtils.isEmpty(str) || (zzdVar = (zzfr.zzd) this.f1524try.getOrDefault(str, null)) == null || zzdVar.zza() == 0) ? false : true;
    }

    @Override // defpackage.WU
    /* renamed from: while */
    public final boolean mo372while() {
        return false;
    }
}
