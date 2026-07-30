package b.l;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreference;
import java.util.Objects;

/* loaded from: classes.dex */
public class b0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwitchPreference f1056a;

    public b0(SwitchPreference switchPreference) {
        this.f1056a = switchPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Objects.requireNonNull(this.f1056a);
        this.f1056a.setChecked(z);
    }
}
