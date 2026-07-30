package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import androidx.emoji2.text.Cgoto;
import androidx.emoji2.text.Cnew;

/* loaded from: classes.dex */
public final class UI extends AbstractC0274If {
    public UI(C0252Hf c0252Hf) {
        super(c0252Hf);
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        Cnew.m4104do().getClass();
        C0252Hf c0252Hf = ((AbstractC0274If) this).f1548do;
        Cgoto cgoto = c0252Hf.f1370do;
        Typeface typeface = cgoto.f6768do;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText(cgoto.f6771do, c0252Hf.f1369do * 2, 2, f, i4, paint);
        paint.setTypeface(typeface2);
    }
}
