package defpackage;

import android.net.Uri;
import com.facebook.appevents.codeless.internal.Constants;
import defpackage.C3774tz;
import java.net.URL;
import java.util.Map;

/* renamed from: vz, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3892vz implements InterfaceC0760bc {

    /* renamed from: do, reason: not valid java name */
    public final String f16156do = "firebase-settings.crashlytics.com";

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3161jb f16157do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3543q2 f16158do;

    public C3892vz(C3543q2 c3543q2, InterfaceC3161jb interfaceC3161jb) {
        this.f16158do = c3543q2;
        this.f16157do = interfaceC3161jb;
    }

    /* renamed from: if, reason: not valid java name */
    public static final URL m8492if(C3892vz c3892vz) {
        c3892vz.getClass();
        Uri.Builder appendPath = new Uri.Builder().scheme("https").authority(c3892vz.f16156do).appendPath("spi").appendPath("v2").appendPath("platforms").appendPath(Constants.PLATFORM).appendPath("gmp");
        C3543q2 c3543q2 = c3892vz.f16158do;
        Uri.Builder appendPath2 = appendPath.appendPath(c3543q2.f15028do).appendPath("settings");
        M0 m0 = c3543q2.f15026do;
        return new URL(appendPath2.appendQueryParameter("build_version", m0.f2074for).appendQueryParameter("display_version", m0.f2075if).build().toString());
    }

    @Override // defpackage.InterfaceC0760bc
    /* renamed from: do */
    public final Object mo4844do(Map map, C3774tz.Cif cif, C3774tz.Cfor cfor, C3774tz.Cdo cdo) {
        Object m1184volatile = C0315Kc.m1184volatile(cdo, this.f16157do, new C3833uz(this, map, cif, cfor, null));
        return m1184volatile == EnumC3750tb.COROUTINE_SUSPENDED ? m1184volatile : C3206kJ.f13965do;
    }
}
