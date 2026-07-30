package defpackage;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import com.google.android.gms.ads.nonagon.signalgeneration.zzau;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzgcd;
import java.lang.reflect.InvocationTargetException;
import java.util.EnumMap;
import java.util.LinkedHashSet;
import java.util.Set;

/* renamed from: qd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3576qd implements zzgcd, InterfaceC3510pS, InterfaceC3597qy, InterfaceC3328mN {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f15140do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f15141do;

    public /* synthetic */ C3576qd(Object obj, int i) {
        this.f15140do = i;
        this.f15141do = obj;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m7904do(QA qa) {
        ((Set) this.f15141do).remove(qa);
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        C0706ai c0706ai = ((C3993xi) this.f15141do).f16592do;
        C3645ro.m8018this(c0706ai);
        return c0706ai;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00f0 A[Catch: JSONException -> 0x00d0, TryCatch #3 {JSONException -> 0x00d0, blocks: (B:30:0x0088, B:33:0x009d, B:35:0x00a8, B:37:0x00b1, B:38:0x00bd, B:40:0x00c3, B:41:0x00c6, B:43:0x00cc, B:44:0x00ea, B:46:0x00f0, B:47:0x00f5, B:50:0x0111, B:53:0x0118, B:55:0x0143, B:58:0x0135, B:62:0x00d5, B:64:0x00de), top: B:29:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0111 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0143 A[Catch: JSONException -> 0x00d0, TRY_LEAVE, TryCatch #3 {JSONException -> 0x00d0, blocks: (B:30:0x0088, B:33:0x009d, B:35:0x00a8, B:37:0x00b1, B:38:0x00bd, B:40:0x00c3, B:41:0x00c6, B:43:0x00cc, B:44:0x00ea, B:46:0x00f0, B:47:0x00f5, B:50:0x0111, B:53:0x0118, B:55:0x0143, B:58:0x0135, B:62:0x00d5, B:64:0x00de), top: B:29:0x0088 }] */
    @Override // defpackage.InterfaceC3510pS
    /* renamed from: if */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo88if(java.lang.String r17, int r18, java.lang.Throwable r19, byte[] r20, java.util.Map r21) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3576qd.mo88if(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    @Override // defpackage.InterfaceC3328mN
    /* renamed from: new */
    public final C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        if (k4 == K4.UPC_A) {
            return ((C3636rf) this.f15141do).mo270new(AppEventsConstants.EVENT_PARAM_VALUE_NO.concat(String.valueOf(str)), K4.EAN_13, enumMap);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(String.valueOf(k4)));
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        zzv.zzp().zzw(th, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        Object obj = this.f15141do;
        zzaa.zzd(((zzau) obj).f9983do, null, "sgf", new Pair("sgf_reason", th.getMessage()), new Pair("se", "query_g"), new Pair("ad_format", AdFormat.BANNER.name()), new Pair("rtype", Integer.toString(6)), new Pair("scar", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE), new Pair("sgi_rn", Integer.toString(((zzau) obj).f9998if.get())));
        zzo.zzh("Failed to initialize webview for loading SDKCore. ", th);
        if (!((Boolean) zzbe.zzc().zza(zzbcl.zzjB)).booleanValue() || ((zzau) obj).f9997if.get() || ((zzau) obj).f9998if.getAndIncrement() >= ((Integer) zzbe.zzc().zza(zzbcl.zzjC)).intValue()) {
            return;
        }
        ((zzau) obj).p();
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzo.zze("Initialized webview successfully for SDKCore.");
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzjB)).booleanValue()) {
            Object obj2 = this.f15141do;
            zzaa.zzd(((zzau) obj2).f9983do, null, "sgs", new Pair("se", "query_g"), new Pair("ad_format", AdFormat.BANNER.name()), new Pair("rtype", Integer.toString(6)), new Pair("scar", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE), new Pair("sgi_rn", Integer.toString(((zzau) obj2).f9998if.get())));
            ((zzau) obj2).f9997if.set(true);
        }
    }

    public C3576qd(int i) {
        Handler handler;
        Handler handler2;
        this.f15140do = i;
        if (i == 5) {
            this.f15141do = new C3636rf();
            return;
        }
        if (i == 6) {
            this.f15141do = new LinkedHashSet();
            return;
        }
        Looper mainLooper = Looper.getMainLooper();
        if (Build.VERSION.SDK_INT >= 28) {
            handler2 = Handler.createAsync(mainLooper);
        } else {
            try {
                handler = (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(mainLooper, null, Boolean.TRUE);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
                handler = new Handler(mainLooper);
            } catch (InvocationTargetException e) {
                Throwable cause = e.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (!(cause instanceof Error)) {
                    throw new RuntimeException(cause);
                }
                throw ((Error) cause);
            }
            handler2 = handler;
        }
        this.f15141do = handler2;
    }
}
