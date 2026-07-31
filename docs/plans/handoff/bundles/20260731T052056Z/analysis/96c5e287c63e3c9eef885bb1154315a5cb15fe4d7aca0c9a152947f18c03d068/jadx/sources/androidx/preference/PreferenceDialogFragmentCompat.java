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
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api30Impl {
        public static void showIme(Window window) {
            window.getDecorView().getWindowInsetsController().show(WindowInsets.Type.ime());
        }
    }

    public final DialogPreference getPreference() {
        PreferenceScreen preferenceScreen;
        DialogPreference dialogPreference = this.mPreference;
        if (dialogPreference != null) {
            return dialogPreference;
        }
        String string = requireArguments().getString("key");
        PreferenceManager preferenceManager = ((PreferenceFragmentCompat) getTargetFragment(true)).mPreferenceManager;
        Preference preference = null;
        if (preferenceManager != null && (preferenceScreen = (PreferenceScreen) preferenceManager.mPreferenceScreen) != null) {
            preference = preferenceScreen.findPreference(string);
        }
        DialogPreference dialogPreference2 = (DialogPreference) preference;
        this.mPreference = dialogPreference2;
        return dialogPreference2;
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
        PreferenceScreen preferenceScreen;
        super.onCreate(bundle);
        Fragment targetFragment = getTargetFragment(true);
        if (!(targetFragment instanceof PreferenceFragmentCompat)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Target fragment must implement TargetFragment interface");
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
        PreferenceManager preferenceManager = preferenceFragmentCompat.mPreferenceManager;
        Preference preference = null;
        if (preferenceManager != null && (preferenceScreen = (PreferenceScreen) preferenceManager.mPreferenceScreen) != null) {
            preference = preferenceScreen.findPreference(string);
        }
        DialogPreference dialogPreference = (DialogPreference) preference;
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
        PriorityQueue priorityQueue = new PriorityQueue(requireContext());
        CharSequence charSequence = this.mDialogTitle;
        AlertController.AlertParams alertParams = (AlertController.AlertParams) priorityQueue.array;
        alertParams.mTitle = charSequence;
        alertParams.mIcon = this.mDialogIcon;
        priorityQueue.setPositiveButton(this.mPositiveButtonText, this);
        alertParams.mNegativeButtonText = this.mNegativeButtonText;
        alertParams.mNegativeButtonListener = this;
        requireContext();
        int i = this.mDialogLayoutRes;
        View inflate = i != 0 ? getLayoutInflater().inflate(i, (ViewGroup) null) : null;
        if (inflate != null) {
            onBindDialogView(inflate);
            alertParams.mView = inflate;
        } else {
            alertParams.mMessage = this.mDialogMessage;
        }
        onPrepareDialogBuilder(priorityQueue);
        AlertDialog create = priorityQueue.create();
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

    public void onPrepareDialogBuilder(PriorityQueue priorityQueue) {
    }
}
