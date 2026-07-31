package com.braze;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.braze.Braze;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.push.NotificationTrampolineActivity;
import com.braze.support.BrazeLogger;
import com.braze.ui.inappmessage.BrazeInAppMessageManager;
import java.lang.ref.WeakReference;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BrazeActivityLifecycleCallbackListener.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001BM\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0007\u0018\u00010\u0006\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0007\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nB7\b\u0017\u0012\u0014\u0010\u0005\u001a\u0010\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0007\u0018\u00010\u0006\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0007\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\u000bJ\u001a\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u0006J\u001a\u0010\u001a\u001a\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u0006J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u001a\u0010 \u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000e2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0018\u0010#\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010$\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0018\u0010%\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u0003H\u0007J\u000e\u0010'\u001a\u00020\u00182\u0006\u0010(\u001a\u00020)R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010\u0016\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006*"}, d2 = {"Lcom/braze/BrazeActivityLifecycleCallbackListener;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "sessionHandlingEnabled", "", "registerInAppMessageManager", "inAppMessagingRegistrationBlocklist", "", "Ljava/lang/Class;", "sessionHandlingBlocklist", "<init>", "(ZZLjava/util/Set;Ljava/util/Set;)V", "(Ljava/util/Set;Ljava/util/Set;)V", "previousActivityRef", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "shouldPersistWebView", "getShouldPersistWebView$annotations", "()V", "getShouldPersistWebView", "()Ljava/lang/Boolean;", "setShouldPersistWebView", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "setInAppMessagingRegistrationBlocklist", "", "blocklist", "setSessionHandlingBlocklist", "onActivityStarted", "activity", "onActivityStopped", "onActivityResumed", "onActivityPaused", "onActivityCreated", "bundle", "Landroid/os/Bundle;", "onActivitySaveInstanceState", "onActivityDestroyed", "shouldHandleLifecycleMethodsInActivity", "forSessionHandling", "registerOnApplication", "context", "Landroid/content/Context;", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public class BrazeActivityLifecycleCallbackListener implements Application.ActivityLifecycleCallbacks {
    private Set<? extends Class<?>> inAppMessagingRegistrationBlocklist;
    private WeakReference<Activity> previousActivityRef;
    private final boolean registerInAppMessageManager;
    private Set<? extends Class<?>> sessionHandlingBlocklist;
    private final boolean sessionHandlingEnabled;
    private Boolean shouldPersistWebView;

    public BrazeActivityLifecycleCallbackListener() {
        this(false, false, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BrazeActivityLifecycleCallbackListener(Set<? extends Class<?>> set) {
        this((Set) set, (Set) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public BrazeActivityLifecycleCallbackListener(boolean z) {
        this(z, false, null, null, 14, null);
    }

    public BrazeActivityLifecycleCallbackListener(boolean z, boolean z2) {
        this(z, z2, null, null, 12, null);
    }

    public BrazeActivityLifecycleCallbackListener(boolean z, boolean z2, Set<? extends Class<?>> set) {
        this(z, z2, set, null, 8, null);
    }

    public static /* synthetic */ void getShouldPersistWebView$annotations() {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
    }

    public BrazeActivityLifecycleCallbackListener(boolean z, boolean z2, Set<? extends Class<?>> set, Set<? extends Class<?>> set2) {
        this.sessionHandlingEnabled = z;
        this.registerInAppMessageManager = z2;
        this.inAppMessagingRegistrationBlocklist = set == null ? SetsKt.emptySet() : set;
        this.sessionHandlingBlocklist = set2 == null ? SetsKt.emptySet() : set2;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String _init_$lambda$0;
                _init_$lambda$0 = BrazeActivityLifecycleCallbackListener._init_$lambda$0(BrazeActivityLifecycleCallbackListener.this);
                return _init_$lambda$0;
            }
        }, 6, (Object) null);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String _init_$lambda$1;
                _init_$lambda$1 = BrazeActivityLifecycleCallbackListener._init_$lambda$1(BrazeActivityLifecycleCallbackListener.this);
                return _init_$lambda$1;
            }
        }, 6, (Object) null);
    }

    public /* synthetic */ BrazeActivityLifecycleCallbackListener(boolean z, boolean z2, Set set, Set set2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2, (Set<? extends Class<?>>) ((i & 4) != 0 ? SetsKt.emptySet() : set), (Set<? extends Class<?>>) ((i & 8) != 0 ? SetsKt.emptySet() : set2));
    }

    public final Boolean getShouldPersistWebView() {
        return this.shouldPersistWebView;
    }

    public final void setShouldPersistWebView(Boolean bool) {
        this.shouldPersistWebView = bool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$0(BrazeActivityLifecycleCallbackListener brazeActivityLifecycleCallbackListener) {
        return "BrazeActivityLifecycleCallbackListener using in-app messaging blocklist: " + brazeActivityLifecycleCallbackListener.inAppMessagingRegistrationBlocklist;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$1(BrazeActivityLifecycleCallbackListener brazeActivityLifecycleCallbackListener) {
        return "BrazeActivityLifecycleCallbackListener using session handling blocklist: " + brazeActivityLifecycleCallbackListener.sessionHandlingBlocklist;
    }

    public /* synthetic */ BrazeActivityLifecycleCallbackListener(Set set, Set set2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((Set<? extends Class<?>>) set, (Set<? extends Class<?>>) ((i & 2) != 0 ? SetsKt.emptySet() : set2));
    }

    public BrazeActivityLifecycleCallbackListener(Set<? extends Class<?>> set, Set<? extends Class<?>> set2) {
        this(true, true, set, set2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setInAppMessagingRegistrationBlocklist$lambda$2(Set set) {
        return "setInAppMessagingRegistrationBlocklist called with blocklist: " + set;
    }

    public final void setInAppMessagingRegistrationBlocklist(final Set<? extends Class<?>> blocklist) {
        Intrinsics.checkNotNullParameter(blocklist, "blocklist");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String inAppMessagingRegistrationBlocklist$lambda$2;
                inAppMessagingRegistrationBlocklist$lambda$2 = BrazeActivityLifecycleCallbackListener.setInAppMessagingRegistrationBlocklist$lambda$2(blocklist);
                return inAppMessagingRegistrationBlocklist$lambda$2;
            }
        }, 6, (Object) null);
        this.inAppMessagingRegistrationBlocklist = blocklist;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSessionHandlingBlocklist$lambda$3(Set set) {
        return "setSessionHandlingBlocklist called with blocklist: " + set;
    }

    public final void setSessionHandlingBlocklist(final Set<? extends Class<?>> blocklist) {
        Intrinsics.checkNotNullParameter(blocklist, "blocklist");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String sessionHandlingBlocklist$lambda$3;
                sessionHandlingBlocklist$lambda$3 = BrazeActivityLifecycleCallbackListener.setSessionHandlingBlocklist$lambda$3(blocklist);
                return sessionHandlingBlocklist$lambda$3;
            }
        }, 6, (Object) null);
        this.sessionHandlingBlocklist = blocklist;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.sessionHandlingEnabled && shouldHandleLifecycleMethodsInActivity(activity, true)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String onActivityStarted$lambda$4;
                    onActivityStarted$lambda$4 = BrazeActivityLifecycleCallbackListener.onActivityStarted$lambda$4(activity);
                    return onActivityStarted$lambda$4;
                }
            }, 6, (Object) null);
            Braze.Companion companion = Braze.INSTANCE;
            Context applicationContext = activity.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            companion.getInstance(applicationContext).openSession(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onActivityStarted$lambda$4(Activity activity) {
        return "Automatically calling lifecycle method: openSession for class: " + activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.sessionHandlingEnabled && shouldHandleLifecycleMethodsInActivity(activity, true)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String onActivityStopped$lambda$5;
                    onActivityStopped$lambda$5 = BrazeActivityLifecycleCallbackListener.onActivityStopped$lambda$5(activity);
                    return onActivityStopped$lambda$5;
                }
            }, 6, (Object) null);
            Braze.Companion companion = Braze.INSTANCE;
            Context applicationContext = activity.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            companion.getInstance(applicationContext).closeSession(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onActivityStopped$lambda$5(Activity activity) {
        return "Automatically calling lifecycle method: closeSession for class: " + activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.registerInAppMessageManager && shouldHandleLifecycleMethodsInActivity(activity, false)) {
            WeakReference<Activity> weakReference = this.previousActivityRef;
            Activity activity2 = weakReference != null ? weakReference.get() : null;
            if (Intrinsics.areEqual((Object) this.shouldPersistWebView, (Object) true) && activity2 != null && !Intrinsics.areEqual(activity2, activity)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String onActivityResumed$lambda$6;
                        onActivityResumed$lambda$6 = BrazeActivityLifecycleCallbackListener.onActivityResumed$lambda$6();
                        return onActivityResumed$lambda$6;
                    }
                }, 6, (Object) null);
                BrazeInAppMessageManager.INSTANCE.getInstance().unregisterInAppMessageManager(activity);
            }
            if (!Intrinsics.areEqual((Object) this.shouldPersistWebView, (Object) true) || activity2 == null || !Intrinsics.areEqual(activity2, activity)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String onActivityResumed$lambda$7;
                        onActivityResumed$lambda$7 = BrazeActivityLifecycleCallbackListener.onActivityResumed$lambda$7(activity);
                        return onActivityResumed$lambda$7;
                    }
                }, 6, (Object) null);
                BrazeInAppMessageManager.INSTANCE.getInstance().registerInAppMessageManager(activity);
            } else {
                BrazeInAppMessageManager.INSTANCE.getInstance().resumeWebviewIfNecessary$android_sdk_ui_release();
            }
            this.previousActivityRef = new WeakReference<>(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onActivityResumed$lambda$6() {
        return "Activity is different from previous activity. Unregistering in-app message manager";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onActivityResumed$lambda$7(Activity activity) {
        return "Automatically calling lifecycle method: registerInAppMessageManager for class: " + activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.registerInAppMessageManager && shouldHandleLifecycleMethodsInActivity(activity, false)) {
            if (this.shouldPersistWebView == null) {
                Context applicationContext = activity.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                this.shouldPersistWebView = Boolean.valueOf(new BrazeConfigurationProvider(applicationContext).getShouldPersistWebViewWhenBackgroundingApp());
            }
            if (!Intrinsics.areEqual((Object) this.shouldPersistWebView, (Object) true)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String onActivityPaused$lambda$8;
                        onActivityPaused$lambda$8 = BrazeActivityLifecycleCallbackListener.onActivityPaused$lambda$8(activity);
                        return onActivityPaused$lambda$8;
                    }
                }, 6, (Object) null);
                BrazeInAppMessageManager.INSTANCE.getInstance().unregisterInAppMessageManager(activity);
            } else {
                BrazeInAppMessageManager.INSTANCE.getInstance().pauseWebviewIfNecessary$android_sdk_ui_release();
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String onActivityPaused$lambda$9;
                        onActivityPaused$lambda$9 = BrazeActivityLifecycleCallbackListener.onActivityPaused$lambda$9();
                        return onActivityPaused$lambda$9;
                    }
                }, 6, (Object) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onActivityPaused$lambda$8(Activity activity) {
        return "Automatically calling lifecycle method: unregisterInAppMessageManager for class: " + activity.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onActivityPaused$lambda$9() {
        return "Skipping unregisterInAppMessageManager in onActivityPaused because shouldPersistWebView is true";
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(final Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String onActivityCreated$lambda$10;
                onActivityCreated$lambda$10 = BrazeActivityLifecycleCallbackListener.onActivityCreated$lambda$10(activity);
                return onActivityCreated$lambda$10;
            }
        }, 6, (Object) null);
        BrazeInAppMessageManager companion = BrazeInAppMessageManager.INSTANCE.getInstance();
        Context applicationContext = activity.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        companion.ensureSubscribedToInAppMessageEvents(applicationContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onActivityCreated$lambda$10(Activity activity) {
        return "Automatically calling lifecycle method: ensureSubscribedToInAppMessageEvents for class: " + activity.getClass();
    }

    public final boolean shouldHandleLifecycleMethodsInActivity(Activity activity, boolean forSessionHandling) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Class<?> cls = activity.getClass();
        if (Intrinsics.areEqual(cls, NotificationTrampolineActivity.class)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String shouldHandleLifecycleMethodsInActivity$lambda$11;
                    shouldHandleLifecycleMethodsInActivity$lambda$11 = BrazeActivityLifecycleCallbackListener.shouldHandleLifecycleMethodsInActivity$lambda$11();
                    return shouldHandleLifecycleMethodsInActivity$lambda$11;
                }
            }, 6, (Object) null);
            return false;
        }
        if (forSessionHandling) {
            if (this.sessionHandlingBlocklist.contains(cls)) {
                return false;
            }
        } else if (this.inAppMessagingRegistrationBlocklist.contains(cls)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String shouldHandleLifecycleMethodsInActivity$lambda$11() {
        return "Skipping automatic registration for notification trampoline activity class.";
    }

    public final void registerOnApplication(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.BrazeActivityLifecycleCallbackListener$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String registerOnApplication$lambda$12;
                    registerOnApplication$lambda$12 = BrazeActivityLifecycleCallbackListener.registerOnApplication$lambda$12();
                    return registerOnApplication$lambda$12;
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerOnApplication$lambda$12() {
        return "Failed to register this lifecycle callback listener directly against application class";
    }
}
