package app.k9mail.feature.settings.p000import.ui;

import android.os.Bundle;
import android.widget.Button;
import android.widget.ProgressBar;
import com.fsck.k9.ui.base.BaseActivity;
import com.google.android.material.textview.MaterialTextView;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OAuthFlowActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Lazy accountManager$delegate;
    public final Lazy authViewModel$delegate;
    public MaterialTextView errorText;
    public Button signInButton;
    public ProgressBar signInProgress;

    public OAuthFlowActivity() {
        final int i = 1;
        this.authViewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Function0(this) { // from class: app.k9mail.feature.settings.import.ui.OAuthFlowActivity$special$$inlined$inject$default$1
            public final /* synthetic */ OAuthFlowActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                OAuthFlowActivity oAuthFlowActivity = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(oAuthFlowActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    default:
                        return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(AuthViewModel.class), oAuthFlowActivity.getViewModelStore(), oAuthFlowActivity.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(oAuthFlowActivity), null);
                }
            }
        });
        final int i2 = 0;
        this.accountManager$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0(this) { // from class: app.k9mail.feature.settings.import.ui.OAuthFlowActivity$special$$inlined$inject$default$1
            public final /* synthetic */ OAuthFlowActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                OAuthFlowActivity oAuthFlowActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(oAuthFlowActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    default:
                        return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(AuthViewModel.class), oAuthFlowActivity.getViewModelStore(), oAuthFlowActivity.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(oAuthFlowActivity), null);
                }
            }
        });
    }

    public final void displayErrorText(int i, Object... objArr) {
        ProgressBar progressBar = this.signInProgress;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signInProgress");
            throw null;
        }
        progressBar.setVisibility(8);
        Button button = this.signInButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signInButton");
            throw null;
        }
        button.setVisibility(0);
        MaterialTextView materialTextView = this.errorText;
        if (materialTextView != null) {
            materialTextView.setText(getString(i, Arrays.copyOf(objArr, objArr.length)));
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("errorText");
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0113  */
    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r14) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.settings.p000import.ui.OAuthFlowActivity.onCreate(android.os.Bundle):void");
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        ProgressBar progressBar = this.signInProgress;
        if (progressBar != null) {
            bundle.putBoolean("signInProgress", progressBar.getVisibility() == 0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("signInProgress");
            throw null;
        }
    }
}
