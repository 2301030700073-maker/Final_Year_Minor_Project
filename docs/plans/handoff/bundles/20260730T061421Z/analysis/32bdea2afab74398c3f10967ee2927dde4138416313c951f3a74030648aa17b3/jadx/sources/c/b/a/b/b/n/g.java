package c.b.a.b.b.n;

import android.icu.text.StringSearch;
import android.text.TextUtils;
import com.android.launcher3.model.data.AppInfo;
import com.android.quickstep.fallback.RecentsState;
import java.text.StringCharacterIterator;
import java.util.List;

/* loaded from: classes.dex */
public class g implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final StringSearch f2748a;

    /* renamed from: b, reason: collision with root package name */
    public float f2749b;

    /* renamed from: c, reason: collision with root package name */
    public int f2750c;

    /* renamed from: d, reason: collision with root package name */
    public final List f2751d;
    public final String e;

    public g(List list, String[] strArr, String str, StringSearch stringSearch) {
        this.f2749b = RecentsState.NO_OFFSET;
        this.f2751d = list;
        String charSequence = ((AppInfo) list.get(0)).title.toString();
        this.e = charSequence;
        this.f2748a = stringSearch;
        h(g(charSequence, str), 0);
        this.f2749b = Math.max(this.f2749b, g(this.e, str));
        for (String str2 : strArr) {
            h(g(str2, str) - 0.05f, 1);
        }
        if (this.f2749b != RecentsState.NO_OFFSET || e(this.e, str) < 0) {
            return;
        }
        h(0.1f, 0);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        g gVar = (g) obj;
        int compare = Double.compare(this.f2749b, gVar.f2749b);
        return compare == 0 ? Integer.compare(gVar.e.length(), this.e.length()) : compare;
    }

    public final int e(String str, String str2) {
        if (str.length() == 0) {
            return -1;
        }
        this.f2748a.setTarget(new StringCharacterIterator(str));
        this.f2748a.setPattern(str2);
        return this.f2748a.first();
    }

    public final float g(String str, String str2) {
        boolean isEmpty = TextUtils.isEmpty(str);
        float f = RecentsState.NO_OFFSET;
        if (isEmpty) {
            return RecentsState.NO_OFFSET;
        }
        String[] split = str.split(" ");
        for (int i = 0; i < split.length; i++) {
            int e = e(split[i], str2);
            if (e == 0) {
                f = Math.max(f, Math.max(1.0f - (i * 0.2f), 0.1f));
            } else if (e > 0) {
                f = Math.max(f, Math.max(1.0f - (i * 0.2f), 0.1f) * 0.8f);
            }
        }
        return f;
    }

    public final void h(float f, int i) {
        if (f > 0.1f) {
            if (this.f2749b > RecentsState.NO_OFFSET && this.f2750c == 0) {
                i = 2;
            }
            this.f2750c = i;
        }
        if (f > this.f2749b) {
            this.f2749b = f;
        }
    }
}
