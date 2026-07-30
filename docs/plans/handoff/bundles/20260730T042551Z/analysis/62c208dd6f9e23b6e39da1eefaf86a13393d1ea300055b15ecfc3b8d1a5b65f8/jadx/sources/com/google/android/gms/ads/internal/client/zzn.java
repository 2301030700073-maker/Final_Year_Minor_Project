package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzn {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Bundle f9679do = new Bundle();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public List f9682do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9683do = false;

    /* renamed from: do, reason: not valid java name */
    public int f9677do = -1;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Bundle f9687if = new Bundle();

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Bundle f9685for = new Bundle();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f9681do = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    public int f9686if = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9680do = null;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList f9688if = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    public int f9684for = 60000;

    /* renamed from: new, reason: not valid java name */
    public final int f9689new = RequestConfiguration.PublisherPrivacyPersonalizationState.DEFAULT.getValue();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f9678do = 0;

    public final zzm zza() {
        Bundle bundle = this.f9687if;
        Bundle bundle2 = this.f9679do;
        Bundle bundle3 = this.f9685for;
        return new zzm(8, -1L, bundle2, -1, this.f9682do, this.f9683do, this.f9677do, false, null, null, null, null, bundle, bundle3, this.f9681do, null, null, false, null, this.f9686if, this.f9680do, this.f9688if, this.f9684for, null, this.f9689new, this.f9678do);
    }

    public final zzn zzb(Bundle bundle) {
        this.f9679do = bundle;
        return this;
    }

    public final zzn zzc(int i) {
        this.f9684for = i;
        return this;
    }

    public final zzn zzd(boolean z) {
        this.f9683do = z;
        return this;
    }

    public final zzn zze(List list) {
        this.f9682do = list;
        return this;
    }

    public final zzn zzf(String str) {
        this.f9680do = str;
        return this;
    }

    public final zzn zzg(long j) {
        this.f9678do = j;
        return this;
    }

    public final zzn zzh(int i) {
        this.f9677do = i;
        return this;
    }

    public final zzn zzi(int i) {
        this.f9686if = i;
        return this;
    }
}
