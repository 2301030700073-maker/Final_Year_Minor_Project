package defpackage;

import com.facebook.internal.security.CertificateUtil;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: ae, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0702ae implements InterfaceC0535Ud {

    /* renamed from: for, reason: not valid java name */
    public int f4973for;

    /* renamed from: if, reason: not valid java name */
    public int f4975if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final AbstractC2747fM f4976if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC2747fM f4969do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4972do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f4978if = false;

    /* renamed from: do, reason: not valid java name */
    public int f4968do = 1;

    /* renamed from: new, reason: not valid java name */
    public int f4979new = 1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3694se f4971do = null;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f4974for = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f4970do = new ArrayList();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList f4977if = new ArrayList();

    public C0702ae(AbstractC2747fM abstractC2747fM) {
        this.f4976if = abstractC2747fM;
    }

    @Override // defpackage.InterfaceC0535Ud
    /* renamed from: do */
    public final void mo1143do(InterfaceC0535Ud interfaceC0535Ud) {
        ArrayList arrayList = this.f4977if;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((C0702ae) it.next()).f4974for) {
                return;
            }
        }
        this.f4978if = true;
        AbstractC2747fM abstractC2747fM = this.f4969do;
        if (abstractC2747fM != null) {
            abstractC2747fM.mo1143do(this);
        }
        if (this.f4972do) {
            this.f4976if.mo1143do(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        C0702ae c0702ae = null;
        int i = 0;
        while (it2.hasNext()) {
            C0702ae c0702ae2 = (C0702ae) it2.next();
            if (!(c0702ae2 instanceof C3694se)) {
                i++;
                c0702ae = c0702ae2;
            }
        }
        if (c0702ae != null && i == 1 && c0702ae.f4974for) {
            C3694se c3694se = this.f4971do;
            if (c3694se != null) {
                if (!((C0702ae) c3694se).f4974for) {
                    return;
                } else {
                    this.f4975if = this.f4979new * ((C0702ae) c3694se).f4973for;
                }
            }
            mo3143new(c0702ae.f4973for + this.f4975if);
        }
        AbstractC2747fM abstractC2747fM2 = this.f4969do;
        if (abstractC2747fM2 != null) {
            abstractC2747fM2.mo1143do(this);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m3141for() {
        this.f4977if.clear();
        this.f4970do.clear();
        this.f4974for = false;
        this.f4973for = 0;
        this.f4978if = false;
        this.f4972do = false;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3142if(InterfaceC0535Ud interfaceC0535Ud) {
        this.f4970do.add(interfaceC0535Ud);
        if (this.f4974for) {
            interfaceC0535Ud.mo1143do(interfaceC0535Ud);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void mo3143new(int i) {
        if (this.f4974for) {
            return;
        }
        this.f4974for = true;
        this.f4973for = i;
        Iterator it = this.f4970do.iterator();
        while (it.hasNext()) {
            InterfaceC0535Ud interfaceC0535Ud = (InterfaceC0535Ud) it.next();
            interfaceC0535Ud.mo1143do(interfaceC0535Ud);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4976if.f12898do.f812do);
        sb.append(CertificateUtil.DELIMITER);
        sb.append(Cpublic.m7817catch(this.f4968do));
        sb.append("(");
        sb.append(this.f4974for ? Integer.valueOf(this.f4973for) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f4977if.size());
        sb.append(":d=");
        sb.append(this.f4970do.size());
        sb.append(">");
        return sb.toString();
    }
}
