package androidx.preference;

import android.R;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PreferenceDialogFragmentCompat extends DialogFragment implements DialogInterface.OnClickListener {
    public BitmapDrawable mDialogIcon;
    public int mDialogLayoutRes;
    public CharSequence mDialogMessage;
    public CharSequence mDialogTitle;
    public CharSequence mNegativeButtonText;
    public CharSequence mPositiveButtonText;
    public DialogPreference mPreference;
    public int mWhichButtonClicked;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api30Impl {
        public static void showIme(Window window) {
            window.getDecorView().getWindowInsetsController().show(WindowInsets.Type.ime());
        }
    }

    public final DialogPreference getPreference() {
        if (this.mPreference == null) {
            this.mPreference = (DialogPreference) ((PreferenceFragmentCompat) getTargetFragment()).findPreference(requireArguments().getString("key"));
        }
        return this.mPreference;
    }

    public void onBindDialogView(View view) {
        int i;
        View findViewById = view.findViewById(R.id.message);
        if (findViewById != null) {
            CharSequence charSequence = this.mDialogMessage;
            if (TextUtils.isEmpty(charSequence)) {
                i = 8;
            } else {
                if (findViewById instanceof TextView) {
                    ((TextView) findViewById).setText(charSequence);
                }
                i = 0;
            }
            if (findViewById.getVisibility() != i) {
                findViewById.setVisibility(i);
            }
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.mWhichButtonClicked = i;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Fragment targetFragment = getTargetFragment();
        if (!(targetFragment instanceof PreferenceFragmentCompat)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Target fragment must implement TargetFragment interface");
            return;
        }
        PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) targetFragment;
        String string = requireArguments().getString("key");
        if (bundle != null) {
            this.mDialogTitle = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.mPositiveButtonText = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.mNegativeButtonText = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.mDialogMessage = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.mDialogLayoutRes = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.mDialogIcon = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) preferenceFragmentCompat.findPreference(string);
        this.mPreference = dialogPreference;
        this.mDialogTitle = dialogPreference.mDialogTitle;
        this.mPositiveButtonText = dialogPreference.mPositiveButtonText;
        this.mNegativeButtonText = dialogPreference.mNegativeButtonText;
        this.mDialogMessage = dialogPreference.mDialogMessage;
        this.mDialogLayoutRes = dialogPreference.mDialogLayoutResId;
        Drawable drawable = dialogPreference.mDialogIcon;
        if (drawable == null || (drawable instanceof BitmapDrawable)) {
            this.mDialogIcon = (BitmapDrawable) drawable;
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        this.mDialogIcon = new BitmapDrawable(getResources(), createBitmap);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        this.mWhichButtonClicked = -2;
        AlertDialog.Builder title = new AlertDialog.Builder(requireContext()).setTitle(this.mDialogTitle);
        BitmapDrawable bitmapDrawable = this.mDialogIcon;
        AlertController.AlertParams alertParams = title.P;
        alertParams.mIcon = bitmapDrawable;
        alertParams.mPositiveButtonText = this.mPositiveButtonText;
        alertParams.mPositiveButtonListener = this;
        alertParams.mNegativeButtonText = this.mNegativeButtonText;
        alertParams.mNegativeButtonListener = this;
        requireContext();
        int i = this.mDialogLayoutRes;
        View inflate = i != 0 ? getLayoutInflater().inflate(i, (ViewGroup) null) : null;
        if (inflate != null) {
            onBindDialogView(inflate);
            title.setView(inflate);
        } else {
            title.P.mMessage = this.mDialogMessage;
        }
        onPrepareDialogBuilder(title);
        AlertDialog create = title.create();
        if (this instanceof EditTextPreferenceDialogFragmentCompat) {
            Window window = create.getWindow();
            if (Build.VERSION.SDK_INT >= 30) {
                Api30Impl.showIme(window);
                return create;
            }
            EditTextPreferenceDialogFragmentCompat editTextPreferenceDialogFragmentCompat = (EditTextPreferenceDialogFragmentCompat) this;
            editTextPreferenceDialogFragmentCompat.mShowRequestTime = SystemClock.currentThreadTimeMillis();
            editTextPreferenceDialogFragmentCompat.scheduleShowSoftInputInner();
        }
        return create;
    }

    public abstract void onDialogClosed(boolean z);

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        onDialogClosed(this.mWhichButtonClicked == -1);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.mDialogTitle);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.mPositiveButtonText);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.mNegativeButtonText);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.mDialogMessage);
        bundle.putInt("PreferenceDialogFragment.layout", this.mDialogLayoutRes);
        BitmapDrawable bitmapDrawable = this.mDialogIcon;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }

    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
    }
}
