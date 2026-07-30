package androidx.recyclerview.widget;

import androidx.recyclerview.widget.Cthrow;
import defpackage.C0781bx;
import java.util.ArrayList;

/* renamed from: androidx.recyclerview.widget.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo implements Cthrow.Cdo {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0041do f7613do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0781bx f7615do = new C0781bx(30);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cif> f7616do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    public final ArrayList<Cif> f7617if = new ArrayList<>();

    /* renamed from: do, reason: not valid java name */
    public int f7612do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cthrow f7614do = new Cthrow(this);

    /* renamed from: androidx.recyclerview.widget.do$do, reason: invalid class name and collision with other inner class name */
    public interface InterfaceC0041do {
    }

    /* renamed from: androidx.recyclerview.widget.do$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public int f7618do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f7619do;

        /* renamed from: for, reason: not valid java name */
        public int f7620for;

        /* renamed from: if, reason: not valid java name */
        public int f7621if;

        public Cif(Object obj, int i, int i2, int i3) {
            this.f7618do = i;
            this.f7621if = i2;
            this.f7620for = i3;
            this.f7619do = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Cif)) {
                return false;
            }
            Cif cif = (Cif) obj;
            int i = this.f7618do;
            if (i != cif.f7618do) {
                return false;
            }
            if (i == 8 && Math.abs(this.f7620for - this.f7621if) == 1 && this.f7620for == cif.f7621if && this.f7621if == cif.f7620for) {
                return true;
            }
            if (this.f7620for != cif.f7620for || this.f7621if != cif.f7621if) {
                return false;
            }
            Object obj2 = this.f7619do;
            if (obj2 != null) {
                if (!obj2.equals(cif.f7619do)) {
                    return false;
                }
            } else if (cif.f7619do != null) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return (((this.f7618do * 31) + this.f7621if) * 31) + this.f7620for;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i = this.f7618do;
            sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
            sb.append(",s:");
            sb.append(this.f7621if);
            sb.append("c:");
            sb.append(this.f7620for);
            sb.append(",p:");
            sb.append(this.f7619do);
            sb.append("]");
            return sb.toString();
        }
    }

    public Cdo(Cswitch cswitch) {
        this.f7613do = cswitch;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x00d9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0139 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0125 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x010b  */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4503break() {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.Cdo.m4503break():void");
    }

    /* renamed from: case, reason: not valid java name */
    public final int m4504case(int i, int i2) {
        ArrayList<Cif> arrayList = this.f7617if;
        int size = arrayList.size();
        while (i2 < size) {
            Cif cif = arrayList.get(i2);
            int i3 = cif.f7618do;
            if (i3 == 8) {
                int i4 = cif.f7621if;
                if (i4 == i) {
                    i = cif.f7620for;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (cif.f7620for <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = cif.f7621if;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = cif.f7620for;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += cif.f7620for;
                }
            }
            i2++;
        }
        return i;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m4505catch(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Cif cif = (Cif) arrayList.get(i);
            cif.f7619do = null;
            this.f7615do.mo4868if(cif);
        }
        arrayList.clear();
    }

    /* renamed from: class, reason: not valid java name */
    public final int m4506class(int i, int i2) {
        int i3;
        int i4;
        ArrayList<Cif> arrayList = this.f7617if;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Cif cif = arrayList.get(size);
            int i5 = cif.f7618do;
            if (i5 == 8) {
                int i6 = cif.f7621if;
                int i7 = cif.f7620for;
                if (i6 < i7) {
                    i4 = i6;
                    i3 = i7;
                } else {
                    i3 = i6;
                    i4 = i7;
                }
                if (i < i4 || i > i3) {
                    if (i < i6) {
                        if (i2 == 1) {
                            cif.f7621if = i6 + 1;
                            cif.f7620for = i7 + 1;
                        } else if (i2 == 2) {
                            cif.f7621if = i6 - 1;
                            cif.f7620for = i7 - 1;
                        }
                    }
                } else if (i4 == i6) {
                    if (i2 == 1) {
                        cif.f7620for = i7 + 1;
                    } else if (i2 == 2) {
                        cif.f7620for = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        cif.f7621if = i6 + 1;
                    } else if (i2 == 2) {
                        cif.f7621if = i6 - 1;
                    }
                    i--;
                }
            } else {
                int i8 = cif.f7621if;
                if (i8 <= i) {
                    if (i5 == 1) {
                        i -= cif.f7620for;
                    } else if (i5 == 2) {
                        i += cif.f7620for;
                    }
                } else if (i2 == 1) {
                    cif.f7621if = i8 + 1;
                } else if (i2 == 2) {
                    cif.f7621if = i8 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            Cif cif2 = arrayList.get(size2);
            int i9 = cif2.f7618do;
            C0781bx c0781bx = this.f7615do;
            if (i9 == 8) {
                int i10 = cif2.f7620for;
                if (i10 == cif2.f7621if || i10 < 0) {
                    arrayList.remove(size2);
                    cif2.f7619do = null;
                    c0781bx.mo4868if(cif2);
                }
            } else if (cif2.f7620for <= 0) {
                arrayList.remove(size2);
                cif2.f7619do = null;
                c0781bx.mo4868if(cif2);
            }
        }
        return i;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m4507do(int i) {
        ArrayList<Cif> arrayList = this.f7617if;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Cif cif = arrayList.get(i2);
            int i3 = cif.f7618do;
            if (i3 == 8) {
                if (m4504case(cif.f7620for, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = cif.f7621if;
                int i5 = cif.f7620for + i4;
                while (i4 < i5) {
                    if (m4504case(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m4508else() {
        return this.f7616do.size() > 0;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4509for() {
        m4511if();
        ArrayList<Cif> arrayList = this.f7616do;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Cif cif = arrayList.get(i);
            int i2 = cif.f7618do;
            InterfaceC0041do interfaceC0041do = this.f7613do;
            if (i2 == 1) {
                Cswitch cswitch = (Cswitch) interfaceC0041do;
                cswitch.m4572do(cif);
                cswitch.m4575new(cif.f7621if, cif.f7620for);
            } else if (i2 == 2) {
                Cswitch cswitch2 = (Cswitch) interfaceC0041do;
                cswitch2.m4572do(cif);
                int i3 = cif.f7621if;
                int i4 = cif.f7620for;
                RecyclerView recyclerView = cswitch2.f7685do;
                recyclerView.e(i3, i4, true);
                recyclerView.f7302class = true;
                recyclerView.f7319do.f7445for += i4;
            } else if (i2 == 4) {
                Cswitch cswitch3 = (Cswitch) interfaceC0041do;
                cswitch3.m4572do(cif);
                cswitch3.m4573for(cif.f7621if, cif.f7620for, cif.f7619do);
            } else if (i2 == 8) {
                Cswitch cswitch4 = (Cswitch) interfaceC0041do;
                cswitch4.m4572do(cif);
                cswitch4.m4576try(cif.f7621if, cif.f7620for);
            }
        }
        m4505catch(arrayList);
        this.f7612do = 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public final Cif m4510goto(Object obj, int i, int i2, int i3) {
        Cif cif = (Cif) this.f7615do.mo4867do();
        if (cif == null) {
            return new Cif(obj, i, i2, i3);
        }
        cif.f7618do = i;
        cif.f7621if = i2;
        cif.f7620for = i3;
        cif.f7619do = obj;
        return cif;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4511if() {
        ArrayList<Cif> arrayList = this.f7617if;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Cswitch) this.f7613do).m4572do(arrayList.get(i));
        }
        m4505catch(arrayList);
        this.f7612do = 0;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4512new(Cif cif) {
        int i;
        C0781bx c0781bx;
        int i2 = cif.f7618do;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m4506class = m4506class(cif.f7621if, i2);
        int i3 = cif.f7621if;
        int i4 = cif.f7618do;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + cif);
            }
            i = 1;
        }
        int i5 = 1;
        int i6 = 1;
        while (true) {
            int i7 = cif.f7620for;
            c0781bx = this.f7615do;
            if (i5 >= i7) {
                break;
            }
            int m4506class2 = m4506class((i * i5) + cif.f7621if, cif.f7618do);
            int i8 = cif.f7618do;
            if (i8 == 2 ? m4506class2 == m4506class : i8 == 4 && m4506class2 == m4506class + 1) {
                i6++;
            } else {
                Cif m4510goto = m4510goto(cif.f7619do, i8, m4506class, i6);
                m4514try(m4510goto, i3);
                m4510goto.f7619do = null;
                c0781bx.mo4868if(m4510goto);
                if (cif.f7618do == 4) {
                    i3 += i6;
                }
                m4506class = m4506class2;
                i6 = 1;
            }
            i5++;
        }
        Object obj = cif.f7619do;
        cif.f7619do = null;
        c0781bx.mo4868if(cif);
        if (i6 > 0) {
            Cif m4510goto2 = m4510goto(obj, cif.f7618do, m4506class, i6);
            m4514try(m4510goto2, i3);
            m4510goto2.f7619do = null;
            c0781bx.mo4868if(m4510goto2);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4513this(Cif cif) {
        this.f7617if.add(cif);
        int i = cif.f7618do;
        InterfaceC0041do interfaceC0041do = this.f7613do;
        if (i == 1) {
            ((Cswitch) interfaceC0041do).m4575new(cif.f7621if, cif.f7620for);
            return;
        }
        if (i == 2) {
            int i2 = cif.f7621if;
            int i3 = cif.f7620for;
            RecyclerView recyclerView = ((Cswitch) interfaceC0041do).f7685do;
            recyclerView.e(i2, i3, false);
            recyclerView.f7302class = true;
            return;
        }
        if (i == 4) {
            ((Cswitch) interfaceC0041do).m4573for(cif.f7621if, cif.f7620for, cif.f7619do);
        } else if (i == 8) {
            ((Cswitch) interfaceC0041do).m4576try(cif.f7621if, cif.f7620for);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + cif);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4514try(Cif cif, int i) {
        Cswitch cswitch = (Cswitch) this.f7613do;
        cswitch.m4572do(cif);
        int i2 = cif.f7618do;
        if (i2 != 2) {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            cswitch.m4573for(i, cif.f7620for, cif.f7619do);
        } else {
            int i3 = cif.f7620for;
            RecyclerView recyclerView = cswitch.f7685do;
            recyclerView.e(i, i3, true);
            recyclerView.f7302class = true;
            recyclerView.f7319do.f7445for += i3;
        }
    }
}
