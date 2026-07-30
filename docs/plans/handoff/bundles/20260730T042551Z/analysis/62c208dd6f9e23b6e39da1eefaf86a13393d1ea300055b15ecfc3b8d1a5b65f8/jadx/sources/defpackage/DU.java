package defpackage;

import android.content.pm.PackageManager;
import android.util.Pair;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class DU extends WU {

    /* renamed from: case, reason: not valid java name */
    public final C4099zS f618case;

    /* renamed from: do, reason: not valid java name */
    public final HashMap f619do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4099zS f620do;

    /* renamed from: for, reason: not valid java name */
    public final C4099zS f621for;

    /* renamed from: if, reason: not valid java name */
    public final C4099zS f622if;

    /* renamed from: new, reason: not valid java name */
    public final C4099zS f623new;

    /* renamed from: try, reason: not valid java name */
    public final C4099zS f624try;

    public DU(ZU zu) {
        super(zu);
        this.f619do = new HashMap();
        this.f620do = new C4099zS(m7574this(), "last_delete_stale", 0L);
        this.f622if = new C4099zS(m7574this(), "last_delete_stale_batch", 0L);
        this.f621for = new C4099zS(m7574this(), "backoff", 0L);
        this.f623new = new C4099zS(m7574this(), "last_upload", 0L);
        this.f624try = new C4099zS(m7574this(), "last_upload_attempt", 0L);
        this.f618case = new C4099zS(m7574this(), "midnight_offset", 0L);
    }

    @Deprecated
    /* renamed from: import, reason: not valid java name */
    public final Pair<String, Boolean> m370import(String str) {
        CU cu;
        AdvertisingIdClient.Info info;
        mo1960catch();
        long elapsedRealtime = mo2257new().elapsedRealtime();
        HashMap hashMap = this.f619do;
        CU cu2 = (CU) hashMap.get(str);
        if (cu2 != null && elapsedRealtime < cu2.f382do) {
            return new Pair<>(cu2.f383do, Boolean.valueOf(cu2.f384do));
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        ZO m7572else = m7572else();
        m7572else.getClass();
        long m3003native = m7572else.m3003native(str, C3684sQ.f15459do) + elapsedRealtime;
        try {
            try {
                info = AdvertisingIdClient.getAdvertisingIdInfo(mo2255for());
            } catch (PackageManager.NameNotFoundException unused) {
                if (cu2 != null && elapsedRealtime < cu2.f382do + m7572else().m3003native(str, C3684sQ.f15467if)) {
                    return new Pair<>(cu2.f383do, Boolean.valueOf(cu2.f384do));
                }
                info = null;
            }
        } catch (Exception e) {
            mo2249case().f13720goto.m7368for("Unable to get advertising id", e);
            cu = new CU(false, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, m3003native);
        }
        if (info == null) {
            return new Pair<>("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
        }
        String id = info.getId();
        cu = id != null ? new CU(info.isLimitAdTrackingEnabled(), id, m3003native) : new CU(info.isLimitAdTrackingEnabled(), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, m3003native);
        hashMap.put(str, cu);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(cu.f383do, Boolean.valueOf(cu.f384do));
    }

    @Deprecated
    /* renamed from: native, reason: not valid java name */
    public final String m371native(String str, boolean z) {
        mo1960catch();
        String str2 = z ? (String) m370import(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest N = C3395nV.N();
        if (N == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, N.digest(str2.getBytes())));
    }

    @Override // defpackage.WU
    /* renamed from: while, reason: not valid java name */
    public final boolean mo372while() {
        return false;
    }
}
