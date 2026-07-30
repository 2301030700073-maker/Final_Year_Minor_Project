package androidx.preference;

import android.R;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import b.b.c.C0010i;
import b.b.c.C0014m;
import b.b.c.DialogInterfaceC0015n;
import b.j.j;
import b.l.InterfaceC0141b;

/* loaded from: classes.dex */
public abstract class PreferenceDialogFragmentCompat extends DialogFragment implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public DialogPreference f154a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f155b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f156c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f157d;
    public CharSequence e;
    public int f;
    public BitmapDrawable g;
    public int h;

    public DialogPreference a() {
        if (this.f154a == null) {
            this.f154a = (DialogPreference) ((InterfaceC0141b) getTargetFragment()).findPreference(getArguments().getString("key"));
        }
        return this.f154a;
    }

    public boolean b() {
        return false;
    }

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

    public View d() {
        int i = this.f;
        if (i == 0) {
            return null;
        }
        return getLayoutInflater().inflate(i, (ViewGroup) null);
    }

    public abstract void e(boolean z);

    public void f(C0014m c0014m) {
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.h = i;
    }

    @Override // androidx.fragment.app.DialogFragment, b.i.b.r
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j targetFragment = getTargetFragment();
        if (!(targetFragment instanceof InterfaceC0141b)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        InterfaceC0141b interfaceC0141b = (InterfaceC0141b) targetFragment;
        String string = getArguments().getString("key");
        if (bundle != null) {
            this.f155b = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f156c = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f157d = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
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
        this.f154a = dialogPreference;
        this.f155b = dialogPreference.f143a;
        this.f156c = dialogPreference.f146d;
        this.f157d = dialogPreference.e;
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

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.h = -2;
        C0014m c0014m = new C0014m(getContext());
        CharSequence charSequence = this.f155b;
        C0010i c0010i = c0014m.f310a;
        c0010i.f = charSequence;
        c0010i.f304d = this.g;
        c0010i.i = this.f156c;
        c0010i.j = this;
        c0010i.k = this.f157d;
        c0010i.l = this;
        getContext();
        View d2 = d();
        if (d2 != null) {
            c(d2);
            C0010i c0010i2 = c0014m.f310a;
            c0010i2.u = d2;
            c0010i2.t = 0;
            c0010i2.v = false;
        } else {
            c0014m.f310a.h = this.e;
        }
        f(c0014m);
        DialogInterfaceC0015n a2 = c0014m.a();
        if (b()) {
            a2.getWindow().setSoftInputMode(5);
        }
        return a2;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        e(this.h == -1);
    }

    @Override // androidx.fragment.app.DialogFragment, b.i.b.r
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f155b);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f156c);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f157d);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.e);
        bundle.putInt("PreferenceDialogFragment.layout", this.f);
        BitmapDrawable bitmapDrawable = this.g;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }
}
