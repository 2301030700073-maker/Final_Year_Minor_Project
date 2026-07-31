package com.fsck.k9.activity.compose;

import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.View;
import android.widget.TextView;
import android.widget.ViewAnimator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.activity.compose.RecipientPresenter;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.view.RecipientSelectView;
import com.fsck.k9.view.ToolableViewAnimator;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.openintents.openpgp.OpenPgpApiManager;
import org.openintents.openpgp.util.OpenPgpIntentStarter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RecipientMvpView implements View.OnFocusChangeListener, View.OnClickListener {
    public final MessageCompose activity;
    public final View bccDivider;
    public final RecipientSelectView bccView;
    public final View bccWrapper;
    public final View ccDivider;
    public final RecipientSelectView ccView;
    public final View ccWrapper;
    public final ToolableViewAnimator cryptoSpecialModeIndicator;
    public final ToolableViewAnimator cryptoStatusView;
    public RecipientPresenter presenter;
    public final ViewAnimator recipientExpanderContainer;
    public final HashSet textWatchers;
    public final RecipientSelectView toView;
    public static final FastOutSlowInInterpolator CRYPTO_ICON_OUT_ANIMATOR = new FastOutSlowInInterpolator(1);
    public static final FastOutSlowInInterpolator CRYPTO_ICON_IN_ANIMATOR = new FastOutSlowInInterpolator(2);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum CryptoSpecialModeDisplayType {
        NONE(-1),
        PGP_INLINE(R.id.crypto_special_inline),
        SIGN_ONLY(R.id.crypto_special_sign_only),
        SIGN_ONLY_PGP_INLINE(R.id.crypto_special_sign_only_inline);

        public final int childIdToDisplay;

        CryptoSpecialModeDisplayType(int i) {
            this.childIdToDisplay = i;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum CryptoStatusDisplayType {
        UNCONFIGURED(-1),
        UNINITIALIZED(-1),
        SIGN_ONLY(R.id.crypto_status_disabled),
        UNAVAILABLE(-1),
        ENABLED(R.id.crypto_status_enabled),
        ENABLED_ERROR(R.id.crypto_status_error),
        ENABLED_TRUSTED(R.id.crypto_status_trusted),
        AVAILABLE(R.id.crypto_status_disabled),
        ERROR(R.id.crypto_status_error);

        public final int childIdToDisplay;

        CryptoStatusDisplayType(int i) {
            this.childIdToDisplay = i;
        }
    }

    public RecipientMvpView(MessageCompose messageCompose) {
        this.activity = messageCompose;
        View findViewById = messageCompose.findViewById(R.id.to);
        findViewById.getClass();
        RecipientSelectView recipientSelectView = (RecipientSelectView) findViewById;
        this.toView = recipientSelectView;
        View findViewById2 = messageCompose.findViewById(R.id.cc);
        findViewById2.getClass();
        RecipientSelectView recipientSelectView2 = (RecipientSelectView) findViewById2;
        this.ccView = recipientSelectView2;
        View findViewById3 = messageCompose.findViewById(R.id.bcc);
        findViewById3.getClass();
        RecipientSelectView recipientSelectView3 = (RecipientSelectView) findViewById3;
        this.bccView = recipientSelectView3;
        View findViewById4 = messageCompose.findViewById(R.id.cc_wrapper);
        findViewById4.getClass();
        this.ccWrapper = findViewById4;
        View findViewById5 = messageCompose.findViewById(R.id.cc_divider);
        findViewById5.getClass();
        this.ccDivider = findViewById5;
        View findViewById6 = messageCompose.findViewById(R.id.bcc_wrapper);
        findViewById6.getClass();
        this.bccWrapper = findViewById6;
        View findViewById7 = messageCompose.findViewById(R.id.bcc_divider);
        findViewById7.getClass();
        this.bccDivider = findViewById7;
        View findViewById8 = messageCompose.findViewById(R.id.recipient_expander_container);
        findViewById8.getClass();
        this.recipientExpanderContainer = (ViewAnimator) findViewById8;
        View findViewById9 = messageCompose.findViewById(R.id.crypto_status);
        findViewById9.getClass();
        ToolableViewAnimator toolableViewAnimator = (ToolableViewAnimator) findViewById9;
        this.cryptoStatusView = toolableViewAnimator;
        View findViewById10 = messageCompose.findViewById(R.id.crypto_special_mode);
        findViewById10.getClass();
        ToolableViewAnimator toolableViewAnimator2 = (ToolableViewAnimator) findViewById10;
        this.cryptoSpecialModeIndicator = toolableViewAnimator2;
        this.textWatchers = new HashSet();
        toolableViewAnimator.setOnClickListener(this);
        toolableViewAnimator2.setOnClickListener(this);
        recipientSelectView.setOnFocusChangeListener(this);
        recipientSelectView2.setOnFocusChangeListener(this);
        recipientSelectView3.setOnFocusChangeListener(this);
        messageCompose.findViewById(R.id.recipient_expander).setOnClickListener(this);
        messageCompose.findViewById(R.id.to_label).setOnClickListener(this);
        messageCompose.findViewById(R.id.cc_label).setOnClickListener(this);
        messageCompose.findViewById(R.id.bcc_label).setOnClickListener(this);
    }

    public final void addAllTextChangedListeners(TextView textView) {
        Iterator it = this.textWatchers.iterator();
        while (it.hasNext()) {
            textView.addTextChangedListener((TextWatcher) it.next());
        }
    }

    public final void addRecipients(Message$RecipientType message$RecipientType, RecipientSelectView.Recipient... recipientArr) {
        int ordinal = message$RecipientType.ordinal();
        if (ordinal == 0) {
            this.toView.addRecipients((RecipientSelectView.Recipient[]) Arrays.copyOf(recipientArr, recipientArr.length));
        } else if (ordinal == 1) {
            this.ccView.addRecipients((RecipientSelectView.Recipient[]) Arrays.copyOf(recipientArr, recipientArr.length));
        } else if (ordinal != 2) {
            UriKt$$ExternalSyntheticBUOutline0.m$1(message$RecipientType, "Unsupported type: ");
        } else {
            this.bccView.addRecipients((RecipientSelectView.Recipient[]) Arrays.copyOf(recipientArr, recipientArr.length));
        }
    }

    public final List getBccAddresses() {
        Address[] addresses = this.bccView.getAddresses();
        addresses.getClass();
        return ArraysKt___ArraysKt.toList(addresses);
    }

    public final List getCcAddresses() {
        Address[] addresses = this.ccView.getAddresses();
        addresses.getClass();
        return ArraysKt___ArraysKt.toList(addresses);
    }

    public final void launchUserInteractionPendingIntent(PendingIntent pendingIntent, int i) {
        try {
            OpenPgpIntentStarter.startIntentSenderForResult(this.activity, pendingIntent.getIntentSender(), i | 256);
        } catch (IntentSender.SendIntentException e) {
            Log.e(e, "Error starting pending intent from builder!", new Object[0]);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        view.getClass();
        int id = view.getId();
        if (id == R.id.to_label) {
            RecipientPresenter recipientPresenter = this.presenter;
            if (recipientPresenter != null) {
                recipientPresenter.recipientMvpView.toView.requestFocus();
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("presenter");
                throw null;
            }
        }
        if (id == R.id.cc_label) {
            RecipientPresenter recipientPresenter2 = this.presenter;
            if (recipientPresenter2 != null) {
                recipientPresenter2.recipientMvpView.ccView.requestFocus();
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("presenter");
                throw null;
            }
        }
        if (id == R.id.bcc_label) {
            RecipientPresenter recipientPresenter3 = this.presenter;
            if (recipientPresenter3 != null) {
                recipientPresenter3.recipientMvpView.bccView.requestFocus();
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("presenter");
                throw null;
            }
        }
        if (id == R.id.recipient_expander) {
            RecipientPresenter recipientPresenter4 = this.presenter;
            if (recipientPresenter4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("presenter");
                throw null;
            }
            RecipientMvpView recipientMvpView = recipientPresenter4.recipientMvpView;
            recipientMvpView.setCcVisibility(true);
            recipientMvpView.setBccVisibility(true);
            recipientPresenter4.updateRecipientExpanderVisibility();
            return;
        }
        if (id != R.id.crypto_status) {
            if (id == R.id.crypto_special_mode) {
                RecipientPresenter recipientPresenter5 = this.presenter;
                if (recipientPresenter5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("presenter");
                    throw null;
                }
                RecipientMvpView recipientMvpView2 = recipientPresenter5.recipientMvpView;
                if (recipientPresenter5.currentCryptoMode == RecipientPresenter.CryptoMode.SIGN_ONLY) {
                    recipientMvpView2.showOpenPgpSignOnlyDialog(false);
                    return;
                } else if (recipientPresenter5.isForceTextMessageFormat) {
                    recipientMvpView2.showOpenPgpInlineDialog(false);
                    return;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This icon should not be clickable while no special mode is active!");
                    return;
                }
            }
            return;
        }
        RecipientPresenter recipientPresenter6 = this.presenter;
        if (recipientPresenter6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
            throw null;
        }
        OpenPgpApiManager openPgpApiManager = recipientPresenter6.openPgpApiManager;
        int ordinal = openPgpApiManager.openPgpProviderState.ordinal();
        if (ordinal == 0) {
            Log.e("click on crypto status while unconfigured - this should not really happen?!", new Object[0]);
            return;
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                recipientPresenter6.recipientMvpView.launchUserInteractionPendingIntent(openPgpApiManager.userInteractionPendingIntent, 4);
                return;
            } else if (ordinal != 3) {
                if (ordinal == 4) {
                    recipientPresenter6.toggleEncryptionState(false);
                    return;
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
            }
        }
        openPgpApiManager.refreshConnection();
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        view.getClass();
        if (z) {
            int id = view.getId();
            if (id == R.id.to) {
                RecipientPresenter recipientPresenter = this.presenter;
                if (recipientPresenter != null) {
                    recipientPresenter.lastFocusedType = Message$RecipientType.TO;
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("presenter");
                    throw null;
                }
            }
            if (id == R.id.cc) {
                RecipientPresenter recipientPresenter2 = this.presenter;
                if (recipientPresenter2 != null) {
                    recipientPresenter2.lastFocusedType = Message$RecipientType.CC;
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("presenter");
                    throw null;
                }
            }
            if (id == R.id.bcc) {
                RecipientPresenter recipientPresenter3 = this.presenter;
                if (recipientPresenter3 != null) {
                    recipientPresenter3.lastFocusedType = Message$RecipientType.BCC;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("presenter");
                    throw null;
                }
            }
        }
    }

    public final void removeAllTextChangedListeners(TextView textView) {
        Iterator it = this.textWatchers.iterator();
        while (it.hasNext()) {
            textView.removeTextChangedListener((TextWatcher) it.next());
        }
    }

    public final void setBccVisibility(boolean z) {
        this.bccWrapper.setVisibility(z ? 0 : 8);
        this.bccDivider.setVisibility(z ? 0 : 8);
    }

    public final void setCcVisibility(boolean z) {
        this.ccWrapper.setVisibility(z ? 0 : 8);
        this.ccDivider.setVisibility(z ? 0 : 8);
    }

    public final void showOpenPgpEnabledErrorDialog() {
        PgpEnabledErrorDialog pgpEnabledErrorDialog = new PgpEnabledErrorDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("highlighted_view", R.id.crypto_status_anchor);
        bundle.putBoolean("is_gotit", false);
        pgpEnabledErrorDialog.setArguments(bundle);
        pgpEnabledErrorDialog.show(this.activity.getSupportFragmentManager(), "openpgp_error");
    }

    public final void showOpenPgpInlineDialog(boolean z) {
        PgpInlineDialog pgpInlineDialog = new PgpInlineDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("first_time", z ? 1 : 0);
        bundle.putInt("highlighted_view", R.id.crypto_special_mode);
        pgpInlineDialog.setArguments(bundle);
        pgpInlineDialog.show(this.activity.getSupportFragmentManager(), "openpgp_inline");
    }

    public final void showOpenPgpSignOnlyDialog(boolean z) {
        PgpSignOnlyDialog pgpSignOnlyDialog = new PgpSignOnlyDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("first_time", z ? 1 : 0);
        bundle.putInt("highlighted_view", R.id.crypto_special_mode);
        pgpSignOnlyDialog.setArguments(bundle);
        pgpSignOnlyDialog.show(this.activity.getSupportFragmentManager(), "openpgp_signonly");
    }
}
