package com.google.android.gms.internal.wearable;

import com.google.android.gms.internal.wearable.zzaf;
import com.google.android.gms.internal.wearable.zzag;

/* loaded from: classes3.dex */
public abstract class zzaf<MessageType extends zzag<MessageType, BuilderType>, BuilderType extends zzaf<MessageType, BuilderType>> implements zzdb {
    @Override // 
    public abstract zzaf zzo();

    public abstract zzaf zzp(zzag zzagVar);

    @Override // com.google.android.gms.internal.wearable.zzdb
    public final /* bridge */ /* synthetic */ zzdb zzq(zzdc zzdcVar) {
        if (zzac().getClass().isInstance(zzdcVar)) {
            return zzp((zzag) zzdcVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
