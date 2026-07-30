package defpackage;

import com.google.android.gms.ads.internal.client.zzce;
import com.google.android.gms.ads.internal.client.zzex;
import com.google.android.gms.ads.internal.client.zzft;
import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import j$.util.Optional;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class ER extends zzce {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ PreloadCallback f791do;

    public ER(zzex zzexVar, PreloadCallback preloadCallback) {
        this.f791do = preloadCallback;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcf
    public final void zze(zzft zzftVar) {
        Optional m5547new = zzex.m5547new(zzftVar);
        final PreloadCallback preloadCallback = this.f791do;
        m5547new.ifPresent(new Consumer() { // from class: com.google.android.gms.ads.internal.client.zzeq
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                PreloadCallback.this.onAdsAvailable((PreloadConfiguration) obj);
            }

            @Override // java.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzcf
    public final void zzf(zzft zzftVar) {
        Optional m5547new = zzex.m5547new(zzftVar);
        final PreloadCallback preloadCallback = this.f791do;
        m5547new.ifPresent(new Consumer() { // from class: com.google.android.gms.ads.internal.client.zzer
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                PreloadCallback.this.onAdsExhausted((PreloadConfiguration) obj);
            }

            @Override // java.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
    }
}
