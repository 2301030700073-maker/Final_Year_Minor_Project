package androidx.preference;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.ComponentCallbacks2;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import b.l.InterfaceC0141b;

@Deprecated
/* loaded from: classes.dex */
public abstract class PreferenceDialogFragment extends DialogFragment implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public DialogPreference f150a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f151b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f152c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f153d;
    public CharSequence e;
    public int f;
    public BitmapDrawable g;
    public int h;

    @Deprecated
    public PreferenceDialogFragment() {
    }

    @Deprecated
    public DialogPreference a() {
        if (this.f150a == null) {
            this.f150a = (DialogPreference) ((InterfaceC0141b) getTargetFragment()).findPreference(getArguments().getString("key"));
        }
        return this.f150a;
    }

    public boolean b() {
        return false;
    }

    @Deprecated
    public void c(View view) {
        View findViewById = view.findViewById(R.id.message);
        if (findViewById != null) {
            CharSequence charSequence = this.e;
            int i = 8;
            if (!TextUtils.isEmpty(charSequence)) {
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

    @Deprecated
    public abstract void d(boolean z);

    @Deprecated
    public void e(AlertDialog.Builder builder) {
    }

    @Override // android.content.DialogInterface.OnClickListener
    @Deprecated
    public void onClick(DialogInterface dialogInterface, int i) {
        this.h = i;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ComponentCallbacks2 targetFragment = getTargetFragment();
        if (!(targetFragment instanceof InterfaceC0141b)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        InterfaceC0141b interfaceC0141b = (InterfaceC0141b) targetFragment;
        String string = getArguments().getString("key");
        if (bundle != null) {
            this.f151b = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f152c = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f153d = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.e = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.g = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) interfaceC0141b.findPreference(string);
        this.f150a = dialogPreference;
        this.f151b = dialogPreference.f143a;
        this.f152c = dialogPreference.f146d;
        this.f153d = dialogPreference.e;
        this.e = dialogPreference.f144b;
        this.f = dialogPreference.f;
        Drawable drawable = dialogPreference.f145c;
        if (drawable == null || (drawable instanceof BitmapDrawable)) {
            this.g = (BitmapDrawable) drawable;
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        this.g = new BitmapDrawable(getResources(), createBitmap);
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Activity activity = getActivity();
        this.h = -2;
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(activity).setTitle(this.f151b).setIcon(this.g).setPositiveButton(this.f152c, this).setNegativeButton(this.f153d, this);
        int i = this.f;
        View inflate = i != 0 ? LayoutInflater.from(activity).inflate(i, (ViewGroup) null) : null;
        if (inflate != null) {
            c(inflate);
            negativeButton.setView(inflate);
        } else {
            negativeButton.setMessage(this.e);
        }
        e(negativeButton);
        AlertDialog create = negativeButton.create();
        if (b()) {
            create.getWindow().setSoftInputMode(5);
        }
        return create;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        d(this.h == -1);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f151b);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f152c);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f153d);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.e);
        bundle.putInt("PreferenceDialogFragment.layout", this.f);
        BitmapDrawable bitmapDrawable = this.g;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }
}
