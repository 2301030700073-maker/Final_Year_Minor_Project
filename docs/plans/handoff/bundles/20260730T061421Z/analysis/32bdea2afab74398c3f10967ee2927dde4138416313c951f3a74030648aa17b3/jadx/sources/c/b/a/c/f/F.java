package c.b.a.c.f;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public abstract class F {

    /* renamed from: a, reason: collision with root package name */
    public volatile int f3022a = -1;

    public static final byte[] d(F f) {
        int c2 = f.c();
        byte[] bArr = new byte[c2];
        try {
            z zVar = new z(bArr, 0, c2);
            f.e(zVar);
            if (zVar.f3063a.remaining() == 0) {
                return bArr;
            }
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(zVar.f3063a.remaining())));
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    @Override // 
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public F clone() {
        return (F) super.clone();
    }

    public int b() {
        return 0;
    }

    public int c() {
        int b2 = b();
        this.f3022a = b2;
        return b2;
    }

    public void e(z zVar) {
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            c.b.a.c.b.a.k0(null, this, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(e.getMessage());
            return valueOf.length() != 0 ? "Error printing proto: ".concat(valueOf) : new String("Error printing proto: ");
        } catch (InvocationTargetException e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            return valueOf2.length() != 0 ? "Error printing proto: ".concat(valueOf2) : new String("Error printing proto: ");
        }
    }
}
