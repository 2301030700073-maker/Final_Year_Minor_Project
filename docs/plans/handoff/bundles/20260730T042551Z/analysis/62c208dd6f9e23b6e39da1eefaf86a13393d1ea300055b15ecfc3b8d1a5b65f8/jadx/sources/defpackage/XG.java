package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.PrecomputedText;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class XG {

    /* renamed from: XG$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: case, reason: not valid java name */
        public static void m2804case(TextView textView, ColorStateList colorStateList) {
            textView.setCompoundDrawableTintList(colorStateList);
        }

        /* renamed from: do, reason: not valid java name */
        public static int m2805do(TextView textView) {
            int breakStrategy;
            breakStrategy = textView.getBreakStrategy();
            return breakStrategy;
        }

        /* renamed from: else, reason: not valid java name */
        public static void m2806else(TextView textView, PorterDuff.Mode mode) {
            textView.setCompoundDrawableTintMode(mode);
        }

        /* renamed from: for, reason: not valid java name */
        public static PorterDuff.Mode m2807for(TextView textView) {
            PorterDuff.Mode compoundDrawableTintMode;
            compoundDrawableTintMode = textView.getCompoundDrawableTintMode();
            return compoundDrawableTintMode;
        }

        /* renamed from: goto, reason: not valid java name */
        public static void m2808goto(TextView textView, int i) {
            textView.setHyphenationFrequency(i);
        }

        /* renamed from: if, reason: not valid java name */
        public static ColorStateList m2809if(TextView textView) {
            ColorStateList compoundDrawableTintList;
            compoundDrawableTintList = textView.getCompoundDrawableTintList();
            return compoundDrawableTintList;
        }

        /* renamed from: new, reason: not valid java name */
        public static int m2810new(TextView textView) {
            int hyphenationFrequency;
            hyphenationFrequency = textView.getHyphenationFrequency();
            return hyphenationFrequency;
        }

        /* renamed from: try, reason: not valid java name */
        public static void m2811try(TextView textView, int i) {
            textView.setBreakStrategy(i);
        }
    }

    /* renamed from: XG$for, reason: invalid class name */
    public static class Cfor implements ActionMode.Callback {

        /* renamed from: do, reason: not valid java name */
        public final ActionMode.Callback f4478do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final TextView f4479do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Class<?> f4480do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Method f4481do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f4482do;

        /* renamed from: if, reason: not valid java name */
        public boolean f4483if = false;

        public Cfor(ActionMode.Callback callback, TextView textView) {
            this.f4478do = callback;
            this.f4479do = textView;
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f4478do.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f4478do.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            this.f4478do.onDestroyActionMode(actionMode);
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x00c9, code lost:
        
            if (r10 == 0) goto L42;
         */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00d1 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x009f A[SYNTHETIC] */
        @Override // android.view.ActionMode.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onPrepareActionMode(android.view.ActionMode r14, android.view.Menu r15) {
            /*
                Method dump skipped, instructions count: 302
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.XG.Cfor.onPrepareActionMode(android.view.ActionMode, android.view.Menu):boolean");
        }
    }

    /* renamed from: XG$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static CharSequence m2812do(PrecomputedText precomputedText) {
            return precomputedText;
        }

        /* renamed from: for, reason: not valid java name */
        public static PrecomputedText.Params m2813for(TextView textView) {
            PrecomputedText.Params textMetricsParams;
            textMetricsParams = textView.getTextMetricsParams();
            return textMetricsParams;
        }

        /* renamed from: if, reason: not valid java name */
        public static String[] m2814if(DecimalFormatSymbols decimalFormatSymbols) {
            String[] digitStrings;
            digitStrings = decimalFormatSymbols.getDigitStrings();
            return digitStrings;
        }

        /* renamed from: new, reason: not valid java name */
        public static void m2815new(TextView textView, int i) {
            textView.setFirstBaselineToTopHeight(i);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m2799do(TextView textView, int i) {
        O4.m1609goto(i);
        if (Build.VERSION.SDK_INT >= 28) {
            Cif.m2815new(textView, i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m2800for(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m2801if(TextView textView, int i) {
        O4.m1609goto(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static ActionMode.Callback m2802new(ActionMode.Callback callback) {
        return (!(callback instanceof Cfor) || Build.VERSION.SDK_INT < 26) ? callback : ((Cfor) callback).f4478do;
    }

    /* renamed from: try, reason: not valid java name */
    public static ActionMode.Callback m2803try(ActionMode.Callback callback, TextView textView) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof Cfor) || callback == null) ? callback : new Cfor(callback, textView);
    }
}
