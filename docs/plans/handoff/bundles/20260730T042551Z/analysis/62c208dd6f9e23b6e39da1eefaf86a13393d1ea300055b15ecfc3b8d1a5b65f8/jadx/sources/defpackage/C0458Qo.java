package defpackage;

/* renamed from: Qo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0458Qo extends C0436Po {

    /* renamed from: Qo$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Integer f3045do;

        /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
        static {
            /*
                r0 = 0
                java.lang.String r1 = "android.os.Build$VERSION"
                java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L18
                java.lang.String r2 = "SDK_INT"
                java.lang.reflect.Field r1 = r1.getField(r2)     // Catch: java.lang.Throwable -> L18
                java.lang.Object r1 = r1.get(r0)     // Catch: java.lang.Throwable -> L18
                boolean r2 = r1 instanceof java.lang.Integer     // Catch: java.lang.Throwable -> L18
                if (r2 == 0) goto L19
                java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L18
                goto L1a
            L18:
            L19:
                r1 = r0
            L1a:
                if (r1 == 0) goto L28
                int r2 = r1.intValue()
                if (r2 <= 0) goto L24
                r2 = 1
                goto L25
            L24:
                r2 = 0
            L25:
                if (r2 == 0) goto L28
                r0 = r1
            L28:
                defpackage.C0458Qo.Cdo.f3045do = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0458Qo.Cdo.<clinit>():void");
        }
    }

    @Override // defpackage.Pw
    /* renamed from: if */
    public final Iy mo1815if() {
        Integer num = Cdo.f3045do;
        return num == null || num.intValue() >= 34 ? new Rw() : new C0122Bh();
    }
}
