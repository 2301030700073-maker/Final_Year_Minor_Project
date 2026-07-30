package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzher;
import com.google.android.gms.internal.ads.zzhfj;

/* loaded from: classes.dex */
public final class CsiParamDefaults_Factory implements zzher<CsiParamDefaults> {

    /* renamed from: do, reason: not valid java name */
    public final zzhfj f10114do;

    /* renamed from: if, reason: not valid java name */
    public final zzhfj f10115if;

    public CsiParamDefaults_Factory(zzhfj<Context> zzhfjVar, zzhfj<VersionInfoParcel> zzhfjVar2) {
        this.f10114do = zzhfjVar;
        this.f10115if = zzhfjVar2;
    }

    public static CsiParamDefaults_Factory create(zzhfj<Context> zzhfjVar, zzhfj<VersionInfoParcel> zzhfjVar2) {
        return new CsiParamDefaults_Factory(zzhfjVar, zzhfjVar2);
    }

    public static CsiParamDefaults newInstance(Context context, VersionInfoParcel versionInfoParcel) {
        return new CsiParamDefaults(context, versionInfoParcel);
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public CsiParamDefaults zzb() {
        return newInstance((Context) this.f10114do.zzb(), (VersionInfoParcel) this.f10115if.zzb());
    }
}
