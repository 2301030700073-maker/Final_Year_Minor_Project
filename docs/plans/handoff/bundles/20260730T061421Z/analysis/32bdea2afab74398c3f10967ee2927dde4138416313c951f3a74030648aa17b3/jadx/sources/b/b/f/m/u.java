package b.b.f.m;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class u extends FrameLayout implements b.b.f.c {

    /* renamed from: a, reason: collision with root package name */
    public final CollapsibleActionView f415a;

    /* JADX WARN: Multi-variable type inference failed */
    public u(View view) {
        super(view.getContext());
        this.f415a = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // b.b.f.c
    public void c() {
        this.f415a.onActionViewExpanded();
    }

    @Override // b.b.f.c
    public void d() {
        this.f415a.onActionViewCollapsed();
    }
}
