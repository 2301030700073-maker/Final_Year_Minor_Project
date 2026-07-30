package defpackage;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.R;

/* loaded from: classes3.dex */
public final class OS {
    /* renamed from: do, reason: not valid java name */
    public static String m1670do(Context context) {
        try {
            return context.getResources().getResourcePackageName(R.string.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }
}
