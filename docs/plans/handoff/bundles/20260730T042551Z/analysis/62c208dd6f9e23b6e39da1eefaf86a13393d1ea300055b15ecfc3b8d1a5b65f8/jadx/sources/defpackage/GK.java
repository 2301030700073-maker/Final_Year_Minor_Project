package defpackage;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;

/* loaded from: classes3.dex */
public final class GK {

    /* renamed from: do, reason: not valid java name */
    public static final GK[] f1162do = m726do();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f1163do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif[] f1164do;

    /* renamed from: if, reason: not valid java name */
    public final int f1165if;

    /* renamed from: GK$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f1166do;

        /* renamed from: if, reason: not valid java name */
        public final int f1167if;

        public Cdo(int i, int i2) {
            this.f1166do = i;
            this.f1167if = i2;
        }
    }

    /* renamed from: GK$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final int f1168do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo[] f1169do;

        public Cif(int i, Cdo... cdoArr) {
            this.f1168do = i;
            this.f1169do = cdoArr;
        }
    }

    public GK(int i, Cif... cifArr) {
        this.f1163do = i;
        this.f1164do = cifArr;
        Cif cif = cifArr[0];
        int i2 = cif.f1168do;
        int i3 = 0;
        for (Cdo cdo : cif.f1169do) {
            i3 += (cdo.f1167if + i2) * cdo.f1166do;
        }
        this.f1165if = i3;
    }

    /* renamed from: do, reason: not valid java name */
    public static GK[] m726do() {
        return new GK[]{new GK(1, new Cif(7, new Cdo(1, 19)), new Cif(10, new Cdo(1, 16)), new Cif(13, new Cdo(1, 13)), new Cif(17, new Cdo(1, 9))), new GK(2, new Cif(10, new Cdo(1, 34)), new Cif(16, new Cdo(1, 28)), new Cif(22, new Cdo(1, 22)), new Cif(28, new Cdo(1, 16))), new GK(3, new Cif(15, new Cdo(1, 55)), new Cif(26, new Cdo(1, 44)), new Cif(18, new Cdo(2, 17)), new Cif(22, new Cdo(2, 13))), new GK(4, new Cif(20, new Cdo(1, 80)), new Cif(18, new Cdo(2, 32)), new Cif(26, new Cdo(2, 24)), new Cif(16, new Cdo(4, 9))), new GK(5, new Cif(26, new Cdo(1, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS)), new Cif(24, new Cdo(2, 43)), new Cif(18, new Cdo(2, 15), new Cdo(2, 16)), new Cif(22, new Cdo(2, 11), new Cdo(2, 12))), new GK(6, new Cif(18, new Cdo(2, 68)), new Cif(16, new Cdo(4, 27)), new Cif(24, new Cdo(4, 19)), new Cif(28, new Cdo(4, 15))), new GK(7, new Cif(20, new Cdo(2, 78)), new Cif(18, new Cdo(4, 31)), new Cif(18, new Cdo(2, 14), new Cdo(4, 15)), new Cif(26, new Cdo(4, 13), new Cdo(1, 14))), new GK(8, new Cif(24, new Cdo(2, 97)), new Cif(22, new Cdo(2, 38), new Cdo(2, 39)), new Cif(22, new Cdo(4, 18), new Cdo(2, 19)), new Cif(26, new Cdo(4, 14), new Cdo(2, 15))), new GK(9, new Cif(30, new Cdo(2, 116)), new Cif(22, new Cdo(3, 36), new Cdo(2, 37)), new Cif(20, new Cdo(4, 16), new Cdo(4, 17)), new Cif(24, new Cdo(4, 12), new Cdo(4, 13))), new GK(10, new Cif(18, new Cdo(2, 68), new Cdo(2, 69)), new Cif(26, new Cdo(4, 43), new Cdo(1, 44)), new Cif(24, new Cdo(6, 19), new Cdo(2, 20)), new Cif(28, new Cdo(6, 15), new Cdo(2, 16))), new GK(11, new Cif(20, new Cdo(4, 81)), new Cif(30, new Cdo(1, 50), new Cdo(4, 51)), new Cif(28, new Cdo(4, 22), new Cdo(4, 23)), new Cif(24, new Cdo(3, 12), new Cdo(8, 13))), new GK(12, new Cif(24, new Cdo(2, 92), new Cdo(2, 93)), new Cif(22, new Cdo(6, 36), new Cdo(2, 37)), new Cif(26, new Cdo(4, 20), new Cdo(6, 21)), new Cif(28, new Cdo(7, 14), new Cdo(4, 15))), new GK(13, new Cif(26, new Cdo(4, FacebookMediationAdapter.ERROR_NULL_CONTEXT)), new Cif(22, new Cdo(8, 37), new Cdo(1, 38)), new Cif(24, new Cdo(8, 20), new Cdo(4, 21)), new Cif(22, new Cdo(12, 11), new Cdo(4, 12))), new GK(14, new Cif(30, new Cdo(3, 115), new Cdo(1, 116)), new Cif(24, new Cdo(4, 40), new Cdo(5, 41)), new Cif(20, new Cdo(11, 16), new Cdo(5, 17)), new Cif(24, new Cdo(11, 12), new Cdo(5, 13))), new GK(15, new Cif(22, new Cdo(5, 87), new Cdo(1, 88)), new Cif(24, new Cdo(5, 41), new Cdo(5, 42)), new Cif(30, new Cdo(5, 24), new Cdo(7, 25)), new Cif(24, new Cdo(11, 12), new Cdo(7, 13))), new GK(16, new Cif(24, new Cdo(5, 98), new Cdo(1, 99)), new Cif(28, new Cdo(7, 45), new Cdo(3, 46)), new Cif(24, new Cdo(15, 19), new Cdo(2, 20)), new Cif(30, new Cdo(3, 15), new Cdo(13, 16))), new GK(17, new Cif(28, new Cdo(1, FacebookMediationAdapter.ERROR_NULL_CONTEXT), new Cdo(5, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS)), new Cif(28, new Cdo(10, 46), new Cdo(1, 47)), new Cif(28, new Cdo(1, 22), new Cdo(15, 23)), new Cif(28, new Cdo(2, 14), new Cdo(17, 15))), new GK(18, new Cif(30, new Cdo(5, 120), new Cdo(1, 121)), new Cif(26, new Cdo(9, 43), new Cdo(4, 44)), new Cif(28, new Cdo(17, 22), new Cdo(1, 23)), new Cif(28, new Cdo(2, 14), new Cdo(19, 15))), new GK(19, new Cif(28, new Cdo(3, 113), new Cdo(4, 114)), new Cif(26, new Cdo(3, 44), new Cdo(11, 45)), new Cif(26, new Cdo(17, 21), new Cdo(4, 22)), new Cif(26, new Cdo(9, 13), new Cdo(16, 14))), new GK(20, new Cif(28, new Cdo(3, FacebookMediationAdapter.ERROR_NULL_CONTEXT), new Cdo(5, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS)), new Cif(26, new Cdo(3, 41), new Cdo(13, 42)), new Cif(30, new Cdo(15, 24), new Cdo(5, 25)), new Cif(28, new Cdo(15, 15), new Cdo(10, 16))), new GK(21, new Cif(28, new Cdo(4, 116), new Cdo(4, 117)), new Cif(26, new Cdo(17, 42)), new Cif(28, new Cdo(17, 22), new Cdo(6, 23)), new Cif(30, new Cdo(19, 16), new Cdo(6, 17))), new GK(22, new Cif(28, new Cdo(2, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION), new Cdo(7, 112)), new Cif(28, new Cdo(17, 46)), new Cif(30, new Cdo(7, 24), new Cdo(16, 25)), new Cif(24, new Cdo(34, 13))), new GK(23, new Cif(30, new Cdo(4, 121), new Cdo(5, 122)), new Cif(28, new Cdo(4, 47), new Cdo(14, 48)), new Cif(30, new Cdo(11, 24), new Cdo(14, 25)), new Cif(30, new Cdo(16, 15), new Cdo(14, 16))), new GK(24, new Cif(30, new Cdo(6, 117), new Cdo(4, 118)), new Cif(28, new Cdo(6, 45), new Cdo(14, 46)), new Cif(30, new Cdo(11, 24), new Cdo(16, 25)), new Cif(30, new Cdo(30, 16), new Cdo(2, 17))), new GK(25, new Cif(26, new Cdo(8, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE), new Cdo(4, FacebookMediationAdapter.ERROR_NULL_CONTEXT)), new Cif(28, new Cdo(8, 47), new Cdo(13, 48)), new Cif(30, new Cdo(7, 24), new Cdo(22, 25)), new Cif(30, new Cdo(22, 15), new Cdo(13, 16))), new GK(26, new Cif(28, new Cdo(10, 114), new Cdo(2, 115)), new Cif(28, new Cdo(19, 46), new Cdo(4, 47)), new Cif(28, new Cdo(28, 22), new Cdo(6, 23)), new Cif(30, new Cdo(33, 16), new Cdo(4, 17))), new GK(27, new Cif(30, new Cdo(8, 122), new Cdo(4, 123)), new Cif(28, new Cdo(22, 45), new Cdo(3, 46)), new Cif(30, new Cdo(8, 23), new Cdo(26, 24)), new Cif(30, new Cdo(12, 15), new Cdo(28, 16))), new GK(28, new Cif(30, new Cdo(3, 117), new Cdo(10, 118)), new Cif(28, new Cdo(3, 45), new Cdo(23, 46)), new Cif(30, new Cdo(4, 24), new Cdo(31, 25)), new Cif(30, new Cdo(11, 15), new Cdo(31, 16))), new GK(29, new Cif(30, new Cdo(7, 116), new Cdo(7, 117)), new Cif(28, new Cdo(21, 45), new Cdo(7, 46)), new Cif(30, new Cdo(1, 23), new Cdo(37, 24)), new Cif(30, new Cdo(19, 15), new Cdo(26, 16))), new GK(30, new Cif(30, new Cdo(5, 115), new Cdo(10, 116)), new Cif(28, new Cdo(19, 47), new Cdo(10, 48)), new Cif(30, new Cdo(15, 24), new Cdo(25, 25)), new Cif(30, new Cdo(23, 15), new Cdo(25, 16))), new GK(31, new Cif(30, new Cdo(13, 115), new Cdo(3, 116)), new Cif(28, new Cdo(2, 46), new Cdo(29, 47)), new Cif(30, new Cdo(42, 24), new Cdo(1, 25)), new Cif(30, new Cdo(23, 15), new Cdo(28, 16))), new GK(32, new Cif(30, new Cdo(17, 115)), new Cif(28, new Cdo(10, 46), new Cdo(23, 47)), new Cif(30, new Cdo(10, 24), new Cdo(35, 25)), new Cif(30, new Cdo(19, 15), new Cdo(35, 16))), new GK(33, new Cif(30, new Cdo(17, 115), new Cdo(1, 116)), new Cif(28, new Cdo(14, 46), new Cdo(21, 47)), new Cif(30, new Cdo(29, 24), new Cdo(19, 25)), new Cif(30, new Cdo(11, 15), new Cdo(46, 16))), new GK(34, new Cif(30, new Cdo(13, 115), new Cdo(6, 116)), new Cif(28, new Cdo(14, 46), new Cdo(23, 47)), new Cif(30, new Cdo(44, 24), new Cdo(7, 25)), new Cif(30, new Cdo(59, 16), new Cdo(1, 17))), new GK(35, new Cif(30, new Cdo(12, 121), new Cdo(7, 122)), new Cif(28, new Cdo(12, 47), new Cdo(26, 48)), new Cif(30, new Cdo(39, 24), new Cdo(14, 25)), new Cif(30, new Cdo(22, 15), new Cdo(41, 16))), new GK(36, new Cif(30, new Cdo(6, 121), new Cdo(14, 122)), new Cif(28, new Cdo(6, 47), new Cdo(34, 48)), new Cif(30, new Cdo(46, 24), new Cdo(10, 25)), new Cif(30, new Cdo(2, 15), new Cdo(64, 16))), new GK(37, new Cif(30, new Cdo(17, 122), new Cdo(4, 123)), new Cif(28, new Cdo(29, 46), new Cdo(14, 47)), new Cif(30, new Cdo(49, 24), new Cdo(10, 25)), new Cif(30, new Cdo(24, 15), new Cdo(46, 16))), new GK(38, new Cif(30, new Cdo(4, 122), new Cdo(18, 123)), new Cif(28, new Cdo(13, 46), new Cdo(32, 47)), new Cif(30, new Cdo(48, 24), new Cdo(14, 25)), new Cif(30, new Cdo(42, 15), new Cdo(32, 16))), new GK(39, new Cif(30, new Cdo(20, 117), new Cdo(4, 118)), new Cif(28, new Cdo(40, 47), new Cdo(7, 48)), new Cif(30, new Cdo(43, 24), new Cdo(22, 25)), new Cif(30, new Cdo(10, 15), new Cdo(67, 16))), new GK(40, new Cif(30, new Cdo(19, 118), new Cdo(6, 119)), new Cif(28, new Cdo(18, 47), new Cdo(31, 48)), new Cif(30, new Cdo(34, 24), new Cdo(34, 25)), new Cif(30, new Cdo(20, 15), new Cdo(61, 16)))};
    }

    /* renamed from: if, reason: not valid java name */
    public static GK m727if(int i) {
        if (i <= 0 || i > 40) {
            throw new IllegalArgumentException();
        }
        return f1162do[i - 1];
    }

    public final String toString() {
        return String.valueOf(this.f1163do);
    }
}
