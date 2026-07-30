package defpackage;

import androidx.datastore.preferences.protobuf.Cfinal;
import androidx.datastore.preferences.protobuf.Cfinally;

/* loaded from: classes.dex */
public final class Qy implements InterfaceC0440Ps {

    /* renamed from: do, reason: not valid java name */
    public final int f3086do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfinally f3087do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f3088do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object[] f3089do;

    public Qy(Cfinal cfinal, String str, Object[] objArr) {
        this.f3087do = cfinal;
        this.f3088do = str;
        this.f3089do = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f3086do = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char charAt2 = str.charAt(i2);
            if (charAt2 < 55296) {
                this.f3086do = i | (charAt2 << i3);
                return;
            } else {
                i |= (charAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            }
        }
    }

    @Override // defpackage.InterfaceC0440Ps
    /* renamed from: do */
    public final boolean mo716do() {
        return (this.f3086do & 2) == 2;
    }

    @Override // defpackage.InterfaceC0440Ps
    /* renamed from: for */
    public final Cfinally mo717for() {
        return this.f3087do;
    }

    @Override // defpackage.InterfaceC0440Ps
    /* renamed from: if */
    public final int mo718if() {
        return (this.f3086do & 1) == 1 ? 1 : 2;
    }

    /* renamed from: new, reason: not valid java name */
    public final Object[] m2004new() {
        return this.f3089do;
    }

    /* renamed from: try, reason: not valid java name */
    public final String m2005try() {
        return this.f3088do;
    }
}
