package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.wearable.MessageClient;
import defpackage.FG;
import defpackage.InterfaceC0399Nv;

/* loaded from: classes3.dex */
final class zzir implements ListenerHolder.Notifier {
    public static final /* synthetic */ int zzc = 0;
    final /* synthetic */ zzfx zza;
    final /* synthetic */ zzev zzb;

    public zzir(zzfx zzfxVar, zzev zzevVar, byte[] bArr) {
        this.zza = zzfxVar;
        this.zzb = zzevVar;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        FG<byte[]> onRequest = ((MessageClient.RpcService) obj).onRequest(this.zza.getSourceNodeId(), this.zza.getPath(), this.zza.getData());
        if (onRequest == null) {
            zzit.zzx(this.zzb, false, null);
            return;
        }
        final zzev zzevVar = this.zzb;
        final byte[] bArr = null;
        onRequest.mo599if(new InterfaceC0399Nv(bArr) { // from class: com.google.android.gms.wearable.internal.zziq
            @Override // defpackage.InterfaceC0399Nv
            public final void onComplete(FG fg) {
                zzev zzevVar2 = zzev.this;
                if (fg.mo604throw()) {
                    zzit.zzx(zzevVar2, true, (byte[]) fg.mo592class());
                } else {
                    fg.mo591catch();
                    zzit.zzx(zzevVar2, false, null);
                }
            }
        });
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
        zzit.zzx(this.zzb, false, null);
    }
}
