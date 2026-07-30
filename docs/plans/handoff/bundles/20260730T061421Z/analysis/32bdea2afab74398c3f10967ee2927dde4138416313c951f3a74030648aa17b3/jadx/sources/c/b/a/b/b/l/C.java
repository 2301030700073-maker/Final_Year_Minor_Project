package c.b.a.b.b.l;

import androidx.recyclerview.widget.RecyclerView;
import b.m.b.AbstractC0186k0;
import com.android.launcher3.BaseRecyclerView;
import com.google.android.apps.nexuslauncher.qsb.AllAppsQsbLayout;

/* loaded from: classes.dex */
public class C extends AbstractC0186k0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AllAppsQsbLayout f2621a;

    public C(AllAppsQsbLayout allAppsQsbLayout, B b2) {
        this.f2621a = allAppsQsbLayout;
    }

    @Override // b.m.b.AbstractC0186k0
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        this.f2621a.y(((BaseRecyclerView) recyclerView).getCurrentScrollY());
    }
}
