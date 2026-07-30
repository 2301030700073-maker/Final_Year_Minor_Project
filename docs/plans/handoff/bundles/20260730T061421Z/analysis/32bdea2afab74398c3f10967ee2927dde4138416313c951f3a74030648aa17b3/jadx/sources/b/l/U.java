package b.l;

import androidx.recyclerview.widget.RecyclerView;
import b.e.i.C0088b;
import b.m.b.y0;

@Deprecated
/* loaded from: classes.dex */
public class U extends y0 {

    /* renamed from: c, reason: collision with root package name */
    public final RecyclerView f1043c;

    /* renamed from: d, reason: collision with root package name */
    public final C0088b f1044d;
    public final C0088b e;

    public U(RecyclerView recyclerView) {
        super(recyclerView);
        this.f1044d = this.f1228b;
        this.e = new T(this);
        this.f1043c = recyclerView;
    }

    @Override // b.m.b.y0
    public C0088b a() {
        return this.e;
    }
}
