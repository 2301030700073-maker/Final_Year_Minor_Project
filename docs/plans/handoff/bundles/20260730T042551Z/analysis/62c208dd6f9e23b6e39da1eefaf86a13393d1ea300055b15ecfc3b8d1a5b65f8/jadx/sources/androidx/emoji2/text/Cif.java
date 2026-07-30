package androidx.emoji2.text;

import android.text.TextPaint;
import androidx.emoji2.text.Cnew;

/* renamed from: androidx.emoji2.text.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif implements Cnew.InterfaceC0037new {

    /* renamed from: do, reason: not valid java name */
    public static final ThreadLocal<StringBuilder> f6774do = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextPaint f6775do;

    public Cif() {
        TextPaint textPaint = new TextPaint();
        this.f6775do = textPaint;
        textPaint.setTextSize(10.0f);
    }
}
