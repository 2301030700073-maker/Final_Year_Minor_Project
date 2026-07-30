package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* loaded from: classes3.dex */
public final class QG extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ PG f2894do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Context f2895do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ TextPaint f2896do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AbstractC3134j6 f2897do;

    public QG(PG pg, Context context, TextPaint textPaint, AbstractC3134j6 abstractC3134j6) {
        this.f2894do = pg;
        this.f2895do = context;
        this.f2896do = textPaint;
        this.f2897do = abstractC3134j6;
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: class, reason: not valid java name */
    public final void mo1840class(int i) {
        this.f2897do.mo1840class(i);
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: const, reason: not valid java name */
    public final void mo1841const(Typeface typeface, boolean z) {
        this.f2894do.m1757else(this.f2895do, this.f2896do, typeface);
        this.f2897do.mo1841const(typeface, z);
    }
}
