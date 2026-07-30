package com.facebook.appevents.aam;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.Cabstract;
import defpackage.EF;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class MetadataViewObserver implements ViewTreeObserver.OnGlobalFocusChangeListener {
    private static final int MAX_TEXT_LENGTH = 100;
    private final WeakReference<Activity> activityWeakReference;
    private final AtomicBoolean isTracking;
    private final Set<String> processedText;
    private final Handler uiThreadHandler;
    public static final Companion Companion = new Companion(null);
    private static final Map<Integer, MetadataViewObserver> observers = new HashMap();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String preNormalize(String str, String str2) {
            if (!C0173Do.m394do("r2", str)) {
                return str2;
            }
            Pattern compile = Pattern.compile("[^\\d.]");
            C0173Do.m399new(compile, "compile(pattern)");
            C0173Do.m401try(str2, "input");
            String replaceAll = compile.matcher(str2).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            C0173Do.m399new(replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
            return replaceAll;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        
            if (r4.equals("r5") == false) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
        
            r0 = java.util.regex.Pattern.compile("[^a-z]+");
            defpackage.C0173Do.m399new(r0, "compile(pattern)");
            defpackage.C0173Do.m401try(r5, "input");
            r5 = r0.matcher(r5).replaceAll(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            defpackage.C0173Do.m399new(r5, "nativePattern.matcher(in…).replaceAll(replacement)");
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
        
            if (r4.equals("r4") == false) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void putUserData(java.util.Map<java.lang.String, java.lang.String> r3, java.lang.String r4, java.lang.String r5) {
            /*
                r2 = this;
                int r0 = r4.hashCode()
                switch(r0) {
                    case 3585: goto L6e;
                    case 3586: goto L45;
                    case 3587: goto L3c;
                    case 3588: goto L9;
                    default: goto L7;
                }
            L7:
                goto L94
            L9:
                java.lang.String r0 = "r6"
                boolean r0 = r4.equals(r0)
                if (r0 != 0) goto L13
                goto L94
            L13:
                java.lang.String r0 = "-"
                boolean r1 = defpackage.EF.k(r5, r0)
                if (r1 == 0) goto L94
                hz r1 = new hz
                r1.<init>(r0)
                java.util.List r5 = r1.m6853do(r5)
                java.util.Collection r5 = (java.util.Collection) r5
                r0 = 0
                java.lang.String[] r1 = new java.lang.String[r0]
                java.lang.Object[] r5 = r5.toArray(r1)
                if (r5 == 0) goto L34
                java.lang.String[] r5 = (java.lang.String[]) r5
                r5 = r5[r0]
                goto L94
            L34:
                java.lang.NullPointerException r3 = new java.lang.NullPointerException
                java.lang.String r4 = "null cannot be cast to non-null type kotlin.Array<T>"
                r3.<init>(r4)
                throw r3
            L3c:
                java.lang.String r0 = "r5"
                boolean r0 = r4.equals(r0)
                if (r0 != 0) goto L4e
                goto L94
            L45:
                java.lang.String r0 = "r4"
                boolean r0 = r4.equals(r0)
                if (r0 != 0) goto L4e
                goto L94
            L4e:
                java.lang.String r0 = "[^a-z]+"
                java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
                java.lang.String r1 = "compile(pattern)"
                defpackage.C0173Do.m399new(r0, r1)
                java.lang.String r1 = "input"
                defpackage.C0173Do.m401try(r5, r1)
                java.util.regex.Matcher r5 = r0.matcher(r5)
                java.lang.String r0 = ""
                java.lang.String r5 = r5.replaceAll(r0)
                java.lang.String r0 = "nativePattern.matcher(in…).replaceAll(replacement)"
                defpackage.C0173Do.m399new(r5, r0)
                goto L94
            L6e:
                java.lang.String r0 = "r3"
                boolean r0 = r4.equals(r0)
                if (r0 != 0) goto L77
                goto L94
            L77:
                java.lang.String r0 = "m"
                boolean r1 = defpackage.BF.j(r5, r0)
                if (r1 != 0) goto L93
                java.lang.String r1 = "b"
                boolean r1 = defpackage.BF.j(r5, r1)
                if (r1 != 0) goto L93
                java.lang.String r1 = "ge"
                boolean r5 = defpackage.BF.j(r5, r1)
                if (r5 == 0) goto L90
                goto L93
            L90:
                java.lang.String r5 = "f"
                goto L94
            L93:
                r5 = r0
            L94:
                r3.put(r4, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.aam.MetadataViewObserver.Companion.putUserData(java.util.Map, java.lang.String, java.lang.String):void");
        }

        public final void startTrackingActivity(Activity activity) {
            C0173Do.m401try(activity, "activity");
            int hashCode = activity.hashCode();
            Map access$getObservers$cp = MetadataViewObserver.access$getObservers$cp();
            Integer valueOf = Integer.valueOf(hashCode);
            Object obj = access$getObservers$cp.get(valueOf);
            if (obj == null) {
                obj = new MetadataViewObserver(activity, null);
                access$getObservers$cp.put(valueOf, obj);
            }
            MetadataViewObserver.access$startTracking((MetadataViewObserver) obj);
        }

        public final void stopTrackingActivity(Activity activity) {
            C0173Do.m401try(activity, "activity");
            MetadataViewObserver metadataViewObserver = (MetadataViewObserver) MetadataViewObserver.access$getObservers$cp().remove(Integer.valueOf(activity.hashCode()));
            if (metadataViewObserver == null) {
                return;
            }
            MetadataViewObserver.access$stopTracking(metadataViewObserver);
        }
    }

    private MetadataViewObserver(Activity activity) {
        this.processedText = new LinkedHashSet();
        this.uiThreadHandler = new Handler(Looper.getMainLooper());
        this.activityWeakReference = new WeakReference<>(activity);
        this.isTracking = new AtomicBoolean(false);
    }

    public /* synthetic */ MetadataViewObserver(Activity activity, C2819gd c2819gd) {
        this(activity);
    }

    public static final /* synthetic */ Map access$getObservers$cp() {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return null;
        }
        try {
            return observers;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
            return null;
        }
    }

    public static final /* synthetic */ void access$startTracking(MetadataViewObserver metadataViewObserver) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            metadataViewObserver.startTracking();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    public static final /* synthetic */ void access$stopTracking(MetadataViewObserver metadataViewObserver) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            metadataViewObserver.stopTracking();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    private final void process(View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            runOnUIThread(new Cabstract(3, view, this));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: process$lambda-0, reason: not valid java name */
    public static final void m5338process$lambda0(View view, MetadataViewObserver metadataViewObserver) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            C0173Do.m401try(view, "$view");
            C0173Do.m401try(metadataViewObserver, "this$0");
            if (view instanceof EditText) {
                metadataViewObserver.processEditText(view);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    private final void processEditText(View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            String obj = ((EditText) view).getText().toString();
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            String obj2 = EF.x(obj).toString();
            if (obj2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = obj2.toLowerCase();
            C0173Do.m399new(lowerCase, "(this as java.lang.String).toLowerCase()");
            if (!(lowerCase.length() == 0) && !this.processedText.contains(lowerCase) && lowerCase.length() <= 100) {
                this.processedText.add(lowerCase);
                HashMap hashMap = new HashMap();
                List<String> currentViewIndicators = MetadataMatcher.getCurrentViewIndicators(view);
                List<String> list = null;
                for (MetadataRule metadataRule : MetadataRule.Companion.getRules()) {
                    Companion companion = Companion;
                    String preNormalize = companion.preNormalize(metadataRule.getName(), lowerCase);
                    if (metadataRule.getValRule().length() > 0) {
                        MetadataMatcher metadataMatcher = MetadataMatcher.INSTANCE;
                        if (!MetadataMatcher.matchValue(preNormalize, metadataRule.getValRule())) {
                        }
                    }
                    MetadataMatcher metadataMatcher2 = MetadataMatcher.INSTANCE;
                    if (MetadataMatcher.matchIndicator(currentViewIndicators, metadataRule.getKeyRules())) {
                        companion.putUserData(hashMap, metadataRule.getName(), preNormalize);
                    } else {
                        if (list == null) {
                            list = MetadataMatcher.getAroundViewIndicators(view);
                        }
                        if (MetadataMatcher.matchIndicator(list, metadataRule.getKeyRules())) {
                            companion.putUserData(hashMap, metadataRule.getName(), preNormalize);
                        }
                    }
                }
                InternalAppEventsLogger.Companion.setInternalUserData(hashMap);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final void runOnUIThread(Runnable runnable) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.uiThreadHandler.post(runnable);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final void startTracking() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.isTracking.getAndSet(true)) {
                return;
            }
            AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
            View rootView = AppEventUtility.getRootView(this.activityWeakReference.get());
            if (rootView == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = rootView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalFocusChangeListener(this);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void startTrackingActivity(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            Companion.startTrackingActivity(activity);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    private final void stopTracking() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.isTracking.getAndSet(false)) {
                AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                View rootView = AppEventUtility.getRootView(this.activityWeakReference.get());
                if (rootView == null) {
                    return;
                }
                ViewTreeObserver viewTreeObserver = rootView.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnGlobalFocusChangeListener(this);
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void stopTrackingActivity(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            Companion.stopTrackingActivity(activity);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(View view, View view2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        if (view != null) {
            try {
                process(view);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return;
            }
        }
        if (view2 != null) {
            process(view2);
        }
    }
}
