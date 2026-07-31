package androidx.biometric;

import android.os.Looper;
import androidx.biometric.FingerprintDialogFragment;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.unit.IntRectKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class BiometricViewModel extends ViewModel {
    public CardView.AnonymousClass1 mAuthenticationCallbackProvider;
    public MutableLiveData mAuthenticationError;
    public MutableLiveData mAuthenticationHelpMessage;
    public MutableLiveData mAuthenticationResult;
    public BiometricPrompt mCancellationSignalProvider;
    public IntRectKt mClientCallback;
    public Executor mClientExecutor;
    public MutableLiveData mFingerprintDialogHelpMessage;
    public MutableLiveData mFingerprintDialogState;
    public MutableLiveData mIsAuthenticationFailurePending;
    public boolean mIsAwaitingResult;
    public boolean mIsConfirmingDeviceCredential;
    public boolean mIsDelayingPrompt;
    public MutableLiveData mIsFingerprintDialogCancelPending;
    public boolean mIsIgnoringCancel;
    public MutableLiveData mIsNegativeButtonPressPending;
    public boolean mIsPromptShowing;
    public FingerprintDialogFragment.AnonymousClass2 mNegativeButtonListener;
    public String mNegativeButtonTextOverride;
    public CardView.AnonymousClass1 mPromptInfo;
    public int mCanceledFrom = 0;
    public boolean mIsFingerprintDialogDismissedInstantly = true;
    public int mFingerprintDialogPreviousState = 0;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.biometric.BiometricViewModel$1, reason: invalid class name */
    public final class AnonymousClass1 extends IntRectKt {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CallbackListener extends AuthenticationCallbackProvider$Listener {
        public final WeakReference mViewModelRef;

        public CallbackListener(BiometricViewModel biometricViewModel) {
            this.mViewModelRef = new WeakReference(biometricViewModel);
        }
    }

    public static void updateValue(MutableLiveData mutableLiveData, Object obj) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            mutableLiveData.setValue(obj);
        } else {
            mutableLiveData.postValue(obj);
        }
    }

    public final int getAllowedAuthenticators() {
        return this.mPromptInfo != null ? 33023 : 0;
    }

    public final void setAuthenticationError(BiometricErrorData biometricErrorData) {
        if (this.mAuthenticationError == null) {
            this.mAuthenticationError = new MutableLiveData();
        }
        updateValue(this.mAuthenticationError, biometricErrorData);
    }

    public final void setFingerprintDialogHelpMessage(CharSequence charSequence) {
        if (this.mFingerprintDialogHelpMessage == null) {
            this.mFingerprintDialogHelpMessage = new MutableLiveData();
        }
        updateValue(this.mFingerprintDialogHelpMessage, charSequence);
    }

    public final void setFingerprintDialogState(int i) {
        if (this.mFingerprintDialogState == null) {
            this.mFingerprintDialogState = new MutableLiveData();
        }
        updateValue(this.mFingerprintDialogState, Integer.valueOf(i));
    }

    public final void setNegativeButtonPressPending(boolean z) {
        if (this.mIsNegativeButtonPressPending == null) {
            this.mIsNegativeButtonPressPending = new MutableLiveData();
        }
        updateValue(this.mIsNegativeButtonPressPending, Boolean.valueOf(z));
    }
}
