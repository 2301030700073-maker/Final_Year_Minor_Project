package androidx.biometric;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.preference.ListPreferenceDialogFragmentCompat;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.activity.compose.PgpEnabledErrorDialog;
import com.fsck.k9.activity.compose.PgpInlineDialog;
import com.fsck.k9.activity.compose.PgpSignOnlyDialog;
import com.fsck.k9.activity.compose.RecipientPresenter;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import okhttp3.Dispatcher;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class FingerprintDialogFragment extends DialogFragment {
    public int mErrorTextColor;
    public ImageView mFingerprintIcon;
    public TextView mHelpMessageView;
    public int mNormalTextColor;
    public BiometricViewModel mViewModel;
    public final Handler mHandler = new Handler(Looper.getMainLooper());
    public final Fragment.AnonymousClass1 mResetDialogRunnable = new Fragment.AnonymousClass1(6, this);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api21Impl {
        public static void startAnimation(Drawable drawable) {
            if (drawable instanceof AnimatedVectorDrawable) {
                ((AnimatedVectorDrawable) drawable).start();
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api26Impl {
        public static int getColorErrorAttr() {
            return R.attr.colorError;
        }
    }

    public final int getThemedColorFor(int i) {
        Context context = getContext();
        AppCompatActivity activity = getActivity();
        if (context == null || activity == null) {
            Log.w("FingerprintFragment", "Unable to get themed color. Context or activity is null.");
            return 0;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(typedValue.data, new int[]{i});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        return color;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        BiometricViewModel biometricViewModel = this.mViewModel;
        if (biometricViewModel.mIsFingerprintDialogCancelPending == null) {
            biometricViewModel.mIsFingerprintDialogCancelPending = new MutableLiveData();
        }
        BiometricViewModel.updateValue(biometricViewModel.mIsFingerprintDialogCancelPending, Boolean.TRUE);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AppCompatActivity activity = getActivity();
        if (activity != null) {
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
            if (biometricViewModel.mFingerprintDialogState == null) {
                biometricViewModel.mFingerprintDialogState = new MutableLiveData();
            }
            biometricViewModel.mFingerprintDialogState.observe(this, new DialogFragment.AnonymousClass4(this, 1));
            BiometricViewModel biometricViewModel2 = this.mViewModel;
            if (biometricViewModel2.mFingerprintDialogHelpMessage == null) {
                biometricViewModel2.mFingerprintDialogHelpMessage = new MutableLiveData();
            }
            biometricViewModel2.mFingerprintDialogHelpMessage.observe(this, new DialogFragment.AnonymousClass4(this, 2));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.mErrorTextColor = getThemedColorFor(Api26Impl.getColorErrorAttr());
        } else {
            Context context = getContext();
            this.mErrorTextColor = context != null ? context.getColor(R.color.biometric_error_color) : 0;
        }
        this.mNormalTextColor = getThemedColorFor(android.R.attr.textColorSecondary);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        PriorityQueue priorityQueue = new PriorityQueue(requireContext());
        AlertController.AlertParams alertParams = (AlertController.AlertParams) priorityQueue.array;
        CardView.AnonymousClass1 anonymousClass1 = this.mViewModel.mPromptInfo;
        String str = null;
        alertParams.mTitle = anonymousClass1 != null ? (CharSequence) anonymousClass1.mCardBackground : null;
        View inflate = LayoutInflater.from(alertParams.mContext).inflate(R.layout.fingerprint_dialog_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.fingerprint_subtitle);
        int i = 0;
        if (textView != null) {
            CardView.AnonymousClass1 anonymousClass12 = this.mViewModel.mPromptInfo;
            CharSequence charSequence = anonymousClass12 != null ? (CharSequence) anonymousClass12.this$0 : null;
            if (TextUtils.isEmpty(charSequence)) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setText(charSequence);
            }
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.fingerprint_description);
        if (textView2 != null) {
            this.mViewModel.getClass();
            if (TextUtils.isEmpty(null)) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(0);
                textView2.setText((CharSequence) null);
            }
        }
        this.mFingerprintIcon = (ImageView) inflate.findViewById(R.id.fingerprint_icon);
        this.mHelpMessageView = (TextView) inflate.findViewById(R.id.fingerprint_error);
        if (IntOffsetKt.isDeviceCredentialAllowed(this.mViewModel.getAllowedAuthenticators())) {
            str = getString(R.string.confirm_device_credential_password);
        } else {
            BiometricViewModel biometricViewModel = this.mViewModel;
            String str2 = biometricViewModel.mNegativeButtonTextOverride;
            if (str2 != null) {
                str = str2;
            } else if (biometricViewModel.mPromptInfo != null) {
                str = "";
            }
        }
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, i);
        alertParams.mNegativeButtonText = str;
        alertParams.mNegativeButtonListener = anonymousClass2;
        alertParams.mView = inflate;
        AlertDialog create = priorityQueue.create();
        create.setCanceledOnTouchOutside(false);
        return create;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        this.mHandler.removeCallbacksAndMessages(null);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        BiometricViewModel biometricViewModel = this.mViewModel;
        biometricViewModel.mFingerprintDialogPreviousState = 0;
        biometricViewModel.setFingerprintDialogState(1);
        this.mViewModel.setFingerprintDialogHelpMessage(getString(R.string.fingerprint_dialog_touch_sensor));
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.biometric.FingerprintDialogFragment$2, reason: invalid class name */
    public final class AnonymousClass2 implements DialogInterface.OnClickListener {
        public final /* synthetic */ int $r8$classId;
        public final Object this$0;

        public AnonymousClass2(BiometricViewModel biometricViewModel) {
            this.$r8$classId = 1;
            this.this$0 = new WeakReference(biometricViewModel);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    ((FingerprintDialogFragment) obj).mViewModel.setNegativeButtonPressPending(true);
                    break;
                case 1:
                    WeakReference weakReference = (WeakReference) obj;
                    if (weakReference.get() != null) {
                        ((BiometricViewModel) weakReference.get()).setNegativeButtonPressPending(true);
                        break;
                    }
                    break;
                case 2:
                    ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat = (ListPreferenceDialogFragmentCompat) obj;
                    listPreferenceDialogFragmentCompat.mClickedDialogEntryIndex = i;
                    listPreferenceDialogFragmentCompat.onClick(dialogInterface, -1);
                    dialogInterface.dismiss();
                    break;
                case 3:
                    AppCompatActivity activity = ((PgpEnabledErrorDialog) obj).getActivity();
                    if (activity != null) {
                        RecipientPresenter recipientPresenter = ((MessageCompose) activity).recipientPresenter;
                        recipientPresenter.getClass();
                        recipientPresenter.currentCryptoMode = RecipientPresenter.CryptoMode.CHOICE_DISABLED;
                        recipientPresenter.asyncUpdateCryptoStatus();
                        dialogInterface.dismiss();
                        break;
                    }
                    break;
                case 4:
                    AppCompatActivity activity2 = ((PgpInlineDialog) obj).getActivity();
                    if (activity2 != null) {
                        RecipientPresenter recipientPresenter2 = ((MessageCompose) activity2).recipientPresenter;
                        recipientPresenter2.isForceTextMessageFormat = false;
                        recipientPresenter2.asyncUpdateCryptoStatus();
                        dialogInterface.dismiss();
                        break;
                    }
                    break;
                default:
                    AppCompatActivity activity3 = ((PgpSignOnlyDialog) obj).getActivity();
                    if (activity3 != null) {
                        RecipientPresenter recipientPresenter3 = ((MessageCompose) activity3).recipientPresenter;
                        recipientPresenter3.isForceTextMessageFormat = false;
                        recipientPresenter3.asyncUpdateCryptoStatus();
                        recipientPresenter3.currentCryptoMode = RecipientPresenter.CryptoMode.NO_CHOICE;
                        recipientPresenter3.asyncUpdateCryptoStatus();
                        dialogInterface.dismiss();
                        break;
                    }
                    break;
            }
        }

        public /* synthetic */ AnonymousClass2(DialogFragment dialogFragment, int i) {
            this.$r8$classId = i;
            this.this$0 = dialogFragment;
        }
    }
}
