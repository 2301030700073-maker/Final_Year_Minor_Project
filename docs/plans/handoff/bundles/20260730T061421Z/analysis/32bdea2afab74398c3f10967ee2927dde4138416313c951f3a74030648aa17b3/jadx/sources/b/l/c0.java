package b.l;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreferenceCompat;
import java.util.Objects;

/* loaded from: classes.dex */
public class c0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwitchPreferenceCompat f1058a;

    public c0(SwitchPreferenceCompat switchPreferenceCompat) {
        this.f1058a = switchPreferenceCompat;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Objects.requireNonNull(this.f1058a);
        this.f1058a.setChecked(z);
    }
}
