package defpackage;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;

/* renamed from: et, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2717et {

    /* renamed from: et$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final ByteBuffer f12737do;

        public Cdo(ByteBuffer byteBuffer) {
            this.f12737do = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        /* renamed from: do, reason: not valid java name */
        public final long m6593do() {
            return this.f12737do.getInt() & 4294967295L;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m6594if(int i) {
            ByteBuffer byteBuffer = this.f12737do;
            byteBuffer.position(byteBuffer.position() + i);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static C2658dt m6592do(MappedByteBuffer mappedByteBuffer) {
        ByteBuffer byteBuffer;
        long j;
        ByteBuffer duplicate = mappedByteBuffer.duplicate();
        Cdo cdo = new Cdo(duplicate);
        cdo.m6594if(4);
        int i = duplicate.getShort() & 65535;
        if (i > 100) {
            throw new IOException("Cannot read metadata.");
        }
        cdo.m6594if(6);
        int i2 = 0;
        while (true) {
            byteBuffer = cdo.f12737do;
            if (i2 >= i) {
                j = -1;
                break;
            }
            int i3 = byteBuffer.getInt();
            cdo.m6594if(4);
            j = cdo.m6593do();
            cdo.m6594if(4);
            if (1835365473 == i3) {
                break;
            }
            i2++;
        }
        if (j != -1) {
            cdo.m6594if((int) (j - duplicate.position()));
            cdo.m6594if(12);
            long m6593do = cdo.m6593do();
            for (int i4 = 0; i4 < m6593do; i4++) {
                int i5 = byteBuffer.getInt();
                long m6593do2 = cdo.m6593do();
                cdo.m6593do();
                if (1164798569 == i5 || 1701669481 == i5) {
                    duplicate.position((int) (m6593do2 + j));
                    C2658dt c2658dt = new C2658dt();
                    duplicate.order(ByteOrder.LITTLE_ENDIAN);
                    c2658dt.m256if(duplicate.position() + duplicate.getInt(duplicate.position()), duplicate);
                    return c2658dt;
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }
}
