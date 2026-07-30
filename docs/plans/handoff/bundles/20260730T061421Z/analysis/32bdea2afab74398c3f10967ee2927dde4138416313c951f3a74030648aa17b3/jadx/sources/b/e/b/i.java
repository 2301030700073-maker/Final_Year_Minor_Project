package b.e.b;

/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    public j f667a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f668b = false;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f669c;

    public void a(j jVar) {
        if (this.f667a != jVar) {
            this.f667a = jVar;
            if (jVar.j != this) {
                jVar.j = this;
                a(jVar);
            }
        }
    }
}
