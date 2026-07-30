package b.l;

import android.text.TextUtils;
import androidx.preference.EditTextPreference;
import androidx.preference.Preference;
import com.android.systemui.shared.R;

/* renamed from: b.l.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0144e implements r {

    /* renamed from: a, reason: collision with root package name */
    public static C0144e f1059a;

    @Override // b.l.r
    public CharSequence a(Preference preference) {
        EditTextPreference editTextPreference = (EditTextPreference) preference;
        return TextUtils.isEmpty(editTextPreference.g) ? editTextPreference.mContext.getString(R.string.not_set) : editTextPreference.g;
    }
}
