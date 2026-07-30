package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.gms.common.util.DeviceProperties;
import defpackage.C0426Pe;
import defpackage.V1;

/* loaded from: classes.dex */
public final class zaaa extends Button {
    public zaaa(Context context, AttributeSet attributeSet) {
        super(context, null, R.attr.buttonStyle);
    }

    private static final int zab(int i, int i2, int i3, int i4) {
        if (i == 0) {
            return i2;
        }
        if (i == 1) {
            return i3;
        }
        if (i == 2) {
            return i4;
        }
        throw new IllegalStateException(V1.m2494case("Unknown color scheme: ", i));
    }

    public final void zaa(Resources resources, int i, int i2) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i3 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i3);
        setMinWidth(i3);
        int zab = zab(i2, com.joeykrim.rootcheck.R.drawable.common_google_signin_btn_icon_dark, com.joeykrim.rootcheck.R.drawable.common_google_signin_btn_icon_light, com.joeykrim.rootcheck.R.drawable.common_google_signin_btn_icon_light);
        int zab2 = zab(i2, com.joeykrim.rootcheck.R.drawable.common_google_signin_btn_text_dark, com.joeykrim.rootcheck.R.drawable.common_google_signin_btn_text_light, com.joeykrim.rootcheck.R.drawable.common_google_signin_btn_text_light);
        if (i == 0 || i == 1) {
            zab = zab2;
        } else if (i != 2) {
            throw new IllegalStateException(V1.m2494case("Unknown button size: ", i));
        }
        Drawable m1779goto = C0426Pe.m1779goto(resources.getDrawable(zab));
        C0426Pe.Cdo.m1787goto(m1779goto, resources.getColorStateList(com.joeykrim.rootcheck.R.color.common_google_signin_btn_tint));
        C0426Pe.Cdo.m1790this(m1779goto, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(m1779goto);
        setTextColor((ColorStateList) Preconditions.checkNotNull(resources.getColorStateList(zab(i2, com.joeykrim.rootcheck.R.color.common_google_signin_btn_text_dark, com.joeykrim.rootcheck.R.color.common_google_signin_btn_text_light, com.joeykrim.rootcheck.R.color.common_google_signin_btn_text_light))));
        if (i == 0) {
            setText(resources.getString(com.joeykrim.rootcheck.R.string.common_signin_button_text));
        } else if (i == 1) {
            setText(resources.getString(com.joeykrim.rootcheck.R.string.common_signin_button_text_long));
        } else {
            if (i != 2) {
                throw new IllegalStateException(V1.m2494case("Unknown button size: ", i));
            }
            setText((CharSequence) null);
        }
        setTransformationMethod(null);
        if (DeviceProperties.isWearable(getContext())) {
            setGravity(19);
        }
    }
}
