package b.b.g;

import android.content.Context;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.Log;
import android.widget.TextView;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: b.b.g.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0047f0 {
    public static final RectF l = new RectF();
    public static ConcurrentHashMap m = new ConcurrentHashMap();
    public static ConcurrentHashMap n = new ConcurrentHashMap();
    public TextPaint h;
    public final TextView i;
    public final Context j;

    /* renamed from: a, reason: collision with root package name */
    public int f532a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f533b = false;

    /* renamed from: c, reason: collision with root package name */
    public float f534c = -1.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f535d = -1.0f;
    public float e = -1.0f;
    public int[] f = new int[0];
    public boolean g = false;
    public final C0045e0 k = new C0043d0();

    public C0047f0(TextView textView) {
        this.i = textView;
        this.j = textView.getContext();
    }

    public final int[] a(int[] iArr) {
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

    public final boolean b() {
        if (d() && this.f532a == 1) {
            if (!this.g || this.f.length == 0) {
                int floor = ((int) Math.floor((this.e - this.f535d) / this.f534c)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round((i * this.f534c) + this.f535d);
                }
                this.f = a(iArr);
            }
            this.f533b = true;
        } else {
            this.f533b = false;
        }
        return this.f533b;
    }

    public final boolean c() {
        boolean z = this.f.length > 0;
        this.g = z;
        if (z) {
            this.f532a = 1;
            int[] iArr = this.f;
            this.f535d = iArr[0];
            this.e = iArr[r0 - 1];
            this.f534c = -1.0f;
        }
        return this.g;
    }

    public StaticLayout createLayout(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.h, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.i.getLineSpacingExtra(), this.i.getLineSpacingMultiplier()).setIncludePad(this.i.getIncludeFontPadding()).setBreakStrategy(this.i.getBreakStrategy()).setHyphenationFrequency(this.i.getHyphenationFrequency());
        if (i2 == -1) {
            i2 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i2);
        try {
            this.k.a(obtain, this.i);
        } catch (ClassCastException unused) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    public final boolean d() {
        return !(this.i instanceof E);
    }

    public final void e(float f, float f2, float f3) {
        if (f <= RecentsState.NO_OFFSET) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f3 <= RecentsState.NO_OFFSET) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
        this.f532a = 1;
        this.f535d = f;
        this.e = f2;
        this.f534c = f3;
        this.g = false;
    }

    public void initTempTextPaint(int i) {
        TextPaint textPaint = this.h;
        if (textPaint == null) {
            this.h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.h.set(this.i.getPaint());
        this.h.setTextSize(i);
    }
}
