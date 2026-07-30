package b.p;

import android.os.Parcel;
import android.util.SparseIntArray;
import b.d.n;

/* loaded from: classes.dex */
public class c extends b {

    /* renamed from: d, reason: collision with root package name */
    public final SparseIntArray f1240d;
    public final Parcel e;
    public final int f;
    public final int g;
    public final String h;
    public int i;
    public int j;
    public int k;

    public c(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new n(), new n(), new n());
    }

    @Override // b.p.b
    public void a() {
        int i = this.i;
        if (i >= 0) {
            int i2 = this.f1240d.get(i);
            int dataPosition = this.e.dataPosition();
            this.e.setDataPosition(i2);
            this.e.writeInt(dataPosition - i2);
            this.e.setDataPosition(dataPosition);
        }
    }

    @Override // b.p.b
    public b b() {
        Parcel parcel = this.e;
        int dataPosition = parcel.dataPosition();
        int i = this.j;
        if (i == this.f) {
            i = this.g;
        }
        return new c(parcel, dataPosition, i, this.h + "  ", this.f1237a, this.f1238b, this.f1239c);
    }

    @Override // b.p.b
    public boolean h(int i) {
        while (this.j < this.g) {
            int i2 = this.k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.e.setDataPosition(this.j);
            int readInt = this.e.readInt();
            this.k = this.e.readInt();
            this.j += readInt;
        }
        return this.k == i;
    }

    @Override // b.p.b
    public void l(int i) {
        a();
        this.i = i;
        this.f1240d.put(i, this.e.dataPosition());
        this.e.writeInt(0);
        this.e.writeInt(i);
    }

    public c(Parcel parcel, int i, int i2, String str, n nVar, n nVar2, n nVar3) {
        super(nVar, nVar2, nVar3);
        this.f1240d = new SparseIntArray();
        this.i = -1;
        this.j = 0;
        this.k = -1;
        this.e = parcel;
        this.f = i;
        this.g = i2;
        this.j = i;
        this.h = str;
    }
}
