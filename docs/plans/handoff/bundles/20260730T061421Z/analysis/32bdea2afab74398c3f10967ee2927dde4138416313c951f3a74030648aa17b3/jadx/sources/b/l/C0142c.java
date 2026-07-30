package b.l;

import android.view.View;
import android.widget.AdapterView;
import androidx.preference.DropDownPreference;
import java.util.Objects;

/* renamed from: b.l.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0142c implements AdapterView.OnItemSelectedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DropDownPreference f1057a;

    public C0142c(DropDownPreference dropDownPreference) {
        this.f1057a = dropDownPreference;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        if (i >= 0) {
            String charSequence = this.f1057a.h[i].toString();
            if (charSequence.equals(this.f1057a.i)) {
                return;
            }
            Objects.requireNonNull(this.f1057a);
            this.f1057a.h(charSequence);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView adapterView) {
    }
}
