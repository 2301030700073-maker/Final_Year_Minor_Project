package defpackage;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.util.client.zzl;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* renamed from: dR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2635dR extends zzb {

    /* renamed from: do, reason: not valid java name */
    public final Context f12483do;

    public C2635dR(Context context) {
        this.f12483do = context;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        boolean z;
        try {
            z = AdvertisingIdClient.getIsAdIdFakeForDebugLogging(this.f12483do);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            zzo.zzh("Fail to get isAdIdFakeForDebugLogging", e);
            z = false;
        }
        zzl.zzj(z);
        zzo.zzj("Update ad debug logging enablement as " + z);
    }
}
