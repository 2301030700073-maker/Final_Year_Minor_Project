package b.l;

import android.widget.CompoundButton;
import androidx.preference.CheckBoxPreference;
import java.util.Objects;

/* renamed from: b.l.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0140a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CheckBoxPreference f1055a;

    public C0140a(CheckBoxPreference checkBoxPreference) {
        this.f1055a = checkBoxPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Objects.requireNonNull(this.f1055a);
        this.f1055a.setChecked(z);
    }
}
