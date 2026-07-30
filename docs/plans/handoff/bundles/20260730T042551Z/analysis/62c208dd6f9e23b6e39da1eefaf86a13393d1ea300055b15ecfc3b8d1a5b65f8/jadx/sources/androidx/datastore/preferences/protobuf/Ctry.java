package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cwhile;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import defpackage.AbstractC3370n6;
import defpackage.Creturn;
import defpackage.OJ;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* renamed from: androidx.datastore.preferences.protobuf.try, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Ctry {

    /* renamed from: do, reason: not valid java name */
    public int f6676do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f6677do;

    /* renamed from: if, reason: not valid java name */
    public final int f6679if = 100;

    /* renamed from: for, reason: not valid java name */
    public final int f6678for = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: androidx.datastore.preferences.protobuf.try$do, reason: invalid class name */
    public static final class Cdo extends Ctry {

        /* renamed from: case, reason: not valid java name */
        public int f6680case;

        /* renamed from: do, reason: not valid java name */
        public final byte[] f6681do;

        /* renamed from: else, reason: not valid java name */
        public final int f6682else;

        /* renamed from: goto, reason: not valid java name */
        public int f6683goto;

        /* renamed from: new, reason: not valid java name */
        public int f6684new;

        /* renamed from: this, reason: not valid java name */
        public int f6685this = Api.BaseClientBuilder.API_PRIORITY_OTHER;

        /* renamed from: try, reason: not valid java name */
        public int f6686try;

        public Cdo(byte[] bArr, int i, int i2, boolean z) {
            this.f6681do = bArr;
            this.f6684new = i2 + i;
            this.f6680case = i;
            this.f6682else = i;
        }

        /* renamed from: abstract, reason: not valid java name */
        public final void m4035abstract(int i) {
            if (i >= 0) {
                int i2 = this.f6684new;
                int i3 = this.f6680case;
                if (i <= i2 - i3) {
                    this.f6680case = i3 + i;
                    return;
                }
            }
            if (i >= 0) {
                throw Cwhile.m4053case();
            }
            throw Cwhile.m4057new();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: break */
        public final int mo4011break() {
            return m4036default();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: case */
        public final boolean mo4012case() {
            return m4039package() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: catch */
        public final long mo4013catch() {
            return m4037extends();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: class */
        public final float mo4014class() {
            return Float.intBitsToFloat(m4036default());
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: const */
        public final int mo4015const() {
            return m4038finally();
        }

        /* renamed from: default, reason: not valid java name */
        public final int m4036default() {
            int i = this.f6680case;
            if (this.f6684new - i < 4) {
                throw Cwhile.m4053case();
            }
            this.f6680case = i + 4;
            byte[] bArr = this.f6681do;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: do */
        public final void mo4016do(int i) {
            if (this.f6683goto != i) {
                throw new Cwhile("Protocol message end-group tag did not match expected tag.");
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: else */
        public final AbstractC3370n6.Ctry mo4017else() {
            byte[] bArr;
            int m4038finally = m4038finally();
            byte[] bArr2 = this.f6681do;
            if (m4038finally > 0) {
                int i = this.f6684new;
                int i2 = this.f6680case;
                if (m4038finally <= i - i2) {
                    AbstractC3370n6.Ctry m7550else = AbstractC3370n6.m7550else(bArr2, i2, m4038finally);
                    this.f6680case += m4038finally;
                    return m7550else;
                }
            }
            if (m4038finally == 0) {
                return AbstractC3370n6.f14461do;
            }
            if (m4038finally > 0) {
                int i3 = this.f6684new;
                int i4 = this.f6680case;
                if (m4038finally <= i3 - i4) {
                    int i5 = m4038finally + i4;
                    this.f6680case = i5;
                    bArr = Arrays.copyOfRange(bArr2, i4, i5);
                    AbstractC3370n6.Ctry ctry = AbstractC3370n6.f14461do;
                    return new AbstractC3370n6.Ctry(bArr);
                }
            }
            if (m4038finally > 0) {
                throw Cwhile.m4053case();
            }
            if (m4038finally != 0) {
                throw Cwhile.m4057new();
            }
            bArr = Cthrow.f6656do;
            AbstractC3370n6.Ctry ctry2 = AbstractC3370n6.f14461do;
            return new AbstractC3370n6.Ctry(bArr);
        }

        /* renamed from: extends, reason: not valid java name */
        public final long m4037extends() {
            int i = this.f6680case;
            if (this.f6684new - i < 8) {
                throw Cwhile.m4053case();
            }
            this.f6680case = i + 8;
            byte[] bArr = this.f6681do;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: final */
        public final long mo4018final() {
            return m4039package();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r3[r2] < 0) goto L34;
         */
        /* renamed from: finally, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int m4038finally() {
            /*
                r5 = this;
                int r0 = r5.f6680case
                int r1 = r5.f6684new
                if (r1 != r0) goto L7
                goto L6a
            L7:
                int r2 = r0 + 1
                byte[] r3 = r5.f6681do
                r0 = r3[r0]
                if (r0 < 0) goto L12
                r5.f6680case = r2
                return r0
            L12:
                int r1 = r1 - r2
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r2 + 1
                r2 = r3[r2]
                int r2 = r2 << 7
                r0 = r0 ^ r2
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r2 = r1 + 1
                r1 = r3[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r2
                goto L70
            L31:
                int r1 = r2 + 1
                r2 = r3[r2]
                int r2 = r2 << 21
                r0 = r0 ^ r2
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r2 = r1 + 1
                r1 = r3[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r2 + 1
                r2 = r3[r2]
                if (r2 >= 0) goto L70
                int r2 = r1 + 1
                r1 = r3[r1]
                if (r1 >= 0) goto L2f
                int r1 = r2 + 1
                r2 = r3[r2]
                if (r2 >= 0) goto L70
                int r2 = r1 + 1
                r1 = r3[r1]
                if (r1 >= 0) goto L2f
                int r1 = r2 + 1
                r2 = r3[r2]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.m4040private()
                int r1 = (int) r0
                return r1
            L70:
                r5.f6680case = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Ctry.Cdo.m4038finally():int");
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: for */
        public final boolean mo4019for() {
            return this.f6680case == this.f6684new;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: goto */
        public final double mo4020goto() {
            return Double.longBitsToDouble(m4037extends());
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: if */
        public final int mo4021if() {
            return this.f6680case - this.f6682else;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: import */
        public final long mo4022import() {
            long m4039package = m4039package();
            return (-(m4039package & 1)) ^ (m4039package >>> 1);
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: native */
        public final String mo4023native() {
            int m4038finally = m4038finally();
            if (m4038finally > 0) {
                int i = this.f6684new;
                int i2 = this.f6680case;
                if (m4038finally <= i - i2) {
                    String str = new String(this.f6681do, i2, m4038finally, Cthrow.f6655do);
                    this.f6680case += m4038finally;
                    return str;
                }
            }
            if (m4038finally == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (m4038finally < 0) {
                throw Cwhile.m4057new();
            }
            throw Cwhile.m4053case();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: new */
        public final void mo4024new(int i) {
            this.f6685this = i;
            int i2 = this.f6684new + this.f6686try;
            this.f6684new = i2;
            int i3 = i2 - this.f6682else;
            if (i3 <= i) {
                this.f6686try = 0;
                return;
            }
            int i4 = i3 - i;
            this.f6686try = i4;
            this.f6684new = i2 - i4;
        }

        /* renamed from: package, reason: not valid java name */
        public final long m4039package() {
            long j;
            long j2;
            long j3;
            int i;
            int i2 = this.f6680case;
            int i3 = this.f6684new;
            if (i3 != i2) {
                int i4 = i2 + 1;
                byte[] bArr = this.f6681do;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f6680case = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 >= 0) {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            j = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 >= 0) {
                                long j4 = i9;
                                int i10 = i5 + 1;
                                long j5 = (bArr[i5] << 28) ^ j4;
                                if (j5 >= 0) {
                                    j2 = j5 ^ 266354560;
                                    i5 = i10;
                                } else {
                                    int i11 = i10 + 1;
                                    long j6 = j5 ^ (bArr[i10] << 35);
                                    if (j6 < 0) {
                                        j3 = -34093383808L;
                                    } else {
                                        i7 = i11 + 1;
                                        long j7 = j6 ^ (bArr[i11] << 42);
                                        if (j7 >= 0) {
                                            j = j7 ^ 4363953127296L;
                                        } else {
                                            i11 = i7 + 1;
                                            j6 = j7 ^ (bArr[i7] << 49);
                                            if (j6 < 0) {
                                                j3 = -558586000294016L;
                                            } else {
                                                i7 = i11 + 1;
                                                j = (j6 ^ (bArr[i11] << 56)) ^ 71499008037633920L;
                                                if (j < 0) {
                                                    i11 = i7 + 1;
                                                    if (bArr[i7] >= 0) {
                                                        j2 = j;
                                                        i5 = i11;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    j2 = j3 ^ j6;
                                    i5 = i11;
                                }
                                this.f6680case = i5;
                                return j2;
                            }
                            i = i9 ^ (-2080896);
                        }
                        i5 = i7;
                        j2 = j;
                        this.f6680case = i5;
                        return j2;
                    }
                    i = i6 ^ (-128);
                    j2 = i;
                    this.f6680case = i5;
                    return j2;
                }
            }
            return m4040private();
        }

        /* renamed from: private, reason: not valid java name */
        public final long m4040private() {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                int i2 = this.f6680case;
                if (i2 == this.f6684new) {
                    throw Cwhile.m4053case();
                }
                this.f6680case = i2 + 1;
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((this.f6681do[i2] & 128) == 0) {
                    return j;
                }
            }
            throw Cwhile.m4055for();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: public */
        public final String mo4025public() {
            int m4038finally = m4038finally();
            if (m4038finally > 0) {
                int i = this.f6684new;
                int i2 = this.f6680case;
                if (m4038finally <= i - i2) {
                    String mo1666do = OJ.f2633do.mo1666do(this.f6681do, i2, m4038finally);
                    this.f6680case += m4038finally;
                    return mo1666do;
                }
            }
            if (m4038finally == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (m4038finally <= 0) {
                throw Cwhile.m4057new();
            }
            throw Cwhile.m4053case();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: return */
        public final int mo4026return() {
            if (mo4019for()) {
                this.f6683goto = 0;
                return 0;
            }
            int m4038finally = m4038finally();
            this.f6683goto = m4038finally;
            if ((m4038finally >>> 3) != 0) {
                return m4038finally;
            }
            throw new Cwhile("Protocol message contained an invalid tag (zero).");
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: static */
        public final int mo4027static() {
            return m4038finally();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: super */
        public final int mo4028super() {
            return m4036default();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: switch */
        public final long mo4029switch() {
            return m4039package();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: this */
        public final int mo4030this() {
            return m4038finally();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: throw */
        public final long mo4031throw() {
            return m4037extends();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: throws */
        public final boolean mo4032throws(int i) {
            int mo4026return;
            int i2 = i & 7;
            int i3 = 0;
            if (i2 == 0) {
                int i4 = this.f6684new - this.f6680case;
                byte[] bArr = this.f6681do;
                if (i4 >= 10) {
                    while (i3 < 10) {
                        int i5 = this.f6680case;
                        this.f6680case = i5 + 1;
                        if (bArr[i5] < 0) {
                            i3++;
                        }
                    }
                    throw Cwhile.m4055for();
                }
                while (i3 < 10) {
                    int i6 = this.f6680case;
                    if (i6 == this.f6684new) {
                        throw Cwhile.m4053case();
                    }
                    this.f6680case = i6 + 1;
                    if (bArr[i6] < 0) {
                        i3++;
                    }
                }
                throw Cwhile.m4055for();
                return true;
            }
            if (i2 == 1) {
                m4035abstract(8);
                return true;
            }
            if (i2 == 2) {
                m4035abstract(m4038finally());
                return true;
            }
            if (i2 == 3) {
                do {
                    mo4026return = mo4026return();
                    if (mo4026return == 0) {
                        break;
                    }
                } while (mo4032throws(mo4026return));
                mo4016do(((i >>> 3) << 3) | 4);
                return true;
            }
            if (i2 == 4) {
                return false;
            }
            if (i2 == 5) {
                m4035abstract(4);
                return true;
            }
            int i7 = Cwhile.f6695for;
            throw new Cwhile.Cdo();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: try */
        public final int mo4033try(int i) {
            if (i < 0) {
                throw Cwhile.m4057new();
            }
            int i2 = this.f6680case;
            int i3 = this.f6682else;
            int i4 = (i2 - i3) + i;
            int i5 = this.f6685this;
            if (i4 > i5) {
                throw Cwhile.m4053case();
            }
            this.f6685this = i4;
            int i6 = this.f6684new + this.f6686try;
            this.f6684new = i6;
            int i7 = i6 - i3;
            if (i7 > i4) {
                int i8 = i7 - i4;
                this.f6686try = i8;
                this.f6684new = i6 - i8;
            } else {
                this.f6686try = 0;
            }
            return i5;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: while */
        public final int mo4034while() {
            int m4038finally = m4038finally();
            return (-(m4038finally & 1)) ^ (m4038finally >>> 1);
        }
    }

    /* renamed from: androidx.datastore.preferences.protobuf.try$if, reason: invalid class name */
    public static final class Cif extends Ctry {

        /* renamed from: case, reason: not valid java name */
        public int f6687case;

        /* renamed from: do, reason: not valid java name */
        public final InputStream f6688do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final byte[] f6689do;

        /* renamed from: else, reason: not valid java name */
        public int f6690else;

        /* renamed from: goto, reason: not valid java name */
        public int f6691goto;

        /* renamed from: new, reason: not valid java name */
        public int f6692new;

        /* renamed from: this, reason: not valid java name */
        public int f6693this = Api.BaseClientBuilder.API_PRIORITY_OTHER;

        /* renamed from: try, reason: not valid java name */
        public int f6694try;

        public Cif(FileInputStream fileInputStream) {
            Charset charset = Cthrow.f6655do;
            this.f6688do = fileInputStream;
            this.f6689do = new byte[4096];
            this.f6692new = 0;
            this.f6687case = 0;
            this.f6691goto = 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r3[r2] < 0) goto L34;
         */
        /* renamed from: abstract, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int m4041abstract() {
            /*
                r5 = this;
                int r0 = r5.f6687case
                int r1 = r5.f6692new
                if (r1 != r0) goto L7
                goto L6a
            L7:
                int r2 = r0 + 1
                byte[] r3 = r5.f6689do
                r0 = r3[r0]
                if (r0 < 0) goto L12
                r5.f6687case = r2
                return r0
            L12:
                int r1 = r1 - r2
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r2 + 1
                r2 = r3[r2]
                int r2 = r2 << 7
                r0 = r0 ^ r2
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r2 = r1 + 1
                r1 = r3[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r2
                goto L70
            L31:
                int r1 = r2 + 1
                r2 = r3[r2]
                int r2 = r2 << 21
                r0 = r0 ^ r2
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r2 = r1 + 1
                r1 = r3[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r2 + 1
                r2 = r3[r2]
                if (r2 >= 0) goto L70
                int r2 = r1 + 1
                r1 = r3[r1]
                if (r1 >= 0) goto L2f
                int r1 = r2 + 1
                r2 = r3[r2]
                if (r2 >= 0) goto L70
                int r2 = r1 + 1
                r1 = r3[r1]
                if (r1 >= 0) goto L2f
                int r1 = r2 + 1
                r2 = r3[r2]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.m4050strictfp()
                int r1 = (int) r0
                return r1
            L70:
                r5.f6687case = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Ctry.Cif.m4041abstract():int");
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: break */
        public final int mo4011break() {
            return m4047package();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: case */
        public final boolean mo4012case() {
            return m4042continue() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: catch */
        public final long mo4013catch() {
            return m4048private();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: class */
        public final float mo4014class() {
            return Float.intBitsToFloat(m4047package());
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: const */
        public final int mo4015const() {
            return m4041abstract();
        }

        /* renamed from: continue, reason: not valid java name */
        public final long m4042continue() {
            long j;
            long j2;
            long j3;
            int i;
            int i2 = this.f6687case;
            int i3 = this.f6692new;
            if (i3 != i2) {
                int i4 = i2 + 1;
                byte[] bArr = this.f6689do;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f6687case = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 >= 0) {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            j = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 >= 0) {
                                long j4 = i9;
                                int i10 = i5 + 1;
                                long j5 = (bArr[i5] << 28) ^ j4;
                                if (j5 >= 0) {
                                    j2 = j5 ^ 266354560;
                                    i5 = i10;
                                } else {
                                    int i11 = i10 + 1;
                                    long j6 = j5 ^ (bArr[i10] << 35);
                                    if (j6 < 0) {
                                        j3 = -34093383808L;
                                    } else {
                                        i7 = i11 + 1;
                                        long j7 = j6 ^ (bArr[i11] << 42);
                                        if (j7 >= 0) {
                                            j = j7 ^ 4363953127296L;
                                        } else {
                                            i11 = i7 + 1;
                                            j6 = j7 ^ (bArr[i7] << 49);
                                            if (j6 < 0) {
                                                j3 = -558586000294016L;
                                            } else {
                                                i7 = i11 + 1;
                                                j = (j6 ^ (bArr[i11] << 56)) ^ 71499008037633920L;
                                                if (j < 0) {
                                                    i11 = i7 + 1;
                                                    if (bArr[i7] >= 0) {
                                                        j2 = j;
                                                        i5 = i11;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    j2 = j3 ^ j6;
                                    i5 = i11;
                                }
                                this.f6687case = i5;
                                return j2;
                            }
                            i = i9 ^ (-2080896);
                        }
                        i5 = i7;
                        j2 = j;
                        this.f6687case = i5;
                        return j2;
                    }
                    i = i6 ^ (-128);
                    j2 = i;
                    this.f6687case = i5;
                    return j2;
                }
            }
            return m4050strictfp();
        }

        /* renamed from: default, reason: not valid java name */
        public final byte[] m4043default(int i) {
            byte[] m4044extends = m4044extends(i);
            if (m4044extends != null) {
                return m4044extends;
            }
            int i2 = this.f6687case;
            int i3 = this.f6692new;
            int i4 = i3 - i2;
            this.f6691goto += i3;
            this.f6687case = 0;
            this.f6692new = 0;
            ArrayList m4045finally = m4045finally(i - i4);
            byte[] bArr = new byte[i];
            System.arraycopy(this.f6689do, i2, bArr, 0, i4);
            Iterator it = m4045finally.iterator();
            while (it.hasNext()) {
                byte[] bArr2 = (byte[]) it.next();
                System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
                i4 += bArr2.length;
            }
            return bArr;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: do */
        public final void mo4016do(int i) {
            if (this.f6690else != i) {
                throw new Cwhile("Protocol message end-group tag did not match expected tag.");
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: else */
        public final AbstractC3370n6.Ctry mo4017else() {
            int m4041abstract = m4041abstract();
            int i = this.f6692new;
            int i2 = this.f6687case;
            int i3 = i - i2;
            byte[] bArr = this.f6689do;
            if (m4041abstract <= i3 && m4041abstract > 0) {
                AbstractC3370n6.Ctry m7550else = AbstractC3370n6.m7550else(bArr, i2, m4041abstract);
                this.f6687case += m4041abstract;
                return m7550else;
            }
            if (m4041abstract == 0) {
                return AbstractC3370n6.f14461do;
            }
            byte[] m4044extends = m4044extends(m4041abstract);
            if (m4044extends != null) {
                return AbstractC3370n6.m7550else(m4044extends, 0, m4044extends.length);
            }
            int i4 = this.f6687case;
            int i5 = this.f6692new;
            int i6 = i5 - i4;
            this.f6691goto += i5;
            this.f6687case = 0;
            this.f6692new = 0;
            ArrayList m4045finally = m4045finally(m4041abstract - i6);
            byte[] bArr2 = new byte[m4041abstract];
            System.arraycopy(bArr, i4, bArr2, 0, i6);
            Iterator it = m4045finally.iterator();
            while (it.hasNext()) {
                byte[] bArr3 = (byte[]) it.next();
                System.arraycopy(bArr3, 0, bArr2, i6, bArr3.length);
                i6 += bArr3.length;
            }
            AbstractC3370n6.Ctry ctry = AbstractC3370n6.f14461do;
            return new AbstractC3370n6.Ctry(bArr2);
        }

        /* renamed from: extends, reason: not valid java name */
        public final byte[] m4044extends(int i) {
            if (i == 0) {
                return Cthrow.f6656do;
            }
            if (i < 0) {
                throw Cwhile.m4057new();
            }
            int i2 = this.f6691goto;
            int i3 = this.f6687case;
            int i4 = i2 + i3 + i;
            if (i4 - this.f6678for > 0) {
                throw new Cwhile("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
            }
            int i5 = this.f6693this;
            if (i4 > i5) {
                m4049protected((i5 - i2) - i3);
                throw Cwhile.m4053case();
            }
            int i6 = this.f6692new - i3;
            int i7 = i - i6;
            InputStream inputStream = this.f6688do;
            if (i7 >= 4096 && i7 > inputStream.available()) {
                return null;
            }
            byte[] bArr = new byte[i];
            System.arraycopy(this.f6689do, this.f6687case, bArr, 0, i6);
            this.f6691goto += this.f6692new;
            this.f6687case = 0;
            this.f6692new = 0;
            while (i6 < i) {
                int read = inputStream.read(bArr, i6, i - i6);
                if (read == -1) {
                    throw Cwhile.m4053case();
                }
                this.f6691goto += read;
                i6 += read;
            }
            return bArr;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: final */
        public final long mo4018final() {
            return m4042continue();
        }

        /* renamed from: finally, reason: not valid java name */
        public final ArrayList m4045finally(int i) {
            ArrayList arrayList = new ArrayList();
            while (i > 0) {
                int min = Math.min(i, 4096);
                byte[] bArr = new byte[min];
                int i2 = 0;
                while (i2 < min) {
                    int read = this.f6688do.read(bArr, i2, min - i2);
                    if (read == -1) {
                        throw Cwhile.m4053case();
                    }
                    this.f6691goto += read;
                    i2 += read;
                }
                i -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: for */
        public final boolean mo4019for() {
            return this.f6687case == this.f6692new && !m4051transient(1);
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: goto */
        public final double mo4020goto() {
            return Double.longBitsToDouble(m4048private());
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: if */
        public final int mo4021if() {
            return this.f6691goto + this.f6687case;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: import */
        public final long mo4022import() {
            long m4042continue = m4042continue();
            return (-(m4042continue & 1)) ^ (m4042continue >>> 1);
        }

        /* renamed from: interface, reason: not valid java name */
        public final void m4046interface(int i) {
            if (m4051transient(i)) {
                return;
            }
            if (i <= (this.f6678for - this.f6691goto) - this.f6687case) {
                throw Cwhile.m4053case();
            }
            throw new Cwhile("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: native */
        public final String mo4023native() {
            int m4041abstract = m4041abstract();
            byte[] bArr = this.f6689do;
            if (m4041abstract > 0) {
                int i = this.f6692new;
                int i2 = this.f6687case;
                if (m4041abstract <= i - i2) {
                    String str = new String(bArr, i2, m4041abstract, Cthrow.f6655do);
                    this.f6687case += m4041abstract;
                    return str;
                }
            }
            if (m4041abstract == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (m4041abstract > this.f6692new) {
                return new String(m4043default(m4041abstract), Cthrow.f6655do);
            }
            m4046interface(m4041abstract);
            String str2 = new String(bArr, this.f6687case, m4041abstract, Cthrow.f6655do);
            this.f6687case += m4041abstract;
            return str2;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: new */
        public final void mo4024new(int i) {
            this.f6693this = i;
            m4052volatile();
        }

        /* renamed from: package, reason: not valid java name */
        public final int m4047package() {
            int i = this.f6687case;
            if (this.f6692new - i < 4) {
                m4046interface(4);
                i = this.f6687case;
            }
            this.f6687case = i + 4;
            byte[] bArr = this.f6689do;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        /* renamed from: private, reason: not valid java name */
        public final long m4048private() {
            int i = this.f6687case;
            if (this.f6692new - i < 8) {
                m4046interface(8);
                i = this.f6687case;
            }
            this.f6687case = i + 8;
            byte[] bArr = this.f6689do;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        /* renamed from: protected, reason: not valid java name */
        public final void m4049protected(int i) {
            int i2 = this.f6692new;
            int i3 = this.f6687case;
            if (i <= i2 - i3 && i >= 0) {
                this.f6687case = i3 + i;
                return;
            }
            InputStream inputStream = this.f6688do;
            if (i < 0) {
                throw Cwhile.m4057new();
            }
            int i4 = this.f6691goto;
            int i5 = i4 + i3;
            int i6 = i5 + i;
            int i7 = this.f6693this;
            if (i6 > i7) {
                m4049protected((i7 - i4) - i3);
                throw Cwhile.m4053case();
            }
            this.f6691goto = i5;
            int i8 = i2 - i3;
            this.f6692new = 0;
            this.f6687case = 0;
            while (i8 < i) {
                long j = i - i8;
                try {
                    long skip = inputStream.skip(j);
                    if (skip < 0 || skip > j) {
                        throw new IllegalStateException(inputStream.getClass() + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                    }
                    if (skip == 0) {
                        break;
                    } else {
                        i8 += (int) skip;
                    }
                } finally {
                    this.f6691goto += i8;
                    m4052volatile();
                }
            }
            if (i8 >= i) {
                return;
            }
            int i9 = this.f6692new;
            int i10 = i9 - this.f6687case;
            this.f6687case = i9;
            m4046interface(1);
            while (true) {
                int i11 = i - i10;
                int i12 = this.f6692new;
                if (i11 <= i12) {
                    this.f6687case = i11;
                    return;
                } else {
                    i10 += i12;
                    this.f6687case = i12;
                    m4046interface(1);
                }
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: public */
        public final String mo4025public() {
            int m4041abstract = m4041abstract();
            int i = this.f6687case;
            int i2 = this.f6692new;
            int i3 = i2 - i;
            byte[] bArr = this.f6689do;
            if (m4041abstract <= i3 && m4041abstract > 0) {
                this.f6687case = i + m4041abstract;
            } else {
                if (m4041abstract == 0) {
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                i = 0;
                if (m4041abstract <= i2) {
                    m4046interface(m4041abstract);
                    this.f6687case = m4041abstract + 0;
                } else {
                    bArr = m4043default(m4041abstract);
                }
            }
            return OJ.f2633do.mo1666do(bArr, i, m4041abstract);
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: return */
        public final int mo4026return() {
            if (mo4019for()) {
                this.f6690else = 0;
                return 0;
            }
            int m4041abstract = m4041abstract();
            this.f6690else = m4041abstract;
            if ((m4041abstract >>> 3) != 0) {
                return m4041abstract;
            }
            throw new Cwhile("Protocol message contained an invalid tag (zero).");
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: static */
        public final int mo4027static() {
            return m4041abstract();
        }

        /* renamed from: strictfp, reason: not valid java name */
        public final long m4050strictfp() {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                if (this.f6687case == this.f6692new) {
                    m4046interface(1);
                }
                int i2 = this.f6687case;
                this.f6687case = i2 + 1;
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((this.f6689do[i2] & 128) == 0) {
                    return j;
                }
            }
            throw Cwhile.m4055for();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: super */
        public final int mo4028super() {
            return m4047package();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: switch */
        public final long mo4029switch() {
            return m4042continue();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: this */
        public final int mo4030this() {
            return m4041abstract();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: throw */
        public final long mo4031throw() {
            return m4048private();
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: throws */
        public final boolean mo4032throws(int i) {
            int mo4026return;
            int i2 = i & 7;
            int i3 = 0;
            if (i2 == 0) {
                int i4 = this.f6692new - this.f6687case;
                byte[] bArr = this.f6689do;
                if (i4 >= 10) {
                    while (i3 < 10) {
                        int i5 = this.f6687case;
                        this.f6687case = i5 + 1;
                        if (bArr[i5] < 0) {
                            i3++;
                        }
                    }
                    throw Cwhile.m4055for();
                }
                while (i3 < 10) {
                    if (this.f6687case == this.f6692new) {
                        m4046interface(1);
                    }
                    int i6 = this.f6687case;
                    this.f6687case = i6 + 1;
                    if (bArr[i6] < 0) {
                        i3++;
                    }
                }
                throw Cwhile.m4055for();
                return true;
            }
            if (i2 == 1) {
                m4049protected(8);
                return true;
            }
            if (i2 == 2) {
                m4049protected(m4041abstract());
                return true;
            }
            if (i2 == 3) {
                do {
                    mo4026return = mo4026return();
                    if (mo4026return == 0) {
                        break;
                    }
                } while (mo4032throws(mo4026return));
                mo4016do(((i >>> 3) << 3) | 4);
                return true;
            }
            if (i2 == 4) {
                return false;
            }
            if (i2 == 5) {
                m4049protected(4);
                return true;
            }
            int i7 = Cwhile.f6695for;
            throw new Cwhile.Cdo();
        }

        /* renamed from: transient, reason: not valid java name */
        public final boolean m4051transient(int i) {
            int i2 = this.f6687case;
            int i3 = i2 + i;
            int i4 = this.f6692new;
            if (i3 <= i4) {
                throw new IllegalStateException(Creturn.m7981if("refillBuffer() called when ", i, " bytes were already available in buffer"));
            }
            int i5 = this.f6691goto;
            int i6 = this.f6678for;
            if (i > (i6 - i5) - i2 || i5 + i2 + i > this.f6693this) {
                return false;
            }
            byte[] bArr = this.f6689do;
            if (i2 > 0) {
                if (i4 > i2) {
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                this.f6691goto += i2;
                this.f6692new -= i2;
                this.f6687case = 0;
            }
            int i7 = this.f6692new;
            int min = Math.min(bArr.length - i7, (i6 - this.f6691goto) - i7);
            InputStream inputStream = this.f6688do;
            int read = inputStream.read(bArr, i7, min);
            if (read == 0 || read < -1 || read > bArr.length) {
                throw new IllegalStateException(inputStream.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
            }
            if (read <= 0) {
                return false;
            }
            this.f6692new += read;
            m4052volatile();
            if (this.f6692new >= i) {
                return true;
            }
            return m4051transient(i);
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: try */
        public final int mo4033try(int i) {
            if (i < 0) {
                throw Cwhile.m4057new();
            }
            int i2 = this.f6691goto + this.f6687case + i;
            int i3 = this.f6693this;
            if (i2 > i3) {
                throw Cwhile.m4053case();
            }
            this.f6693this = i2;
            m4052volatile();
            return i3;
        }

        /* renamed from: volatile, reason: not valid java name */
        public final void m4052volatile() {
            int i = this.f6692new + this.f6694try;
            this.f6692new = i;
            int i2 = this.f6691goto + i;
            int i3 = this.f6693this;
            if (i2 <= i3) {
                this.f6694try = 0;
                return;
            }
            int i4 = i2 - i3;
            this.f6694try = i4;
            this.f6692new = i - i4;
        }

        @Override // androidx.datastore.preferences.protobuf.Ctry
        /* renamed from: while */
        public final int mo4034while() {
            int m4041abstract = m4041abstract();
            return (-(m4041abstract & 1)) ^ (m4041abstract >>> 1);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public abstract int mo4011break();

    /* renamed from: case, reason: not valid java name */
    public abstract boolean mo4012case();

    /* renamed from: catch, reason: not valid java name */
    public abstract long mo4013catch();

    /* renamed from: class, reason: not valid java name */
    public abstract float mo4014class();

    /* renamed from: const, reason: not valid java name */
    public abstract int mo4015const();

    /* renamed from: do, reason: not valid java name */
    public abstract void mo4016do(int i);

    /* renamed from: else, reason: not valid java name */
    public abstract AbstractC3370n6.Ctry mo4017else();

    /* renamed from: final, reason: not valid java name */
    public abstract long mo4018final();

    /* renamed from: for, reason: not valid java name */
    public abstract boolean mo4019for();

    /* renamed from: goto, reason: not valid java name */
    public abstract double mo4020goto();

    /* renamed from: if, reason: not valid java name */
    public abstract int mo4021if();

    /* renamed from: import, reason: not valid java name */
    public abstract long mo4022import();

    /* renamed from: native, reason: not valid java name */
    public abstract String mo4023native();

    /* renamed from: new, reason: not valid java name */
    public abstract void mo4024new(int i);

    /* renamed from: public, reason: not valid java name */
    public abstract String mo4025public();

    /* renamed from: return, reason: not valid java name */
    public abstract int mo4026return();

    /* renamed from: static, reason: not valid java name */
    public abstract int mo4027static();

    /* renamed from: super, reason: not valid java name */
    public abstract int mo4028super();

    /* renamed from: switch, reason: not valid java name */
    public abstract long mo4029switch();

    /* renamed from: this, reason: not valid java name */
    public abstract int mo4030this();

    /* renamed from: throw, reason: not valid java name */
    public abstract long mo4031throw();

    /* renamed from: throws, reason: not valid java name */
    public abstract boolean mo4032throws(int i);

    /* renamed from: try, reason: not valid java name */
    public abstract int mo4033try(int i);

    /* renamed from: while, reason: not valid java name */
    public abstract int mo4034while();
}
