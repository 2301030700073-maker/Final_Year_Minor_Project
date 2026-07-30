package defpackage;

/* renamed from: ht, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2894ht implements SE {

    /* renamed from: do, reason: not valid java name */
    public final int f13370do = 1024;

    @Override // defpackage.SE
    /* renamed from: do */
    public final StackTraceElement[] mo2123do(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int i = this.f13370do;
        if (length <= i) {
            return stackTraceElementArr;
        }
        int i2 = i / 2;
        int i3 = i - i2;
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[i];
        System.arraycopy(stackTraceElementArr, 0, stackTraceElementArr2, 0, i3);
        System.arraycopy(stackTraceElementArr, stackTraceElementArr.length - i2, stackTraceElementArr2, i3, i2);
        return stackTraceElementArr2;
    }
}
