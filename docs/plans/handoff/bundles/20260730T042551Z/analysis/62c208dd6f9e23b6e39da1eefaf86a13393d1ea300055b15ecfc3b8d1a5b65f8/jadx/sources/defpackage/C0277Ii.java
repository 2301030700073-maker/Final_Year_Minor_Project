package defpackage;

import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: Ii, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0277Ii implements InterfaceC0255Hi {

    /* renamed from: do, reason: not valid java name */
    public final int f1555do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1556do;

    public C0277Ii(String str, int i) {
        this.f1556do = str;
        this.f1555do = i;
    }

    @Override // defpackage.InterfaceC0255Hi
    /* renamed from: do */
    public final int mo872do() {
        return this.f1555do;
    }

    @Override // defpackage.InterfaceC0255Hi
    /* renamed from: for */
    public final double mo873for() {
        if (this.f1555do == 0) {
            return 0.0d;
        }
        String trim = mo876try().trim();
        try {
            return Double.valueOf(trim).doubleValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", trim, "double"), e);
        }
    }

    @Override // defpackage.InterfaceC0255Hi
    /* renamed from: if */
    public final boolean mo874if() {
        if (this.f1555do == 0) {
            return false;
        }
        String trim = mo876try().trim();
        if (H9.f1300do.matcher(trim).matches()) {
            return true;
        }
        if (H9.f1301if.matcher(trim).matches()) {
            return false;
        }
        throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", trim, "boolean"));
    }

    @Override // defpackage.InterfaceC0255Hi
    /* renamed from: new */
    public final long mo875new() {
        if (this.f1555do == 0) {
            return 0L;
        }
        String trim = mo876try().trim();
        try {
            return Long.valueOf(trim).longValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", trim, "long"), e);
        }
    }

    @Override // defpackage.InterfaceC0255Hi
    /* renamed from: try */
    public final String mo876try() {
        if (this.f1555do == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String str = this.f1556do;
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
    }
}
