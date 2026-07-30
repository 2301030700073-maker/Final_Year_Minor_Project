package c.b.a.c.d;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class s extends q {

    /* renamed from: c, reason: collision with root package name */
    public static final WeakReference f2996c = new WeakReference(null);

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f2997b;

    public s(byte[] bArr) {
        super(bArr);
        this.f2997b = f2996c;
    }

    @Override // c.b.a.c.d.q
    public final byte[] a() {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.f2997b.get();
            if (bArr == null) {
                bArr = c();
                this.f2997b = new WeakReference(bArr);
            }
        }
        return bArr;
    }

    public abstract byte[] c();
}
