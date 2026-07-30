package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class IK extends HK {

    /* renamed from: do, reason: not valid java name */
    public final int f1487do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Parcel f1488do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SparseIntArray f1489do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1490do;

    /* renamed from: for, reason: not valid java name */
    public int f1491for;

    /* renamed from: if, reason: not valid java name */
    public final int f1492if;

    /* renamed from: new, reason: not valid java name */
    public int f1493new;

    /* renamed from: try, reason: not valid java name */
    public int f1494try;

    public IK(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new F2(), new F2(), new F2());
    }

    @Override // defpackage.HK
    /* renamed from: case */
    public final byte[] mo831case() {
        Parcel parcel = this.f1488do;
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        parcel.readByteArray(bArr);
        return bArr;
    }

    @Override // defpackage.HK
    /* renamed from: catch */
    public final <T extends Parcelable> T mo832catch() {
        return (T) this.f1488do.readParcelable(IK.class.getClassLoader());
    }

    @Override // defpackage.HK
    /* renamed from: class */
    public final String mo833class() {
        return this.f1488do.readString();
    }

    @Override // defpackage.HK
    /* renamed from: do */
    public final IK mo835do() {
        Parcel parcel = this.f1488do;
        int dataPosition = parcel.dataPosition();
        int i = this.f1493new;
        if (i == this.f1487do) {
            i = this.f1492if;
        }
        return new IK(parcel, dataPosition, i, Creturn.m7984try(new StringBuilder(), this.f1490do, "  "), ((HK) this).f1340do, super.f1342if, super.f1341for);
    }

    @Override // defpackage.HK
    /* renamed from: else */
    public final CharSequence mo836else() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f1488do);
    }

    @Override // defpackage.HK
    /* renamed from: final */
    public final void mo837final(int i) {
        m924switch();
        this.f1491for = i;
        this.f1489do.put(i, this.f1488do.dataPosition());
        mo841import(0);
        mo841import(i);
    }

    @Override // defpackage.HK
    /* renamed from: goto */
    public final boolean mo839goto(int i) {
        while (this.f1493new < this.f1492if) {
            int i2 = this.f1494try;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            int i3 = this.f1493new;
            Parcel parcel = this.f1488do;
            parcel.setDataPosition(i3);
            int readInt = parcel.readInt();
            this.f1494try = parcel.readInt();
            this.f1493new += readInt;
        }
        return this.f1494try == i;
    }

    @Override // defpackage.HK
    /* renamed from: import */
    public final void mo841import(int i) {
        this.f1488do.writeInt(i);
    }

    @Override // defpackage.HK
    /* renamed from: public */
    public final void mo844public(Parcelable parcelable) {
        this.f1488do.writeParcelable(parcelable, 0);
    }

    @Override // defpackage.HK
    /* renamed from: return */
    public final void mo845return(String str) {
        this.f1488do.writeString(str);
    }

    @Override // defpackage.HK
    /* renamed from: super */
    public final void mo847super(boolean z) {
        this.f1488do.writeInt(z ? 1 : 0);
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m924switch() {
        int i = this.f1491for;
        if (i >= 0) {
            int i2 = this.f1489do.get(i);
            Parcel parcel = this.f1488do;
            int dataPosition = parcel.dataPosition();
            parcel.setDataPosition(i2);
            parcel.writeInt(dataPosition - i2);
            parcel.setDataPosition(dataPosition);
        }
    }

    @Override // defpackage.HK
    /* renamed from: this */
    public final int mo848this() {
        return this.f1488do.readInt();
    }

    @Override // defpackage.HK
    /* renamed from: throw */
    public final void mo849throw(byte[] bArr) {
        Parcel parcel = this.f1488do;
        if (bArr == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
    }

    @Override // defpackage.HK
    /* renamed from: try */
    public final boolean mo850try() {
        return this.f1488do.readInt() != 0;
    }

    @Override // defpackage.HK
    /* renamed from: while */
    public final void mo851while(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f1488do, 0);
    }

    public IK(Parcel parcel, int i, int i2, String str, F2<String, Method> f2, F2<String, Method> f22, F2<String, Class> f23) {
        super(f2, f22, f23);
        this.f1489do = new SparseIntArray();
        this.f1491for = -1;
        this.f1494try = -1;
        this.f1488do = parcel;
        this.f1487do = i;
        this.f1492if = i2;
        this.f1493new = i;
        this.f1490do = str;
    }
}
