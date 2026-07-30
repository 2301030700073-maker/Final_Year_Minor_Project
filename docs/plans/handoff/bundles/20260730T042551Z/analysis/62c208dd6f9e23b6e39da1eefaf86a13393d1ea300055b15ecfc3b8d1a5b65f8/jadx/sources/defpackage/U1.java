package defpackage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import com.google.android.gms.common.api.Api;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes.dex */
public final class U1 {

    /* renamed from: do, reason: not valid java name */
    public static final RectF f3806do = new RectF();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SuppressLint({"BanConcurrentHashMap"})
    public static final ConcurrentHashMap<String, Method> f3807do = new ConcurrentHashMap<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f3810do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f3811do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextPaint f3812do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f3813do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f3809do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3814do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f3808do = -1.0f;

    /* renamed from: if, reason: not valid java name */
    public float f3817if = -1.0f;

    /* renamed from: for, reason: not valid java name */
    public float f3816for = -1.0f;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f3815do = new int[0];

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f3818if = false;

    /* renamed from: U1$case, reason: invalid class name */
    public static class Ccase {
        /* renamed from: do, reason: not valid java name */
        public void mo2312do(StaticLayout.Builder builder, TextView textView) {
        }

        /* renamed from: if, reason: not valid java name */
        public boolean mo2313if(TextView textView) {
            Object obj = Boolean.FALSE;
            try {
                obj = U1.m2304new("getHorizontallyScrolling").invoke(textView, new Object[0]);
            } catch (Exception unused) {
            }
            return ((Boolean) obj).booleanValue();
        }
    }

    /* renamed from: U1$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static StaticLayout m2314do(CharSequence charSequence, Layout.Alignment alignment, int i, TextView textView, TextPaint textPaint) {
            return new StaticLayout(charSequence, textPaint, i, alignment, textView.getLineSpacingMultiplier(), textView.getLineSpacingExtra(), textView.getIncludeFontPadding());
        }

        /* renamed from: if, reason: not valid java name */
        public static int m2315if(TextView textView) {
            return textView.getMaxLines();
        }
    }

    /* renamed from: U1$for, reason: invalid class name */
    public static final class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static StaticLayout m2316do(CharSequence charSequence, Layout.Alignment alignment, int i, int i2, TextView textView, TextPaint textPaint, Ccase ccase) {
            StaticLayout.Builder obtain;
            StaticLayout.Builder alignment2;
            StaticLayout.Builder lineSpacing;
            StaticLayout.Builder includePad;
            int breakStrategy;
            StaticLayout.Builder breakStrategy2;
            int hyphenationFrequency;
            StaticLayout.Builder hyphenationFrequency2;
            StaticLayout build;
            obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i);
            alignment2 = obtain.setAlignment(alignment);
            lineSpacing = alignment2.setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier());
            includePad = lineSpacing.setIncludePad(textView.getIncludeFontPadding());
            breakStrategy = textView.getBreakStrategy();
            breakStrategy2 = includePad.setBreakStrategy(breakStrategy);
            hyphenationFrequency = textView.getHyphenationFrequency();
            hyphenationFrequency2 = breakStrategy2.setHyphenationFrequency(hyphenationFrequency);
            if (i2 == -1) {
                i2 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            hyphenationFrequency2.setMaxLines(i2);
            try {
                ccase.mo2312do(obtain, textView);
            } catch (ClassCastException unused) {
            }
            build = obtain.build();
            return build;
        }
    }

    /* renamed from: U1$if, reason: invalid class name */
    public static final class Cif {
        /* renamed from: do, reason: not valid java name */
        public static boolean m2317do(View view) {
            return view.isInLayout();
        }
    }

    /* renamed from: U1$new, reason: invalid class name */
    public static class Cnew extends Ccase {
        @Override // defpackage.U1.Ccase
        /* renamed from: do */
        public void mo2312do(StaticLayout.Builder builder, TextView textView) {
            Object obj = TextDirectionHeuristics.FIRSTSTRONG_LTR;
            try {
                obj = U1.m2304new("getTextDirectionHeuristic").invoke(textView, new Object[0]);
            } catch (Exception unused) {
            }
            builder.setTextDirection((TextDirectionHeuristic) obj);
        }
    }

    /* renamed from: U1$try, reason: invalid class name */
    public static class Ctry extends Cnew {
        @Override // defpackage.U1.Cnew, defpackage.U1.Ccase
        /* renamed from: do */
        public void mo2312do(StaticLayout.Builder builder, TextView textView) {
            TextDirectionHeuristic textDirectionHeuristic;
            textDirectionHeuristic = textView.getTextDirectionHeuristic();
            builder.setTextDirection(textDirectionHeuristic);
        }

        @Override // defpackage.U1.Ccase
        /* renamed from: if */
        public boolean mo2313if(TextView textView) {
            boolean isHorizontallyScrollable;
            isHorizontallyScrollable = textView.isHorizontallyScrollable();
            return isHorizontallyScrollable;
        }
    }

    static {
        new ConcurrentHashMap();
    }

    public U1(TextView textView) {
        this.f3813do = textView;
        this.f3811do = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f3810do = new Ctry();
        } else if (i >= 23) {
            this.f3810do = new Cnew();
        } else {
            this.f3810do = new Ccase();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int[] m2303if(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr2;
    }

    /* renamed from: new, reason: not valid java name */
    public static Method m2304new(String str) {
        try {
            ConcurrentHashMap<String, Method> concurrentHashMap = f3807do;
            Method method = concurrentHashMap.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                concurrentHashMap.put(str, method);
            }
            return method;
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m2305case() {
        if (m2309goto() && this.f3809do == 1) {
            if (!this.f3818if || this.f3815do.length == 0) {
                int floor = ((int) Math.floor((this.f3816for - this.f3817if) / this.f3808do)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round((i * this.f3808do) + this.f3817if);
                }
                this.f3815do = m2303if(iArr);
            }
            this.f3814do = true;
        } else {
            this.f3814do = false;
        }
        return this.f3814do;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2306do() {
        if (m2309goto() && this.f3809do != 0) {
            if (this.f3814do) {
                if (this.f3813do.getMeasuredHeight() <= 0 || this.f3813do.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f3810do.mo2313if(this.f3813do) ? 1048576 : (this.f3813do.getMeasuredWidth() - this.f3813do.getTotalPaddingLeft()) - this.f3813do.getTotalPaddingRight();
                int height = (this.f3813do.getHeight() - this.f3813do.getCompoundPaddingBottom()) - this.f3813do.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f3806do;
                synchronized (rectF) {
                    rectF.setEmpty();
                    rectF.right = measuredWidth;
                    rectF.bottom = height;
                    float m2308for = m2308for(rectF);
                    if (m2308for != this.f3813do.getTextSize()) {
                        m2311try(m2308for, 0);
                    }
                }
            }
            this.f3814do = true;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m2307else() {
        boolean z = this.f3815do.length > 0;
        this.f3818if = z;
        if (z) {
            this.f3809do = 1;
            this.f3817if = r0[0];
            this.f3816for = r0[r1 - 1];
            this.f3808do = -1.0f;
        }
        return z;
    }

    /* renamed from: for, reason: not valid java name */
    public final int m2308for(RectF rectF) {
        int i;
        StaticLayout m2314do;
        CharSequence transformation;
        int length = this.f3815do.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i2 = length - 1;
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i4 <= i2) {
            int i6 = (i4 + i2) / 2;
            int i7 = this.f3815do[i6];
            TextView textView = this.f3813do;
            CharSequence text = textView.getText();
            TransformationMethod transformationMethod = textView.getTransformationMethod();
            if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, textView)) != null) {
                text = transformation;
            }
            int i8 = Build.VERSION.SDK_INT;
            int m2315if = Cdo.m2315if(textView);
            TextPaint textPaint = this.f3812do;
            if (textPaint == null) {
                this.f3812do = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.f3812do.set(textView.getPaint());
            this.f3812do.setTextSize(i7);
            Object obj = Layout.Alignment.ALIGN_NORMAL;
            try {
                obj = m2304new("getLayoutAlignment").invoke(textView, new Object[i3]);
            } catch (Exception unused) {
            }
            Layout.Alignment alignment = (Layout.Alignment) obj;
            int round = Math.round(rectF.right);
            if (i8 >= 23) {
                i = m2315if;
                m2314do = Cfor.m2316do(text, alignment, round, m2315if, this.f3813do, this.f3812do, this.f3810do);
            } else {
                i = m2315if;
                m2314do = Cdo.m2314do(text, alignment, round, textView, this.f3812do);
            }
            if ((i == -1 || (m2314do.getLineCount() <= i && m2314do.getLineEnd(m2314do.getLineCount() - 1) == text.length())) && ((float) m2314do.getHeight()) <= rectF.bottom) {
                int i9 = i6 + 1;
                i3 = 0;
                i5 = i4;
                i4 = i9;
            } else {
                i5 = i6 - 1;
                i2 = i5;
                i3 = 0;
            }
        }
        return this.f3815do[i5];
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m2309goto() {
        return !(this.f3813do instanceof AppCompatEditText);
    }

    /* renamed from: this, reason: not valid java name */
    public final void m2310this(float f, float f2, float f3) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
        this.f3809do = 1;
        this.f3817if = f;
        this.f3816for = f2;
        this.f3808do = f3;
        this.f3818if = false;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m2311try(float f, int i) {
        Context context = this.f3811do;
        float applyDimension = TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        TextView textView = this.f3813do;
        if (applyDimension != textView.getPaint().getTextSize()) {
            textView.getPaint().setTextSize(applyDimension);
            boolean m2317do = Cif.m2317do(textView);
            if (textView.getLayout() != null) {
                this.f3814do = false;
                try {
                    Method m2304new = m2304new("nullLayouts");
                    if (m2304new != null) {
                        m2304new.invoke(textView, new Object[0]);
                    }
                } catch (Exception unused) {
                }
                if (m2317do) {
                    textView.forceLayout();
                } else {
                    textView.requestLayout();
                }
                textView.invalidate();
            }
        }
    }
}
