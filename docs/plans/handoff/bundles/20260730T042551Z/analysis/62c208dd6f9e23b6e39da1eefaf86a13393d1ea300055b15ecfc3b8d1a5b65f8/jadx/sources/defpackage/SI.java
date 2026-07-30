package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import com.google.android.gms.common.api.Api;
import defpackage.C3464oj;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.InputStream;

/* loaded from: classes.dex */
public class SI {

    /* renamed from: SI$do, reason: invalid class name */
    public interface Cdo<T> {
        /* renamed from: do */
        int mo2034do(T t);

        /* renamed from: if */
        boolean mo2035if(T t);
    }

    public SI() {
        new ConcurrentHashMap();
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> T m2128try(T[] tArr, int i, Cdo<T> cdo) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (T t2 : tArr) {
            int abs = (Math.abs(cdo.mo2034do(t2) - i2) * 2) + (cdo.mo2035if(t2) == z ? 0 : 1);
            if (t == null || i3 > abs) {
                t = t2;
                i3 = abs;
            }
        }
        return t;
    }

    /* renamed from: case */
    public C3582qj mo1844case(int i, C3582qj[] c3582qjArr) {
        return (C3582qj) m2128try(c3582qjArr, i, new RI());
    }

    /* renamed from: do */
    public Typeface mo1408do(Context context, C3464oj.Cfor cfor, Resources resources, int i) {
        throw null;
    }

    /* renamed from: for */
    public Typeface mo1845for(Context context, InputStream inputStream) {
        File m2238new = TI.m2238new(context);
        if (m2238new == null) {
            return null;
        }
        try {
            if (TI.m2236for(m2238new, inputStream)) {
                return Typeface.createFromFile(m2238new.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            m2238new.delete();
        }
    }

    /* renamed from: if */
    public Typeface mo1409if(Context context, C3582qj[] c3582qjArr, int i) {
        throw null;
    }

    /* renamed from: new */
    public Typeface mo1657new(Context context, Resources resources, int i, String str, int i2) {
        File m2238new = TI.m2238new(context);
        if (m2238new == null) {
            return null;
        }
        try {
            if (TI.m2237if(m2238new, resources, i)) {
                return Typeface.createFromFile(m2238new.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            m2238new.delete();
        }
    }
}
