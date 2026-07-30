package b.j;

/* loaded from: classes.dex */
public class F implements D {

    /* renamed from: a, reason: collision with root package name */
    public static F f984a;

    @Override // b.j.D
    public B a(Class cls) {
        try {
            return (B) cls.newInstance();
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Cannot create an instance of " + cls, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Cannot create an instance of " + cls, e2);
        }
    }
}
