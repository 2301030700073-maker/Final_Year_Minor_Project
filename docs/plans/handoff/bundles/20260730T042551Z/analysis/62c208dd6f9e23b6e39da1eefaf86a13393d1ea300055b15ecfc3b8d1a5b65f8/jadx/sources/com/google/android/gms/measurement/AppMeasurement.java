package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.measurement.zzdw;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.C3850vF;
import defpackage.TS;
import defpackage.YT;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@ShowFirstParty
@KeepForSdk
@Deprecated
/* loaded from: classes3.dex */
public class AppMeasurement {

    /* renamed from: do, reason: not valid java name */
    public static volatile AppMeasurement f10284do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f10285do;

    @ShowFirstParty
    @KeepForSdk
    public static class ConditionalUserProperty {

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public boolean mActive;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mAppId;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mCreationTimestamp;

        @Keep
        public String mExpiredEventName;

        @Keep
        public Bundle mExpiredEventParams;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mName;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mOrigin;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTimeToLive;

        @Keep
        public String mTimedOutEventName;

        @Keep
        public Bundle mTimedOutEventParams;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mTriggerEventName;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTriggerTimeout;

        @Keep
        public String mTriggeredEventName;

        @Keep
        public Bundle mTriggeredEventParams;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTriggeredTimestamp;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public Object mValue;

        @KeepForSdk
        public ConditionalUserProperty() {
        }

        public ConditionalUserProperty(Bundle bundle) {
            Preconditions.checkNotNull(bundle);
            this.mAppId = (String) C3850vF.m8464throws(bundle, "app_id", String.class, null);
            this.mOrigin = (String) C3850vF.m8464throws(bundle, "origin", String.class, null);
            this.mName = (String) C3850vF.m8464throws(bundle, FacebookRequestErrorClassification.KEY_NAME, String.class, null);
            this.mValue = C3850vF.m8464throws(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) C3850vF.m8464throws(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) C3850vF.m8464throws(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) C3850vF.m8464throws(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) C3850vF.m8464throws(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) C3850vF.m8464throws(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) C3850vF.m8464throws(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) C3850vF.m8464throws(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) C3850vF.m8464throws(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) C3850vF.m8464throws(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) C3850vF.m8464throws(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) C3850vF.m8464throws(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) C3850vF.m8464throws(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }
    }

    /* renamed from: com.google.android.gms.measurement.AppMeasurement$do, reason: invalid class name */
    public static abstract class Cdo implements YT {
    }

    public AppMeasurement(TS ts) {
        this.f10285do = new Cif(ts);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    @Keep
    @Deprecated
    @ShowFirstParty
    @KeepForSdk
    public static AppMeasurement getInstance(Context context) {
        if (f10284do == null) {
            synchronized (AppMeasurement.class) {
                if (f10284do == null) {
                    YT yt = (YT) FirebaseAnalytics.class.getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                    if (yt != null) {
                        f10284do = new AppMeasurement(yt);
                    } else {
                        f10284do = new AppMeasurement(TS.m2246if(context, new zzdw(0L, 0L, true, null, null, null, null, null), null));
                    }
                }
            }
        }
        return f10284do;
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.f10285do.zzb(str);
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f10285do.mo2931do(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.f10285do.zzc(str);
    }

    @Keep
    public long generateEventId() {
        return this.f10285do.zzf();
    }

    @Keep
    public String getAppInstanceId() {
        return this.f10285do.zzg();
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List<Bundle> mo2932for = this.f10285do.mo2932for(str, str2);
        ArrayList arrayList = new ArrayList(mo2932for == null ? 0 : mo2932for.size());
        Iterator<Bundle> it = mo2932for.iterator();
        while (it.hasNext()) {
            arrayList.add(new ConditionalUserProperty(it.next()));
        }
        return arrayList;
    }

    @Keep
    public String getCurrentScreenClass() {
        return this.f10285do.zzh();
    }

    @Keep
    public String getCurrentScreenName() {
        return this.f10285do.zzi();
    }

    @Keep
    public String getGmpAppId() {
        return this.f10285do.zzj();
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public int getMaxUserProperties(String str) {
        return this.f10285do.mo2934new(str);
    }

    @Keep
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.f10285do.mo2933if(str, str2, z);
    }

    @ShowFirstParty
    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        this.f10285do.mo2935try(str, str2, bundle);
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString("app_id", str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString(FacebookRequestErrorClassification.KEY_NAME, str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            C3850vF.m8448default(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        this.f10285do.zza(bundle);
    }

    public AppMeasurement(YT yt) {
        this.f10285do = new com.google.android.gms.measurement.Cdo(yt);
    }
}
