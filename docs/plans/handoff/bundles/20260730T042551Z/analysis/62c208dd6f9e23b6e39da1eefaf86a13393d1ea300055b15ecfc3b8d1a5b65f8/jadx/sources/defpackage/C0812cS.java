package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.C3628rT;
import java.math.BigInteger;
import java.util.List;
import java.util.Locale;

/* renamed from: cS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0812cS extends AbstractC3863vS {

    /* renamed from: case, reason: not valid java name */
    public String f8536case;

    /* renamed from: do, reason: not valid java name */
    public int f8537do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f8538do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f8539do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public List<String> f8540do;

    /* renamed from: else, reason: not valid java name */
    public String f8541else;

    /* renamed from: for, reason: not valid java name */
    public long f8542for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public String f8543for;

    /* renamed from: goto, reason: not valid java name */
    public String f8544goto;

    /* renamed from: if, reason: not valid java name */
    public int f8545if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f8546if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f8547if;

    /* renamed from: new, reason: not valid java name */
    public String f8548new;

    /* renamed from: try, reason: not valid java name */
    public String f8549try;

    public C0812cS(TS ts, long j) {
        super(ts);
        this.f8542for = 0L;
        this.f8544goto = null;
        this.f8546if = j;
    }

    @Override // defpackage.AbstractC3863vS
    /* renamed from: public */
    public final boolean mo1327public() {
        return true;
    }

    /* renamed from: return, reason: not valid java name */
    public final String m4907return() {
        m8474import();
        Preconditions.checkNotNull(this.f8539do);
        return this.f8539do;
    }

    /* renamed from: static, reason: not valid java name */
    public final String m4908static() {
        mo1960catch();
        m8474import();
        Preconditions.checkNotNull(this.f8549try);
        return this.f8549try;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m4909switch() {
        String format;
        mo1960catch();
        if (m7574this().m8718default().m7957break(C3628rT.Cdo.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            m7571break().O().nextBytes(bArr);
            format = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            mo2249case().f13720goto.m7369if("Analytics Storage consent is not granted");
            format = null;
        }
        C3156jS mo2249case = mo2249case();
        Object[] objArr = new Object[1];
        objArr[0] = format == null ? "null" : "not null";
        mo2249case.f13720goto.m7369if(String.format("Resetting session stitching token to %s", objArr));
        this.f8541else = format;
        this.f8542for = mo2257new().currentTimeMillis();
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0185 A[Catch: IllegalStateException -> 0x01cd, TryCatch #6 {IllegalStateException -> 0x01cd, blocks: (B:20:0x014b, B:23:0x0168, B:89:0x016f, B:26:0x0175, B:29:0x017d, B:31:0x0185, B:34:0x019f, B:39:0x01a8, B:37:0x01ae, B:42:0x019b, B:44:0x01b2, B:46:0x01c4, B:47:0x01c9, B:49:0x01c7, B:92:0x0164), top: B:19:0x014b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01b2 A[Catch: IllegalStateException -> 0x01cd, TryCatch #6 {IllegalStateException -> 0x01cd, blocks: (B:20:0x014b, B:23:0x0168, B:89:0x016f, B:26:0x0175, B:29:0x017d, B:31:0x0185, B:34:0x019f, B:39:0x01a8, B:37:0x01ae, B:42:0x019b, B:44:0x01b2, B:46:0x01c4, B:47:0x01c9, B:49:0x01c7, B:92:0x0164), top: B:19:0x014b }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0210 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x016f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0164 A[Catch: IllegalStateException -> 0x01cd, TryCatch #6 {IllegalStateException -> 0x01cd, blocks: (B:20:0x014b, B:23:0x0168, B:89:0x016f, B:26:0x0175, B:29:0x017d, B:31:0x0185, B:34:0x019f, B:39:0x01a8, B:37:0x01ae, B:42:0x019b, B:44:0x01b2, B:46:0x01c4, B:47:0x01c9, B:49:0x01c7, B:92:0x0164), top: B:19:0x014b }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00e1  */
    /* renamed from: throws, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4910throws() {
        /*
            Method dump skipped, instructions count: 656
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0812cS.m4910throws():void");
    }
}
