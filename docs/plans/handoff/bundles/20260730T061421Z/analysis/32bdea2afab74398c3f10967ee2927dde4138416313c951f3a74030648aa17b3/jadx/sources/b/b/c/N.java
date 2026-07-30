package b.b.c;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.lang.reflect.Constructor;

/* loaded from: classes.dex */
public class N {

    /* renamed from: b, reason: collision with root package name */
    public static final Class[] f267b = {Context.class, AttributeSet.class};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f268c = {R.attr.onClick};

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f269d = {"android.widget.", "android.view.", "android.webkit."};
    public static final b.d.n e = new b.d.n();

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f270a = new Object[2];

    public final View a(Context context, String str, String str2) {
        String str3;
        b.d.n nVar = e;
        Constructor constructor = (Constructor) nVar.getOrDefault(str, null);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f267b);
            nVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f270a);
    }

    public final void b(View view, String str) {
    }
}
