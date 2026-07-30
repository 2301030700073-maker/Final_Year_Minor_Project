package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.badge.BadgeState;
import com.joeykrim.rootcheck.R;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C3554qD;
import defpackage.PG;
import defpackage.TG;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;

/* renamed from: com.google.android.material.badge.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo extends Drawable implements TG.Cif {

    /* renamed from: do, reason: not valid java name */
    public float f10514do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TG f10515do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f10516do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0716as f10517do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final BadgeState f10518do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakReference<Context> f10519do;

    /* renamed from: for, reason: not valid java name */
    public float f10520for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f10521for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public WeakReference<FrameLayout> f10522for;

    /* renamed from: if, reason: not valid java name */
    public float f10523if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public WeakReference<View> f10524if;

    /* renamed from: new, reason: not valid java name */
    public float f10525new;

    /* renamed from: try, reason: not valid java name */
    public float f10526try;

    public Cdo(Context context, BadgeState.State state) {
        PG pg;
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.f10519do = weakReference;
        C0682aH.m3113for(context, C0682aH.f4939if, "Theme.MaterialComponents");
        this.f10516do = new Rect();
        TG tg = new TG(this);
        this.f10515do = tg;
        TextPaint textPaint = tg.f3636do;
        textPaint.setTextAlign(Paint.Align.CENTER);
        BadgeState badgeState = new BadgeState(context, state);
        this.f10518do = badgeState;
        boolean m5667try = m5667try();
        BadgeState.State state2 = badgeState.f10481if;
        C0716as c0716as = new C0716as(new C3554qD(C3554qD.m7858do(context, m5667try ? state2.f10487case.intValue() : state2.f10506new.intValue(), m5667try() ? state2.f10496else.intValue() : state2.f10512try.intValue())));
        this.f10517do = c0716as;
        m5662else();
        Context context2 = weakReference.get();
        if (context2 != null && tg.f3634do != (pg = new PG(context2, state2.f10499for.intValue()))) {
            tg.m2232for(pg, context2);
            textPaint.setColor(state2.f10504if.intValue());
            invalidateSelf();
            m5666this();
            invalidateSelf();
        }
        if (state2.f10486case != -2) {
            this.f10521for = ((int) Math.pow(10.0d, r9 - 1.0d)) - 1;
        } else {
            this.f10521for = state2.f10495else;
        }
        tg.f3638do = true;
        m5666this();
        invalidateSelf();
        tg.f3638do = true;
        m5662else();
        m5666this();
        invalidateSelf();
        textPaint.setAlpha(getAlpha());
        invalidateSelf();
        ColorStateList valueOf = ColorStateList.valueOf(state2.f10493do.intValue());
        if (c0716as.f8253do.f8274do != valueOf) {
            c0716as.m4778super(valueOf);
            invalidateSelf();
        }
        textPaint.setColor(state2.f10504if.intValue());
        invalidateSelf();
        WeakReference<View> weakReference2 = this.f10524if;
        if (weakReference2 != null && weakReference2.get() != null) {
            View view = this.f10524if.get();
            WeakReference<FrameLayout> weakReference3 = this.f10522for;
            m5664goto(view, weakReference3 != null ? weakReference3.get() : null);
        }
        m5666this();
        setVisible(state2.f10491do.booleanValue(), false);
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m5660case() {
        BadgeState.State state = this.f10518do.f10481if;
        if (!(state.f10485break != null)) {
            if (state.f10511try != -1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m5661do() {
        BadgeState badgeState = this.f10518do;
        BadgeState.State state = badgeState.f10481if;
        String str = state.f10485break;
        boolean z = str != null;
        WeakReference<Context> weakReference = this.f10519do;
        if (!z) {
            if (!m5660case()) {
                return null;
            }
            if (this.f10521for == -2 || m5665new() <= this.f10521for) {
                return NumberFormat.getInstance(badgeState.f10481if.f10494do).format(m5665new());
            }
            Context context = weakReference.get();
            return context == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : String.format(badgeState.f10481if.f10494do, context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.f10521for), "+");
        }
        int i = state.f10486case;
        if (i != -2 && str != null && str.length() > i) {
            Context context2 = weakReference.get();
            if (context2 == null) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            str = String.format(context2.getString(R.string.m3_exceed_max_badge_text_suffix), str.substring(0, i - 1), "…");
        }
        return str;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        String m5661do;
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f10517do.draw(canvas);
        if (!m5667try() || (m5661do = m5661do()) == null) {
            return;
        }
        Rect rect = new Rect();
        TG tg = this.f10515do;
        tg.f3636do.getTextBounds(m5661do, 0, m5661do.length(), rect);
        float exactCenterY = this.f10523if - rect.exactCenterY();
        canvas.drawText(m5661do, this.f10514do, rect.bottom <= 0 ? (int) exactCenterY : Math.round(exactCenterY), tg.f3636do);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m5662else() {
        Context context = this.f10519do.get();
        if (context == null) {
            return;
        }
        boolean m5667try = m5667try();
        BadgeState badgeState = this.f10518do;
        this.f10517do.mo4768do(new C3554qD(C3554qD.m7858do(context, m5667try ? badgeState.f10481if.f10487case.intValue() : badgeState.f10481if.f10506new.intValue(), m5667try() ? badgeState.f10481if.f10496else.intValue() : badgeState.f10481if.f10512try.intValue())));
        invalidateSelf();
    }

    /* renamed from: for, reason: not valid java name */
    public final FrameLayout m5663for() {
        WeakReference<FrameLayout> weakReference = this.f10522for;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f10518do.f10481if.f10505new;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f10516do.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f10516do.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m5664goto(View view, FrameLayout frameLayout) {
        this.f10524if = new WeakReference<>(view);
        this.f10522for = new WeakReference<>(frameLayout);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        m5666this();
        invalidateSelf();
    }

    @Override // defpackage.TG.Cif
    /* renamed from: if */
    public final void mo1511if() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public final int m5665new() {
        int i = this.f10518do.f10481if.f10511try;
        if (i != -1) {
            return i;
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable, defpackage.TG.Cif
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        BadgeState badgeState = this.f10518do;
        badgeState.f10476do.f10505new = i;
        badgeState.f10481if.f10505new = i;
        this.f10515do.f3636do.setAlpha(getAlpha());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0232  */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5666this() {
        /*
            Method dump skipped, instructions count: 710
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.badge.Cdo.m5666this():void");
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m5667try() {
        return (this.f10518do.f10481if.f10485break != null) || m5660case();
    }
}
