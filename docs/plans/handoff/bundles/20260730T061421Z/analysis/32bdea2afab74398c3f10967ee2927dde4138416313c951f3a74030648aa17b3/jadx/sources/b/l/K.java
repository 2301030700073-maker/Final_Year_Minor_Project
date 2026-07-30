package b.l;

import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import java.util.Objects;

/* loaded from: classes.dex */
public class K implements InterfaceC0155p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PreferenceGroup f1025a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ M f1026b;

    public K(M m, PreferenceGroup preferenceGroup) {
        this.f1026b = m;
        this.f1025a = preferenceGroup;
    }

    @Override // b.l.InterfaceC0155p
    public boolean a(Preference preference) {
        this.f1025a.l(Integer.MAX_VALUE);
        M m = this.f1026b;
        m.e.removeCallbacks(m.f);
        m.e.post(m.f);
        Objects.requireNonNull(this.f1025a);
        return true;
    }
}
