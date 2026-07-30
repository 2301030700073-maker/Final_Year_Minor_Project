package defpackage;

/* renamed from: Wt, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractRunnableC0595Wt implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final String f4412break;

    public AbstractRunnableC0595Wt(String str, Object... objArr) {
        this.f4412break = SJ.m2132class(str, objArr);
    }

    /* renamed from: do */
    public abstract void mo2681do();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f4412break);
        try {
            mo2681do();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
