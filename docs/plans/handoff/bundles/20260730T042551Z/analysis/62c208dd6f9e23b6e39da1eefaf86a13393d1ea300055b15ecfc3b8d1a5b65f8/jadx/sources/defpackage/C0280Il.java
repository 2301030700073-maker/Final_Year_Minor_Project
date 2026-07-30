package defpackage;

import com.facebook.GraphRequest;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* renamed from: Il, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0280Il implements GraphRequest.Cnew {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ArrayList<String> f1563do;

    public C0280Il(ArrayList<String> arrayList) {
        this.f1563do = arrayList;
    }

    @Override // com.facebook.GraphRequest.Cnew
    /* renamed from: do, reason: not valid java name */
    public final void mo964do(String str, String str2) {
        C0173Do.m401try(str2, "value");
        String format = String.format(Locale.US, "%s=%s", Arrays.copyOf(new Object[]{str, URLEncoder.encode(str2, "UTF-8")}, 2));
        C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
        this.f1563do.add(format);
    }
}
