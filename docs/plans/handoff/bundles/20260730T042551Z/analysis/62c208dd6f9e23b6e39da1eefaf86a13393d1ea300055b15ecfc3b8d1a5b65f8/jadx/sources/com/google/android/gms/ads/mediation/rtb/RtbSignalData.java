package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;

/* loaded from: classes.dex */
public class RtbSignalData {

    /* renamed from: do, reason: not valid java name */
    public final Context f9950do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f9951do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AdSize f9952do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List f9953do;

    public RtbSignalData(Context context, List<MediationConfiguration> list, Bundle bundle, AdSize adSize) {
        this.f9950do = context;
        this.f9953do = list;
        this.f9951do = bundle;
        this.f9952do = adSize;
    }

    public AdSize getAdSize() {
        return this.f9952do;
    }

    @Deprecated
    public MediationConfiguration getConfiguration() {
        List list = this.f9953do;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return (MediationConfiguration) list.get(0);
    }

    public List<MediationConfiguration> getConfigurations() {
        return this.f9953do;
    }

    public Context getContext() {
        return this.f9950do;
    }

    public Bundle getNetworkExtras() {
        return this.f9951do;
    }
}
