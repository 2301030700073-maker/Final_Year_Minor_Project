package com.facebook.appevents.codeless;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.RunnableC0667a2;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class CodelessLoggingEventListener {
    public static final CodelessLoggingEventListener INSTANCE = new CodelessLoggingEventListener();

    public static final class AutoLoggingOnClickListener implements View.OnClickListener {
        private View.OnClickListener existingOnClickListener;
        private WeakReference<View> hostView;
        private EventBinding mapping;
        private WeakReference<View> rootView;
        private boolean supportCodelessLogging;

        public AutoLoggingOnClickListener(EventBinding eventBinding, View view, View view2) {
            C0173Do.m401try(eventBinding, "mapping");
            C0173Do.m401try(view, "rootView");
            C0173Do.m401try(view2, "hostView");
            this.mapping = eventBinding;
            this.hostView = new WeakReference<>(view2);
            this.rootView = new WeakReference<>(view);
            this.existingOnClickListener = ViewHierarchy.getExistingOnClickListener(view2);
            this.supportCodelessLogging = true;
        }

        public final boolean getSupportCodelessLogging() {
            return this.supportCodelessLogging;
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
                    View.OnClickListener onClickListener = this.existingOnClickListener;
                    if (onClickListener != null) {
                        onClickListener.onClick(view);
                    }
                    View view2 = this.rootView.get();
                    View view3 = this.hostView.get();
                    if (view2 == null || view3 == null) {
                        return;
                    }
                    CodelessLoggingEventListener codelessLoggingEventListener = CodelessLoggingEventListener.INSTANCE;
                    CodelessLoggingEventListener.logEvent$facebook_core_release(this.mapping, view2, view3);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }

        public final void setSupportCodelessLogging(boolean z) {
            this.supportCodelessLogging = z;
        }
    }

    public static final class AutoLoggingOnItemClickListener implements AdapterView.OnItemClickListener {
        private AdapterView.OnItemClickListener existingOnItemClickListener;
        private WeakReference<AdapterView<?>> hostView;
        private EventBinding mapping;
        private WeakReference<View> rootView;
        private boolean supportCodelessLogging;

        public AutoLoggingOnItemClickListener(EventBinding eventBinding, View view, AdapterView<?> adapterView) {
            C0173Do.m401try(eventBinding, "mapping");
            C0173Do.m401try(view, "rootView");
            C0173Do.m401try(adapterView, "hostView");
            this.mapping = eventBinding;
            this.hostView = new WeakReference<>(adapterView);
            this.rootView = new WeakReference<>(view);
            this.existingOnItemClickListener = adapterView.getOnItemClickListener();
            this.supportCodelessLogging = true;
        }

        public final boolean getSupportCodelessLogging() {
            return this.supportCodelessLogging;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            C0173Do.m401try(view, ViewHierarchyConstants.VIEW_KEY);
            AdapterView.OnItemClickListener onItemClickListener = this.existingOnItemClickListener;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i, j);
            }
            View view2 = this.rootView.get();
            AdapterView<?> adapterView2 = this.hostView.get();
            if (view2 == null || adapterView2 == null) {
                return;
            }
            CodelessLoggingEventListener codelessLoggingEventListener = CodelessLoggingEventListener.INSTANCE;
            CodelessLoggingEventListener.logEvent$facebook_core_release(this.mapping, view2, adapterView2);
        }

        public final void setSupportCodelessLogging(boolean z) {
            this.supportCodelessLogging = z;
        }
    }

    private CodelessLoggingEventListener() {
    }

    public static final AutoLoggingOnClickListener getOnClickListener(EventBinding eventBinding, View view, View view2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessLoggingEventListener.class)) {
            return null;
        }
        try {
            C0173Do.m401try(eventBinding, "mapping");
            C0173Do.m401try(view, "rootView");
            C0173Do.m401try(view2, "hostView");
            return new AutoLoggingOnClickListener(eventBinding, view, view2);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessLoggingEventListener.class);
            return null;
        }
    }

    public static final AutoLoggingOnItemClickListener getOnItemClickListener(EventBinding eventBinding, View view, AdapterView<?> adapterView) {
        if (CrashShieldHandler.isObjectCrashing(CodelessLoggingEventListener.class)) {
            return null;
        }
        try {
            C0173Do.m401try(eventBinding, "mapping");
            C0173Do.m401try(view, "rootView");
            C0173Do.m401try(adapterView, "hostView");
            return new AutoLoggingOnItemClickListener(eventBinding, view, adapterView);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessLoggingEventListener.class);
            return null;
        }
    }

    public static final void logEvent$facebook_core_release(EventBinding eventBinding, View view, View view2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessLoggingEventListener.class)) {
            return;
        }
        try {
            C0173Do.m401try(eventBinding, "mapping");
            C0173Do.m401try(view, "rootView");
            C0173Do.m401try(view2, "hostView");
            String eventName = eventBinding.getEventName();
            Bundle parameters = CodelessMatcher.Companion.getParameters(eventBinding, view, view2);
            INSTANCE.updateParameters$facebook_core_release(parameters);
            C3756th.m8304new().execute(new RunnableC0667a2(1, eventName, parameters));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessLoggingEventListener.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: logEvent$lambda-0, reason: not valid java name */
    public static final void m5346logEvent$lambda0(String str, Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(CodelessLoggingEventListener.class)) {
            return;
        }
        try {
            C0173Do.m401try(str, "$eventName");
            C0173Do.m401try(bundle, "$parameters");
            AppEventsLogger.Companion.newLogger(C3756th.m8299do()).logEvent(str, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessLoggingEventListener.class);
        }
    }

    public final void updateParameters$facebook_core_release(Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C0173Do.m401try(bundle, "parameters");
            String string = bundle.getString(AppEventsConstants.EVENT_PARAM_VALUE_TO_SUM);
            if (string != null) {
                bundle.putDouble(AppEventsConstants.EVENT_PARAM_VALUE_TO_SUM, AppEventUtility.normalizePrice(string));
            }
            bundle.putString(Constants.IS_CODELESS_EVENT_KEY, AppEventsConstants.EVENT_PARAM_VALUE_YES);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
