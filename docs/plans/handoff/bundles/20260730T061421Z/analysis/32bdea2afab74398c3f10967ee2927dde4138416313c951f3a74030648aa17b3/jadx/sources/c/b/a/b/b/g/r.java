package c.b.a.b.b.g;

import android.content.Context;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class r implements t {

    /* renamed from: b, reason: collision with root package name */
    public static final Integer f2568b = 9;

    /* renamed from: a, reason: collision with root package name */
    public c.b.a.b.b.n.k f2569a;

    public r(Context context) {
        if (context.getResources().getConfiguration().getLocales().toLanguageTags().contains("en-")) {
            c.b.a.b.b.n.k kVar = new c.b.a.b.b.n.k(context, "categories_v", f2568b.intValue(), R.raw.categories);
            this.f2569a = kVar;
            kVar.d(15000);
        }
    }
}
