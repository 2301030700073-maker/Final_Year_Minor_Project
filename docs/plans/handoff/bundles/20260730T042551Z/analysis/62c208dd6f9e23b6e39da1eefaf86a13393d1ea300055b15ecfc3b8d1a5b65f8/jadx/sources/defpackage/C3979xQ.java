package defpackage;

import com.google.android.gms.ads.internal.util.client.zzl;
import com.google.android.gms.internal.ads.zzaqr;
import java.util.Collections;
import java.util.Map;

/* renamed from: xQ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3979xQ extends zzaqr {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzl f16552do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Map f16553do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ byte[] f16554do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3979xQ(int i, String str, AQ aq, C3920wQ c3920wQ, byte[] bArr, Map map, zzl zzlVar) {
        super(i, str, aq, c3920wQ);
        this.f16554do = bArr;
        this.f16553do = map;
        this.f16552do = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    public final Map zzl() {
        Map map = this.f16553do;
        return map == null ? Collections.emptyMap() : map;
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    public final byte[] zzx() {
        byte[] bArr = this.f16554do;
        if (bArr == null) {
            return null;
        }
        return bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaqr, com.google.android.gms.internal.ads.zzapm
    /* renamed from: zzz */
    public final void zzo(String str) {
        this.f16552do.zzg(str);
        super.zzo(str);
    }
}
