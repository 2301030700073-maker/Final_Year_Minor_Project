package com.airbnb.lottie.animation;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.os.LocaleList;
import com.airbnb.lottie.utils.MiscUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LPaint extends Paint {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LPaint(PorterDuff.Mode mode) {
        super(1);
        this.$r8$classId = 0;
        setXfermode(new PorterDuffXfermode(mode));
    }

    @Override // android.graphics.Paint
    public void setAlpha(int i) {
        switch (this.$r8$classId) {
            case 0:
                if (Build.VERSION.SDK_INT >= 30) {
                    super.setAlpha(MiscUtils.clamp(i));
                    break;
                } else {
                    setColor((MiscUtils.clamp(i) << 24) | (getColor() & 16777215));
                    break;
                }
            default:
                super.setAlpha(i);
                break;
        }
    }

    @Override // android.graphics.Paint
    public void setTextLocales(LocaleList localeList) {
        switch (this.$r8$classId) {
            case 0:
                break;
            default:
                super.setTextLocales(localeList);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LPaint(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    private final void setTextLocales$com$airbnb$lottie$animation$LPaint(LocaleList localeList) {
    }
}
