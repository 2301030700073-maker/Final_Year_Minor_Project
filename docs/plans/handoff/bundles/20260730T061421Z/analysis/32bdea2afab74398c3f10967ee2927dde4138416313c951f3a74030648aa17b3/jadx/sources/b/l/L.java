package b.l;

import android.text.TextUtils;
import androidx.preference.Preference;

/* loaded from: classes.dex */
public class L {

    /* renamed from: a, reason: collision with root package name */
    public int f1027a;

    /* renamed from: b, reason: collision with root package name */
    public int f1028b;

    /* renamed from: c, reason: collision with root package name */
    public String f1029c;

    public L(Preference preference) {
        this.f1029c = preference.getClass().getName();
        this.f1027a = preference.mLayoutResId;
        this.f1028b = preference.mWidgetLayoutResId;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof L)) {
            return false;
        }
        L l = (L) obj;
        return this.f1027a == l.f1027a && this.f1028b == l.f1028b && TextUtils.equals(this.f1029c, l.f1029c);
    }

    public int hashCode() {
        return this.f1029c.hashCode() + ((((527 + this.f1027a) * 31) + this.f1028b) * 31);
    }
}
