package defpackage;

import android.content.Context;
import android.util.TypedValue;

/* renamed from: Cr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0154Cr {
    /* renamed from: do, reason: not valid java name */
    public static TypedValue m304do(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static TypedValue m305for(Context context, int i, String str) {
        TypedValue m304do = m304do(context, i);
        if (m304do != null) {
            return m304do;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m306if(Context context, int i, boolean z) {
        TypedValue m304do = m304do(context, i);
        return (m304do == null || m304do.type != 18) ? z : m304do.data != 0;
    }
}
