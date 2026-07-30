package defpackage;

import android.os.Looper;
import java.util.List;

/* loaded from: classes3.dex */
public final class O0 implements InterfaceC3590qr {
    @Override // defpackage.InterfaceC3590qr
    /* renamed from: do, reason: not valid java name */
    public AbstractC3531pr mo1574do(List<? extends InterfaceC3590qr> list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new C0455Ql(C0499Sl.m2189do(mainLooper));
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // defpackage.InterfaceC3590qr
    /* renamed from: for, reason: not valid java name */
    public int mo1575for() {
        return 1073741823;
    }

    @Override // defpackage.InterfaceC3590qr
    /* renamed from: if, reason: not valid java name */
    public String mo1576if() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }
}
