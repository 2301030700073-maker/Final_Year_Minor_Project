package androidx.biometric;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.hardware.biometrics.BiometricPrompt;
import android.hardware.biometrics.BiometricPrompt$AuthenticationCallback;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import androidx.biometric.BiometricPrompt;
import androidx.biometric.BiometricViewModel;
import androidx.biometric.FingerprintDialogFragment;
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.app.ActivityRecreator;
import androidx.core.os.ExecutorCompat$HandlerExecutor;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import okhttp3.Dispatcher;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class BiometricFragment extends Fragment {
    public final Handler mHandler = new Handler(Looper.getMainLooper());
    public BiometricViewModel mViewModel;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.biometric.BiometricFragment$8, reason: invalid class name */
    public final class AnonymousClass8 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ BiometricFragment this$0;
        public final /* synthetic */ CharSequence val$errorString;
        public final /* synthetic */ int val$knownErrorCode;

        public /* synthetic */ AnonymousClass8(BiometricFragment biometricFragment, int i, CharSequence charSequence, int i2) {
            this.$r8$classId = i2;
            this.this$0 = biometricFragment;
            this.val$knownErrorCode = i;
            this.val$errorString = charSequence;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.$r8$classId;
            CharSequence charSequence = this.val$errorString;
            int i2 = this.val$knownErrorCode;
            BiometricFragment biometricFragment = this.this$0;
            switch (i) {
                case 0:
                    biometricFragment.sendErrorAndDismiss(i2, charSequence);
                    break;
                default:
                    BiometricViewModel biometricViewModel = biometricFragment.mViewModel;
                    if (biometricViewModel.mClientCallback == null) {
                        biometricViewModel.mClientCallback = new BiometricViewModel.AnonymousClass1();
                    }
                    biometricViewModel.mClientCallback.onAuthenticationError(i2, charSequence);
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api21Impl {
        public static Intent createConfirmDeviceCredentialIntent(KeyguardManager keyguardManager, CharSequence charSequence, CharSequence charSequence2) {
            return keyguardManager.createConfirmDeviceCredentialIntent(charSequence, charSequence2);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api29Impl {
        public static void setConfirmationRequired(BiometricPrompt.Builder builder, boolean z) {
            builder.setConfirmationRequired(z);
        }

        public static void setDeviceCredentialAllowed(BiometricPrompt.Builder builder, boolean z) {
            builder.setDeviceCredentialAllowed(z);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api30Impl {
        public static void setAllowedAuthenticators(BiometricPrompt.Builder builder, int i) {
            builder.setAllowedAuthenticators(i);
        }
    }

    public final void cancelAuthentication(int i) {
        if (i == 3 || !this.mViewModel.mIsIgnoringCancel) {
            if (isUsingFingerprintDialog()) {
                this.mViewModel.mCanceledFrom = i;
                if (i == 1) {
                    sendErrorToClient(10, Validate.getFingerprintErrorString(getContext(), 10));
                }
            }
            BiometricViewModel biometricViewModel = this.mViewModel;
            if (biometricViewModel.mCancellationSignalProvider == null) {
                biometricViewModel.mCancellationSignalProvider = new BiometricPrompt(10);
            }
            BiometricPrompt biometricPrompt = biometricViewModel.mCancellationSignalProvider;
            CancellationSignal cancellationSignal = (CancellationSignal) biometricPrompt.mClientFragmentManager;
            if (cancellationSignal != null) {
                try {
                    CancellationSignalProvider$Api16Impl.cancel(cancellationSignal);
                } catch (NullPointerException e) {
                    Log.e("CancelSignalProvider", "Got NPE while canceling biometric authentication.", e);
                }
                biometricPrompt.mClientFragmentManager = null;
            }
        }
    }

    public final void dismiss() {
        this.mViewModel.mIsPromptShowing = false;
        dismissFingerprintDialog();
        if (!this.mViewModel.mIsConfirmingDeviceCredential && isAdded()) {
            BackStackRecord backStackRecord = new BackStackRecord(getParentFragmentManager());
            backStackRecord.remove(this);
            backStackRecord.commitInternal(true, true);
        }
        Context context = getContext();
        if (context != null) {
            String str = Build.MODEL;
            if (Build.VERSION.SDK_INT == 29 && str != null) {
                for (String str2 : context.getResources().getStringArray(R.array.delay_showing_prompt_models)) {
                    if (str.equals(str2)) {
                        BiometricViewModel biometricViewModel = this.mViewModel;
                        biometricViewModel.mIsDelayingPrompt = true;
                        this.mHandler.postDelayed(new StopDelayingPromptRunnable(biometricViewModel, 0), 600L);
                        return;
                    }
                }
            }
        }
    }

    public final void dismissFingerprintDialog() {
        this.mViewModel.mIsPromptShowing = false;
        if (isAdded()) {
            FragmentManager parentFragmentManager = getParentFragmentManager();
            FingerprintDialogFragment fingerprintDialogFragment = (FingerprintDialogFragment) parentFragmentManager.findFragmentByTag("androidx.biometric.FingerprintDialogFragment");
            if (fingerprintDialogFragment != null) {
                if (fingerprintDialogFragment.isAdded()) {
                    fingerprintDialogFragment.dismissAllowingStateLoss();
                    return;
                }
                BackStackRecord backStackRecord = new BackStackRecord(parentFragmentManager);
                backStackRecord.remove(fingerprintDialogFragment);
                backStackRecord.commitInternal(true, true);
            }
        }
    }

    public final boolean isManagingDeviceCredentialButton() {
        return Build.VERSION.SDK_INT <= 28 && IntOffsetKt.isDeviceCredentialAllowed(this.mViewModel.getAllowedAuthenticators());
    }

    public final boolean isUsingFingerprintDialog() {
        if (Build.VERSION.SDK_INT < 28) {
            return true;
        }
        if (getActivity() != null) {
            this.mViewModel.getClass();
        }
        if (Build.VERSION.SDK_INT != 28) {
            return false;
        }
        Context context = getContext();
        return context == null || context.getPackageManager() == null || !PackageUtils$Api23Impl.hasSystemFeatureFingerprint(context.getPackageManager());
    }

    public final void launchConfirmCredentialActivity() {
        AppCompatActivity activity = getActivity();
        if (activity == null) {
            Log.e("BiometricFragment", "Failed to check device credential. Client FragmentActivity not found.");
            return;
        }
        KeyguardManager keyguardManager = KeyguardUtils$Api23Impl.getKeyguardManager(activity);
        if (keyguardManager == null) {
            sendErrorAndDismiss(12, getString(R.string.generic_error_no_keyguard));
            return;
        }
        BiometricViewModel biometricViewModel = this.mViewModel;
        CardView.AnonymousClass1 anonymousClass1 = biometricViewModel.mPromptInfo;
        CharSequence charSequence = anonymousClass1 != null ? (CharSequence) anonymousClass1.mCardBackground : null;
        CharSequence charSequence2 = anonymousClass1 != null ? (CharSequence) anonymousClass1.this$0 : null;
        biometricViewModel.getClass();
        Intent createConfirmDeviceCredentialIntent = Api21Impl.createConfirmDeviceCredentialIntent(keyguardManager, charSequence, charSequence2 != null ? charSequence2 : null);
        if (createConfirmDeviceCredentialIntent == null) {
            sendErrorAndDismiss(14, getString(R.string.generic_error_no_device_credential));
            return;
        }
        this.mViewModel.mIsConfirmingDeviceCredential = true;
        if (isUsingFingerprintDialog()) {
            dismissFingerprintDialog();
        }
        createConfirmDeviceCredentialIntent.setFlags(134742016);
        startActivityForResult(createConfirmDeviceCredentialIntent, 1);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            this.mViewModel.mIsConfirmingDeviceCredential = false;
            if (i2 == -1) {
                sendSuccessAndDismiss(new BiometricPrompt.AuthenticationResult());
            } else {
                sendErrorAndDismiss(10, getString(R.string.generic_error_user_canceled));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() == null) {
            return;
        }
        AppCompatActivity activity = getActivity();
        activity.getClass();
        ViewModelStore viewModelStore = activity.getViewModelStore();
        ViewModelProvider$Factory defaultViewModelProviderFactory = activity.getDefaultViewModelProviderFactory();
        MutableCreationExtras defaultViewModelCreationExtras = activity.getDefaultViewModelCreationExtras();
        defaultViewModelProviderFactory.getClass();
        Dispatcher dispatcher = new Dispatcher(viewModelStore, defaultViewModelProviderFactory, defaultViewModelCreationExtras);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BiometricViewModel.class);
        String qualifiedName = orCreateKotlinClass.getQualifiedName();
        if (qualifiedName == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Local and anonymous classes can not be ViewModels");
            return;
        }
        BiometricViewModel biometricViewModel = (BiometricViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
        this.mViewModel = biometricViewModel;
        if (biometricViewModel.mAuthenticationResult == null) {
            biometricViewModel.mAuthenticationResult = new MutableLiveData();
        }
        final int i = 0;
        biometricViewModel.mAuthenticationResult.observe(this, new Observer(this) { // from class: androidx.biometric.BiometricFragment.1
            public final /* synthetic */ BiometricFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i2 = i;
                int i3 = 5;
                int i4 = 0;
                String str = null;
                BiometricFragment biometricFragment = this.this$0;
                switch (i2) {
                    case 0:
                        BiometricPrompt.AuthenticationResult authenticationResult = (BiometricPrompt.AuthenticationResult) obj;
                        if (authenticationResult != null) {
                            biometricFragment.sendSuccessAndDismiss(authenticationResult);
                            BiometricViewModel biometricViewModel2 = biometricFragment.mViewModel;
                            if (biometricViewModel2.mAuthenticationResult == null) {
                                biometricViewModel2.mAuthenticationResult = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel2.mAuthenticationResult, null);
                            break;
                        }
                        break;
                    case 1:
                        BiometricErrorData biometricErrorData = (BiometricErrorData) obj;
                        if (biometricErrorData != null) {
                            int i5 = biometricErrorData.mErrorCode;
                            CharSequence charSequence = biometricErrorData.mErrorMessage;
                            switch (i5) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case 9:
                                case 10:
                                case 11:
                                case BasicTextKt.ShiftMeta /* 12 */:
                                case 13:
                                case 14:
                                case OffsetKt.Horizontal /* 15 */:
                                    break;
                                case 6:
                                default:
                                    i5 = 8;
                                    break;
                            }
                            Context context = biometricFragment.getContext();
                            int i6 = Build.VERSION.SDK_INT;
                            if (i6 < 29 && ((i5 == 7 || i5 == 9) && context != null)) {
                                KeyguardManager keyguardManager = KeyguardUtils$Api23Impl.getKeyguardManager(context);
                                if ((keyguardManager == null ? false : KeyguardUtils$Api23Impl.isDeviceSecure(keyguardManager)) && IntOffsetKt.isDeviceCredentialAllowed(biometricFragment.mViewModel.getAllowedAuthenticators())) {
                                    biometricFragment.launchConfirmCredentialActivity();
                                    biometricFragment.mViewModel.setAuthenticationError(null);
                                    break;
                                }
                            }
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                if (charSequence == null) {
                                    charSequence = Validate.getFingerprintErrorString(biometricFragment.getContext(), i5);
                                }
                                BiometricViewModel biometricViewModel3 = biometricFragment.mViewModel;
                                if (i5 == 5) {
                                    int i7 = biometricViewModel3.mCanceledFrom;
                                    if (i7 == 0 || i7 == 3) {
                                        biometricFragment.sendErrorToClient(i5, charSequence);
                                    }
                                    biometricFragment.dismiss();
                                } else {
                                    if (biometricViewModel3.mIsFingerprintDialogDismissedInstantly) {
                                        biometricFragment.sendErrorAndDismiss(i5, charSequence);
                                    } else {
                                        biometricFragment.showFingerprintErrorMessage(charSequence);
                                        Handler handler = biometricFragment.mHandler;
                                        AnonymousClass8 anonymousClass8 = new AnonymousClass8(biometricFragment, i5, charSequence, i4);
                                        Context context2 = biometricFragment.getContext();
                                        if (context2 != null) {
                                            String str2 = Build.MODEL;
                                            if (i6 == 28 && str2 != null) {
                                                for (String str3 : context2.getResources().getStringArray(R.array.hide_fingerprint_instantly_prefixes)) {
                                                    if (str2.startsWith(str3)) {
                                                        handler.postDelayed(anonymousClass8, i4);
                                                    }
                                                }
                                            }
                                        }
                                        i4 = 2000;
                                        handler.postDelayed(anonymousClass8, i4);
                                    }
                                    biometricFragment.mViewModel.mIsFingerprintDialogDismissedInstantly = true;
                                }
                            } else {
                                if (charSequence == null) {
                                    charSequence = biometricFragment.getString(R.string.default_error_msg) + " " + i5;
                                }
                                biometricFragment.sendErrorAndDismiss(i5, charSequence);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                        }
                        break;
                    case 2:
                        CharSequence charSequence2 = (CharSequence) obj;
                        if (charSequence2 != null) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(charSequence2);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                            break;
                        }
                        break;
                    case 3:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(biometricFragment.getString(R.string.fingerprint_not_recognized));
                            }
                            BiometricViewModel biometricViewModel4 = biometricFragment.mViewModel;
                            if (biometricViewModel4.mIsAwaitingResult) {
                                Executor executor = biometricViewModel4.mClientExecutor;
                                if (executor == null) {
                                    executor = new ExecutorCompat$HandlerExecutor();
                                }
                                executor.execute(new Fragment.AnonymousClass1(i3, biometricFragment));
                            } else {
                                Log.w("BiometricFragment", "Failure not sent to client. Client is not awaiting a result.");
                            }
                            BiometricViewModel biometricViewModel5 = biometricFragment.mViewModel;
                            if (biometricViewModel5.mIsAuthenticationFailurePending == null) {
                                biometricViewModel5.mIsAuthenticationFailurePending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel5.mIsAuthenticationFailurePending, Boolean.FALSE);
                            break;
                        }
                        break;
                    case 4:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isManagingDeviceCredentialButton()) {
                                biometricFragment.launchConfirmCredentialActivity();
                            } else {
                                BiometricViewModel biometricViewModel6 = biometricFragment.mViewModel;
                                String str4 = biometricViewModel6.mNegativeButtonTextOverride;
                                if (str4 != null) {
                                    str = str4;
                                } else if (biometricViewModel6.mPromptInfo != null) {
                                    str = "";
                                }
                                if (str == null) {
                                    str = biometricFragment.getString(R.string.default_error_msg);
                                }
                                biometricFragment.sendErrorAndDismiss(13, str);
                                biometricFragment.cancelAuthentication(2);
                            }
                            biometricFragment.mViewModel.setNegativeButtonPressPending(false);
                            break;
                        }
                        break;
                    default:
                        if (((Boolean) obj).booleanValue()) {
                            biometricFragment.cancelAuthentication(1);
                            biometricFragment.dismiss();
                            BiometricViewModel biometricViewModel7 = biometricFragment.mViewModel;
                            if (biometricViewModel7.mIsFingerprintDialogCancelPending == null) {
                                biometricViewModel7.mIsFingerprintDialogCancelPending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel7.mIsFingerprintDialogCancelPending, Boolean.FALSE);
                            break;
                        }
                        break;
                }
            }
        });
        BiometricViewModel biometricViewModel2 = this.mViewModel;
        if (biometricViewModel2.mAuthenticationError == null) {
            biometricViewModel2.mAuthenticationError = new MutableLiveData();
        }
        final int i2 = 1;
        biometricViewModel2.mAuthenticationError.observe(this, new Observer(this) { // from class: androidx.biometric.BiometricFragment.1
            public final /* synthetic */ BiometricFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i22 = i2;
                int i3 = 5;
                int i4 = 0;
                String str = null;
                BiometricFragment biometricFragment = this.this$0;
                switch (i22) {
                    case 0:
                        BiometricPrompt.AuthenticationResult authenticationResult = (BiometricPrompt.AuthenticationResult) obj;
                        if (authenticationResult != null) {
                            biometricFragment.sendSuccessAndDismiss(authenticationResult);
                            BiometricViewModel biometricViewModel22 = biometricFragment.mViewModel;
                            if (biometricViewModel22.mAuthenticationResult == null) {
                                biometricViewModel22.mAuthenticationResult = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel22.mAuthenticationResult, null);
                            break;
                        }
                        break;
                    case 1:
                        BiometricErrorData biometricErrorData = (BiometricErrorData) obj;
                        if (biometricErrorData != null) {
                            int i5 = biometricErrorData.mErrorCode;
                            CharSequence charSequence = biometricErrorData.mErrorMessage;
                            switch (i5) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case 9:
                                case 10:
                                case 11:
                                case BasicTextKt.ShiftMeta /* 12 */:
                                case 13:
                                case 14:
                                case OffsetKt.Horizontal /* 15 */:
                                    break;
                                case 6:
                                default:
                                    i5 = 8;
                                    break;
                            }
                            Context context = biometricFragment.getContext();
                            int i6 = Build.VERSION.SDK_INT;
                            if (i6 < 29 && ((i5 == 7 || i5 == 9) && context != null)) {
                                KeyguardManager keyguardManager = KeyguardUtils$Api23Impl.getKeyguardManager(context);
                                if ((keyguardManager == null ? false : KeyguardUtils$Api23Impl.isDeviceSecure(keyguardManager)) && IntOffsetKt.isDeviceCredentialAllowed(biometricFragment.mViewModel.getAllowedAuthenticators())) {
                                    biometricFragment.launchConfirmCredentialActivity();
                                    biometricFragment.mViewModel.setAuthenticationError(null);
                                    break;
                                }
                            }
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                if (charSequence == null) {
                                    charSequence = Validate.getFingerprintErrorString(biometricFragment.getContext(), i5);
                                }
                                BiometricViewModel biometricViewModel3 = biometricFragment.mViewModel;
                                if (i5 == 5) {
                                    int i7 = biometricViewModel3.mCanceledFrom;
                                    if (i7 == 0 || i7 == 3) {
                                        biometricFragment.sendErrorToClient(i5, charSequence);
                                    }
                                    biometricFragment.dismiss();
                                } else {
                                    if (biometricViewModel3.mIsFingerprintDialogDismissedInstantly) {
                                        biometricFragment.sendErrorAndDismiss(i5, charSequence);
                                    } else {
                                        biometricFragment.showFingerprintErrorMessage(charSequence);
                                        Handler handler = biometricFragment.mHandler;
                                        AnonymousClass8 anonymousClass8 = new AnonymousClass8(biometricFragment, i5, charSequence, i4);
                                        Context context2 = biometricFragment.getContext();
                                        if (context2 != null) {
                                            String str2 = Build.MODEL;
                                            if (i6 == 28 && str2 != null) {
                                                for (String str3 : context2.getResources().getStringArray(R.array.hide_fingerprint_instantly_prefixes)) {
                                                    if (str2.startsWith(str3)) {
                                                        handler.postDelayed(anonymousClass8, i4);
                                                    }
                                                }
                                            }
                                        }
                                        i4 = 2000;
                                        handler.postDelayed(anonymousClass8, i4);
                                    }
                                    biometricFragment.mViewModel.mIsFingerprintDialogDismissedInstantly = true;
                                }
                            } else {
                                if (charSequence == null) {
                                    charSequence = biometricFragment.getString(R.string.default_error_msg) + " " + i5;
                                }
                                biometricFragment.sendErrorAndDismiss(i5, charSequence);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                        }
                        break;
                    case 2:
                        CharSequence charSequence2 = (CharSequence) obj;
                        if (charSequence2 != null) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(charSequence2);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                            break;
                        }
                        break;
                    case 3:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(biometricFragment.getString(R.string.fingerprint_not_recognized));
                            }
                            BiometricViewModel biometricViewModel4 = biometricFragment.mViewModel;
                            if (biometricViewModel4.mIsAwaitingResult) {
                                Executor executor = biometricViewModel4.mClientExecutor;
                                if (executor == null) {
                                    executor = new ExecutorCompat$HandlerExecutor();
                                }
                                executor.execute(new Fragment.AnonymousClass1(i3, biometricFragment));
                            } else {
                                Log.w("BiometricFragment", "Failure not sent to client. Client is not awaiting a result.");
                            }
                            BiometricViewModel biometricViewModel5 = biometricFragment.mViewModel;
                            if (biometricViewModel5.mIsAuthenticationFailurePending == null) {
                                biometricViewModel5.mIsAuthenticationFailurePending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel5.mIsAuthenticationFailurePending, Boolean.FALSE);
                            break;
                        }
                        break;
                    case 4:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isManagingDeviceCredentialButton()) {
                                biometricFragment.launchConfirmCredentialActivity();
                            } else {
                                BiometricViewModel biometricViewModel6 = biometricFragment.mViewModel;
                                String str4 = biometricViewModel6.mNegativeButtonTextOverride;
                                if (str4 != null) {
                                    str = str4;
                                } else if (biometricViewModel6.mPromptInfo != null) {
                                    str = "";
                                }
                                if (str == null) {
                                    str = biometricFragment.getString(R.string.default_error_msg);
                                }
                                biometricFragment.sendErrorAndDismiss(13, str);
                                biometricFragment.cancelAuthentication(2);
                            }
                            biometricFragment.mViewModel.setNegativeButtonPressPending(false);
                            break;
                        }
                        break;
                    default:
                        if (((Boolean) obj).booleanValue()) {
                            biometricFragment.cancelAuthentication(1);
                            biometricFragment.dismiss();
                            BiometricViewModel biometricViewModel7 = biometricFragment.mViewModel;
                            if (biometricViewModel7.mIsFingerprintDialogCancelPending == null) {
                                biometricViewModel7.mIsFingerprintDialogCancelPending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel7.mIsFingerprintDialogCancelPending, Boolean.FALSE);
                            break;
                        }
                        break;
                }
            }
        });
        BiometricViewModel biometricViewModel3 = this.mViewModel;
        if (biometricViewModel3.mAuthenticationHelpMessage == null) {
            biometricViewModel3.mAuthenticationHelpMessage = new MutableLiveData();
        }
        final int i3 = 2;
        biometricViewModel3.mAuthenticationHelpMessage.observe(this, new Observer(this) { // from class: androidx.biometric.BiometricFragment.1
            public final /* synthetic */ BiometricFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i22 = i3;
                int i32 = 5;
                int i4 = 0;
                String str = null;
                BiometricFragment biometricFragment = this.this$0;
                switch (i22) {
                    case 0:
                        BiometricPrompt.AuthenticationResult authenticationResult = (BiometricPrompt.AuthenticationResult) obj;
                        if (authenticationResult != null) {
                            biometricFragment.sendSuccessAndDismiss(authenticationResult);
                            BiometricViewModel biometricViewModel22 = biometricFragment.mViewModel;
                            if (biometricViewModel22.mAuthenticationResult == null) {
                                biometricViewModel22.mAuthenticationResult = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel22.mAuthenticationResult, null);
                            break;
                        }
                        break;
                    case 1:
                        BiometricErrorData biometricErrorData = (BiometricErrorData) obj;
                        if (biometricErrorData != null) {
                            int i5 = biometricErrorData.mErrorCode;
                            CharSequence charSequence = biometricErrorData.mErrorMessage;
                            switch (i5) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case 9:
                                case 10:
                                case 11:
                                case BasicTextKt.ShiftMeta /* 12 */:
                                case 13:
                                case 14:
                                case OffsetKt.Horizontal /* 15 */:
                                    break;
                                case 6:
                                default:
                                    i5 = 8;
                                    break;
                            }
                            Context context = biometricFragment.getContext();
                            int i6 = Build.VERSION.SDK_INT;
                            if (i6 < 29 && ((i5 == 7 || i5 == 9) && context != null)) {
                                KeyguardManager keyguardManager = KeyguardUtils$Api23Impl.getKeyguardManager(context);
                                if ((keyguardManager == null ? false : KeyguardUtils$Api23Impl.isDeviceSecure(keyguardManager)) && IntOffsetKt.isDeviceCredentialAllowed(biometricFragment.mViewModel.getAllowedAuthenticators())) {
                                    biometricFragment.launchConfirmCredentialActivity();
                                    biometricFragment.mViewModel.setAuthenticationError(null);
                                    break;
                                }
                            }
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                if (charSequence == null) {
                                    charSequence = Validate.getFingerprintErrorString(biometricFragment.getContext(), i5);
                                }
                                BiometricViewModel biometricViewModel32 = biometricFragment.mViewModel;
                                if (i5 == 5) {
                                    int i7 = biometricViewModel32.mCanceledFrom;
                                    if (i7 == 0 || i7 == 3) {
                                        biometricFragment.sendErrorToClient(i5, charSequence);
                                    }
                                    biometricFragment.dismiss();
                                } else {
                                    if (biometricViewModel32.mIsFingerprintDialogDismissedInstantly) {
                                        biometricFragment.sendErrorAndDismiss(i5, charSequence);
                                    } else {
                                        biometricFragment.showFingerprintErrorMessage(charSequence);
                                        Handler handler = biometricFragment.mHandler;
                                        AnonymousClass8 anonymousClass8 = new AnonymousClass8(biometricFragment, i5, charSequence, i4);
                                        Context context2 = biometricFragment.getContext();
                                        if (context2 != null) {
                                            String str2 = Build.MODEL;
                                            if (i6 == 28 && str2 != null) {
                                                for (String str3 : context2.getResources().getStringArray(R.array.hide_fingerprint_instantly_prefixes)) {
                                                    if (str2.startsWith(str3)) {
                                                        handler.postDelayed(anonymousClass8, i4);
                                                    }
                                                }
                                            }
                                        }
                                        i4 = 2000;
                                        handler.postDelayed(anonymousClass8, i4);
                                    }
                                    biometricFragment.mViewModel.mIsFingerprintDialogDismissedInstantly = true;
                                }
                            } else {
                                if (charSequence == null) {
                                    charSequence = biometricFragment.getString(R.string.default_error_msg) + " " + i5;
                                }
                                biometricFragment.sendErrorAndDismiss(i5, charSequence);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                        }
                        break;
                    case 2:
                        CharSequence charSequence2 = (CharSequence) obj;
                        if (charSequence2 != null) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(charSequence2);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                            break;
                        }
                        break;
                    case 3:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(biometricFragment.getString(R.string.fingerprint_not_recognized));
                            }
                            BiometricViewModel biometricViewModel4 = biometricFragment.mViewModel;
                            if (biometricViewModel4.mIsAwaitingResult) {
                                Executor executor = biometricViewModel4.mClientExecutor;
                                if (executor == null) {
                                    executor = new ExecutorCompat$HandlerExecutor();
                                }
                                executor.execute(new Fragment.AnonymousClass1(i32, biometricFragment));
                            } else {
                                Log.w("BiometricFragment", "Failure not sent to client. Client is not awaiting a result.");
                            }
                            BiometricViewModel biometricViewModel5 = biometricFragment.mViewModel;
                            if (biometricViewModel5.mIsAuthenticationFailurePending == null) {
                                biometricViewModel5.mIsAuthenticationFailurePending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel5.mIsAuthenticationFailurePending, Boolean.FALSE);
                            break;
                        }
                        break;
                    case 4:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isManagingDeviceCredentialButton()) {
                                biometricFragment.launchConfirmCredentialActivity();
                            } else {
                                BiometricViewModel biometricViewModel6 = biometricFragment.mViewModel;
                                String str4 = biometricViewModel6.mNegativeButtonTextOverride;
                                if (str4 != null) {
                                    str = str4;
                                } else if (biometricViewModel6.mPromptInfo != null) {
                                    str = "";
                                }
                                if (str == null) {
                                    str = biometricFragment.getString(R.string.default_error_msg);
                                }
                                biometricFragment.sendErrorAndDismiss(13, str);
                                biometricFragment.cancelAuthentication(2);
                            }
                            biometricFragment.mViewModel.setNegativeButtonPressPending(false);
                            break;
                        }
                        break;
                    default:
                        if (((Boolean) obj).booleanValue()) {
                            biometricFragment.cancelAuthentication(1);
                            biometricFragment.dismiss();
                            BiometricViewModel biometricViewModel7 = biometricFragment.mViewModel;
                            if (biometricViewModel7.mIsFingerprintDialogCancelPending == null) {
                                biometricViewModel7.mIsFingerprintDialogCancelPending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel7.mIsFingerprintDialogCancelPending, Boolean.FALSE);
                            break;
                        }
                        break;
                }
            }
        });
        BiometricViewModel biometricViewModel4 = this.mViewModel;
        if (biometricViewModel4.mIsAuthenticationFailurePending == null) {
            biometricViewModel4.mIsAuthenticationFailurePending = new MutableLiveData();
        }
        final int i4 = 3;
        biometricViewModel4.mIsAuthenticationFailurePending.observe(this, new Observer(this) { // from class: androidx.biometric.BiometricFragment.1
            public final /* synthetic */ BiometricFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i22 = i4;
                int i32 = 5;
                int i42 = 0;
                String str = null;
                BiometricFragment biometricFragment = this.this$0;
                switch (i22) {
                    case 0:
                        BiometricPrompt.AuthenticationResult authenticationResult = (BiometricPrompt.AuthenticationResult) obj;
                        if (authenticationResult != null) {
                            biometricFragment.sendSuccessAndDismiss(authenticationResult);
                            BiometricViewModel biometricViewModel22 = biometricFragment.mViewModel;
                            if (biometricViewModel22.mAuthenticationResult == null) {
                                biometricViewModel22.mAuthenticationResult = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel22.mAuthenticationResult, null);
                            break;
                        }
                        break;
                    case 1:
                        BiometricErrorData biometricErrorData = (BiometricErrorData) obj;
                        if (biometricErrorData != null) {
                            int i5 = biometricErrorData.mErrorCode;
                            CharSequence charSequence = biometricErrorData.mErrorMessage;
                            switch (i5) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case 9:
                                case 10:
                                case 11:
                                case BasicTextKt.ShiftMeta /* 12 */:
                                case 13:
                                case 14:
                                case OffsetKt.Horizontal /* 15 */:
                                    break;
                                case 6:
                                default:
                                    i5 = 8;
                                    break;
                            }
                            Context context = biometricFragment.getContext();
                            int i6 = Build.VERSION.SDK_INT;
                            if (i6 < 29 && ((i5 == 7 || i5 == 9) && context != null)) {
                                KeyguardManager keyguardManager = KeyguardUtils$Api23Impl.getKeyguardManager(context);
                                if ((keyguardManager == null ? false : KeyguardUtils$Api23Impl.isDeviceSecure(keyguardManager)) && IntOffsetKt.isDeviceCredentialAllowed(biometricFragment.mViewModel.getAllowedAuthenticators())) {
                                    biometricFragment.launchConfirmCredentialActivity();
                                    biometricFragment.mViewModel.setAuthenticationError(null);
                                    break;
                                }
                            }
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                if (charSequence == null) {
                                    charSequence = Validate.getFingerprintErrorString(biometricFragment.getContext(), i5);
                                }
                                BiometricViewModel biometricViewModel32 = biometricFragment.mViewModel;
                                if (i5 == 5) {
                                    int i7 = biometricViewModel32.mCanceledFrom;
                                    if (i7 == 0 || i7 == 3) {
                                        biometricFragment.sendErrorToClient(i5, charSequence);
                                    }
                                    biometricFragment.dismiss();
                                } else {
                                    if (biometricViewModel32.mIsFingerprintDialogDismissedInstantly) {
                                        biometricFragment.sendErrorAndDismiss(i5, charSequence);
                                    } else {
                                        biometricFragment.showFingerprintErrorMessage(charSequence);
                                        Handler handler = biometricFragment.mHandler;
                                        AnonymousClass8 anonymousClass8 = new AnonymousClass8(biometricFragment, i5, charSequence, i42);
                                        Context context2 = biometricFragment.getContext();
                                        if (context2 != null) {
                                            String str2 = Build.MODEL;
                                            if (i6 == 28 && str2 != null) {
                                                for (String str3 : context2.getResources().getStringArray(R.array.hide_fingerprint_instantly_prefixes)) {
                                                    if (str2.startsWith(str3)) {
                                                        handler.postDelayed(anonymousClass8, i42);
                                                    }
                                                }
                                            }
                                        }
                                        i42 = 2000;
                                        handler.postDelayed(anonymousClass8, i42);
                                    }
                                    biometricFragment.mViewModel.mIsFingerprintDialogDismissedInstantly = true;
                                }
                            } else {
                                if (charSequence == null) {
                                    charSequence = biometricFragment.getString(R.string.default_error_msg) + " " + i5;
                                }
                                biometricFragment.sendErrorAndDismiss(i5, charSequence);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                        }
                        break;
                    case 2:
                        CharSequence charSequence2 = (CharSequence) obj;
                        if (charSequence2 != null) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(charSequence2);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                            break;
                        }
                        break;
                    case 3:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(biometricFragment.getString(R.string.fingerprint_not_recognized));
                            }
                            BiometricViewModel biometricViewModel42 = biometricFragment.mViewModel;
                            if (biometricViewModel42.mIsAwaitingResult) {
                                Executor executor = biometricViewModel42.mClientExecutor;
                                if (executor == null) {
                                    executor = new ExecutorCompat$HandlerExecutor();
                                }
                                executor.execute(new Fragment.AnonymousClass1(i32, biometricFragment));
                            } else {
                                Log.w("BiometricFragment", "Failure not sent to client. Client is not awaiting a result.");
                            }
                            BiometricViewModel biometricViewModel5 = biometricFragment.mViewModel;
                            if (biometricViewModel5.mIsAuthenticationFailurePending == null) {
                                biometricViewModel5.mIsAuthenticationFailurePending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel5.mIsAuthenticationFailurePending, Boolean.FALSE);
                            break;
                        }
                        break;
                    case 4:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isManagingDeviceCredentialButton()) {
                                biometricFragment.launchConfirmCredentialActivity();
                            } else {
                                BiometricViewModel biometricViewModel6 = biometricFragment.mViewModel;
                                String str4 = biometricViewModel6.mNegativeButtonTextOverride;
                                if (str4 != null) {
                                    str = str4;
                                } else if (biometricViewModel6.mPromptInfo != null) {
                                    str = "";
                                }
                                if (str == null) {
                                    str = biometricFragment.getString(R.string.default_error_msg);
                                }
                                biometricFragment.sendErrorAndDismiss(13, str);
                                biometricFragment.cancelAuthentication(2);
                            }
                            biometricFragment.mViewModel.setNegativeButtonPressPending(false);
                            break;
                        }
                        break;
                    default:
                        if (((Boolean) obj).booleanValue()) {
                            biometricFragment.cancelAuthentication(1);
                            biometricFragment.dismiss();
                            BiometricViewModel biometricViewModel7 = biometricFragment.mViewModel;
                            if (biometricViewModel7.mIsFingerprintDialogCancelPending == null) {
                                biometricViewModel7.mIsFingerprintDialogCancelPending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel7.mIsFingerprintDialogCancelPending, Boolean.FALSE);
                            break;
                        }
                        break;
                }
            }
        });
        BiometricViewModel biometricViewModel5 = this.mViewModel;
        if (biometricViewModel5.mIsNegativeButtonPressPending == null) {
            biometricViewModel5.mIsNegativeButtonPressPending = new MutableLiveData();
        }
        final int i5 = 4;
        biometricViewModel5.mIsNegativeButtonPressPending.observe(this, new Observer(this) { // from class: androidx.biometric.BiometricFragment.1
            public final /* synthetic */ BiometricFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i22 = i5;
                int i32 = 5;
                int i42 = 0;
                String str = null;
                BiometricFragment biometricFragment = this.this$0;
                switch (i22) {
                    case 0:
                        BiometricPrompt.AuthenticationResult authenticationResult = (BiometricPrompt.AuthenticationResult) obj;
                        if (authenticationResult != null) {
                            biometricFragment.sendSuccessAndDismiss(authenticationResult);
                            BiometricViewModel biometricViewModel22 = biometricFragment.mViewModel;
                            if (biometricViewModel22.mAuthenticationResult == null) {
                                biometricViewModel22.mAuthenticationResult = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel22.mAuthenticationResult, null);
                            break;
                        }
                        break;
                    case 1:
                        BiometricErrorData biometricErrorData = (BiometricErrorData) obj;
                        if (biometricErrorData != null) {
                            int i52 = biometricErrorData.mErrorCode;
                            CharSequence charSequence = biometricErrorData.mErrorMessage;
                            switch (i52) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case 9:
                                case 10:
                                case 11:
                                case BasicTextKt.ShiftMeta /* 12 */:
                                case 13:
                                case 14:
                                case OffsetKt.Horizontal /* 15 */:
                                    break;
                                case 6:
                                default:
                                    i52 = 8;
                                    break;
                            }
                            Context context = biometricFragment.getContext();
                            int i6 = Build.VERSION.SDK_INT;
                            if (i6 < 29 && ((i52 == 7 || i52 == 9) && context != null)) {
                                KeyguardManager keyguardManager = KeyguardUtils$Api23Impl.getKeyguardManager(context);
                                if ((keyguardManager == null ? false : KeyguardUtils$Api23Impl.isDeviceSecure(keyguardManager)) && IntOffsetKt.isDeviceCredentialAllowed(biometricFragment.mViewModel.getAllowedAuthenticators())) {
                                    biometricFragment.launchConfirmCredentialActivity();
                                    biometricFragment.mViewModel.setAuthenticationError(null);
                                    break;
                                }
                            }
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                if (charSequence == null) {
                                    charSequence = Validate.getFingerprintErrorString(biometricFragment.getContext(), i52);
                                }
                                BiometricViewModel biometricViewModel32 = biometricFragment.mViewModel;
                                if (i52 == 5) {
                                    int i7 = biometricViewModel32.mCanceledFrom;
                                    if (i7 == 0 || i7 == 3) {
                                        biometricFragment.sendErrorToClient(i52, charSequence);
                                    }
                                    biometricFragment.dismiss();
                                } else {
                                    if (biometricViewModel32.mIsFingerprintDialogDismissedInstantly) {
                                        biometricFragment.sendErrorAndDismiss(i52, charSequence);
                                    } else {
                                        biometricFragment.showFingerprintErrorMessage(charSequence);
                                        Handler handler = biometricFragment.mHandler;
                                        AnonymousClass8 anonymousClass8 = new AnonymousClass8(biometricFragment, i52, charSequence, i42);
                                        Context context2 = biometricFragment.getContext();
                                        if (context2 != null) {
                                            String str2 = Build.MODEL;
                                            if (i6 == 28 && str2 != null) {
                                                for (String str3 : context2.getResources().getStringArray(R.array.hide_fingerprint_instantly_prefixes)) {
                                                    if (str2.startsWith(str3)) {
                                                        handler.postDelayed(anonymousClass8, i42);
                                                    }
                                                }
                                            }
                                        }
                                        i42 = 2000;
                                        handler.postDelayed(anonymousClass8, i42);
                                    }
                                    biometricFragment.mViewModel.mIsFingerprintDialogDismissedInstantly = true;
                                }
                            } else {
                                if (charSequence == null) {
                                    charSequence = biometricFragment.getString(R.string.default_error_msg) + " " + i52;
                                }
                                biometricFragment.sendErrorAndDismiss(i52, charSequence);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                        }
                        break;
                    case 2:
                        CharSequence charSequence2 = (CharSequence) obj;
                        if (charSequence2 != null) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(charSequence2);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                            break;
                        }
                        break;
                    case 3:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(biometricFragment.getString(R.string.fingerprint_not_recognized));
                            }
                            BiometricViewModel biometricViewModel42 = biometricFragment.mViewModel;
                            if (biometricViewModel42.mIsAwaitingResult) {
                                Executor executor = biometricViewModel42.mClientExecutor;
                                if (executor == null) {
                                    executor = new ExecutorCompat$HandlerExecutor();
                                }
                                executor.execute(new Fragment.AnonymousClass1(i32, biometricFragment));
                            } else {
                                Log.w("BiometricFragment", "Failure not sent to client. Client is not awaiting a result.");
                            }
                            BiometricViewModel biometricViewModel52 = biometricFragment.mViewModel;
                            if (biometricViewModel52.mIsAuthenticationFailurePending == null) {
                                biometricViewModel52.mIsAuthenticationFailurePending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel52.mIsAuthenticationFailurePending, Boolean.FALSE);
                            break;
                        }
                        break;
                    case 4:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isManagingDeviceCredentialButton()) {
                                biometricFragment.launchConfirmCredentialActivity();
                            } else {
                                BiometricViewModel biometricViewModel6 = biometricFragment.mViewModel;
                                String str4 = biometricViewModel6.mNegativeButtonTextOverride;
                                if (str4 != null) {
                                    str = str4;
                                } else if (biometricViewModel6.mPromptInfo != null) {
                                    str = "";
                                }
                                if (str == null) {
                                    str = biometricFragment.getString(R.string.default_error_msg);
                                }
                                biometricFragment.sendErrorAndDismiss(13, str);
                                biometricFragment.cancelAuthentication(2);
                            }
                            biometricFragment.mViewModel.setNegativeButtonPressPending(false);
                            break;
                        }
                        break;
                    default:
                        if (((Boolean) obj).booleanValue()) {
                            biometricFragment.cancelAuthentication(1);
                            biometricFragment.dismiss();
                            BiometricViewModel biometricViewModel7 = biometricFragment.mViewModel;
                            if (biometricViewModel7.mIsFingerprintDialogCancelPending == null) {
                                biometricViewModel7.mIsFingerprintDialogCancelPending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel7.mIsFingerprintDialogCancelPending, Boolean.FALSE);
                            break;
                        }
                        break;
                }
            }
        });
        BiometricViewModel biometricViewModel6 = this.mViewModel;
        if (biometricViewModel6.mIsFingerprintDialogCancelPending == null) {
            biometricViewModel6.mIsFingerprintDialogCancelPending = new MutableLiveData();
        }
        final int i6 = 5;
        biometricViewModel6.mIsFingerprintDialogCancelPending.observe(this, new Observer(this) { // from class: androidx.biometric.BiometricFragment.1
            public final /* synthetic */ BiometricFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i22 = i6;
                int i32 = 5;
                int i42 = 0;
                String str = null;
                BiometricFragment biometricFragment = this.this$0;
                switch (i22) {
                    case 0:
                        BiometricPrompt.AuthenticationResult authenticationResult = (BiometricPrompt.AuthenticationResult) obj;
                        if (authenticationResult != null) {
                            biometricFragment.sendSuccessAndDismiss(authenticationResult);
                            BiometricViewModel biometricViewModel22 = biometricFragment.mViewModel;
                            if (biometricViewModel22.mAuthenticationResult == null) {
                                biometricViewModel22.mAuthenticationResult = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel22.mAuthenticationResult, null);
                            break;
                        }
                        break;
                    case 1:
                        BiometricErrorData biometricErrorData = (BiometricErrorData) obj;
                        if (biometricErrorData != null) {
                            int i52 = biometricErrorData.mErrorCode;
                            CharSequence charSequence = biometricErrorData.mErrorMessage;
                            switch (i52) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case 9:
                                case 10:
                                case 11:
                                case BasicTextKt.ShiftMeta /* 12 */:
                                case 13:
                                case 14:
                                case OffsetKt.Horizontal /* 15 */:
                                    break;
                                case 6:
                                default:
                                    i52 = 8;
                                    break;
                            }
                            Context context = biometricFragment.getContext();
                            int i62 = Build.VERSION.SDK_INT;
                            if (i62 < 29 && ((i52 == 7 || i52 == 9) && context != null)) {
                                KeyguardManager keyguardManager = KeyguardUtils$Api23Impl.getKeyguardManager(context);
                                if ((keyguardManager == null ? false : KeyguardUtils$Api23Impl.isDeviceSecure(keyguardManager)) && IntOffsetKt.isDeviceCredentialAllowed(biometricFragment.mViewModel.getAllowedAuthenticators())) {
                                    biometricFragment.launchConfirmCredentialActivity();
                                    biometricFragment.mViewModel.setAuthenticationError(null);
                                    break;
                                }
                            }
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                if (charSequence == null) {
                                    charSequence = Validate.getFingerprintErrorString(biometricFragment.getContext(), i52);
                                }
                                BiometricViewModel biometricViewModel32 = biometricFragment.mViewModel;
                                if (i52 == 5) {
                                    int i7 = biometricViewModel32.mCanceledFrom;
                                    if (i7 == 0 || i7 == 3) {
                                        biometricFragment.sendErrorToClient(i52, charSequence);
                                    }
                                    biometricFragment.dismiss();
                                } else {
                                    if (biometricViewModel32.mIsFingerprintDialogDismissedInstantly) {
                                        biometricFragment.sendErrorAndDismiss(i52, charSequence);
                                    } else {
                                        biometricFragment.showFingerprintErrorMessage(charSequence);
                                        Handler handler = biometricFragment.mHandler;
                                        AnonymousClass8 anonymousClass8 = new AnonymousClass8(biometricFragment, i52, charSequence, i42);
                                        Context context2 = biometricFragment.getContext();
                                        if (context2 != null) {
                                            String str2 = Build.MODEL;
                                            if (i62 == 28 && str2 != null) {
                                                for (String str3 : context2.getResources().getStringArray(R.array.hide_fingerprint_instantly_prefixes)) {
                                                    if (str2.startsWith(str3)) {
                                                        handler.postDelayed(anonymousClass8, i42);
                                                    }
                                                }
                                            }
                                        }
                                        i42 = 2000;
                                        handler.postDelayed(anonymousClass8, i42);
                                    }
                                    biometricFragment.mViewModel.mIsFingerprintDialogDismissedInstantly = true;
                                }
                            } else {
                                if (charSequence == null) {
                                    charSequence = biometricFragment.getString(R.string.default_error_msg) + " " + i52;
                                }
                                biometricFragment.sendErrorAndDismiss(i52, charSequence);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                        }
                        break;
                    case 2:
                        CharSequence charSequence2 = (CharSequence) obj;
                        if (charSequence2 != null) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(charSequence2);
                            }
                            biometricFragment.mViewModel.setAuthenticationError(null);
                            break;
                        }
                        break;
                    case 3:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isUsingFingerprintDialog()) {
                                biometricFragment.showFingerprintErrorMessage(biometricFragment.getString(R.string.fingerprint_not_recognized));
                            }
                            BiometricViewModel biometricViewModel42 = biometricFragment.mViewModel;
                            if (biometricViewModel42.mIsAwaitingResult) {
                                Executor executor = biometricViewModel42.mClientExecutor;
                                if (executor == null) {
                                    executor = new ExecutorCompat$HandlerExecutor();
                                }
                                executor.execute(new Fragment.AnonymousClass1(i32, biometricFragment));
                            } else {
                                Log.w("BiometricFragment", "Failure not sent to client. Client is not awaiting a result.");
                            }
                            BiometricViewModel biometricViewModel52 = biometricFragment.mViewModel;
                            if (biometricViewModel52.mIsAuthenticationFailurePending == null) {
                                biometricViewModel52.mIsAuthenticationFailurePending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel52.mIsAuthenticationFailurePending, Boolean.FALSE);
                            break;
                        }
                        break;
                    case 4:
                        if (((Boolean) obj).booleanValue()) {
                            if (biometricFragment.isManagingDeviceCredentialButton()) {
                                biometricFragment.launchConfirmCredentialActivity();
                            } else {
                                BiometricViewModel biometricViewModel62 = biometricFragment.mViewModel;
                                String str4 = biometricViewModel62.mNegativeButtonTextOverride;
                                if (str4 != null) {
                                    str = str4;
                                } else if (biometricViewModel62.mPromptInfo != null) {
                                    str = "";
                                }
                                if (str == null) {
                                    str = biometricFragment.getString(R.string.default_error_msg);
                                }
                                biometricFragment.sendErrorAndDismiss(13, str);
                                biometricFragment.cancelAuthentication(2);
                            }
                            biometricFragment.mViewModel.setNegativeButtonPressPending(false);
                            break;
                        }
                        break;
                    default:
                        if (((Boolean) obj).booleanValue()) {
                            biometricFragment.cancelAuthentication(1);
                            biometricFragment.dismiss();
                            BiometricViewModel biometricViewModel7 = biometricFragment.mViewModel;
                            if (biometricViewModel7.mIsFingerprintDialogCancelPending == null) {
                                biometricViewModel7.mIsFingerprintDialogCancelPending = new MutableLiveData();
                            }
                            BiometricViewModel.updateValue(biometricViewModel7.mIsFingerprintDialogCancelPending, Boolean.FALSE);
                            break;
                        }
                        break;
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        this.mCalled = true;
        if (Build.VERSION.SDK_INT == 29 && IntOffsetKt.isDeviceCredentialAllowed(this.mViewModel.getAllowedAuthenticators())) {
            BiometricViewModel biometricViewModel = this.mViewModel;
            biometricViewModel.mIsIgnoringCancel = true;
            this.mHandler.postDelayed(new StopDelayingPromptRunnable(biometricViewModel, 2), 250L);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        this.mCalled = true;
        if (Build.VERSION.SDK_INT >= 29 || this.mViewModel.mIsConfirmingDeviceCredential) {
            return;
        }
        AppCompatActivity activity = getActivity();
        if (activity == null || !activity.isChangingConfigurations()) {
            cancelAuthentication(0);
        }
    }

    public final void sendErrorAndDismiss(int i, CharSequence charSequence) {
        sendErrorToClient(i, charSequence);
        dismiss();
    }

    public final void sendErrorToClient(int i, CharSequence charSequence) {
        BiometricViewModel biometricViewModel = this.mViewModel;
        if (biometricViewModel.mIsConfirmingDeviceCredential) {
            Log.v("BiometricFragment", "Error not sent to client. User is confirming their device credential.");
            return;
        }
        if (!biometricViewModel.mIsAwaitingResult) {
            Log.w("BiometricFragment", "Error not sent to client. Client is not awaiting a result.");
            return;
        }
        biometricViewModel.mIsAwaitingResult = false;
        Executor executor = biometricViewModel.mClientExecutor;
        if (executor == null) {
            executor = new ExecutorCompat$HandlerExecutor();
        }
        executor.execute(new AnonymousClass8(this, i, charSequence, 1));
    }

    public final void sendSuccessAndDismiss(BiometricPrompt.AuthenticationResult authenticationResult) {
        BiometricViewModel biometricViewModel = this.mViewModel;
        if (biometricViewModel.mIsAwaitingResult) {
            biometricViewModel.mIsAwaitingResult = false;
            Executor executor = biometricViewModel.mClientExecutor;
            if (executor == null) {
                executor = new ExecutorCompat$HandlerExecutor();
            }
            executor.execute(new ActivityRecreator.AnonymousClass1(2, this, authenticationResult, false));
        } else {
            Log.w("BiometricFragment", "Success not sent to client. Client is not awaiting a result.");
        }
        dismiss();
    }

    public final void showFingerprintErrorMessage(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = getString(R.string.default_error_msg);
        }
        this.mViewModel.setFingerprintDialogState(2);
        this.mViewModel.setFingerprintDialogHelpMessage(charSequence);
    }

    public final void showPromptForAuthentication() {
        if (this.mViewModel.mIsPromptShowing) {
            return;
        }
        if (getContext() == null) {
            Log.w("BiometricFragment", "Not showing biometric prompt. Context is null.");
            return;
        }
        BiometricViewModel biometricViewModel = this.mViewModel;
        biometricViewModel.mIsPromptShowing = true;
        biometricViewModel.mIsAwaitingResult = true;
        if (isUsingFingerprintDialog()) {
            sendErrorAndDismiss(12, Validate.getFingerprintErrorString(requireContext().getApplicationContext(), 12));
            return;
        }
        BiometricPrompt.Builder createPromptBuilder = Api28Impl.createPromptBuilder(requireContext().getApplicationContext());
        CardView.AnonymousClass1 anonymousClass1 = this.mViewModel.mPromptInfo;
        String str = null;
        CharSequence charSequence = anonymousClass1 != null ? (CharSequence) anonymousClass1.mCardBackground : null;
        CharSequence charSequence2 = anonymousClass1 != null ? (CharSequence) anonymousClass1.this$0 : null;
        if (charSequence != null) {
            Api28Impl.setTitle(createPromptBuilder, charSequence);
        }
        if (charSequence2 != null) {
            Api28Impl.setSubtitle(createPromptBuilder, charSequence2);
        }
        BiometricViewModel biometricViewModel2 = this.mViewModel;
        String str2 = biometricViewModel2.mNegativeButtonTextOverride;
        if (str2 != null) {
            str = str2;
        } else if (biometricViewModel2.mPromptInfo != null) {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            Executor executor = this.mViewModel.mClientExecutor;
            if (executor == null) {
                executor = new ExecutorCompat$HandlerExecutor();
            }
            BiometricViewModel biometricViewModel3 = this.mViewModel;
            if (biometricViewModel3.mNegativeButtonListener == null) {
                biometricViewModel3.mNegativeButtonListener = new FingerprintDialogFragment.AnonymousClass2(biometricViewModel3);
            }
            Api28Impl.setNegativeButton(createPromptBuilder, str, executor, biometricViewModel3.mNegativeButtonListener);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            CardView.AnonymousClass1 anonymousClass12 = this.mViewModel.mPromptInfo;
            Api29Impl.setConfirmationRequired(createPromptBuilder, true);
        }
        int allowedAuthenticators = this.mViewModel.getAllowedAuthenticators();
        if (i >= 30) {
            Api30Impl.setAllowedAuthenticators(createPromptBuilder, allowedAuthenticators);
        } else if (i >= 29) {
            Api29Impl.setDeviceCredentialAllowed(createPromptBuilder, IntOffsetKt.isDeviceCredentialAllowed(allowedAuthenticators));
        }
        android.hardware.biometrics.BiometricPrompt buildPrompt = Api28Impl.buildPrompt(createPromptBuilder);
        Context context = getContext();
        this.mViewModel.getClass();
        BiometricViewModel biometricViewModel4 = this.mViewModel;
        if (biometricViewModel4.mCancellationSignalProvider == null) {
            biometricViewModel4.mCancellationSignalProvider = new BiometricPrompt(10);
        }
        BiometricPrompt biometricPrompt = biometricViewModel4.mCancellationSignalProvider;
        if (((CancellationSignal) biometricPrompt.mClientFragmentManager) == null) {
            biometricPrompt.mClientFragmentManager = CancellationSignalProvider$Api16Impl.create();
        }
        CancellationSignal cancellationSignal = (CancellationSignal) biometricPrompt.mClientFragmentManager;
        HandlerExecutor handlerExecutor = new HandlerExecutor(1);
        BiometricViewModel biometricViewModel5 = this.mViewModel;
        if (biometricViewModel5.mAuthenticationCallbackProvider == null) {
            biometricViewModel5.mAuthenticationCallbackProvider = new CardView.AnonymousClass1(3, new BiometricViewModel.CallbackListener(biometricViewModel5));
        }
        CardView.AnonymousClass1 anonymousClass13 = biometricViewModel5.mAuthenticationCallbackProvider;
        if (((BiometricPrompt$AuthenticationCallback) anonymousClass13.mCardBackground) == null) {
            anonymousClass13.mCardBackground = AuthenticationCallbackProvider$Api28Impl.createCallback((BiometricViewModel.CallbackListener) anonymousClass13.this$0);
        }
        try {
            Api28Impl.authenticate(buildPrompt, cancellationSignal, handlerExecutor, (BiometricPrompt$AuthenticationCallback) anonymousClass13.mCardBackground);
        } catch (NullPointerException e) {
            Log.e("BiometricFragment", "Got NPE while authenticating with biometric prompt.", e);
            sendErrorAndDismiss(1, context != null ? context.getString(R.string.default_error_msg) : "");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api28Impl {
        public static void authenticate(android.hardware.biometrics.BiometricPrompt biometricPrompt, CancellationSignal cancellationSignal, Executor executor, BiometricPrompt$AuthenticationCallback biometricPrompt$AuthenticationCallback) {
            biometricPrompt.authenticate(cancellationSignal, executor, biometricPrompt$AuthenticationCallback);
        }

        public static android.hardware.biometrics.BiometricPrompt buildPrompt(BiometricPrompt.Builder builder) {
            return builder.build();
        }

        public static BiometricPrompt.Builder createPromptBuilder(Context context) {
            return new BiometricPrompt.Builder(context);
        }

        public static void setNegativeButton(BiometricPrompt.Builder builder, CharSequence charSequence, Executor executor, DialogInterface.OnClickListener onClickListener) {
            builder.setNegativeButton(charSequence, executor, onClickListener);
        }

        public static void setSubtitle(BiometricPrompt.Builder builder, CharSequence charSequence) {
            builder.setSubtitle(charSequence);
        }

        public static void setTitle(BiometricPrompt.Builder builder, CharSequence charSequence) {
            builder.setTitle(charSequence);
        }

        public static void authenticate(android.hardware.biometrics.BiometricPrompt biometricPrompt, BiometricPrompt.CryptoObject cryptoObject, CancellationSignal cancellationSignal, Executor executor, BiometricPrompt$AuthenticationCallback biometricPrompt$AuthenticationCallback) {
            biometricPrompt.authenticate(cryptoObject, cancellationSignal, executor, biometricPrompt$AuthenticationCallback);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StopDelayingPromptRunnable implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final WeakReference mViewModelRef;

        public StopDelayingPromptRunnable(BiometricViewModel biometricViewModel, int i) {
            this.$r8$classId = i;
            switch (i) {
                case 2:
                    this.mViewModelRef = new WeakReference(biometricViewModel);
                    break;
                default:
                    this.mViewModelRef = new WeakReference(biometricViewModel);
                    break;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.$r8$classId;
            WeakReference weakReference = this.mViewModelRef;
            switch (i) {
                case 0:
                    if (weakReference.get() != null) {
                        ((BiometricViewModel) weakReference.get()).mIsDelayingPrompt = false;
                        break;
                    }
                    break;
                case 1:
                    if (weakReference.get() != null) {
                        ((BiometricFragment) weakReference.get()).showPromptForAuthentication();
                        break;
                    }
                    break;
                default:
                    if (weakReference.get() != null) {
                        ((BiometricViewModel) weakReference.get()).mIsIgnoringCancel = false;
                        break;
                    }
                    break;
            }
        }

        public StopDelayingPromptRunnable(BiometricFragment biometricFragment) {
            this.$r8$classId = 1;
            this.mViewModelRef = new WeakReference(biometricFragment);
        }
    }
}
