package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.internal.ads.zzfol;
import java.util.HashMap;

/* renamed from: Dp, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0174Dp implements zzfol, InterfaceC3336mV, InterfaceC3597qy {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f686do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f687do;

    public /* synthetic */ C0174Dp(Object obj, int i) {
        this.f686do = i;
        this.f687do = obj;
    }

    /* renamed from: if, reason: not valid java name */
    public static C0174Dp m402if(String str) {
        return new C0174Dp((TextUtils.isEmpty(str) || str.length() > 1) ? EnumC3746tT.UNINITIALIZED : C3628rT.m7948case(str.charAt(0)), 2);
    }

    @Override // defpackage.InterfaceC3336mV
    /* renamed from: do, reason: not valid java name */
    public final void mo403do(String str, String str2, Bundle bundle) {
        boolean isEmpty = TextUtils.isEmpty(str);
        Object obj = this.f687do;
        if (!isEmpty) {
            ((ZU) obj).mo2253do().m1964public(new UT(this, str, str2, bundle));
            return;
        }
        TS ts = ((ZU) obj).f4833do;
        if (ts != null) {
            C3156jS c3156jS = ts.f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13717do.m7368for("AppId not known when logging event", str2);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m404for() {
        TS ts = (TS) this.f687do;
        if (!TextUtils.isEmpty(ts.f3697do)) {
            return false;
        }
        C3156jS c3156jS = ts.f3695do;
        TS.m2247this(c3156jS);
        return c3156jS.m7111native(3);
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        InterfaceC3655ry<C3421nz> interfaceC3655ry = ((C3993xi) this.f687do).f16594do;
        C3645ro.m8018this(interfaceC3655ry);
        return interfaceC3655ry;
    }

    public final String toString() {
        switch (this.f686do) {
            case 7:
                return "<" + ((String) this.f687do) + '>';
            default:
                return super.toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfol
    public final void zza(int i, long j) {
        ((zzk) this.f687do).f9863do.zzd(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfol
    public final void zzb(int i, long j, String str) {
        ((zzk) this.f687do).f9863do.zze(i, System.currentTimeMillis() - j, str);
    }

    public C0174Dp(TS ts) {
        this.f686do = 3;
        this.f687do = ts;
    }

    public C0174Dp() {
        this.f686do = 0;
        this.f687do = new HashMap();
    }

    public C0174Dp(ViewGroup viewGroup) {
        this.f686do = 5;
        this.f687do = viewGroup.getOverlay();
    }
}
