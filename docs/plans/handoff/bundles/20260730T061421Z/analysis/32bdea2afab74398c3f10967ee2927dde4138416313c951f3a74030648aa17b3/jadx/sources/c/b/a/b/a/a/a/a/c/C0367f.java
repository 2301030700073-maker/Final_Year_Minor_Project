package c.b.a.b.a.a.a.a.c;

import android.graphics.PointF;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import java.util.ArrayList;
import java.util.Objects;

/* renamed from: c.b.a.b.a.a.a.a.c.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0367f implements Q {

    /* renamed from: d, reason: collision with root package name */
    public static final C0367f f2453d = new C0367f(null);

    /* renamed from: a, reason: collision with root package name */
    public final PointF f2454a = new PointF();

    /* renamed from: c, reason: collision with root package name */
    public long f2456c = -1;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final ViewGroup f2455b = null;

    public C0367f(@Nullable ViewGroup viewGroup) {
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void a(String str) {
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void b(String str, c.b.a.b.a.a.a.a.a.a.j jVar) {
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void c(Throwable th) {
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void d(c.b.a.b.a.a.a.a.a.a.w wVar) {
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void e(final m0 m0Var) {
        FrameLayout frameLayout = m0Var.f2486b;
        ViewGroup viewGroup = this.f2455b;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.f2455b.addView(frameLayout);
        }
        m0Var.d();
        frameLayout.setLongClickable(true);
        frameLayout.setOnTouchListener(new View.OnTouchListener(this, m0Var) { // from class: c.b.a.b.a.a.a.a.c.d

            /* renamed from: a, reason: collision with root package name */
            public final C0367f f2442a;

            /* renamed from: b, reason: collision with root package name */
            public final m0 f2443b;

            {
                this.f2442a = this;
                this.f2443b = m0Var;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                C0367f c0367f = this.f2442a;
                m0 m0Var2 = this.f2443b;
                Objects.requireNonNull(c0367f);
                int action = motionEvent.getAction();
                if (action == 0) {
                    if (c0367f.f2456c < 0) {
                        c0367f.f2456c = System.currentTimeMillis();
                    }
                    c0367f.f2454a.set(motionEvent.getX(), motionEvent.getY());
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add(motionEvent);
                    m0Var2.x = arrayList;
                    PointF pointF = c0367f.f2454a;
                    m0Var2.f(pointF);
                    m0Var2.l(pointF);
                } else if (action == 1) {
                    if (c0367f.f2456c > 0) {
                        m0Var2.d();
                    }
                    c0367f.f2456c = -1L;
                }
                return view.onTouchEvent(motionEvent);
            }
        });
        frameLayout.setOnLongClickListener(new View.OnLongClickListener(this, m0Var) { // from class: c.b.a.b.a.a.a.a.c.e

            /* renamed from: a, reason: collision with root package name */
            public final C0367f f2448a;

            /* renamed from: b, reason: collision with root package name */
            public final m0 f2449b;

            {
                this.f2448a = this;
                this.f2449b = m0Var;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                C0367f c0367f = this.f2448a;
                m0 m0Var2 = this.f2449b;
                c0367f.f2456c = -1L;
                m0Var2.e();
                return true;
            }
        });
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void f(C0357b c0357b) {
    }
}
