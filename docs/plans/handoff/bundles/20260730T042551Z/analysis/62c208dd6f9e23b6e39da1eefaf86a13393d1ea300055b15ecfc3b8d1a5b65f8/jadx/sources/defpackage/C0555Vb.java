package defpackage;

import android.content.Context;
import defpackage.AbstractC0533Ub;
import defpackage.L3;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* renamed from: Vb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0555Vb {

    /* renamed from: do, reason: not valid java name */
    public static final String f4145do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final HashMap f4146do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SE f4147do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final X1 f4148do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f4149do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3200kD f4150do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3232kn f4151do;

    static {
        HashMap hashMap = new HashMap();
        f4146do = hashMap;
        hashMap.put("armeabi", 5);
        hashMap.put("armeabi-v7a", 6);
        hashMap.put("arm64-v8a", 9);
        hashMap.put("x86", 0);
        hashMap.put("x86_64", 1);
        f4145do = String.format(Locale.US, "Crashlytics Android SDK/%s", "19.2.1");
    }

    public C0555Vb(Context context, C3232kn c3232kn, X1 x1, C2835gt c2835gt, C2856hD c2856hD) {
        this.f4149do = context;
        this.f4151do = c3232kn;
        this.f4148do = x1;
        this.f4147do = c2835gt;
        this.f4150do = c2856hD;
    }

    /* renamed from: for, reason: not valid java name */
    public static I3 m2654for(C3930we c3930we, int i) {
        int i2;
        String str = (String) c3930we.f16375if;
        String str2 = (String) c3930we.f16373do;
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) c3930we.f16374for;
        int i3 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        C3930we c3930we2 = (C3930we) c3930we.f16376new;
        if (i >= 8) {
            C3930we c3930we3 = c3930we2;
            while (c3930we3 != null) {
                c3930we3 = (C3930we) c3930we3.f16376new;
                i3++;
            }
            i2 = i3;
        } else {
            i2 = 0;
        }
        if (str == null) {
            throw new NullPointerException("Null type");
        }
        List m2655new = m2655new(stackTraceElementArr, 4);
        if (m2655new == null) {
            throw new NullPointerException("Null frames");
        }
        byte b = (byte) (0 | 1);
        I3 i32 = null;
        if (c3930we2 != null && i2 == 0) {
            i32 = m2654for(c3930we2, i + 1);
        }
        if (b == 1) {
            return new I3(str, str2, m2655new, i32, i2);
        }
        StringBuilder sb = new StringBuilder();
        if ((1 & b) == 0) {
            sb.append(" overflowCount");
        }
        throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
    }

    /* renamed from: new, reason: not valid java name */
    public static List m2655new(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            L3.Cdo cdo = new L3.Cdo();
            cdo.f1917do = i;
            cdo.f1916do = (byte) (cdo.f1916do | 4);
            long j = 0;
            long max = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
            String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            String fileName = stackTraceElement.getFileName();
            if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
                j = stackTraceElement.getLineNumber();
            }
            cdo.f1918do = max;
            byte b = (byte) (cdo.f1916do | 1);
            cdo.f1916do = b;
            if (str == null) {
                throw new NullPointerException("Null symbol");
            }
            cdo.f1919do = str;
            cdo.f1921if = fileName;
            cdo.f1920if = j;
            cdo.f1916do = (byte) (b | 2);
            arrayList.add(cdo.m1263do());
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    /* renamed from: do, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do> m2656do() {
        byte b = (byte) (((byte) (0 | 1)) | 2);
        X1 x1 = this.f4148do;
        String str = x1.f4434new;
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        String str2 = x1.f4433if;
        if (b == 3) {
            return Collections.singletonList(new H3(0L, 0L, str, str2));
        }
        StringBuilder sb = new StringBuilder();
        if ((b & 1) == 0) {
            sb.append(" baseAddress");
        }
        if ((b & 2) == 0) {
            sb.append(" size");
        }
        throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009f  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.N3 m2657if(int r18) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0555Vb.m2657if(int):N3");
    }
}
