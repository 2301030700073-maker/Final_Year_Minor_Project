package defpackage;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import j$.util.stream.IntStream;

/* renamed from: rJ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3618rJ implements Spannable {

    /* renamed from: do, reason: not valid java name */
    public Spannable f15257do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15258do = false;

    /* renamed from: rJ$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public boolean mo7945do(Spannable spannable) {
            return spannable instanceof C3183jx;
        }
    }

    /* renamed from: rJ$if, reason: invalid class name */
    public static class Cif extends Cdo {
        @Override // defpackage.C3618rJ.Cdo
        /* renamed from: do */
        public final boolean mo7945do(Spannable spannable) {
            return (spannable instanceof PrecomputedText) || (spannable instanceof C3183jx);
        }
    }

    public C3618rJ(Spannable spannable) {
        this.f15257do = spannable;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.f15257do.charAt(i);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        IntStream convert;
        convert = IntStream.VivifiedWrapper.convert(this.f15257do.chars());
        return convert;
    }

    @Override // java.lang.CharSequence
    public final /* synthetic */ java.util.stream.IntStream chars() {
        return IntStream.Wrapper.convert(chars());
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        IntStream convert;
        convert = IntStream.VivifiedWrapper.convert(this.f15257do.codePoints());
        return convert;
    }

    @Override // java.lang.CharSequence
    public final /* synthetic */ java.util.stream.IntStream codePoints() {
        return IntStream.Wrapper.convert(codePoints());
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7944do() {
        Spannable spannable = this.f15257do;
        if (!this.f15258do) {
            if ((Build.VERSION.SDK_INT < 28 ? new Cdo() : new Cif()).mo7945do(spannable)) {
                this.f15257do = new SpannableString(spannable);
            }
        }
        this.f15258do = true;
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f15257do.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f15257do.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f15257do.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return (T[]) this.f15257do.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f15257do.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        return this.f15257do.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        m7944do();
        this.f15257do.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        m7944do();
        this.f15257do.setSpan(obj, i, i2, i3);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return this.f15257do.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f15257do.toString();
    }

    public C3618rJ(CharSequence charSequence) {
        this.f15257do = new SpannableString(charSequence);
    }
}
