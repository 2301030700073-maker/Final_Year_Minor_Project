package b.e.g;

import android.util.Base64;
import java.util.List;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f703a;

    /* renamed from: b, reason: collision with root package name */
    public final String f704b;

    /* renamed from: c, reason: collision with root package name */
    public final String f705c;

    /* renamed from: d, reason: collision with root package name */
    public final List f706d;
    public final int e;
    public final String f;

    public a(String str, String str2, String str3, List list) {
        this.f703a = str;
        this.f704b = str2;
        this.f705c = str3;
        if (list == null) {
            throw null;
        }
        this.f706d = list;
        this.e = 0;
        this.f = str + "-" + this.f704b + "-" + this.f705c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder f = c.a.c.a.a.f("FontRequest {mProviderAuthority: ");
        f.append(this.f703a);
        f.append(", mProviderPackage: ");
        f.append(this.f704b);
        f.append(", mQuery: ");
        f.append(this.f705c);
        f.append(", mCertificates:");
        sb.append(f.toString());
        for (int i = 0; i < this.f706d.size(); i++) {
            sb.append(" [");
            List list = (List) this.f706d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: 0");
        return sb.toString();
    }
}
