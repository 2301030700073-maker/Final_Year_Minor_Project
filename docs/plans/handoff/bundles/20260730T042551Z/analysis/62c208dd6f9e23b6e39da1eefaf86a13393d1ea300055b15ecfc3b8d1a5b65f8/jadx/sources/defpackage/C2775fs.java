package defpackage;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* renamed from: fs, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2775fs {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f12993do = {R.attr.theme, com.joeykrim.rootcheck.R.attr.theme};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f12994if = {com.joeykrim.rootcheck.R.attr.materialThemeOverlay};

    /* renamed from: do, reason: not valid java name */
    public static Context m6683do(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f12994if, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        boolean z = (context instanceof C0554Va) && ((C0554Va) context).f4140do == resourceId;
        if (resourceId == 0 || z) {
            return context;
        }
        C0554Va c0554Va = new C0554Va(context, resourceId);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f12993do);
        int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
        int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
        obtainStyledAttributes2.recycle();
        if (resourceId2 == 0) {
            resourceId2 = resourceId3;
        }
        if (resourceId2 != 0) {
            c0554Va.getTheme().applyStyle(resourceId2, true);
        }
        return c0554Va;
    }
}
