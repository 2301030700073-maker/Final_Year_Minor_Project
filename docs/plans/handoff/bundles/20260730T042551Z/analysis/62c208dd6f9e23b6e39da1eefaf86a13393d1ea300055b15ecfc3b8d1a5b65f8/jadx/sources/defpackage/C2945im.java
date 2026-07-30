package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import defpackage.C0259Hm;
import defpackage.C3938wm;
import j$.util.DesugarCollections;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.logging.Logger;

/* renamed from: im, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2945im {

    /* renamed from: do, reason: not valid java name */
    public static final Map<C3488p6, Integer> f13543do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0565Vl[] f13544do;

    /* renamed from: im$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Uy f13546do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList f13547do = new ArrayList();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0565Vl[] f13548do = new C0565Vl[8];

        /* renamed from: for, reason: not valid java name */
        public int f13549for = 7;

        /* renamed from: new, reason: not valid java name */
        public int f13551new = 0;

        /* renamed from: try, reason: not valid java name */
        public int f13552try = 0;

        /* renamed from: do, reason: not valid java name */
        public final int f13545do = 4096;

        /* renamed from: if, reason: not valid java name */
        public int f13550if = 4096;

        public Cdo(C3938wm.Cdo cdo) {
            Logger logger = C0114Av.f168do;
            this.f13546do = new Uy(cdo);
        }

        /* renamed from: do, reason: not valid java name */
        public final int m6922do(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f13548do.length;
                while (true) {
                    length--;
                    i2 = this.f13549for;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    int i4 = this.f13548do[length].f4185do;
                    i -= i4;
                    this.f13552try -= i4;
                    this.f13551new--;
                    i3++;
                }
                C0565Vl[] c0565VlArr = this.f13548do;
                System.arraycopy(c0565VlArr, i2 + 1, c0565VlArr, i2 + 1 + i3, this.f13551new);
                this.f13549for += i3;
            }
            return i3;
        }

        /* renamed from: for, reason: not valid java name */
        public final void m6923for(C0565Vl c0565Vl) {
            this.f13547do.add(c0565Vl);
            int i = this.f13550if;
            int i2 = c0565Vl.f4185do;
            if (i2 > i) {
                Arrays.fill(this.f13548do, (Object) null);
                this.f13549for = this.f13548do.length - 1;
                this.f13551new = 0;
                this.f13552try = 0;
                return;
            }
            m6922do((this.f13552try + i2) - i);
            int i3 = this.f13551new + 1;
            C0565Vl[] c0565VlArr = this.f13548do;
            if (i3 > c0565VlArr.length) {
                C0565Vl[] c0565VlArr2 = new C0565Vl[c0565VlArr.length * 2];
                System.arraycopy(c0565VlArr, 0, c0565VlArr2, c0565VlArr.length, c0565VlArr.length);
                this.f13549for = this.f13548do.length - 1;
                this.f13548do = c0565VlArr2;
            }
            int i4 = this.f13549for;
            this.f13549for = i4 - 1;
            this.f13548do[i4] = c0565Vl;
            this.f13551new++;
            this.f13552try += i2;
        }

        /* renamed from: if, reason: not valid java name */
        public final C3488p6 m6924if(int i) {
            if (i >= 0 && i <= C2945im.f13544do.length - 1) {
                return C2945im.f13544do[i].f4186do;
            }
            int length = this.f13549for + 1 + (i - C2945im.f13544do.length);
            if (length >= 0) {
                C0565Vl[] c0565VlArr = this.f13548do;
                if (length < c0565VlArr.length) {
                    return c0565VlArr[length].f4186do;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        /* renamed from: new, reason: not valid java name */
        public final C3488p6 m6925new() {
            int i;
            Uy uy = this.f13546do;
            int readByte = uy.readByte() & 255;
            boolean z = (readByte & 128) == 128;
            int m6926try = m6926try(readByte, ModuleDescriptor.MODULE_VERSION);
            if (!z) {
                return uy.g(m6926try);
            }
            C0259Hm c0259Hm = C0259Hm.f1384do;
            long j = m6926try;
            uy.mo2326catch(j);
            byte[] m2332goto = uy.f4012do.m2332goto(j);
            c0259Hm.getClass();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            C0259Hm.Cdo cdo = c0259Hm.f1387do;
            C0259Hm.Cdo cdo2 = cdo;
            int i2 = 0;
            int i3 = 0;
            for (byte b : m2332goto) {
                i2 = (i2 << 8) | (b & 255);
                i3 += 8;
                while (i3 >= 8) {
                    int i4 = i3 - 8;
                    cdo2 = cdo2.f1389do[(i2 >>> i4) & 255];
                    if (cdo2.f1389do == null) {
                        byteArrayOutputStream.write(cdo2.f1388do);
                        i3 -= cdo2.f1390if;
                        cdo2 = cdo;
                    } else {
                        i3 = i4;
                    }
                }
            }
            while (i3 > 0) {
                C0259Hm.Cdo cdo3 = cdo2.f1389do[(i2 << (8 - i3)) & 255];
                if (cdo3.f1389do != null || (i = cdo3.f1390if) > i3) {
                    break;
                }
                byteArrayOutputStream.write(cdo3.f1388do);
                i3 -= i;
                cdo2 = cdo;
            }
            return C3488p6.m7785super(byteArrayOutputStream.toByteArray());
        }

        /* renamed from: try, reason: not valid java name */
        public final int m6926try(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int readByte = this.f13546do.readByte() & 255;
                if ((readByte & 128) == 0) {
                    return i2 + (readByte << i4);
                }
                i2 += (readByte & ModuleDescriptor.MODULE_VERSION) << i4;
                i4 += 7;
            }
        }
    }

    /* renamed from: im$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final U5 f13554do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f13555do;

        /* renamed from: do, reason: not valid java name */
        public int f13553do = Api.BaseClientBuilder.API_PRIORITY_OTHER;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0565Vl[] f13556do = new C0565Vl[8];

        /* renamed from: for, reason: not valid java name */
        public int f13557for = 7;

        /* renamed from: new, reason: not valid java name */
        public int f13559new = 0;

        /* renamed from: try, reason: not valid java name */
        public int f13560try = 0;

        /* renamed from: if, reason: not valid java name */
        public int f13558if = 4096;

        public Cif(U5 u5) {
            this.f13554do = u5;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m6927do(int i) {
            int i2;
            if (i > 0) {
                int length = this.f13556do.length - 1;
                int i3 = 0;
                while (true) {
                    i2 = this.f13557for;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    int i4 = this.f13556do[length].f4185do;
                    i -= i4;
                    this.f13560try -= i4;
                    this.f13559new--;
                    i3++;
                    length--;
                }
                C0565Vl[] c0565VlArr = this.f13556do;
                int i5 = i2 + 1;
                System.arraycopy(c0565VlArr, i5, c0565VlArr, i5 + i3, this.f13559new);
                C0565Vl[] c0565VlArr2 = this.f13556do;
                int i6 = this.f13557for + 1;
                Arrays.fill(c0565VlArr2, i6, i6 + i3, (Object) null);
                this.f13557for += i3;
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final void m6928for(C3488p6 c3488p6) {
            C0259Hm.f1384do.getClass();
            long j = 0;
            long j2 = 0;
            for (int i = 0; i < c3488p6.mo2897import(); i++) {
                j2 += C0259Hm.f1385do[c3488p6.mo2893break(i) & 255];
            }
            int i2 = (int) ((j2 + 7) >> 3);
            int mo2897import = c3488p6.mo2897import();
            U5 u5 = this.f13554do;
            if (i2 >= mo2897import) {
                m6931try(c3488p6.mo2897import(), ModuleDescriptor.MODULE_VERSION, 0);
                u5.getClass();
                c3488p6.mo2901static(u5);
                return;
            }
            U5 u52 = new U5();
            C0259Hm.f1384do.getClass();
            int i3 = 0;
            for (int i4 = 0; i4 < c3488p6.mo2897import(); i4++) {
                int mo2893break = c3488p6.mo2893break(i4) & 255;
                int i5 = C0259Hm.f1386do[mo2893break];
                byte b = C0259Hm.f1385do[mo2893break];
                j = (j << b) | i5;
                i3 += b;
                while (i3 >= 8) {
                    i3 -= 8;
                    u52.m2338return((int) (j >> i3));
                }
            }
            if (i3 > 0) {
                u52.m2338return((int) ((j << (8 - i3)) | (255 >>> i3)));
            }
            try {
                C3488p6 c3488p62 = new C3488p6(u52.m2332goto(u52.f3826do));
                m6931try(c3488p62.f14882do.length, ModuleDescriptor.MODULE_VERSION, 128);
                u5.getClass();
                c3488p62.mo2901static(u5);
            } catch (EOFException e) {
                throw new AssertionError(e);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m6929if(C0565Vl c0565Vl) {
            int i = this.f13558if;
            int i2 = c0565Vl.f4185do;
            if (i2 > i) {
                Arrays.fill(this.f13556do, (Object) null);
                this.f13557for = this.f13556do.length - 1;
                this.f13559new = 0;
                this.f13560try = 0;
                return;
            }
            m6927do((this.f13560try + i2) - i);
            int i3 = this.f13559new + 1;
            C0565Vl[] c0565VlArr = this.f13556do;
            if (i3 > c0565VlArr.length) {
                C0565Vl[] c0565VlArr2 = new C0565Vl[c0565VlArr.length * 2];
                System.arraycopy(c0565VlArr, 0, c0565VlArr2, c0565VlArr.length, c0565VlArr.length);
                this.f13557for = this.f13556do.length - 1;
                this.f13556do = c0565VlArr2;
            }
            int i4 = this.f13557for;
            this.f13557for = i4 - 1;
            this.f13556do[i4] = c0565Vl;
            this.f13559new++;
            this.f13560try += i2;
        }

        /* renamed from: new, reason: not valid java name */
        public final void m6930new(ArrayList arrayList) {
            int i;
            int i2;
            if (this.f13555do) {
                int i3 = this.f13553do;
                if (i3 < this.f13558if) {
                    m6931try(i3, 31, 32);
                }
                this.f13555do = false;
                this.f13553do = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                m6931try(this.f13558if, 31, 32);
            }
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                C0565Vl c0565Vl = (C0565Vl) arrayList.get(i4);
                C3488p6 mo2899public = c0565Vl.f4186do.mo2899public();
                Integer num = C2945im.f13543do.get(mo2899public);
                C3488p6 c3488p6 = c0565Vl.f4187if;
                if (num != null) {
                    i = num.intValue() + 1;
                    if (i > 1 && i < 8) {
                        C0565Vl[] c0565VlArr = C2945im.f13544do;
                        if (SJ.m2131catch(c0565VlArr[i - 1].f4187if, c3488p6)) {
                            i2 = i;
                        } else if (SJ.m2131catch(c0565VlArr[i].f4187if, c3488p6)) {
                            i2 = i;
                            i++;
                        }
                    }
                    i2 = i;
                    i = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                if (i == -1) {
                    int i5 = this.f13557for + 1;
                    int length = this.f13556do.length;
                    while (true) {
                        if (i5 >= length) {
                            break;
                        }
                        if (SJ.m2131catch(this.f13556do[i5].f4186do, mo2899public)) {
                            if (SJ.m2131catch(this.f13556do[i5].f4187if, c3488p6)) {
                                i = C2945im.f13544do.length + (i5 - this.f13557for);
                                break;
                            } else if (i2 == -1) {
                                i2 = (i5 - this.f13557for) + C2945im.f13544do.length;
                            }
                        }
                        i5++;
                    }
                }
                if (i != -1) {
                    m6931try(i, ModuleDescriptor.MODULE_VERSION, 128);
                } else if (i2 == -1) {
                    this.f13554do.m2338return(64);
                    m6928for(mo2899public);
                    m6928for(c3488p6);
                    m6929if(c0565Vl);
                } else {
                    C3488p6 c3488p62 = C0565Vl.f4181for;
                    mo2899public.getClass();
                    if (!mo2899public.mo2905while(c3488p62, c3488p62.f14882do.length) || C0565Vl.f4182goto.equals(mo2899public)) {
                        m6931try(i2, 63, 64);
                        m6928for(c3488p6);
                        m6929if(c0565Vl);
                    } else {
                        m6931try(i2, 15, 0);
                        m6928for(c3488p6);
                    }
                }
            }
        }

        /* renamed from: try, reason: not valid java name */
        public final void m6931try(int i, int i2, int i3) {
            U5 u5 = this.f13554do;
            if (i < i2) {
                u5.m2338return(i | i3);
                return;
            }
            u5.m2338return(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                u5.m2338return(128 | (i4 & ModuleDescriptor.MODULE_VERSION));
                i4 >>>= 7;
            }
            u5.m2338return(i4);
        }
    }

    static {
        C0565Vl c0565Vl = new C0565Vl(C0565Vl.f4182goto, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        C3488p6 c3488p6 = C0565Vl.f4184try;
        C3488p6 c3488p62 = C0565Vl.f4179case;
        C3488p6 c3488p63 = C0565Vl.f4180else;
        C3488p6 c3488p64 = C0565Vl.f4183new;
        C0565Vl[] c0565VlArr = {c0565Vl, new C0565Vl(c3488p6, "GET"), new C0565Vl(c3488p6, "POST"), new C0565Vl(c3488p62, "/"), new C0565Vl(c3488p62, "/index.html"), new C0565Vl(c3488p63, "http"), new C0565Vl(c3488p63, "https"), new C0565Vl(c3488p64, "200"), new C0565Vl(c3488p64, "204"), new C0565Vl(c3488p64, "206"), new C0565Vl(c3488p64, "304"), new C0565Vl(c3488p64, "400"), new C0565Vl(c3488p64, "404"), new C0565Vl(c3488p64, "500"), new C0565Vl("accept-charset", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("accept-encoding", "gzip, deflate"), new C0565Vl("accept-language", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("accept-ranges", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("accept", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("access-control-allow-origin", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("age", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("allow", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("authorization", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("cache-control", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("content-disposition", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("content-encoding", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("content-language", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("content-length", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("content-location", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("content-range", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("content-type", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("cookie", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("date", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("etag", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("expect", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("expires", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("from", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("host", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("if-match", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("if-modified-since", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("if-none-match", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("if-range", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("if-unmodified-since", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("last-modified", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("link", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("location", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("max-forwards", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("proxy-authenticate", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("proxy-authorization", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("range", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("referer", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("refresh", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("retry-after", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("server", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("set-cookie", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("strict-transport-security", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("transfer-encoding", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("user-agent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("vary", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("via", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new C0565Vl("www-authenticate", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)};
        f13544do = c0565VlArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(c0565VlArr.length);
        for (int i = 0; i < c0565VlArr.length; i++) {
            if (!linkedHashMap.containsKey(c0565VlArr[i].f4186do)) {
                linkedHashMap.put(c0565VlArr[i].f4186do, Integer.valueOf(i));
            }
        }
        f13543do = DesugarCollections.unmodifiableMap(linkedHashMap);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m6921do(C3488p6 c3488p6) {
        int mo2897import = c3488p6.mo2897import();
        for (int i = 0; i < mo2897import; i++) {
            byte mo2893break = c3488p6.mo2893break(i);
            if (mo2893break >= 65 && mo2893break <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + c3488p6.mo2900return());
            }
        }
    }
}
