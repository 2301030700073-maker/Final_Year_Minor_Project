package defpackage;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;

/* loaded from: classes.dex */
public final class KH {

    /* renamed from: KH$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m1132do(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1131do(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            Cdo.m1132do(view, charSequence);
            return;
        }
        MH mh = MH.f2145do;
        if (mh != null && mh.f2150do == view) {
            MH.m1403if(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new MH(view, charSequence);
            return;
        }
        MH mh2 = MH.f2146if;
        if (mh2 != null && mh2.f2150do == view) {
            mh2.m1404do();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }
}
