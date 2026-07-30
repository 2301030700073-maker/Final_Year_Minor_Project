package c.b.a.b.b.i;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;
import android.text.style.LineHeightSpan;
import com.google.android.apps.nexuslauncher.graphics.DoubleShadowTextView;

/* loaded from: classes.dex */
public class a implements LeadingMarginSpan, LineHeightSpan {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f2575a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f2576b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DoubleShadowTextView f2577c;

    public a(DoubleShadowTextView doubleShadowTextView, Bitmap bitmap) {
        this.f2577c = doubleShadowTextView;
        this.f2575a = bitmap;
        this.f2576b = new Rect(0, 0, this.f2575a.getWidth(), this.f2575a.getHeight());
    }

    @Override // android.text.style.LineHeightSpan
    public void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
        if (i2 == ((Spanned) charSequence).getSpanEnd(this)) {
            int i5 = this.f2577c.f3291b;
            int i6 = fontMetricsInt.descent;
            int i7 = fontMetricsInt.ascent;
            int i8 = i5 - (((i4 + i6) - i7) - i3);
            if (i8 > 0) {
                int i9 = i8 / 2;
                fontMetricsInt.ascent = i7 - i9;
                fontMetricsInt.descent = i6 + i9;
            }
            int i10 = fontMetricsInt.bottom;
            int i11 = fontMetricsInt.top;
            int i12 = i5 - (((i4 + i10) - i11) - i3);
            if (i12 > 0) {
                int i13 = i12 / 2;
                fontMetricsInt.top = i11 - i13;
                fontMetricsInt.bottom = i10 + i13;
            }
        }
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        if (this.f2577c.g) {
            return;
        }
        int lineForOffset = layout.getLineForOffset(((Spanned) charSequence).getSpanStart(this));
        int lineTop = layout.getLineTop(lineForOffset);
        int lineBottom = layout.getLineBottom(lineForOffset);
        if (i2 < 0) {
            i -= this.f2577c.f3291b;
        }
        int i8 = lineBottom - lineTop;
        int i9 = this.f2577c.f3291b;
        if (i8 > i9) {
            lineTop += (i8 - i9) / 2;
        }
        this.f2577c.e.offsetTo(i, lineTop);
        Bitmap bitmap = this.f2575a;
        Rect rect = this.f2576b;
        DoubleShadowTextView doubleShadowTextView = this.f2577c;
        canvas.drawBitmap(bitmap, rect, doubleShadowTextView.e, doubleShadowTextView.f3293d);
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z) {
        DoubleShadowTextView doubleShadowTextView = this.f2577c;
        return doubleShadowTextView.f3292c + doubleShadowTextView.f3291b;
    }
}
