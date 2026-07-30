package defpackage;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class LE extends SpannableStringBuilder {

    /* renamed from: do, reason: not valid java name */
    public final Class<?> f1936do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f1937do;

    /* renamed from: LE$do, reason: invalid class name */
    public static class Cdo implements TextWatcher, SpanWatcher {

        /* renamed from: do, reason: not valid java name */
        public final Object f1938do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final AtomicInteger f1939do = new AtomicInteger(0);

        public Cdo(Object obj) {
            this.f1938do = obj;
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            ((TextWatcher) this.f1938do).afterTextChanged(editable);
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ((TextWatcher) this.f1938do).beforeTextChanged(charSequence, i, i2, i3);
        }

        @Override // android.text.SpanWatcher
        public final void onSpanAdded(Spannable spannable, Object obj, int i, int i2) {
            if (this.f1939do.get() <= 0 || !(obj instanceof AbstractC0274If)) {
                ((SpanWatcher) this.f1938do).onSpanAdded(spannable, obj, i, i2);
            }
        }

        @Override // android.text.SpanWatcher
        public final void onSpanChanged(Spannable spannable, Object obj, int i, int i2, int i3, int i4) {
            int i5;
            int i6;
            if (this.f1939do.get() <= 0 || !(obj instanceof AbstractC0274If)) {
                if (Build.VERSION.SDK_INT < 28) {
                    if (i > i2) {
                        i = 0;
                    }
                    if (i3 > i4) {
                        i5 = i;
                        i6 = 0;
                        ((SpanWatcher) this.f1938do).onSpanChanged(spannable, obj, i5, i2, i6, i4);
                    }
                }
                i5 = i;
                i6 = i3;
                ((SpanWatcher) this.f1938do).onSpanChanged(spannable, obj, i5, i2, i6, i4);
            }
        }

        @Override // android.text.SpanWatcher
        public final void onSpanRemoved(Spannable spannable, Object obj, int i, int i2) {
            if (this.f1939do.get() <= 0 || !(obj instanceof AbstractC0274If)) {
                ((SpanWatcher) this.f1938do).onSpanRemoved(spannable, obj, i, i2);
            }
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ((TextWatcher) this.f1938do).onTextChanged(charSequence, i, i2, i3);
        }
    }

    public LE(Class<?> cls, CharSequence charSequence) {
        super(charSequence);
        this.f1937do = new ArrayList();
        if (cls == null) {
            throw new NullPointerException("watcherClass cannot be null");
        }
        this.f1936do = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public final Editable delete(int i, int i2) {
        super.delete(i, i2);
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1306do() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f1937do;
            if (i >= arrayList.size()) {
                return;
            }
            ((Cdo) arrayList.get(i)).f1939do.incrementAndGet();
            i++;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final Cdo m1307for(Object obj) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f1937do;
            if (i >= arrayList.size()) {
                return null;
            }
            Cdo cdo = (Cdo) arrayList.get(i);
            if (cdo.f1938do == obj) {
                return cdo;
            }
            i++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanEnd(Object obj) {
        Cdo m1307for;
        if (m1309new(obj) && (m1307for = m1307for(obj)) != null) {
            obj = m1307for;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanFlags(Object obj) {
        Cdo m1307for;
        if (m1309new(obj) && (m1307for = m1307for(obj)) != null) {
            obj = m1307for;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanStart(Object obj) {
        Cdo m1307for;
        if (m1309new(obj) && (m1307for = m1307for(obj)) != null) {
            obj = m1307for;
        }
        return super.getSpanStart(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    @SuppressLint({"UnknownNullness"})
    public final <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (!(this.f1936do == cls)) {
            return (T[]) super.getSpans(i, i2, cls);
        }
        Cdo[] cdoArr = (Cdo[]) super.getSpans(i, i2, Cdo.class);
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, cdoArr.length));
        for (int i3 = 0; i3 < cdoArr.length; i3++) {
            tArr[i3] = cdoArr[i3].f1938do;
        }
        return tArr;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1308if() {
        m1310try();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f1937do;
            if (i >= arrayList.size()) {
                return;
            }
            ((Cdo) arrayList.get(i)).onTextChanged(this, 0, length(), length());
            i++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public final Editable insert(int i, CharSequence charSequence) {
        super.insert(i, charSequence);
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m1309new(Object obj) {
        if (obj != null) {
            return this.f1936do == obj.getClass();
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
    
        if ((r1.f1936do == r4) != false) goto L8;
     */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int nextSpanTransition(int r2, int r3, java.lang.Class r4) {
        /*
            r1 = this;
            if (r4 == 0) goto Lb
            java.lang.Class<?> r0 = r1.f1936do
            if (r0 != r4) goto L8
            r0 = 1
            goto L9
        L8:
            r0 = 0
        L9:
            if (r0 == 0) goto Ld
        Lb:
            java.lang.Class<LE$do> r4 = defpackage.LE.Cdo.class
        Ld:
            int r2 = super.nextSpanTransition(r2, r3, r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.LE.nextSpanTransition(int, int, java.lang.Class):int");
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void removeSpan(Object obj) {
        Cdo cdo;
        if (m1309new(obj)) {
            cdo = m1307for(obj);
            if (cdo != null) {
                obj = cdo;
            }
        } else {
            cdo = null;
        }
        super.removeSpan(obj);
        if (cdo != null) {
            this.f1937do.remove(cdo);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public final /* bridge */ /* synthetic */ Editable replace(int i, int i2, CharSequence charSequence) {
        replace(i, i2, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        if (m1309new(obj)) {
            Cdo cdo = new Cdo(obj);
            this.f1937do.add(cdo);
            obj = cdo;
        }
        super.setSpan(obj, i, i2, i3);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    @SuppressLint({"UnknownNullness"})
    public final CharSequence subSequence(int i, int i2) {
        return new LE(this.f1936do, this, i, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m1310try() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f1937do;
            if (i >= arrayList.size()) {
                return;
            }
            ((Cdo) arrayList.get(i)).f1939do.decrementAndGet();
            i++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public final SpannableStringBuilder delete(int i, int i2) {
        super.delete(i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public final SpannableStringBuilder insert(int i, CharSequence charSequence) {
        super.insert(i, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public final /* bridge */ /* synthetic */ Editable replace(int i, int i2, CharSequence charSequence, int i3, int i4) {
        replace(i, i2, charSequence, i3, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public final Editable insert(int i, CharSequence charSequence, int i2, int i3) {
        super.insert(i, charSequence, i2, i3);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public final SpannableStringBuilder replace(int i, int i2, CharSequence charSequence) {
        m1306do();
        super.replace(i, i2, charSequence);
        m1310try();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(char c) {
        super.append(c);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public final SpannableStringBuilder insert(int i, CharSequence charSequence, int i2, int i3) {
        super.insert(i, charSequence, i2, i3);
        return this;
    }

    public LE(Class<?> cls, CharSequence charSequence, int i, int i2) {
        super(charSequence, i, i2);
        this.f1937do = new ArrayList();
        if (cls != null) {
            this.f1936do = cls;
            return;
        }
        throw new NullPointerException("watcherClass cannot be null");
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(char c) {
        super.append(c);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(char c) {
        super.append(c);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public final SpannableStringBuilder replace(int i, int i2, CharSequence charSequence, int i3, int i4) {
        m1306do();
        super.replace(i, i2, charSequence, i3, i4);
        m1310try();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2) {
        super.append(charSequence, i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2) {
        super.append(charSequence, i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2) {
        super.append(charSequence, i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    @SuppressLint({"UnknownNullness"})
    public final SpannableStringBuilder append(CharSequence charSequence, Object obj, int i) {
        super.append(charSequence, obj, i);
        return this;
    }
}
