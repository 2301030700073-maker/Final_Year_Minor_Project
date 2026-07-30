package c.b.a.c.d.j;

/* renamed from: c.b.a.c.d.j.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0423d {

    /* renamed from: a, reason: collision with root package name */
    public Object f2954a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2955b = false;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ z f2956c;

    public AbstractC0423d(z zVar, Object obj) {
        this.f2956c = zVar;
        this.f2954a = obj;
    }

    public abstract void a(Object obj);

    public final void b() {
        synchronized (this) {
            this.f2954a = null;
        }
        synchronized (this.f2956c.j) {
            this.f2956c.j.remove(this);
        }
    }
}
