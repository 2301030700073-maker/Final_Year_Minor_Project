package defpackage;

import android.util.Base64;
import java.util.List;

/* renamed from: ij, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2942ij {

    /* renamed from: do, reason: not valid java name */
    public final String f13538do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<List<byte[]>> f13539do;

    /* renamed from: for, reason: not valid java name */
    public final String f13540for;

    /* renamed from: if, reason: not valid java name */
    public final String f13541if;

    /* renamed from: new, reason: not valid java name */
    public final String f13542new;

    public C2942ij(String str, String str2, String str3, List<List<byte[]>> list) {
        str.getClass();
        this.f13538do = str;
        str2.getClass();
        this.f13541if = str2;
        this.f13540for = str3;
        list.getClass();
        this.f13539do = list;
        this.f13542new = str + "-" + str2 + "-" + str3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder("FontRequest {mProviderAuthority: ");
        sb2.append(this.f13538do);
        sb2.append(", mProviderPackage: ");
        sb2.append(this.f13541if);
        sb2.append(", mQuery: ");
        Cif.m6909catch(sb2, this.f13540for, ", mCertificates:", sb);
        int i = 0;
        while (true) {
            List<List<byte[]>> list = this.f13539do;
            if (i >= list.size()) {
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            }
            sb.append(" [");
            List<byte[]> list2 = list.get(i);
            for (int i2 = 0; i2 < list2.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list2.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i++;
        }
    }
}
