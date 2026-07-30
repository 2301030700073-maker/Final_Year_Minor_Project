package defpackage;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Constructor;

/* renamed from: kF, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3202kF {

    /* renamed from: do, reason: not valid java name */
    public static TextDirectionHeuristic f13941do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Constructor<StaticLayout> f13942do;

    /* renamed from: for, reason: not valid java name */
    public static boolean f13943for;

    /* renamed from: try, reason: not valid java name */
    public static final int f13944try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f13946do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextPaint f13948do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f13950do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f13954if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f13955if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Layout.Alignment f13947do = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f13952for = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f13945do = 0.0f;

    /* renamed from: if, reason: not valid java name */
    public float f13953if = 1.0f;

    /* renamed from: new, reason: not valid java name */
    public int f13956new = f13944try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f13951do = true;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextUtils.TruncateAt f13949do = null;

    /* renamed from: kF$do, reason: invalid class name */
    public static class Cdo extends Exception {
        public Cdo(Exception exc) {
            super("Error thrown initializing StaticLayout " + exc.getMessage(), exc);
        }
    }

    static {
        f13944try = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    public C3202kF(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f13950do = charSequence;
        this.f13948do = textPaint;
        this.f13946do = i;
        this.f13954if = charSequence.length();
    }

    /* renamed from: do, reason: not valid java name */
    public final StaticLayout m7230do() {
        StaticLayout.Builder obtain;
        StaticLayout build;
        if (this.f13950do == null) {
            this.f13950do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int max = Math.max(0, this.f13946do);
        CharSequence charSequence = this.f13950do;
        int i = this.f13952for;
        TextPaint textPaint = this.f13948do;
        if (i == 1) {
            charSequence = TextUtils.ellipsize(charSequence, textPaint, max, this.f13949do);
        }
        int min = Math.min(charSequence.length(), this.f13954if);
        this.f13954if = min;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            if (!f13943for) {
                try {
                    f13941do = this.f13955if && i2 >= 23 ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                    Class cls = Integer.TYPE;
                    Class cls2 = Float.TYPE;
                    Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, TextDirectionHeuristic.class, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
                    f13942do = declaredConstructor;
                    declaredConstructor.setAccessible(true);
                    f13943for = true;
                } catch (Exception e) {
                    throw new Cdo(e);
                }
            }
            try {
                Constructor<StaticLayout> constructor = f13942do;
                constructor.getClass();
                TextDirectionHeuristic textDirectionHeuristic = f13941do;
                textDirectionHeuristic.getClass();
                return constructor.newInstance(charSequence, 0, Integer.valueOf(this.f13954if), textPaint, Integer.valueOf(max), this.f13947do, textDirectionHeuristic, Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.f13951do), null, Integer.valueOf(max), Integer.valueOf(this.f13952for));
            } catch (Exception e2) {
                throw new Cdo(e2);
            }
        }
        if (this.f13955if && this.f13952for == 1) {
            this.f13947do = Layout.Alignment.ALIGN_OPPOSITE;
        }
        obtain = StaticLayout.Builder.obtain(charSequence, 0, min, textPaint, max);
        obtain.setAlignment(this.f13947do);
        obtain.setIncludePad(this.f13951do);
        obtain.setTextDirection(this.f13955if ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f13949do;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.f13952for);
        float f = this.f13945do;
        if (f != 0.0f || this.f13953if != 1.0f) {
            obtain.setLineSpacing(f, this.f13953if);
        }
        if (this.f13952for > 1) {
            obtain.setHyphenationFrequency(this.f13956new);
        }
        build = obtain.build();
        return build;
    }
}
