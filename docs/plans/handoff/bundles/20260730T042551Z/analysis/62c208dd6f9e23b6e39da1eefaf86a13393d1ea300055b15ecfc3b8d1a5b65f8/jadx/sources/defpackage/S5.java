package defpackage;

import defpackage.Bz;
import defpackage.C0587Wl;
import defpackage.InterfaceC0818cb;
import defpackage.Tz;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class S5 implements InterfaceC3940wo {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0818cb f3446do;

    public S5(InterfaceC0818cb interfaceC0818cb) {
        this.f3446do = interfaceC0818cb;
    }

    @Override // defpackage.InterfaceC3940wo
    /* renamed from: do, reason: not valid java name */
    public final Tz mo2113do(Xy xy) {
        boolean z;
        Bz bz = xy.f4617do;
        bz.getClass();
        Bz.Cdo cdo = new Bz.Cdo(bz);
        AbstractC3134j6 abstractC3134j6 = bz.f298do;
        if (abstractC3134j6 != null) {
            Cz cz = (Cz) abstractC3134j6;
            C0155Cs c0155Cs = cz.f456do;
            if (c0155Cs != null) {
                cdo.f303do.m2772for("Content-Type", c0155Cs.f440do);
            }
            long j = cz.f455do;
            if (j != -1) {
                cdo.f303do.m2772for("Content-Length", Long.toString(j));
                cdo.m246for("Transfer-Encoding");
            } else {
                cdo.f303do.m2772for("Transfer-Encoding", "chunked");
                cdo.m246for("Content-Length");
            }
        }
        String m244do = bz.m244do("Host");
        C0237Gm c0237Gm = bz.f296do;
        if (m244do == null) {
            cdo.f303do.m2772for("Host", SJ.m2133const(c0237Gm, false));
        }
        if (bz.m244do("Connection") == null) {
            cdo.f303do.m2772for("Connection", "Keep-Alive");
        }
        if (bz.m244do("Accept-Encoding") == null && bz.m244do("Range") == null) {
            cdo.f303do.m2772for("Accept-Encoding", "gzip");
            z = true;
        } else {
            z = false;
        }
        InterfaceC0818cb interfaceC0818cb = this.f3446do;
        ((InterfaceC0818cb.Cdo) interfaceC0818cb).getClass();
        List emptyList = Collections.emptyList();
        if (!emptyList.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            int size = emptyList.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    sb.append("; ");
                }
                C0759bb c0759bb = (C0759bb) emptyList.get(i);
                sb.append(c0759bb.f8414do);
                sb.append('=');
                sb.append(c0759bb.f8418if);
            }
            cdo.f303do.m2772for("Cookie", sb.toString());
        }
        if (bz.m244do("User-Agent") == null) {
            cdo.f303do.m2772for("User-Agent", "okhttp/3.12.12");
        }
        Tz m2876do = xy.m2876do(cdo.m245do());
        C0587Wl c0587Wl = m2876do.f3775do;
        C0149Cm.m295new(interfaceC0818cb, c0237Gm, c0587Wl);
        Tz.Cdo cdo2 = new Tz.Cdo(m2876do);
        cdo2.f3783do = bz;
        if (z && "gzip".equalsIgnoreCase(m2876do.m2300do("Content-Encoding")) && C0149Cm.m294if(m2876do)) {
            C0433Pl c0433Pl = new C0433Pl(m2876do.f3774do.mo2490for());
            C0587Wl.Cdo m2770try = c0587Wl.m2770try();
            m2770try.m2773if("Content-Encoding");
            m2770try.m2773if("Content-Length");
            ArrayList arrayList = m2770try.f4399do;
            String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            C0587Wl.Cdo cdo3 = new C0587Wl.Cdo();
            Collections.addAll(cdo3.f4399do, strArr);
            cdo2.f3787do = cdo3;
            String m2300do = m2876do.m2300do("Content-Type");
            Logger logger = C0114Av.f168do;
            cdo2.f3786do = new Yy(m2300do, -1L, new Uy(c0433Pl));
        }
        return cdo2.m2302do();
    }
}
