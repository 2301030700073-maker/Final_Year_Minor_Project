package defpackage;

import com.google.android.gms.common.internal.Preconditions;

/* renamed from: ci, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0825ci extends Exception {
    @Deprecated
    public C0825ci() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0825ci(String str) {
        super(str);
        Preconditions.checkNotEmpty(str, "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0825ci(String str, Throwable th) {
        super(str, th);
        Preconditions.checkNotEmpty(str, "Detail message must not be empty");
    }
}
