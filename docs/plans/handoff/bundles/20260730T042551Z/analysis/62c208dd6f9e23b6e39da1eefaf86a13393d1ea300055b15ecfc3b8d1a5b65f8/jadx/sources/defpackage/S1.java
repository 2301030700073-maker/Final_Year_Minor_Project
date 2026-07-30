package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import defpackage.Oz;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class S1 {

    /* renamed from: case, reason: not valid java name */
    public C3852vH f3270case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final U1 f3272do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Typeface f3273do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f3274do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3852vH f3275do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3276do;

    /* renamed from: else, reason: not valid java name */
    public C3852vH f3277else;

    /* renamed from: for, reason: not valid java name */
    public C3852vH f3278for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public C3852vH f3280if;

    /* renamed from: new, reason: not valid java name */
    public C3852vH f3281new;

    /* renamed from: try, reason: not valid java name */
    public C3852vH f3282try;

    /* renamed from: do, reason: not valid java name */
    public int f3271do = 0;

    /* renamed from: if, reason: not valid java name */
    public int f3279if = -1;

    /* renamed from: S1$case, reason: invalid class name */
    public static class Ccase {
        /* renamed from: do, reason: not valid java name */
        public static Typeface m2094do(Typeface typeface, int i, boolean z) {
            Typeface create;
            create = Typeface.create(typeface, i, z);
            return create;
        }
    }

    /* renamed from: S1$do, reason: invalid class name */
    public class Cdo extends Oz.Ctry {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f3283do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ WeakReference f3285do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f3286if;

        public Cdo(int i, int i2, WeakReference weakReference) {
            this.f3283do = i;
            this.f3286if = i2;
            this.f3285do = weakReference;
        }

        @Override // defpackage.Oz.Ctry
        /* renamed from: for */
        public final void mo1731for(int i) {
        }

        @Override // defpackage.Oz.Ctry
        /* renamed from: new */
        public final void mo1733new(Typeface typeface) {
            int i;
            if (Build.VERSION.SDK_INT >= 28 && (i = this.f3283do) != -1) {
                typeface = Ccase.m2094do(typeface, i, (this.f3286if & 2) != 0);
            }
            S1 s1 = S1.this;
            if (s1.f3276do) {
                s1.f3273do = typeface;
                TextView textView = (TextView) this.f3285do.get();
                if (textView != null) {
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    if (textView.isAttachedToWindow()) {
                        textView.post(new T1(textView, typeface, s1.f3271do));
                    } else {
                        textView.setTypeface(typeface, s1.f3271do);
                    }
                }
            }
        }
    }

    /* renamed from: S1$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static Locale m2095do(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    /* renamed from: S1$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static Drawable[] m2096do(TextView textView) {
            return textView.getCompoundDrawablesRelative();
        }

        /* renamed from: for, reason: not valid java name */
        public static void m2097for(TextView textView, Locale locale) {
            textView.setTextLocale(locale);
        }

        /* renamed from: if, reason: not valid java name */
        public static void m2098if(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }

    /* renamed from: S1$new, reason: invalid class name */
    public static class Cnew {
        /* renamed from: do, reason: not valid java name */
        public static LocaleList m2099do(String str) {
            LocaleList forLanguageTags;
            forLanguageTags = LocaleList.forLanguageTags(str);
            return forLanguageTags;
        }

        /* renamed from: if, reason: not valid java name */
        public static void m2100if(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    /* renamed from: S1$try, reason: invalid class name */
    public static class Ctry {
        /* renamed from: do, reason: not valid java name */
        public static int m2101do(TextView textView) {
            int autoSizeStepGranularity;
            autoSizeStepGranularity = textView.getAutoSizeStepGranularity();
            return autoSizeStepGranularity;
        }

        /* renamed from: for, reason: not valid java name */
        public static void m2102for(TextView textView, int[] iArr, int i) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        }

        /* renamed from: if, reason: not valid java name */
        public static void m2103if(TextView textView, int i, int i2, int i3, int i4) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }

        /* renamed from: new, reason: not valid java name */
        public static boolean m2104new(TextView textView, String str) {
            boolean fontVariationSettings;
            fontVariationSettings = textView.setFontVariationSettings(str);
            return fontVariationSettings;
        }
    }

    public S1(TextView textView) {
        this.f3274do = textView;
        this.f3272do = new U1(textView);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m2082case(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i >= 30) {
            editorInfo.setInitialSurroundingSubText(text, 0);
            return;
        }
        text.getClass();
        if (i >= 30) {
            editorInfo.setInitialSurroundingSubText(text, 0);
            return;
        }
        int i2 = editorInfo.initialSelStart;
        int i3 = editorInfo.initialSelEnd;
        int i4 = i2 > i3 ? i3 + 0 : i2 + 0;
        int i5 = i2 > i3 ? i2 - 0 : i3 + 0;
        int length = text.length();
        if (i4 < 0 || i5 > length) {
            C4049yf.m8762do(editorInfo, null, 0, 0);
            return;
        }
        int i6 = editorInfo.inputType & 4095;
        if (i6 == 129 || i6 == 225 || i6 == 18) {
            C4049yf.m8762do(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            C4049yf.m8762do(editorInfo, text, i4, i5);
            return;
        }
        int i7 = i5 - i4;
        int i8 = i7 > 1024 ? 0 : i7;
        int i9 = 2048 - i8;
        int min = Math.min(text.length() - i5, i9 - Math.min(i4, (int) (i9 * 0.8d)));
        int min2 = Math.min(i4, i9 - min);
        int i10 = i4 - min2;
        if (Character.isLowSurrogate(text.charAt(i10))) {
            i10++;
            min2--;
        }
        if (Character.isHighSurrogate(text.charAt((i5 + min) - 1))) {
            min--;
        }
        CharSequence concat = i8 != i7 ? TextUtils.concat(text.subSequence(i10, i10 + min2), text.subSequence(i5, min + i5)) : text.subSequence(i10, min2 + i8 + min + i10);
        int i11 = min2 + 0;
        C4049yf.m8762do(editorInfo, concat, i11, i8 + i11);
    }

    /* renamed from: for, reason: not valid java name */
    public static C3852vH m2083for(Context context, K1 k1, int i) {
        ColorStateList m1571this;
        synchronized (k1) {
            m1571this = k1.f1741do.m1571this(context, i);
        }
        if (m1571this == null) {
            return null;
        }
        C3852vH c3852vH = new C3852vH();
        c3852vH.f16057if = true;
        c3852vH.f16054do = m1571this;
        return c3852vH;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m2084break(ColorStateList colorStateList) {
        if (this.f3277else == null) {
            this.f3277else = new C3852vH();
        }
        C3852vH c3852vH = this.f3277else;
        c3852vH.f16054do = colorStateList;
        c3852vH.f16057if = colorStateList != null;
        this.f3275do = c3852vH;
        this.f3280if = c3852vH;
        this.f3278for = c3852vH;
        this.f3281new = c3852vH;
        this.f3282try = c3852vH;
        this.f3270case = c3852vH;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m2085catch(PorterDuff.Mode mode) {
        if (this.f3277else == null) {
            this.f3277else = new C3852vH();
        }
        C3852vH c3852vH = this.f3277else;
        c3852vH.f16055do = mode;
        c3852vH.f16056do = mode != null;
        this.f3275do = c3852vH;
        this.f3280if = c3852vH;
        this.f3278for = c3852vH;
        this.f3281new = c3852vH;
        this.f3282try = c3852vH;
        this.f3270case = c3852vH;
    }

    /* renamed from: class, reason: not valid java name */
    public final void m2086class(Context context, C3970xH c3970xH) {
        String m8627break;
        this.f3271do = c3970xH.m8635goto(2, this.f3271do);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            int m8635goto = c3970xH.m8635goto(11, -1);
            this.f3279if = m8635goto;
            if (m8635goto != -1) {
                this.f3271do = (this.f3271do & 2) | 0;
            }
        }
        if (!c3970xH.m8630class(10) && !c3970xH.m8630class(12)) {
            if (c3970xH.m8630class(1)) {
                this.f3276do = false;
                int m8635goto2 = c3970xH.m8635goto(1, 1);
                if (m8635goto2 == 1) {
                    this.f3273do = Typeface.SANS_SERIF;
                    return;
                } else if (m8635goto2 == 2) {
                    this.f3273do = Typeface.SERIF;
                    return;
                } else {
                    if (m8635goto2 != 3) {
                        return;
                    }
                    this.f3273do = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f3273do = null;
        int i2 = c3970xH.m8630class(12) ? 12 : 10;
        int i3 = this.f3279if;
        int i4 = this.f3271do;
        if (!context.isRestricted()) {
            try {
                Typeface m8632else = c3970xH.m8632else(i2, this.f3271do, new Cdo(i3, i4, new WeakReference(this.f3274do)));
                if (m8632else != null) {
                    if (i < 28 || this.f3279if == -1) {
                        this.f3273do = m8632else;
                    } else {
                        this.f3273do = Ccase.m2094do(Typeface.create(m8632else, 0), this.f3279if, (this.f3271do & 2) != 0);
                    }
                }
                this.f3276do = this.f3273do == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f3273do != null || (m8627break = c3970xH.m8627break(i2)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f3279if == -1) {
            this.f3273do = Typeface.create(m8627break, this.f3271do);
        } else {
            this.f3273do = Ccase.m2094do(Typeface.create(m8627break, 0), this.f3279if, (this.f3271do & 2) != 0);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2087do(Drawable drawable, C3852vH c3852vH) {
        if (drawable == null || c3852vH == null) {
            return;
        }
        K1.m1104try(drawable, c3852vH, this.f3274do.getDrawableState());
    }

    /* renamed from: else, reason: not valid java name */
    public final void m2088else(int i, int i2, int i3, int i4) {
        U1 u1 = this.f3272do;
        if (u1.m2309goto()) {
            DisplayMetrics displayMetrics = u1.f3811do.getResources().getDisplayMetrics();
            u1.m2310this(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (u1.m2305case()) {
                u1.m2306do();
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m2089goto(int[] iArr, int i) {
        U1 u1 = this.f3272do;
        if (u1.m2309goto()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = u1.f3811do.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                u1.f3815do = U1.m2303if(iArr2);
                if (!u1.m2307else()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                u1.f3818if = false;
            }
            if (u1.m2305case()) {
                u1.m2306do();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2090if() {
        C3852vH c3852vH = this.f3275do;
        TextView textView = this.f3274do;
        if (c3852vH != null || this.f3280if != null || this.f3278for != null || this.f3281new != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            m2087do(compoundDrawables[0], this.f3275do);
            m2087do(compoundDrawables[1], this.f3280if);
            m2087do(compoundDrawables[2], this.f3278for);
            m2087do(compoundDrawables[3], this.f3281new);
        }
        if (this.f3282try == null && this.f3270case == null) {
            return;
        }
        Drawable[] m2096do = Cif.m2096do(textView);
        m2087do(m2096do[0], this.f3282try);
        m2087do(m2096do[2], this.f3270case);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fa  */
    @android.annotation.SuppressLint({"NewApi"})
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2091new(android.util.AttributeSet r28, int r29) {
        /*
            Method dump skipped, instructions count: 1089
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.S1.m2091new(android.util.AttributeSet, int):void");
    }

    /* renamed from: this, reason: not valid java name */
    public final void m2092this(int i) {
        U1 u1 = this.f3272do;
        if (u1.m2309goto()) {
            if (i == 0) {
                u1.f3809do = 0;
                u1.f3817if = -1.0f;
                u1.f3816for = -1.0f;
                u1.f3808do = -1.0f;
                u1.f3815do = new int[0];
                u1.f3814do = false;
                return;
            }
            if (i != 1) {
                throw new IllegalArgumentException(V1.m2494case("Unknown auto-size text type: ", i));
            }
            DisplayMetrics displayMetrics = u1.f3811do.getResources().getDisplayMetrics();
            u1.m2310this(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (u1.m2305case()) {
                u1.m2306do();
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m2093try(Context context, int i) {
        String m8627break;
        ColorStateList m8636if;
        ColorStateList m8636if2;
        ColorStateList m8636if3;
        C3970xH c3970xH = new C3970xH(context, context.obtainStyledAttributes(i, O4.f2570strictfp));
        boolean m8630class = c3970xH.m8630class(14);
        TextView textView = this.f3274do;
        if (m8630class) {
            textView.setAllCaps(c3970xH.m8631do(14, false));
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            if (c3970xH.m8630class(3) && (m8636if3 = c3970xH.m8636if(3)) != null) {
                textView.setTextColor(m8636if3);
            }
            if (c3970xH.m8630class(5) && (m8636if2 = c3970xH.m8636if(5)) != null) {
                textView.setLinkTextColor(m8636if2);
            }
            if (c3970xH.m8630class(4) && (m8636if = c3970xH.m8636if(4)) != null) {
                textView.setHintTextColor(m8636if);
            }
        }
        if (c3970xH.m8630class(0) && c3970xH.m8637new(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        m2086class(context, c3970xH);
        if (i2 >= 26 && c3970xH.m8630class(13) && (m8627break = c3970xH.m8627break(13)) != null) {
            Ctry.m2104new(textView, m8627break);
        }
        c3970xH.m8633final();
        Typeface typeface = this.f3273do;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f3271do);
        }
    }
}
