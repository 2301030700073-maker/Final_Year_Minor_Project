package com.google.protobuf;

import com.google.protobuf.Ccatch;
import com.google.protobuf.Cdo;
import com.google.protobuf.Cdo.AbstractC0079do;
import com.google.protobuf.Cstatic;
import defpackage.AB;
import defpackage.AbstractC3429o6;
import defpackage.AbstractC3725t8;
import defpackage.Cx;
import defpackage.InterfaceC0547Up;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

/* renamed from: com.google.protobuf.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo<MessageType extends Cdo<MessageType, BuilderType>, BuilderType extends AbstractC0079do<MessageType, BuilderType>> implements Cstatic {
    protected int memoizedHashCode = 0;

    /* renamed from: com.google.protobuf.do$do, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractC0079do<MessageType extends Cdo<MessageType, BuilderType>, BuilderType extends AbstractC0079do<MessageType, BuilderType>> implements Cstatic.Cdo {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: const, reason: not valid java name */
    public static void m6194const(List list, Ccatch.Cfor cfor) {
        Charset charset = Ccatch.f12045do;
        list.getClass();
        if (list instanceof InterfaceC0547Up) {
            List<?> mo2471for = ((InterfaceC0547Up) list).mo2471for();
            InterfaceC0547Up interfaceC0547Up = (InterfaceC0547Up) cfor;
            int size = cfor.size();
            for (Object obj : mo2471for) {
                if (obj == null) {
                    String str = "Element at index " + (interfaceC0547Up.size() - size) + " is null.";
                    int size2 = interfaceC0547Up.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            throw new NullPointerException(str);
                        }
                        interfaceC0547Up.remove(size2);
                    }
                } else if (obj instanceof AbstractC3429o6) {
                    interfaceC0547Up.mo2474throws((AbstractC3429o6) obj);
                } else {
                    interfaceC0547Up.add((String) obj);
                }
            }
            return;
        }
        if (list instanceof Cx) {
            cfor.addAll(list);
            return;
        }
        if ((cfor instanceof ArrayList) && (list instanceof Collection)) {
            ((ArrayList) cfor).ensureCapacity(list.size() + cfor.size());
        }
        int size3 = cfor.size();
        for (Object obj2 : list) {
            if (obj2 == null) {
                String str2 = "Element at index " + (cfor.size() - size3) + " is null.";
                int size4 = cfor.size();
                while (true) {
                    size4--;
                    if (size4 < size3) {
                        throw new NullPointerException(str2);
                    }
                    cfor.remove(size4);
                }
            } else {
                cfor.add(obj2);
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private String m6195throw(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    @Override // com.google.protobuf.Cstatic
    /* renamed from: catch, reason: not valid java name */
    public final AbstractC3429o6.Ctry mo6196catch() {
        try {
            int mo6199super = ((Cthis) this).mo6199super(null);
            AbstractC3429o6.Ctry ctry = AbstractC3429o6.f14685do;
            byte[] bArr = new byte[mo6199super];
            Logger logger = AbstractC3725t8.f15623do;
            AbstractC3725t8.Cdo cdo = new AbstractC3725t8.Cdo(bArr, mo6199super);
            ((Cthis) this).mo6287class(cdo);
            if (cdo.v() == 0) {
                return new AbstractC3429o6.Ctry(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException(m6195throw("ByteString"), e);
        }
    }

    /* renamed from: final, reason: not valid java name */
    int mo6197final() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: import, reason: not valid java name */
    public final byte[] m6198import() {
        try {
            int mo6199super = ((Cthis) this).mo6199super(null);
            byte[] bArr = new byte[mo6199super];
            Logger logger = AbstractC3725t8.f15623do;
            AbstractC3725t8.Cdo cdo = new AbstractC3725t8.Cdo(bArr, mo6199super);
            ((Cthis) this).mo6287class(cdo);
            if (cdo.v() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException(m6195throw("byte array"), e);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public int mo6199super(AB ab) {
        int mo6197final = mo6197final();
        if (mo6197final != -1) {
            return mo6197final;
        }
        int mo53new = ab.mo53new(this);
        mo6200while(mo53new);
        return mo53new;
    }

    /* renamed from: while, reason: not valid java name */
    void mo6200while(int i) {
        throw new UnsupportedOperationException();
    }
}
