package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.A0;
import java.text.ParseException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: Xh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0605Xh {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3655ry<A0> f4555do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f4554do = "frc";

    /* renamed from: do, reason: not valid java name */
    public Integer f4553do = null;

    public C0605Xh(InterfaceC3655ry interfaceC3655ry) {
        this.f4555do = interfaceC3655ry;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m2856do(ArrayList arrayList, Cfinally cfinally) {
        String str = cfinally.f12974do;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Cfinally cfinally2 = (Cfinally) it.next();
            if (cfinally2.f12974do.equals(str) && cfinally2.f12978if.equals(cfinally.f12978if)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m2857for(ArrayList arrayList) {
        String str;
        m2859new();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (!hasNext) {
                boolean isEmpty = arrayList2.isEmpty();
                InterfaceC3655ry<A0> interfaceC3655ry = this.f4555do;
                if (isEmpty) {
                    m2859new();
                    Iterator<A0.Cif> it2 = m2858if().iterator();
                    while (it2.hasNext()) {
                        interfaceC3655ry.get().mo7goto(it2.next().f13if);
                    }
                    return;
                }
                m2859new();
                List<A0.Cif> m2858if = m2858if();
                ArrayList arrayList3 = new ArrayList();
                for (Iterator<A0.Cif> it3 = m2858if.iterator(); it3.hasNext(); it3 = it3) {
                    A0.Cif next = it3.next();
                    String[] strArr = Cfinally.f12972do;
                    String str3 = next.f10for;
                    arrayList3.add(new Cfinally(next.f13if, String.valueOf(next.f5do), str3 != null ? str3 : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new Date(next.f8for), next.f3do, next.f11if));
                    interfaceC3655ry = interfaceC3655ry;
                }
                InterfaceC3655ry<A0> interfaceC3655ry2 = interfaceC3655ry;
                ArrayList arrayList4 = new ArrayList();
                Iterator it4 = arrayList3.iterator();
                while (true) {
                    boolean hasNext2 = it4.hasNext();
                    str = this.f4554do;
                    if (!hasNext2) {
                        break;
                    }
                    Cfinally cfinally = (Cfinally) it4.next();
                    if (!m2856do(arrayList2, cfinally)) {
                        arrayList4.add(cfinally.m6679do(str));
                    }
                }
                Iterator it5 = arrayList4.iterator();
                while (it5.hasNext()) {
                    interfaceC3655ry2.get().mo7goto(((A0.Cif) it5.next()).f13if);
                }
                ArrayList arrayList5 = new ArrayList();
                Iterator it6 = arrayList2.iterator();
                while (it6.hasNext()) {
                    Cfinally cfinally2 = (Cfinally) it6.next();
                    if (!m2856do(arrayList3, cfinally2)) {
                        arrayList5.add(cfinally2);
                    }
                }
                ArrayDeque arrayDeque = new ArrayDeque(m2858if());
                if (this.f4553do == null) {
                    this.f4553do = Integer.valueOf(interfaceC3655ry2.get().mo10try(str));
                }
                int intValue = this.f4553do.intValue();
                Iterator it7 = arrayList5.iterator();
                while (it7.hasNext()) {
                    Cfinally cfinally3 = (Cfinally) it7.next();
                    while (arrayDeque.size() >= intValue) {
                        interfaceC3655ry2.get().mo7goto(((A0.Cif) arrayDeque.pollFirst()).f13if);
                    }
                    A0.Cif m6679do = cfinally3.m6679do(str);
                    interfaceC3655ry2.get().mo4do(m6679do);
                    arrayDeque.offer(m6679do);
                }
                return;
            }
            Map map = (Map) it.next();
            String[] strArr2 = Cfinally.f12972do;
            ArrayList arrayList6 = new ArrayList();
            String[] strArr3 = Cfinally.f12972do;
            for (int i = 0; i < 5; i++) {
                String str4 = strArr3[i];
                if (!map.containsKey(str4)) {
                    arrayList6.add(str4);
                }
            }
            if (!arrayList6.isEmpty()) {
                throw new Cextends(String.format("The following keys are missing from the experiment info map: %s", arrayList6));
            }
            try {
                Date parse = Cfinally.f12971do.parse((String) map.get("experimentStartTime"));
                long parseLong = Long.parseLong((String) map.get("triggerTimeoutMillis"));
                long parseLong2 = Long.parseLong((String) map.get("timeToLiveMillis"));
                String str5 = (String) map.get("experimentId");
                String str6 = (String) map.get("variantId");
                if (map.containsKey("triggerEvent")) {
                    str2 = (String) map.get("triggerEvent");
                }
                arrayList2.add(new Cfinally(str5, str6, str2, parse, parseLong, parseLong2));
            } catch (NumberFormatException e) {
                throw new Cextends("Could not process experiment: one of the durations could not be converted into a long.", e);
            } catch (ParseException e2) {
                throw new Cextends("Could not process experiment: parsing experiment start time failed.", e2);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final List<A0.Cif> m2858if() {
        return this.f4555do.get().mo5else(this.f4554do);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m2859new() {
        if (this.f4555do.get() == null) {
            throw new Cextends("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
    }
}
