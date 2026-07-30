package com.facebook.appevents.suggestedevents;

import android.os.Bundle;
import android.view.View;
import com.facebook.GraphRequest;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.appevents.suggestedevents.ViewOnClickListener;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;
import defpackage.RunnableC0667a2;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ViewOnClickListener implements View.OnClickListener {
    private static final String API_ENDPOINT = "%s/suggested_events";
    public static final String OTHER_EVENT = "other";
    private final String activityName;
    private final View.OnClickListener baseListener;
    private final WeakReference<View> hostViewWeakReference;
    private final WeakReference<View> rootViewWeakReference;
    public static final Companion Companion = new Companion(null);
    private static final Set<Integer> viewsAttachedListener = new HashSet();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void processPredictedResult(String str, String str2, float[] fArr) {
            if (SuggestedEventsManager.isProductionEvents$facebook_core_release(str)) {
                new InternalAppEventsLogger(C3756th.m8299do()).logEventFromSE(str, str2);
            } else if (SuggestedEventsManager.isEligibleEvents$facebook_core_release(str)) {
                sendPredictedResult(str, str2, fArr);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean queryHistoryAndProcess(String str, String str2) {
            String queryEvent = PredictionHistoryManager.queryEvent(str);
            if (queryEvent == null) {
                return false;
            }
            if (C0173Do.m394do(queryEvent, "other")) {
                return true;
            }
            Utility.runOnNonUiThread(new RunnableC0667a2(2, queryEvent, str2));
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: queryHistoryAndProcess$lambda-0, reason: not valid java name */
        public static final void m5400queryHistoryAndProcess$lambda0(String str, String str2) {
            C0173Do.m401try(str, "$queriedEvent");
            C0173Do.m401try(str2, "$buttonText");
            ViewOnClickListener.Companion.processPredictedResult(str, str2, new float[0]);
        }

        private final void sendPredictedResult(String str, String str2, float[] fArr) {
            Bundle bundle = new Bundle();
            try {
                bundle.putString("event_name", str);
                JSONObject jSONObject = new JSONObject();
                StringBuilder sb = new StringBuilder();
                int length = fArr.length;
                int i = 0;
                while (i < length) {
                    float f = fArr[i];
                    i++;
                    sb.append(f);
                    sb.append(",");
                }
                jSONObject.put("dense", sb.toString());
                jSONObject.put("button_text", str2);
                bundle.putString("metadata", jSONObject.toString());
                String str3 = GraphRequest.f9271for;
                String format = String.format(Locale.US, ViewOnClickListener.API_ENDPOINT, Arrays.copyOf(new Object[]{C3756th.m8303if()}, 1));
                C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
                GraphRequest m5289goto = GraphRequest.Cfor.m5289goto(null, format, null, null);
                m5289goto.f9274do = bundle;
                m5289goto.m5267for();
            } catch (JSONException unused) {
            }
        }

        public final void attachListener$facebook_core_release(View view, View view2, String str) {
            C0173Do.m401try(view, "hostView");
            C0173Do.m401try(view2, "rootView");
            C0173Do.m401try(str, "activityName");
            int hashCode = view.hashCode();
            if (ViewOnClickListener.access$getViewsAttachedListener$cp().contains(Integer.valueOf(hashCode))) {
                return;
            }
            ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
            ViewHierarchy.setOnClickListener(view, new ViewOnClickListener(view, view2, str, null));
            ViewOnClickListener.access$getViewsAttachedListener$cp().add(Integer.valueOf(hashCode));
        }
    }

    private ViewOnClickListener(View view, View view2, String str) {
        this.baseListener = ViewHierarchy.getExistingOnClickListener(view);
        this.rootViewWeakReference = new WeakReference<>(view2);
        this.hostViewWeakReference = new WeakReference<>(view);
        if (str == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        String lowerCase = str.toLowerCase();
        C0173Do.m399new(lowerCase, "(this as java.lang.String).toLowerCase()");
        this.activityName = BF.i(lowerCase, "activity", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public /* synthetic */ ViewOnClickListener(View view, View view2, String str, C2819gd c2819gd) {
        this(view, view2, str);
    }

    public static final /* synthetic */ Set access$getViewsAttachedListener$cp() {
        if (CrashShieldHandler.isObjectCrashing(ViewOnClickListener.class)) {
            return null;
        }
        try {
            return viewsAttachedListener;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewOnClickListener.class);
            return null;
        }
    }

    public static final void attachListener$facebook_core_release(View view, View view2, String str) {
        if (CrashShieldHandler.isObjectCrashing(ViewOnClickListener.class)) {
            return;
        }
        try {
            Companion.attachListener$facebook_core_release(view, view2, str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewOnClickListener.class);
        }
    }

    private final void predictAndProcess(final String str, final String str2, final JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Utility.runOnNonUiThread(new Runnable() { // from class: hL
                @Override // java.lang.Runnable
                public final void run() {
                    ViewOnClickListener.m5398predictAndProcess$lambda0(jSONObject, str2, this, str);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: predictAndProcess$lambda-0, reason: not valid java name */
    public static final void m5398predictAndProcess$lambda0(JSONObject jSONObject, String str, ViewOnClickListener viewOnClickListener, String str2) {
        if (CrashShieldHandler.isObjectCrashing(ViewOnClickListener.class)) {
            return;
        }
        try {
            C0173Do.m401try(jSONObject, "$viewData");
            C0173Do.m401try(str, "$buttonText");
            C0173Do.m401try(viewOnClickListener, "this$0");
            C0173Do.m401try(str2, "$pathID");
            try {
                Utility utility = Utility.INSTANCE;
                String appName = Utility.getAppName(C3756th.m8299do());
                if (appName == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
                String lowerCase = appName.toLowerCase();
                C0173Do.m399new(lowerCase, "(this as java.lang.String).toLowerCase()");
                float[] denseFeatures = FeatureExtractor.getDenseFeatures(jSONObject, lowerCase);
                String textFeature = FeatureExtractor.getTextFeature(str, viewOnClickListener.activityName, lowerCase);
                if (denseFeatures == null) {
                    return;
                }
                ModelManager modelManager = ModelManager.INSTANCE;
                String[] predict = ModelManager.predict(ModelManager.Task.MTML_APP_EVENT_PREDICTION, new float[][]{denseFeatures}, new String[]{textFeature});
                if (predict == null) {
                    return;
                }
                String str3 = predict[0];
                PredictionHistoryManager.addPrediction(str2, str3);
                if (C0173Do.m394do(str3, "other")) {
                    return;
                }
                Companion.processPredictedResult(str3, str, denseFeatures);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewOnClickListener.class);
        }
    }

    private final void process() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            View view = this.rootViewWeakReference.get();
            View view2 = this.hostViewWeakReference.get();
            if (view == null || view2 == null) {
                return;
            }
            try {
                String textOfViewRecursively = SuggestedEventViewHierarchy.getTextOfViewRecursively(view2);
                String pathID = PredictionHistoryManager.getPathID(view2, textOfViewRecursively);
                if (pathID == null || Companion.queryHistoryAndProcess(pathID, textOfViewRecursively)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ViewHierarchyConstants.VIEW_KEY, SuggestedEventViewHierarchy.getDictionaryOfView(view, view2));
                jSONObject.put(ViewHierarchyConstants.SCREEN_NAME_KEY, this.activityName);
                predictAndProcess(pathID, textOfViewRecursively, jSONObject);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                C0173Do.m401try(view, ViewHierarchyConstants.VIEW_KEY);
                View.OnClickListener onClickListener = this.baseListener;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
                process();
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }
}
