package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cdo;
import androidx.datastore.preferences.protobuf.Cdo.AbstractC0034do;
import androidx.datastore.preferences.protobuf.Cfinally;
import defpackage.AbstractC3370n6;
import defpackage.AbstractC3666s8;
import defpackage.BB;
import java.io.IOException;
import java.util.logging.Logger;

/* renamed from: androidx.datastore.preferences.protobuf.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo<MessageType extends Cdo<MessageType, BuilderType>, BuilderType extends AbstractC0034do<MessageType, BuilderType>> implements Cfinally {
    protected int memoizedHashCode = 0;

    /* renamed from: androidx.datastore.preferences.protobuf.do$do, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractC0034do<MessageType extends Cdo<MessageType, BuilderType>, BuilderType extends AbstractC0034do<MessageType, BuilderType>> implements Cfinally.Cdo {
    }

    /* renamed from: else, reason: not valid java name */
    int mo3843else() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m3844goto(BB bb) {
        int mo3843else = mo3843else();
        if (mo3843else != -1) {
            return mo3843else;
        }
        int mo153new = bb.mo153new(this);
        mo3846this(mo153new);
        return mo153new;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfinally
    /* renamed from: if, reason: not valid java name */
    public final AbstractC3370n6.Ctry mo3845if() {
        try {
            Cfinal cfinal = (Cfinal) this;
            int mo3871do = cfinal.mo3871do();
            AbstractC3370n6.Ctry ctry = AbstractC3370n6.f14461do;
            byte[] bArr = new byte[mo3871do];
            Logger logger = AbstractC3666s8.f15399do;
            AbstractC3666s8.Cif cif = new AbstractC3666s8.Cif(bArr, mo3871do);
            cfinal.mo3870case(cif);
            if (cif.f15405do - cif.f15407if == 0) {
                return new AbstractC3370n6.Ctry(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a ByteString threw an IOException (should never happen).", e);
        }
    }

    /* renamed from: this, reason: not valid java name */
    void mo3846this(int i) {
        throw new UnsupportedOperationException();
    }
}
