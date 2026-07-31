package app.k9mail.feature.settings.p000import.ui;

import android.app.Application;
import android.content.Intent;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import app.k9mail.feature.account.oauth.domain.usecase.GetOAuthRequestIntent;
import app.k9mail.feature.settings.p000import.ui.AuthFlowState;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.openid.appauth.AuthState;
import net.openid.appauth.AuthorizationService;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthViewModel extends AndroidViewModel {
    public final StateFlowImpl _uiState;
    public LegacyAccountDto account;
    public final LegacyAccountDtoManager accountManager;
    public AuthorizationService authService;
    public final AuthState authState;
    public final GetOAuthRequestIntent getOAuthRequestIntent;
    public final Logger logger;
    public AppAuthResultObserver resultObserver;
    public final ReadonlyStateFlow uiState;

    public AuthViewModel(Application application, LegacyAccountDtoManager legacyAccountDtoManager, GetOAuthRequestIntent getOAuthRequestIntent, Logger logger) {
        super(application);
        this.accountManager = legacyAccountDtoManager;
        this.getOAuthRequestIntent = getOAuthRequestIntent;
        this.logger = logger;
        this.authState = new AuthState();
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(AuthFlowState.Idle.INSTANCE);
        this._uiState = MutableStateFlow;
        this.uiState = FlowKt.asStateFlow(MutableStateFlow);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004f A[LOOP:0: B:12:0x004f->B:18:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$startLogin(app.k9mail.feature.settings.p000import.ui.AuthViewModel r5, net.thunderbird.core.android.account.LegacyAccountDto r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            kotlinx.coroutines.flow.StateFlowImpl r0 = r5._uiState
            boolean r1 = r7 instanceof app.k9mail.feature.settings.p000import.ui.AuthViewModel$startLogin$1
            if (r1 == 0) goto L15
            r1 = r7
            app.k9mail.feature.settings.import.ui.AuthViewModel$startLogin$1 r1 = (app.k9mail.feature.settings.p000import.ui.AuthViewModel$startLogin$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            app.k9mail.feature.settings.import.ui.AuthViewModel$startLogin$1 r1 = new app.k9mail.feature.settings.import.ui.AuthViewModel$startLogin$1
            r1.<init>(r5, r7)
        L1a:
            java.lang.Object r7 = r1.result
            int r2 = r1.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L2e
            if (r2 != r3) goto L28
            kotlin.ResultKt.throwOnFailure(r7)
            goto L45
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.scheduling.DefaultScheduler r7 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r7 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            app.k9mail.feature.settings.import.ui.AuthViewModel$exchangeToken$1$1$1 r2 = new app.k9mail.feature.settings.import.ui.AuthViewModel$exchangeToken$1$1$1
            r2.<init>(r5, r6, r4, r3)
            r1.label = r3
            java.lang.Object r7 = kotlinx.coroutines.JobKt.withContext(r7, r2, r1)
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r6) goto L45
            return r6
        L45:
            app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult r7 = (app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult) r7
            app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult$NotSupported r6 = app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult.NotSupported.INSTANCE
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r6)
            if (r6 == 0) goto L5f
        L4f:
            java.lang.Object r5 = r0.getValue()
            r6 = r5
            app.k9mail.feature.settings.import.ui.AuthFlowState r6 = (app.k9mail.feature.settings.p000import.ui.AuthFlowState) r6
            app.k9mail.feature.settings.import.ui.AuthFlowState$Idle r6 = app.k9mail.feature.settings.import.ui.AuthFlowState.Idle.INSTANCE$3
            boolean r5 = r0.compareAndSet(r5, r6)
            if (r5 == 0) goto L4f
            goto L8d
        L5f:
            app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult$NotSupported r6 = app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult.NotSupported.INSTANCE$1
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r6)
            if (r6 == 0) goto L77
        L67:
            java.lang.Object r5 = r0.getValue()
            r6 = r5
            app.k9mail.feature.settings.import.ui.AuthFlowState r6 = (app.k9mail.feature.settings.p000import.ui.AuthFlowState) r6
            app.k9mail.feature.settings.import.ui.AuthFlowState$Idle r6 = app.k9mail.feature.settings.import.ui.AuthFlowState.Idle.INSTANCE$1
            boolean r5 = r0.compareAndSet(r5, r6)
            if (r5 == 0) goto L67
            goto L8d
        L77:
            boolean r6 = r7 instanceof app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult.Success
            if (r6 == 0) goto L96
            app.k9mail.feature.settings.import.ui.AuthViewModel$AppAuthResultObserver r5 = r5.resultObserver
            if (r5 == 0) goto L90
            app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult$Success r7 = (app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult.Success) r7
            android.content.Intent r6 = r7.intent
            androidx.activity.result.ActivityResultRegistry$register$2 r7 = r5.authorizationLauncher
            if (r7 == 0) goto L8b
            r7.launch(r6)
            goto L8d
        L8b:
            r5.authRequestIntent = r6
        L8d:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L90:
            java.lang.String r5 = "resultObserver"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)
            throw r4
        L96:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.settings.p000import.ui.AuthViewModel.access$startLogin(app.k9mail.feature.settings.import.ui.AuthViewModel, net.thunderbird.core.android.account.LegacyAccountDto, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.lifecycle.ViewModel
    public final synchronized void onCleared() {
        try {
            AuthorizationService authorizationService = this.authService;
            if (authorizationService != null) {
                authorizationService.dispose();
            }
            this.authService = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AppAuthResultObserver implements DefaultLifecycleObserver {
        public Intent authRequestIntent;
        public ActivityResultRegistry$register$2 authorizationLauncher;
        public final ComponentActivity$activityResultRegistry$1 registry;
        public final /* synthetic */ AuthViewModel this$0;

        public AppAuthResultObserver(AuthViewModel authViewModel, ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1) {
            componentActivity$activityResultRegistry$1.getClass();
            this.this$0 = authViewModel;
            this.registry = componentActivity$activityResultRegistry$1;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onCreate(LifecycleOwner lifecycleOwner) {
            ActivityResultRegistry$register$2 register = this.registry.register("app.k9mail_auth", new AuthorizationContract(0), new AuthViewModel$AppAuthResultObserver$onCreate$1(this.this$0));
            this.authorizationLauncher = register;
            Intent intent = this.authRequestIntent;
            if (intent != null) {
                this.authRequestIntent = null;
                register.launch(intent);
            }
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onDestroy(LifecycleOwner lifecycleOwner) {
            this.authorizationLauncher = null;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onPause(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onResume(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onStart(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onStop(LifecycleOwner lifecycleOwner) {
        }
    }
}
