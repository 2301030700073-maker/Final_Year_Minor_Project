package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* renamed from: oS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3451oS implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final String f14789break;

    /* renamed from: do, reason: not valid java name */
    public final Throwable f14790do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<String, List<String>> f14791do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3510pS f14792do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f14793do;

    /* renamed from: for, reason: not valid java name */
    public final int f14794for;

    public RunnableC3451oS(String str, InterfaceC3510pS interfaceC3510pS, int i, IOException iOException, byte[] bArr, Map map) {
        Preconditions.checkNotNull(interfaceC3510pS);
        this.f14792do = interfaceC3510pS;
        this.f14794for = i;
        this.f14790do = iOException;
        this.f14793do = bArr;
        this.f14789break = str;
        this.f14791do = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f14792do.mo88if(this.f14789break, this.f14794for, this.f14790do, this.f14793do, this.f14791do);
    }
}
