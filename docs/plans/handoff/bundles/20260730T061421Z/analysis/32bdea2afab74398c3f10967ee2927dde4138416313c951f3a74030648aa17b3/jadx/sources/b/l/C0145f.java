package b.l;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: b.l.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0145f extends Preference {

    /* renamed from: a, reason: collision with root package name */
    public long f1060a;

    public C0145f(Context context, List list, long j) {
        super(context);
        this.mLayoutResId = R.layout.expand_button;
        Drawable a2 = b.b.a.a(this.mContext, R.drawable.ic_arrow_down_24dp);
        if (this.mIcon != a2) {
            this.mIcon = a2;
            this.mIconResId = 0;
            notifyChanged();
        }
        this.mIconResId = R.drawable.ic_arrow_down_24dp;
        setTitle(this.mContext.getString(R.string.expand_button_title));
        setOrder(999);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        CharSequence charSequence = null;
        while (it.hasNext()) {
            Preference preference = (Preference) it.next();
            CharSequence charSequence2 = preference.mTitle;
            boolean z = preference instanceof PreferenceGroup;
            if (z && !TextUtils.isEmpty(charSequence2)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.mParentGroup)) {
                if (z) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(charSequence2)) {
                charSequence = charSequence == null ? charSequence2 : this.mContext.getString(R.string.summary_collapsed_preference_list, charSequence, charSequence2);
            }
        }
        setSummary(charSequence);
        this.f1060a = j + 1000000;
    }

    @Override // androidx.preference.Preference
    public long getId() {
        return this.f1060a;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(V v) {
        super.onBindViewHolder(v);
        v.f1048d = false;
    }
}
