package b.i.b;

import android.view.ViewGroup;
import androidx.fragment.app.SpecialEffectsController$Operation$Type;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class J0 {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f859a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f860b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f861c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public boolean f862d = false;
    public boolean e = false;

    public J0(ViewGroup viewGroup) {
        this.f859a = viewGroup;
    }

    public static J0 b(ViewGroup viewGroup, M m) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof J0) {
            return (J0) tag;
        }
        Objects.requireNonNull(m);
        C0100c c0100c = new C0100c(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, c0100c);
        return c0100c;
    }

    public static J0 c(ViewGroup viewGroup, X x) {
        return b(viewGroup, x.K());
    }

    public final void a(SpecialEffectsController$Operation$Type specialEffectsController$Operation$Type, C0107f0 c0107f0, b.e.f.b bVar) {
        boolean z;
        synchronized (bVar) {
            z = bVar.f700a;
        }
        if (z) {
            return;
        }
        synchronized (this.f860b) {
            b.e.f.b bVar2 = new b.e.f.b();
            H0 h0 = new H0(specialEffectsController$Operation$Type, c0107f0, bVar2);
            this.f860b.add(h0);
            this.f861c.put(h0.f855b, h0);
            bVar.b(new F0(this, h0, bVar2));
            h0.f857d.add(new G0(this, h0));
        }
    }
}
