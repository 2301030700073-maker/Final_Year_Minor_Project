package b.m.b;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: b.m.b.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0167b {

    /* renamed from: d, reason: collision with root package name */
    public final P f1135d;

    /* renamed from: a, reason: collision with root package name */
    public b.e.h.a f1132a = new b.e.h.a(30);

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1133b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1134c = new ArrayList();
    public int g = 0;
    public final boolean e = false;
    public final G f = new G(this);

    public C0167b(P p) {
        this.f1135d = p;
    }

    public final boolean a(int i) {
        int size = this.f1134c.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0165a c0165a = (C0165a) this.f1134c.get(i2);
            int i3 = c0165a.f1127a;
            if (i3 == 8) {
                if (f(c0165a.f1130d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = c0165a.f1128b;
                int i5 = c0165a.f1130d + i4;
                while (i4 < i5) {
                    if (f(i4, i2 + 1) == i) {
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

    public void b() {
        int size = this.f1134c.size();
        for (int i = 0; i < size; i++) {
            this.f1135d.a((C0165a) this.f1134c.get(i));
        }
        l(this.f1134c);
        this.g = 0;
    }

    public void c() {
        b();
        int size = this.f1133b.size();
        for (int i = 0; i < size; i++) {
            C0165a c0165a = (C0165a) this.f1133b.get(i);
            int i2 = c0165a.f1127a;
            if (i2 == 1) {
                this.f1135d.a(c0165a);
                P p = this.f1135d;
                p.f1120a.offsetPositionRecordsForInsert(c0165a.f1128b, c0165a.f1130d);
                p.f1120a.mItemsAddedOrRemoved = true;
            } else if (i2 == 2) {
                this.f1135d.a(c0165a);
                P p2 = this.f1135d;
                int i3 = c0165a.f1128b;
                int i4 = c0165a.f1130d;
                p2.f1120a.offsetPositionRecordsForRemove(i3, i4, true);
                RecyclerView recyclerView = p2.f1120a;
                recyclerView.mItemsAddedOrRemoved = true;
                recyclerView.mState.f1207c += i4;
            } else if (i2 == 4) {
                this.f1135d.a(c0165a);
                this.f1135d.c(c0165a.f1128b, c0165a.f1130d, c0165a.f1129c);
            } else if (i2 == 8) {
                this.f1135d.a(c0165a);
                P p3 = this.f1135d;
                p3.f1120a.offsetPositionRecordsForMove(c0165a.f1128b, c0165a.f1130d);
                p3.f1120a.mItemsAddedOrRemoved = true;
            }
        }
        l(this.f1133b);
        this.g = 0;
    }

    public final void d(C0165a c0165a) {
        int i;
        int i2 = c0165a.f1127a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m = m(c0165a.f1128b, i2);
        int i3 = c0165a.f1128b;
        int i4 = c0165a.f1127a;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + c0165a);
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < c0165a.f1130d; i6++) {
            int m2 = m((i * i6) + c0165a.f1128b, c0165a.f1127a);
            int i7 = c0165a.f1127a;
            if (i7 == 2 ? m2 == m : i7 == 4 && m2 == m + 1) {
                i5++;
            } else {
                C0165a h = h(c0165a.f1127a, m, i5, c0165a.f1129c);
                e(h, i3);
                if (!this.e) {
                    h.f1129c = null;
                    this.f1132a.b(h);
                }
                if (c0165a.f1127a == 4) {
                    i3 += i5;
                }
                i5 = 1;
                m = m2;
            }
        }
        Object obj = c0165a.f1129c;
        if (!this.e) {
            c0165a.f1129c = null;
            this.f1132a.b(c0165a);
        }
        if (i5 > 0) {
            C0165a h2 = h(c0165a.f1127a, m, i5, obj);
            e(h2, i3);
            if (this.e) {
                return;
            }
            h2.f1129c = null;
            this.f1132a.b(h2);
        }
    }

    public void e(C0165a c0165a, int i) {
        this.f1135d.a(c0165a);
        int i2 = c0165a.f1127a;
        if (i2 != 2) {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            P p = this.f1135d;
            p.f1120a.viewRangeUpdate(i, c0165a.f1130d, c0165a.f1129c);
            p.f1120a.mItemsChanged = true;
            return;
        }
        P p2 = this.f1135d;
        int i3 = c0165a.f1130d;
        p2.f1120a.offsetPositionRecordsForRemove(i, i3, true);
        RecyclerView recyclerView = p2.f1120a;
        recyclerView.mItemsAddedOrRemoved = true;
        recyclerView.mState.f1207c += i3;
    }

    public int f(int i, int i2) {
        int size = this.f1134c.size();
        while (i2 < size) {
            C0165a c0165a = (C0165a) this.f1134c.get(i2);
            int i3 = c0165a.f1127a;
            if (i3 == 8) {
                int i4 = c0165a.f1128b;
                if (i4 == i) {
                    i = c0165a.f1130d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (c0165a.f1130d <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = c0165a.f1128b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = c0165a.f1130d;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += c0165a.f1130d;
                }
            }
            i2++;
        }
        return i;
    }

    public boolean g() {
        return this.f1133b.size() > 0;
    }

    public C0165a h(int i, int i2, int i3, Object obj) {
        C0165a c0165a = (C0165a) this.f1132a.a();
        if (c0165a == null) {
            return new C0165a(i, i2, i3, obj);
        }
        c0165a.f1127a = i;
        c0165a.f1128b = i2;
        c0165a.f1130d = i3;
        c0165a.f1129c = obj;
        return c0165a;
    }

    public final void i(C0165a c0165a) {
        this.f1134c.add(c0165a);
        int i = c0165a.f1127a;
        if (i == 1) {
            P p = this.f1135d;
            p.f1120a.offsetPositionRecordsForInsert(c0165a.f1128b, c0165a.f1130d);
            p.f1120a.mItemsAddedOrRemoved = true;
            return;
        }
        if (i == 2) {
            P p2 = this.f1135d;
            p2.f1120a.offsetPositionRecordsForRemove(c0165a.f1128b, c0165a.f1130d, false);
            p2.f1120a.mItemsAddedOrRemoved = true;
            return;
        }
        if (i == 4) {
            this.f1135d.c(c0165a.f1128b, c0165a.f1130d, c0165a.f1129c);
            return;
        }
        if (i != 8) {
            throw new IllegalArgumentException("Unknown update op type for " + c0165a);
        }
        P p3 = this.f1135d;
        p3.f1120a.offsetPositionRecordsForMove(c0165a.f1128b, c0165a.f1130d);
        p3.f1120a.mItemsAddedOrRemoved = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x00a7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0122 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j() {
        /*
            Method dump skipped, instructions count: 711
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.m.b.C0167b.j():void");
    }

    public void k(C0165a c0165a) {
        if (this.e) {
            return;
        }
        c0165a.f1129c = null;
        this.f1132a.b(c0165a);
    }

    public void l(List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            k((C0165a) list.get(i));
        }
        list.clear();
    }

    public final int m(int i, int i2) {
        for (int size = this.f1134c.size() - 1; size >= 0; size--) {
            C0165a c0165a = (C0165a) this.f1134c.get(size);
            int i3 = c0165a.f1127a;
            if (i3 == 8) {
                int i4 = c0165a.f1128b;
                int i5 = c0165a.f1130d;
                if (i4 >= i5) {
                    i5 = i4;
                    i4 = i5;
                }
                if (i < i4 || i > i5) {
                    int i6 = c0165a.f1128b;
                    if (i < i6) {
                        if (i2 == 1) {
                            c0165a.f1128b = i6 + 1;
                            c0165a.f1130d++;
                        } else if (i2 == 2) {
                            c0165a.f1128b = i6 - 1;
                            c0165a.f1130d--;
                        }
                    }
                } else {
                    int i7 = c0165a.f1128b;
                    if (i4 == i7) {
                        if (i2 == 1) {
                            c0165a.f1130d++;
                        } else if (i2 == 2) {
                            c0165a.f1130d--;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            c0165a.f1128b = i7 + 1;
                        } else if (i2 == 2) {
                            c0165a.f1128b = i7 - 1;
                        }
                        i--;
                    }
                }
            } else {
                int i8 = c0165a.f1128b;
                if (i8 <= i) {
                    if (i3 == 1) {
                        i -= c0165a.f1130d;
                    } else if (i3 == 2) {
                        i += c0165a.f1130d;
                    }
                } else if (i2 == 1) {
                    c0165a.f1128b = i8 + 1;
                } else if (i2 == 2) {
                    c0165a.f1128b = i8 - 1;
                }
            }
        }
        for (int size2 = this.f1134c.size() - 1; size2 >= 0; size2--) {
            C0165a c0165a2 = (C0165a) this.f1134c.get(size2);
            if (c0165a2.f1127a == 8) {
                int i9 = c0165a2.f1130d;
                if (i9 == c0165a2.f1128b || i9 < 0) {
                    this.f1134c.remove(size2);
                    if (!this.e) {
                        c0165a2.f1129c = null;
                        this.f1132a.b(c0165a2);
                    }
                }
            } else if (c0165a2.f1130d <= 0) {
                this.f1134c.remove(size2);
                if (!this.e) {
                    c0165a2.f1129c = null;
                    this.f1132a.b(c0165a2);
                }
            }
        }
        return i;
    }
}
