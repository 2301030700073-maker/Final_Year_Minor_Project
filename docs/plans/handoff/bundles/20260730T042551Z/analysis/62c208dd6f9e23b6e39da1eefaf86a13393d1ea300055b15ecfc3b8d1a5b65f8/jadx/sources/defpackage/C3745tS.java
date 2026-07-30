package defpackage;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* renamed from: tS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3745tS {

    /* renamed from: do, reason: not valid java name */
    public final String f15706do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4040yS f15707do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f15708do;

    /* renamed from: for, reason: not valid java name */
    public boolean f15709for;

    /* renamed from: if, reason: not valid java name */
    public boolean f15710if;

    public C3745tS(C4040yS c4040yS, String str, boolean z) {
        this.f15707do = c4040yS;
        Preconditions.checkNotEmpty(str);
        this.f15706do = str;
        this.f15708do = z;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8288do(boolean z) {
        SharedPreferences.Editor edit = this.f15707do.m8724static().edit();
        edit.putBoolean(this.f15706do, z);
        edit.apply();
        this.f15709for = z;
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m8289if() {
        if (!this.f15710if) {
            this.f15710if = true;
            this.f15709for = this.f15707do.m8724static().getBoolean(this.f15706do, this.f15708do);
        }
        return this.f15709for;
    }
}
