package defpackage;

import androidx.emoji2.text.Cgoto;
import java.nio.ByteBuffer;

/* renamed from: Hf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0252Hf {

    /* renamed from: do, reason: not valid java name */
    public static final ThreadLocal<C2600ct> f1368do = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f1369do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cgoto f1370do;

    /* renamed from: if, reason: not valid java name */
    public volatile int f1371if = 0;

    public C0252Hf(Cgoto cgoto, int i) {
        this.f1370do = cgoto;
        this.f1369do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m869do(int i) {
        C2600ct m870for = m870for();
        int m255do = m870for.m255do(16);
        if (m255do == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = ((CG) m870for).f348do;
        int i2 = m255do + ((CG) m870for).f347do;
        return byteBuffer.getInt((i * 4) + byteBuffer.getInt(i2) + i2 + 4);
    }

    /* renamed from: for, reason: not valid java name */
    public final C2600ct m870for() {
        ThreadLocal<C2600ct> threadLocal = f1368do;
        C2600ct c2600ct = threadLocal.get();
        if (c2600ct == null) {
            c2600ct = new C2600ct();
            threadLocal.set(c2600ct);
        }
        C2658dt c2658dt = this.f1370do.f6770do;
        int m255do = c2658dt.m255do(6);
        if (m255do != 0) {
            int i = m255do + ((CG) c2658dt).f347do;
            int i2 = (this.f1369do * 4) + ((CG) c2658dt).f348do.getInt(i) + i + 4;
            c2600ct.m256if(((CG) c2658dt).f348do.getInt(i2) + i2, ((CG) c2658dt).f348do);
        }
        return c2600ct;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m871if() {
        C2600ct m870for = m870for();
        int m255do = m870for.m255do(16);
        if (m255do == 0) {
            return 0;
        }
        int i = m255do + ((CG) m870for).f347do;
        return ((CG) m870for).f348do.getInt(((CG) m870for).f348do.getInt(i) + i);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        C2600ct m870for = m870for();
        int m255do = m870for.m255do(4);
        sb.append(Integer.toHexString(m255do != 0 ? ((CG) m870for).f348do.getInt(m255do + ((CG) m870for).f347do) : 0));
        sb.append(", codepoints:");
        int m871if = m871if();
        for (int i = 0; i < m871if; i++) {
            sb.append(Integer.toHexString(m869do(i)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
