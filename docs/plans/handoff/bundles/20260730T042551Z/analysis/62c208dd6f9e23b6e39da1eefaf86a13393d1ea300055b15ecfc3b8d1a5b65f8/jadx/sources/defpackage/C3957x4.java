package defpackage;

import defpackage.AbstractC3261lF;

/* renamed from: x4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3957x4 extends AbstractC3261lF.Cfor {

    /* renamed from: do, reason: not valid java name */
    public final String f16516do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f16517do;

    /* renamed from: if, reason: not valid java name */
    public final String f16518if;

    public C3957x4(String str, String str2, boolean z) {
        if (str == null) {
            throw new NullPointerException("Null osRelease");
        }
        this.f16516do = str;
        if (str2 == null) {
            throw new NullPointerException("Null osCodeName");
        }
        this.f16518if = str2;
        this.f16517do = z;
    }

    @Override // defpackage.AbstractC3261lF.Cfor
    /* renamed from: do */
    public final boolean mo7347do() {
        return this.f16517do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3261lF.Cfor)) {
            return false;
        }
        AbstractC3261lF.Cfor cfor = (AbstractC3261lF.Cfor) obj;
        return this.f16516do.equals(cfor.mo7348for()) && this.f16518if.equals(cfor.mo7349if()) && this.f16517do == cfor.mo7347do();
    }

    @Override // defpackage.AbstractC3261lF.Cfor
    /* renamed from: for */
    public final String mo7348for() {
        return this.f16516do;
    }

    public final int hashCode() {
        return ((((this.f16516do.hashCode() ^ 1000003) * 1000003) ^ this.f16518if.hashCode()) * 1000003) ^ (this.f16517do ? 1231 : 1237);
    }

    @Override // defpackage.AbstractC3261lF.Cfor
    /* renamed from: if */
    public final String mo7349if() {
        return this.f16518if;
    }

    public final String toString() {
        return "OsData{osRelease=" + this.f16516do + ", osCodeName=" + this.f16518if + ", isRooted=" + this.f16517do + "}";
    }
}
