package b.l;

import android.text.TextUtils;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import com.android.systemui.shared.R;

/* renamed from: b.l.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0147h implements r {

    /* renamed from: a, reason: collision with root package name */
    public static C0147h f1061a;

    @Override // b.l.r
    public CharSequence a(Preference preference) {
        ListPreference listPreference = (ListPreference) preference;
        return TextUtils.isEmpty(listPreference.g()) ? listPreference.mContext.getString(R.string.not_set) : listPreference.g();
    }
}
