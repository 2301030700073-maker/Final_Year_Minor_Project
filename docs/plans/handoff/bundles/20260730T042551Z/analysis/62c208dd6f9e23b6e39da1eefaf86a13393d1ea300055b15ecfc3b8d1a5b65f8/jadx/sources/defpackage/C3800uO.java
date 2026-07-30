package defpackage;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;

/* renamed from: uO, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3800uO {

    /* renamed from: do, reason: not valid java name */
    public static final Api f15880do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3329mO f15881do;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        Api.ClientKey clientKey2 = new Api.ClientKey();
        C3329mO c3329mO = new C3329mO();
        f15881do = c3329mO;
        C3447oO c3447oO = new C3447oO();
        new Scope(Scopes.PROFILE);
        new Scope(Scopes.EMAIL);
        f15880do = new Api("SignIn.API", c3329mO, clientKey);
        new Api("SignIn.INTERNAL_API", c3447oO, clientKey2);
    }
}
