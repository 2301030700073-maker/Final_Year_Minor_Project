package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelApi;

/* loaded from: classes3.dex */
final class zzhe implements ChannelApi.ChannelListener {
    private final String zza;
    private final ChannelApi.ChannelListener zzb;

    public zzhe(String str, ChannelApi.ChannelListener channelListener) {
        this.zza = (String) Preconditions.checkNotNull(str);
        this.zzb = (ChannelApi.ChannelListener) Preconditions.checkNotNull(channelListener);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhe)) {
            return false;
        }
        zzhe zzheVar = (zzhe) obj;
        return this.zzb.equals(zzheVar.zzb) && this.zza.equals(zzheVar.zza);
    }

    public final int hashCode() {
        return this.zzb.hashCode() + (this.zza.hashCode() * 31);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onChannelClosed(Channel channel, int i, int i2) {
        this.zzb.onChannelClosed(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onChannelOpened(Channel channel) {
        this.zzb.onChannelOpened(channel);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onInputClosed(Channel channel, int i, int i2) {
        this.zzb.onInputClosed(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onOutputClosed(Channel channel, int i, int i2) {
        this.zzb.onOutputClosed(channel, i, i2);
    }
}
