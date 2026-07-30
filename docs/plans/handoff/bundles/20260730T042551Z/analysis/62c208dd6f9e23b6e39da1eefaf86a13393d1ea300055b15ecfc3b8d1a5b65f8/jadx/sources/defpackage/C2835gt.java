package defpackage;

/* renamed from: gt, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2835gt implements SE {

    /* renamed from: do, reason: not valid java name */
    public final C2894ht f13224do = new C2894ht();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SE[] f13225do;

    public C2835gt(SE... seArr) {
        this.f13225do = seArr;
    }

    @Override // defpackage.SE
    /* renamed from: do */
    public final StackTraceElement[] mo2123do(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= 1024) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (SE se : this.f13225do) {
            if (stackTraceElementArr2.length <= 1024) {
                break;
            }
            stackTraceElementArr2 = se.mo2123do(stackTraceElementArr);
        }
        return stackTraceElementArr2.length > 1024 ? this.f13224do.mo2123do(stackTraceElementArr2) : stackTraceElementArr2;
    }
}
