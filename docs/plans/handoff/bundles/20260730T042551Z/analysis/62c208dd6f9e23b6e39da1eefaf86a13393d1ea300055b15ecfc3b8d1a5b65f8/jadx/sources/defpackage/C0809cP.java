package defpackage;

import com.facebook.appevents.AppEventsConstants;
import defpackage.C3628rT;
import java.util.EnumMap;

/* renamed from: cP, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0809cP {

    /* renamed from: do, reason: not valid java name */
    public final EnumMap<C3628rT.Cdo, EnumC2809gP> f8528do;

    public C0809cP() {
        this.f8528do = new EnumMap<>(C3628rT.Cdo.class);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4901do(C3628rT.Cdo cdo, int i) {
        EnumC2809gP enumC2809gP = EnumC2809gP.UNSET;
        if (i != -30) {
            if (i != -20) {
                if (i == -10) {
                    enumC2809gP = EnumC2809gP.MANIFEST;
                } else if (i != 0) {
                    if (i == 30) {
                        enumC2809gP = EnumC2809gP.INITIALIZATION;
                    }
                }
            }
            enumC2809gP = EnumC2809gP.API;
        } else {
            enumC2809gP = EnumC2809gP.TCF;
        }
        this.f8528do.put((EnumMap<C3628rT.Cdo, EnumC2809gP>) cdo, (C3628rT.Cdo) enumC2809gP);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4902if(C3628rT.Cdo cdo, EnumC2809gP enumC2809gP) {
        this.f8528do.put((EnumMap<C3628rT.Cdo, EnumC2809gP>) cdo, (C3628rT.Cdo) enumC2809gP);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(AppEventsConstants.EVENT_PARAM_VALUE_YES);
        for (C3628rT.Cdo cdo : C3628rT.Cdo.values()) {
            EnumC2809gP enumC2809gP = this.f8528do.get(cdo);
            if (enumC2809gP == null) {
                enumC2809gP = EnumC2809gP.UNSET;
            }
            sb.append(enumC2809gP.f13168do);
        }
        return sb.toString();
    }

    public C0809cP(EnumMap<C3628rT.Cdo, EnumC2809gP> enumMap) {
        EnumMap<C3628rT.Cdo, EnumC2809gP> enumMap2 = new EnumMap<>((Class<C3628rT.Cdo>) C3628rT.Cdo.class);
        this.f8528do = enumMap2;
        enumMap2.putAll(enumMap);
    }
}
