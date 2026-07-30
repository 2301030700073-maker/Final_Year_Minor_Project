package defpackage;

/* renamed from: oN, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3446oN extends Gy {
    public C3446oN() {
        super(15);
    }

    @Override // defpackage.Gy, defpackage.InterfaceC0603Xf
    /* renamed from: do */
    public final void mo268do(C0764bg c0764bg) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!c0764bg.m4849for()) {
                break;
            }
            char m4850if = c0764bg.m4850if();
            c0764bg.f8429do++;
            mo780if(m4850if, sb);
            if (sb.length() % 3 == 0) {
                Gy.m777case(c0764bg, sb);
                if (O4.m1602continue(c0764bg.f8431do, c0764bg.f8429do, 3) != 3) {
                    c0764bg.f8436if = 0;
                    break;
                }
            }
        }
        mo781new(c0764bg, sb);
    }

    @Override // defpackage.Gy
    /* renamed from: for */
    public final int mo779for() {
        return 3;
    }

    @Override // defpackage.Gy
    /* renamed from: if */
    public final int mo780if(char c, StringBuilder sb) {
        if (c == '\r') {
            sb.append((char) 0);
        } else if (c == ' ') {
            sb.append((char) 3);
        } else if (c == '*') {
            sb.append((char) 1);
        } else if (c == '>') {
            sb.append((char) 2);
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
        } else {
            if (c < 'A' || c > 'Z') {
                O4.m1629throws(c);
                throw null;
            }
            sb.append((char) ((c - 'A') + 14));
        }
        return 1;
    }

    @Override // defpackage.Gy
    /* renamed from: new */
    public final void mo781new(C0764bg c0764bg, StringBuilder sb) {
        c0764bg.m4851new(c0764bg.m4848do());
        int m4848do = c0764bg.f8430do.f13663do - c0764bg.m4848do();
        c0764bg.f8429do -= sb.length();
        String str = c0764bg.f8431do;
        if ((str.length() - c0764bg.f8435for) - c0764bg.f8429do > 1 || m4848do > 1 || (str.length() - c0764bg.f8435for) - c0764bg.f8429do != m4848do) {
            c0764bg.m4852try((char) 254);
        }
        if (c0764bg.f8436if < 0) {
            c0764bg.f8436if = 0;
        }
    }
}
