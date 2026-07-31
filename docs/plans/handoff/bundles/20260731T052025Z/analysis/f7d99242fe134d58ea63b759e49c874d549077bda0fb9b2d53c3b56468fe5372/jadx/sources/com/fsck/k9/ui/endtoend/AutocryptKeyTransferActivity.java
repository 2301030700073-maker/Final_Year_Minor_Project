package com.fsck.k9.ui.endtoend;

import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Bundle;
import android.transition.TransitionInflater;
import android.transition.TransitionManager;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.lifecycle.BlockRunner$cancel$1;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.ui.base.BaseActivity;
import com.fsck.k9.view.StatusIndicator;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal.http2.Http2Connection;
import org.openintents.openpgp.OpenPgpApiManager;
import org.openintents.openpgp.util.OpenPgpIntentStarter;
import org.openintents.openpgp.util.OpenPgpProviderUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptKeyTransferActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Lazy presenter$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Http2Connection.ReaderRunnable(7, this, new K9$$ExternalSyntheticLambda0(15, this)));
    public MaterialTextView transferAddress1;
    public MaterialTextView transferAddress2;
    public View transferButtonShowCode;
    public View transferErrorSend;
    public View transferLayoutFinish;
    public View transferLayoutGenerating;
    public View transferLayoutSending;
    public View transferMsgInfo;
    public StatusIndicator transferProgressGenerating;
    public StatusIndicator transferProgressSending;
    public View transferSendButton;

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setLayout(R.layout.crypto_key_transfer);
        setTitle(R.string.ac_transfer_title);
        String stringExtra = getIntent().getStringExtra("account");
        ActionBar supportActionBar = getSupportActionBar();
        supportActionBar.getClass();
        final int i = 1;
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        View findViewById = findViewById(R.id.transferSendButton);
        findViewById.getClass();
        this.transferSendButton = findViewById;
        View findViewById2 = findViewById(R.id.transferButtonShowCode);
        findViewById2.getClass();
        this.transferButtonShowCode = findViewById2;
        View findViewById3 = findViewById(R.id.transferAddress1);
        findViewById3.getClass();
        this.transferAddress1 = (MaterialTextView) findViewById3;
        View findViewById4 = findViewById(R.id.transferAddress2);
        findViewById4.getClass();
        this.transferAddress2 = (MaterialTextView) findViewById4;
        View findViewById5 = findViewById(R.id.transferMsgInfo);
        findViewById5.getClass();
        this.transferMsgInfo = findViewById5;
        View findViewById6 = findViewById(R.id.transferLayoutGenerating);
        findViewById6.getClass();
        this.transferLayoutGenerating = findViewById6;
        View findViewById7 = findViewById(R.id.transferLayoutSending);
        findViewById7.getClass();
        this.transferLayoutSending = findViewById7;
        View findViewById8 = findViewById(R.id.transferLayoutFinish);
        findViewById8.getClass();
        this.transferLayoutFinish = findViewById8;
        View findViewById9 = findViewById(R.id.transferErrorSend);
        findViewById9.getClass();
        this.transferErrorSend = findViewById9;
        View findViewById10 = findViewById(R.id.transferProgressGenerating);
        findViewById10.getClass();
        this.transferProgressGenerating = (StatusIndicator) findViewById10;
        View findViewById11 = findViewById(R.id.transferProgressSending);
        findViewById11.getClass();
        this.transferProgressSending = (StatusIndicator) findViewById11;
        View view = this.transferSendButton;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transferSendButton");
            throw null;
        }
        final int i2 = 0;
        view.setOnClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.ui.endtoend.AutocryptKeyTransferActivity$$ExternalSyntheticLambda1
            public final /* synthetic */ AutocryptKeyTransferActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i3 = i2;
                Continuation continuation = null;
                AutocryptKeyTransferActivity autocryptKeyTransferActivity = this.f$0;
                switch (i3) {
                    case 0:
                        int i4 = AutocryptKeyTransferActivity.$r8$clinit;
                        AutocryptKeyTransferPresenter autocryptKeyTransferPresenter = (AutocryptKeyTransferPresenter) autocryptKeyTransferActivity.presenter$delegate.getValue();
                        autocryptKeyTransferPresenter.view.sceneGeneratingAndSending();
                        JobKt.launch$default(autocryptKeyTransferPresenter.presenterScope, null, null, new BlockRunner$cancel$1(autocryptKeyTransferPresenter, continuation, 17), 3);
                        return;
                    default:
                        int i5 = AutocryptKeyTransferActivity.$r8$clinit;
                        AutocryptKeyTransferPresenter autocryptKeyTransferPresenter2 = (AutocryptKeyTransferPresenter) autocryptKeyTransferActivity.presenter$delegate.getValue();
                        AutocryptKeyTransferActivity autocryptKeyTransferActivity2 = autocryptKeyTransferPresenter2.view;
                        PendingIntent pendingIntent = autocryptKeyTransferPresenter2.showTransferCodePi;
                        if (pendingIntent == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("showTransferCodePi");
                            throw null;
                        }
                        autocryptKeyTransferActivity2.getClass();
                        try {
                            IntentSender intentSender = pendingIntent.getIntentSender();
                            intentSender.getClass();
                            autocryptKeyTransferActivity2.startIntentSender(intentSender, null, 0, 0, 0, OpenPgpIntentStarter.buildOptionsBundle());
                            return;
                        } catch (IntentSender.SendIntentException e) {
                            Log.e(e, "Error starting PendingIntent", new Object[0]);
                            return;
                        }
                }
            }
        });
        View view2 = this.transferButtonShowCode;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transferButtonShowCode");
            throw null;
        }
        view2.setOnClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.ui.endtoend.AutocryptKeyTransferActivity$$ExternalSyntheticLambda1
            public final /* synthetic */ AutocryptKeyTransferActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view22) {
                int i3 = i;
                Continuation continuation = null;
                AutocryptKeyTransferActivity autocryptKeyTransferActivity = this.f$0;
                switch (i3) {
                    case 0:
                        int i4 = AutocryptKeyTransferActivity.$r8$clinit;
                        AutocryptKeyTransferPresenter autocryptKeyTransferPresenter = (AutocryptKeyTransferPresenter) autocryptKeyTransferActivity.presenter$delegate.getValue();
                        autocryptKeyTransferPresenter.view.sceneGeneratingAndSending();
                        JobKt.launch$default(autocryptKeyTransferPresenter.presenterScope, null, null, new BlockRunner$cancel$1(autocryptKeyTransferPresenter, continuation, 17), 3);
                        return;
                    default:
                        int i5 = AutocryptKeyTransferActivity.$r8$clinit;
                        AutocryptKeyTransferPresenter autocryptKeyTransferPresenter2 = (AutocryptKeyTransferPresenter) autocryptKeyTransferActivity.presenter$delegate.getValue();
                        AutocryptKeyTransferActivity autocryptKeyTransferActivity2 = autocryptKeyTransferPresenter2.view;
                        PendingIntent pendingIntent = autocryptKeyTransferPresenter2.showTransferCodePi;
                        if (pendingIntent == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("showTransferCodePi");
                            throw null;
                        }
                        autocryptKeyTransferActivity2.getClass();
                        try {
                            IntentSender intentSender = pendingIntent.getIntentSender();
                            intentSender.getClass();
                            autocryptKeyTransferActivity2.startIntentSender(intentSender, null, 0, 0, 0, OpenPgpIntentStarter.buildOptionsBundle());
                            return;
                        } catch (IntentSender.SendIntentException e) {
                            Log.e(e, "Error starting PendingIntent", new Object[0]);
                            return;
                        }
                }
            }
        });
        final AutocryptKeyTransferPresenter autocryptKeyTransferPresenter = (AutocryptKeyTransferPresenter) this.presenter$delegate.getValue();
        AutocryptKeyTransferActivity autocryptKeyTransferActivity = autocryptKeyTransferPresenter.view;
        if (stringExtra == null) {
            autocryptKeyTransferActivity.getClass();
            String string = autocryptKeyTransferActivity.getString(R.string.toast_account_not_found, Arrays.copyOf(new String[0], 0));
            string.getClass();
            Toast.makeText(autocryptKeyTransferActivity, string, 1).show();
            autocryptKeyTransferActivity.finish();
            return;
        }
        LegacyAccountDto account = autocryptKeyTransferPresenter.preferences.getAccount(stringExtra);
        if (account == null) {
            Regex$$ExternalSyntheticBUOutline0.m(stringExtra, " not found", "Account ");
            return;
        }
        autocryptKeyTransferPresenter.account = account;
        autocryptKeyTransferPresenter.openPgpApiManager.setOpenPgpProvider(account.getOpenPgpProvider(), new OpenPgpApiManager.OpenPgpApiManagerCallback() { // from class: com.fsck.k9.ui.endtoend.AutocryptKeyTransferPresenter$initFromIntent$1
            @Override // org.openintents.openpgp.OpenPgpApiManager.OpenPgpApiManagerCallback
            public final void onOpenPgpProviderError(OpenPgpApiManager.OpenPgpProviderError openPgpProviderError) {
                AutocryptKeyTransferPresenter autocryptKeyTransferPresenter2 = AutocryptKeyTransferPresenter.this;
                AutocryptKeyTransferActivity autocryptKeyTransferActivity2 = autocryptKeyTransferPresenter2.view;
                OpenPgpApiManager openPgpApiManager = autocryptKeyTransferPresenter2.openPgpApiManager;
                String openPgpProviderName = OpenPgpProviderUtil.getOpenPgpProviderName(openPgpApiManager.context.getPackageManager(), openPgpApiManager.openPgpProvider);
                if (openPgpProviderName == null) {
                    openPgpProviderName = openPgpApiManager.openPgpProvider;
                }
                openPgpProviderName.getClass();
                autocryptKeyTransferActivity2.getClass();
                String string2 = autocryptKeyTransferActivity2.getString(R.string.toast_openpgp_provider_error, Arrays.copyOf(new String[]{openPgpProviderName}, 1));
                string2.getClass();
                Toast.makeText(autocryptKeyTransferActivity2, string2, 1).show();
                autocryptKeyTransferActivity2.finish();
            }

            @Override // org.openintents.openpgp.OpenPgpApiManager.OpenPgpApiManagerCallback
            public final void onOpenPgpProviderStatusChanged() {
                AutocryptKeyTransferPresenter autocryptKeyTransferPresenter2 = AutocryptKeyTransferPresenter.this;
                OpenPgpApiManager openPgpApiManager = autocryptKeyTransferPresenter2.openPgpApiManager;
                if (openPgpApiManager.openPgpProviderState == OpenPgpApiManager.OpenPgpProviderState.UI_REQUIRED) {
                    AutocryptKeyTransferActivity autocryptKeyTransferActivity2 = autocryptKeyTransferPresenter2.view;
                    String openPgpProviderName = OpenPgpProviderUtil.getOpenPgpProviderName(openPgpApiManager.context.getPackageManager(), openPgpApiManager.openPgpProvider);
                    if (openPgpProviderName == null) {
                        openPgpProviderName = openPgpApiManager.openPgpProvider;
                    }
                    openPgpProviderName.getClass();
                    autocryptKeyTransferActivity2.getClass();
                    String string2 = autocryptKeyTransferActivity2.getString(R.string.toast_openpgp_provider_error, Arrays.copyOf(new String[]{openPgpProviderName}, 1));
                    string2.getClass();
                    Toast.makeText(autocryptKeyTransferActivity2, string2, 1).show();
                    autocryptKeyTransferActivity2.finish();
                }
            }
        });
        LegacyAccountDto legacyAccountDto = autocryptKeyTransferPresenter.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        String str = ((Identity) ((ArrayList) legacyAccountDto.getIdentities()).get(0)).email;
        str.getClass();
        autocryptKeyTransferActivity.getClass();
        MaterialTextView materialTextView = autocryptKeyTransferActivity.transferAddress1;
        if (materialTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transferAddress1");
            throw null;
        }
        materialTextView.setText(str);
        MaterialTextView materialTextView2 = autocryptKeyTransferActivity.transferAddress2;
        if (materialTextView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transferAddress2");
            throw null;
        }
        materialTextView2.setText(str);
        AutocryptSetupTransferLiveEvent autocryptSetupTransferLiveEvent = autocryptKeyTransferPresenter.viewModel.autocryptSetupTransferLiveEvent;
        autocryptSetupTransferLiveEvent.setValue(autocryptSetupTransferLiveEvent.getValue());
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        AutocryptKeyTransferActivity autocryptKeyTransferActivity = ((AutocryptKeyTransferPresenter) this.presenter$delegate.getValue()).view;
        autocryptKeyTransferActivity.setResult(0);
        autocryptKeyTransferActivity.finish();
        return true;
    }

    public final void sceneGeneratingAndSending() {
        TransitionManager.beginDelayedTransition((ViewGroup) findViewById(android.R.id.content), TransitionInflater.from(this).inflateTransition(R.transition.transfer_transitions));
        View view = this.transferSendButton;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transferSendButton");
            throw null;
        }
        view.setVisibility(8);
        View view2 = this.transferMsgInfo;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transferMsgInfo");
            throw null;
        }
        view2.setVisibility(8);
        View view3 = this.transferLayoutGenerating;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transferLayoutGenerating");
            throw null;
        }
        view3.setVisibility(0);
        View view4 = this.transferLayoutSending;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transferLayoutSending");
            throw null;
        }
        view4.setVisibility(0);
        View view5 = this.transferLayoutFinish;
        if (view5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transferLayoutFinish");
            throw null;
        }
        view5.setVisibility(8);
        View view6 = this.transferErrorSend;
        if (view6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transferErrorSend");
            throw null;
        }
        view6.setVisibility(8);
        View view7 = this.transferButtonShowCode;
        if (view7 != null) {
            view7.setVisibility(8);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("transferButtonShowCode");
            throw null;
        }
    }
}
