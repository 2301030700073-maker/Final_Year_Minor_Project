package b.i.b;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public class m0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f919a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ A0 f920b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f921c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ r f922d;
    public final /* synthetic */ ArrayList e;
    public final /* synthetic */ ArrayList f;
    public final /* synthetic */ ArrayList g;
    public final /* synthetic */ Object h;

    public m0(Object obj, A0 a0, View view, r rVar, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.f919a = obj;
        this.f920b = a0;
        this.f921c = view;
        this.f922d = rVar;
        this.e = arrayList;
        this.f = arrayList2;
        this.g = arrayList3;
        this.h = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj = this.f919a;
        if (obj != null) {
            A0 a0 = this.f920b;
            View view = this.f921c;
            Objects.requireNonNull((w0) a0);
            if (obj != null) {
                ((Transition) obj).removeTarget(view);
            }
            this.f.addAll(q0.h(this.f920b, this.f919a, this.f922d, this.e, this.f921c));
        }
        if (this.g != null) {
            if (this.h != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.f921c);
                this.f920b.k(this.h, this.g, arrayList);
            }
            this.g.clear();
            this.g.add(this.f921c);
        }
    }
}
