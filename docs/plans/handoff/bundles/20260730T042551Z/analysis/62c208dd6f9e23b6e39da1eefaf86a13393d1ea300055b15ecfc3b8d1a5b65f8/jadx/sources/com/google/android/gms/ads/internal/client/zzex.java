package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbej;
import com.google.android.gms.internal.ads.zzbln;
import com.google.android.gms.internal.ads.zzblv;
import com.google.android.gms.internal.ads.zzblw;
import com.google.android.gms.internal.ads.zzbow;
import com.google.android.gms.internal.ads.zzbpa;
import com.google.android.gms.internal.ads.zzfve;
import defpackage.BinderC3652rv;
import defpackage.Creturn;
import defpackage.ER;
import defpackage.FP;
import defpackage.FR;
import defpackage.GR;
import defpackage.HR;
import j$.util.DesugarCollections;
import j$.util.Map;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class zzex {

    /* renamed from: do, reason: not valid java name */
    public static zzex f9646do;
    public static final Set zza = new HashSet(Arrays.asList(AdFormat.APP_OPEN_AD, AdFormat.INTERSTITIAL, AdFormat.REWARDED));

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzcz f9649do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9650do = new Object();

    /* renamed from: if, reason: not valid java name */
    public final Object f9654if = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9652do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f9655if = false;

    /* renamed from: for, reason: not valid java name */
    public final Object f9653for = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OnAdInspectorClosedListener f9647do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RequestConfiguration f9648do = new RequestConfiguration.Builder().build();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f9651do = new ArrayList();

    /* renamed from: do, reason: not valid java name */
    public static zzblw m5546do(List list) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzbln zzblnVar = (zzbln) it.next();
            hashMap.put(zzblnVar.zza, new zzblv(zzblnVar.zzb ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzblnVar.zzd, zzblnVar.zzc));
        }
        return new zzblw(hashMap);
    }

    /* renamed from: new, reason: not valid java name */
    public static /* bridge */ /* synthetic */ Optional m5547new(zzft zzftVar) {
        String str = zzftVar.zza;
        AdFormat adFormat = AdFormat.getAdFormat(zzftVar.zzb);
        if (adFormat == null) {
            return Optional.empty();
        }
        zzm zzmVar = zzftVar.zzc;
        final AdRequest.Builder builder = new AdRequest.Builder();
        List list = zzmVar.zze;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                builder.addKeyword((String) it.next());
            }
        }
        builder.zzc(zzmVar.zzm);
        for (String str2 : zzmVar.zzn.keySet()) {
            builder.addCustomTargeting(str2, zzmVar.zzn.getString(str2));
        }
        builder.setAdString(zzmVar.zzx);
        Optional.ofNullable(zzmVar.zzl).ifPresent(new Consumer() { // from class: com.google.android.gms.ads.internal.client.zzq
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AdRequest.Builder.this.setContentUrl((String) obj);
            }

            @Override // java.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        builder.setNeighboringContentUrls(zzmVar.zzv);
        builder.setRequestAgent(zzmVar.zzp);
        AdRequest build = builder.build();
        PreloadConfiguration.Builder builder2 = new PreloadConfiguration.Builder(str, adFormat);
        builder2.setAdRequest(build);
        builder2.setBufferSize(zzftVar.zzd);
        return Optional.of(builder2.build());
    }

    public static zzex zzf() {
        zzex zzexVar;
        synchronized (zzex.class) {
            if (f9646do == null) {
                f9646do = new zzex();
            }
            zzexVar = f9646do;
        }
        return zzexVar;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5548for(Context context) {
        if (this.f9649do == null) {
            this.f9649do = (zzcz) new FP(zzbc.zza(), context).m7098new(context, false);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m5549if(Context context) {
        try {
            zzbow.zza().zzb(context, null);
            this.f9649do.zzk();
            this.f9649do.zzl(null, new BinderC3652rv(null));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("MobileAdsSettingManager initialization failed", e);
        }
    }

    public final float zza() {
        synchronized (this.f9653for) {
            zzcz zzczVar = this.f9649do;
            float f = 1.0f;
            if (zzczVar == null) {
                return 1.0f;
            }
            try {
                f = zzczVar.zze();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to get app volume.", e);
            }
            return f;
        }
    }

    public final RequestConfiguration zzc() {
        return this.f9648do;
    }

    public final InitializationStatus zze() {
        zzblw m5546do;
        synchronized (this.f9653for) {
            Preconditions.checkState(this.f9649do != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                m5546do = m5546do(this.f9649do.zzg());
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to get Initialization status.");
                return new InitializationStatus() { // from class: com.google.android.gms.ads.internal.client.zzem
                    @Override // com.google.android.gms.ads.initialization.InitializationStatus
                    public final Map getAdapterStatusMap() {
                        HashMap hashMap = new HashMap();
                        hashMap.put("com.google.android.gms.ads.MobileAds", new FR());
                        return hashMap;
                    }
                };
            }
        }
        return m5546do;
    }

    public final Status zzg(Context context, List list, PreloadCallback preloadCallback) {
        boolean z;
        Status status;
        int bufferSize;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PreloadConfiguration preloadConfiguration = (PreloadConfiguration) it.next();
            String m7982new = Creturn.m7982new(String.valueOf(preloadConfiguration.getAdFormat()), "#", preloadConfiguration.getAdUnitId());
            hashMap.put(m7982new, Integer.valueOf(((Integer) Map.EL.getOrDefault(hashMap, m7982new, 0)).intValue() + 1));
        }
        Iterator it2 = hashMap.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            if (((Integer) ((Map.Entry) it2.next()).getValue()).intValue() > 1) {
                hashSet.add("Preload configurations include duplicated ad unit IDs and ad format combinations");
                z = true;
                break;
            }
        }
        HashMap hashMap2 = new HashMap();
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            PreloadConfiguration preloadConfiguration2 = (PreloadConfiguration) it3.next();
            AdFormat adFormat = preloadConfiguration2.getAdFormat();
            if (zza.contains(preloadConfiguration2.getAdFormat())) {
                Map.EL.compute(hashMap2, adFormat, new BiFunction() { // from class: com.google.android.gms.ads.internal.client.zzen
                    @Override // java.util.function.BiFunction
                    public final /* synthetic */ BiFunction andThen(Function function) {
                        return BiFunction$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.BiFunction
                    public final Object apply(Object obj, Object obj2) {
                        Integer num = (Integer) obj2;
                        Set set = zzex.zza;
                        return Integer.valueOf(num != null ? 1 + num.intValue() : 1);
                    }
                });
                if (preloadConfiguration2.getBufferSize() > 15) {
                    hashSet.add(String.format(Locale.US, "Preload configurations' buffer size exceeds the maximum limit %d for %s", 15, adFormat.name()));
                } else if (preloadConfiguration2.getBufferSize() < 0) {
                    hashSet.add(String.format(Locale.US, "Preload configurations' buffer size less than 0 for %s", adFormat.name()));
                }
            } else {
                hashSet.add("PreloadConfiguration ad format is not supported:".concat(String.valueOf(preloadConfiguration2.getAdFormat())));
            }
            z = true;
        }
        Map.Entry[] entryArr = {new AbstractMap.SimpleEntry(AdFormat.APP_OPEN_AD, (Integer) zzbe.zzc().zza(zzbcl.zzeB)), new AbstractMap.SimpleEntry(AdFormat.INTERSTITIAL, (Integer) zzbe.zzc().zza(zzbcl.zzez)), new AbstractMap.SimpleEntry(AdFormat.REWARDED, (Integer) zzbe.zzc().zza(zzbcl.zzeA))};
        HashMap hashMap3 = new HashMap(3);
        for (int i = 0; i < 3; i++) {
            Map.Entry entry = entryArr[i];
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (hashMap3.put(key, value) != null) {
                key.toString();
                throw new IllegalArgumentException("duplicate key: ".concat(String.valueOf(key)));
            }
        }
        java.util.Map unmodifiableMap = DesugarCollections.unmodifiableMap(hashMap3);
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            AdFormat adFormat2 = (AdFormat) entry2.getKey();
            int intValue = ((Integer) entry2.getValue()).intValue();
            int intValue2 = ((Integer) Map.EL.getOrDefault(unmodifiableMap, adFormat2, 0)).intValue();
            if (intValue > intValue2) {
                hashSet.add(String.format(Locale.US, "Preload configurations' size exceeds the maximum limit %d for %s", Integer.valueOf(intValue2), adFormat2.name()));
                z = true;
            }
        }
        if (z) {
            StringBuilder sb = new StringBuilder();
            Iterator it4 = hashSet.iterator();
            while (it4.hasNext()) {
                sb.append((String) it4.next());
                if (it4.hasNext()) {
                    sb.append(", ");
                }
            }
            String sb2 = sb.toString();
            com.google.android.gms.ads.internal.util.client.zzo.zzg(sb2);
            status = new Status(13, sb2);
        } else {
            status = Status.RESULT_SUCCESS;
        }
        String statusMessage = status.getStatusMessage();
        if (statusMessage == null) {
            statusMessage = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        Preconditions.checkArgument(status.isSuccess(), statusMessage);
        zzbcl.zza(context);
        synchronized (this.f9654if) {
            ArrayList arrayList = new ArrayList();
            Iterator it5 = list.iterator();
            while (it5.hasNext()) {
                PreloadConfiguration preloadConfiguration3 = (PreloadConfiguration) it5.next();
                zzm zza2 = zzr.zza.zza(context, preloadConfiguration3.getAdRequest().zza());
                zza2.zzc.putBoolean("is_sdk_preload", true);
                if (preloadConfiguration3.getBufferSize() <= 0) {
                    int ordinal = preloadConfiguration3.getAdFormat().ordinal();
                    bufferSize = ordinal != 1 ? ordinal != 2 ? ordinal != 5 ? 1 : ((Integer) zzbe.zzc().zza(zzbcl.zzE)).intValue() : ((Integer) zzbe.zzc().zza(zzbcl.zzG)).intValue() : ((Integer) zzbe.zzc().zza(zzbcl.zzF)).intValue();
                } else {
                    bufferSize = preloadConfiguration3.getBufferSize();
                }
                int ordinal2 = preloadConfiguration3.getAdFormat().ordinal();
                int max = Math.max(Math.min(ordinal2 != 1 ? ordinal2 != 2 ? ordinal2 != 5 ? 1 : ((Integer) zzbe.zzc().zza(zzbcl.zzB)).intValue() : ((Integer) zzbe.zzc().zza(zzbcl.zzD)).intValue() : ((Integer) zzbe.zzc().zza(zzbcl.zzC)).intValue(), 15), 1);
                int ordinal3 = preloadConfiguration3.getAdFormat().ordinal();
                arrayList.add(new zzft(preloadConfiguration3.getAdUnitId(), preloadConfiguration3.getAdFormat().getValue(), zza2, Math.max(Math.min(bufferSize, max), Math.min(ordinal3 != 1 ? ordinal3 != 2 ? ordinal3 != 5 ? 1 : ((Integer) zzbe.zzc().zza(zzbcl.zzH)).intValue() : ((Integer) zzbe.zzc().zza(zzbcl.zzJ)).intValue() : ((Integer) zzbe.zzc().zza(zzbcl.zzI)).intValue(), max))));
            }
            try {
                com.google.android.gms.ads.zzb.zza(context).zzi(arrayList, new ER(this, preloadCallback));
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to start preload.", e);
                return Status.RESULT_INTERNAL_ERROR;
            }
        }
        return Status.RESULT_SUCCESS;
    }

    public final String zzi() {
        String zzc;
        synchronized (this.f9653for) {
            Preconditions.checkState(this.f9649do != null, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                zzc = zzfve.zzc(this.f9649do.zzf());
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to get internal version.", e);
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }
        return zzc;
    }

    public final void zzn(Context context) {
        synchronized (this.f9653for) {
            m5548for(context);
            try {
                this.f9649do.zzi();
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to disable mediation adapter initialization.");
            }
        }
    }

    public final void zzo(final Context context, String str, OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.f9650do) {
            if (this.f9652do) {
                if (onInitializationCompleteListener != null) {
                    this.f9651do.add(onInitializationCompleteListener);
                }
                return;
            }
            if (this.f9655if) {
                if (onInitializationCompleteListener != null) {
                    onInitializationCompleteListener.onInitializationComplete(zze());
                }
                return;
            }
            this.f9652do = true;
            if (onInitializationCompleteListener != null) {
                this.f9651do.add(onInitializationCompleteListener);
            }
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null.");
            }
            synchronized (this.f9653for) {
                try {
                    m5548for(context);
                    this.f9649do.zzs(new HR(this));
                    this.f9649do.zzo(new zzbpa());
                    if (this.f9648do.getTagForChildDirectedTreatment() != -1 || this.f9648do.getTagForUnderAgeOfConsent() != -1) {
                        try {
                            this.f9649do.zzu(new zzfv(this.f9648do));
                        } catch (RemoteException e) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set request configuration parcel.", e);
                        }
                    }
                } catch (RemoteException e2) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzk("MobileAdsSettingManager initialization failed", e2);
                }
                zzbcl.zza(context);
                final String str2 = null;
                if (((Boolean) zzbej.zza.zze()).booleanValue()) {
                    if (((Boolean) zzbe.zzc().zza(zzbcl.zzkZ)).booleanValue()) {
                        com.google.android.gms.ads.internal.util.client.zzo.zze("Initializing on bg thread");
                        com.google.android.gms.ads.internal.util.client.zzb.zza.execute(new Runnable(context, str2) { // from class: com.google.android.gms.ads.internal.client.zzeo
                            public final /* synthetic */ Context zzb;

                            @Override // java.lang.Runnable
                            public final void run() {
                                zzex zzexVar = zzex.this;
                                Context context2 = this.zzb;
                                synchronized (zzexVar.f9653for) {
                                    zzexVar.m5549if(context2);
                                }
                            }
                        });
                    }
                }
                if (((Boolean) zzbej.zzb.zze()).booleanValue()) {
                    if (((Boolean) zzbe.zzc().zza(zzbcl.zzkZ)).booleanValue()) {
                        com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable(context, str2) { // from class: com.google.android.gms.ads.internal.client.zzep
                            public final /* synthetic */ Context zzb;

                            @Override // java.lang.Runnable
                            public final void run() {
                                zzex zzexVar = zzex.this;
                                Context context2 = this.zzb;
                                synchronized (zzexVar.f9653for) {
                                    zzexVar.m5549if(context2);
                                }
                            }
                        });
                    }
                }
                com.google.android.gms.ads.internal.util.client.zzo.zze("Initializing on calling thread");
                m5549if(context);
            }
        }
    }

    public final void zzr(Context context, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        synchronized (this.f9653for) {
            m5548for(context);
            this.f9647do = onAdInspectorClosedListener;
            try {
                this.f9649do.zzm(new GR());
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to open the ad inspector.");
                if (onAdInspectorClosedListener != null) {
                    onAdInspectorClosedListener.onAdInspectorClosed(new AdInspectorError(0, "Ad inspector had an internal error.", MobileAds.ERROR_DOMAIN));
                }
            }
        }
    }

    public final void zzs(Context context, String str) {
        synchronized (this.f9653for) {
            Preconditions.checkState(this.f9649do != null, "MobileAds.initialize() must be called prior to opening debug menu.");
            try {
                this.f9649do.zzn(new BinderC3652rv(context), str);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to open debug menu.", e);
            }
        }
    }

    public final void zzt(Class cls) {
        synchronized (this.f9653for) {
            try {
                this.f9649do.zzh(cls.getCanonicalName());
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to register RtbAdapter", e);
            }
        }
    }

    public final void zzu(boolean z) {
        synchronized (this.f9653for) {
            Preconditions.checkState(this.f9649do != null, "MobileAds.initialize() must be called prior to setting app muted state.");
            try {
                this.f9649do.zzp(z);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set app mute state.", e);
            }
        }
    }

    public final void zzv(float f) {
        boolean z = true;
        Preconditions.checkArgument(f >= 0.0f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        synchronized (this.f9653for) {
            if (this.f9649do == null) {
                z = false;
            }
            Preconditions.checkState(z, "MobileAds.initialize() must be called prior to setting the app volume.");
            try {
                this.f9649do.zzq(f);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set app volume.", e);
            }
        }
    }

    public final void zzw(String str) {
        synchronized (this.f9653for) {
            Preconditions.checkState(this.f9649do != null, "MobileAds.initialize() must be called prior to setting the plugin.");
            try {
                this.f9649do.zzt(str);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set plugin.", e);
            }
        }
    }

    public final void zzx(RequestConfiguration requestConfiguration) {
        Preconditions.checkArgument(requestConfiguration != null, "Null passed to setRequestConfiguration.");
        synchronized (this.f9653for) {
            RequestConfiguration requestConfiguration2 = this.f9648do;
            this.f9648do = requestConfiguration;
            if (this.f9649do == null) {
                return;
            }
            if (requestConfiguration2.getTagForChildDirectedTreatment() != requestConfiguration.getTagForChildDirectedTreatment() || requestConfiguration2.getTagForUnderAgeOfConsent() != requestConfiguration.getTagForUnderAgeOfConsent()) {
                try {
                    this.f9649do.zzu(new zzfv(requestConfiguration));
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set request configuration parcel.", e);
                }
            }
        }
    }

    public final boolean zzy() {
        synchronized (this.f9653for) {
            zzcz zzczVar = this.f9649do;
            boolean z = false;
            if (zzczVar == null) {
                return false;
            }
            try {
                z = zzczVar.zzv();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to get app mute state.", e);
            }
            return z;
        }
    }

    public final boolean zzz(boolean z) {
        synchronized (this.f9653for) {
            Preconditions.checkState(this.f9649do != null, "MobileAds.initialize() must be called prior to enable/disable the publisher first-party ID.");
            try {
                this.f9649do.zzj(z);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to " + (z ? "enable" : "disable") + " the publisher first-party ID.", e);
                return false;
            }
        }
        return true;
    }
}
