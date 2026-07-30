package defpackage;

/* renamed from: Xq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0614Xq {

    /* renamed from: do, reason: not valid java name */
    public static AbstractC0614Xq f4612do;

    /* renamed from: Xq$do, reason: invalid class name */
    public static class Cdo extends AbstractC0614Xq {

        /* renamed from: do, reason: not valid java name */
        public final int f4613do;

        public Cdo(int i) {
            this.f4613do = i;
        }

        @Override // defpackage.AbstractC0614Xq
        /* renamed from: case */
        public final void mo2871case(Throwable... thArr) {
            if (this.f4613do > 5 || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // defpackage.AbstractC0614Xq
        /* renamed from: do */
        public final void mo2872do(Throwable... thArr) {
            if (this.f4613do > 3 || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // defpackage.AbstractC0614Xq
        /* renamed from: if */
        public final void mo2873if(Throwable... thArr) {
            if (this.f4613do > 6 || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // defpackage.AbstractC0614Xq
        /* renamed from: new */
        public final void mo2874new(Throwable... thArr) {
            if (this.f4613do > 4 || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static synchronized AbstractC0614Xq m2869for() {
        AbstractC0614Xq abstractC0614Xq;
        synchronized (AbstractC0614Xq.class) {
            if (f4612do == null) {
                f4612do = new Cdo(3);
            }
            abstractC0614Xq = f4612do;
        }
        return abstractC0614Xq;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m2870try(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: case, reason: not valid java name */
    public abstract void mo2871case(Throwable... thArr);

    /* renamed from: do, reason: not valid java name */
    public abstract void mo2872do(Throwable... thArr);

    /* renamed from: if, reason: not valid java name */
    public abstract void mo2873if(Throwable... thArr);

    /* renamed from: new, reason: not valid java name */
    public abstract void mo2874new(Throwable... thArr);
}
