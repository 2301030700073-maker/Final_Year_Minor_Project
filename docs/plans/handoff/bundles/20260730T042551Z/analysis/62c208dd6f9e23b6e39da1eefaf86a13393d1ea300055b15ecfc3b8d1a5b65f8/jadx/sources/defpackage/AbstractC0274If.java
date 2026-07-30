package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* renamed from: If, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0274If extends ReplacementSpan {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0252Hf f1548do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint.FontMetricsInt f1549do = new Paint.FontMetricsInt();

    /* renamed from: do, reason: not valid java name */
    public float f1547do = 1.0f;

    public AbstractC0274If(C0252Hf c0252Hf) {
        if (c0252Hf == null) {
            throw new NullPointerException("metadata cannot be null");
        }
        this.f1548do = c0252Hf;
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f1549do;
        paint.getFontMetricsInt(fontMetricsInt2);
        float abs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        C0252Hf c0252Hf = this.f1548do;
        this.f1547do = abs / (c0252Hf.m870for().m255do(14) != 0 ? ((CG) r8).f348do.getShort(r1 + ((CG) r8).f347do) : (short) 0);
        C2600ct m870for = c0252Hf.m870for();
        int m255do = m870for.m255do(14);
        if (m255do != 0) {
            ((CG) m870for).f348do.getShort(m255do + ((CG) m870for).f347do);
        }
        short s = (short) ((c0252Hf.m870for().m255do(12) != 0 ? ((CG) r5).f348do.getShort(r7 + ((CG) r5).f347do) : (short) 0) * this.f1547do);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s;
    }
}
