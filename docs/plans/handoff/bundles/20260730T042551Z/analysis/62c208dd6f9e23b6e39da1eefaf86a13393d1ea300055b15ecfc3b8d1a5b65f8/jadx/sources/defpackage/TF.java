package defpackage;

import java.io.Serializable;

/* loaded from: classes3.dex */
public final class TF<T> implements SF<T>, Serializable {

    /* renamed from: do, reason: not valid java name */
    public final SF<T> f3630do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public transient T f3631do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile transient boolean f3632do;

    public TF(SF<T> sf) {
        this.f3630do = sf;
    }

    @Override // defpackage.SF
    public final T get() {
        if (!this.f3632do) {
            synchronized (this) {
                if (!this.f3632do) {
                    T t = this.f3630do.get();
                    this.f3631do = t;
                    this.f3632do = true;
                    return t;
                }
            }
        }
        return this.f3631do;
    }

    public final String toString() {
        Object obj;
        if (this.f3632do) {
            String valueOf = String.valueOf(this.f3631do);
            StringBuilder sb = new StringBuilder(valueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        } else {
            obj = this.f3630do;
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
