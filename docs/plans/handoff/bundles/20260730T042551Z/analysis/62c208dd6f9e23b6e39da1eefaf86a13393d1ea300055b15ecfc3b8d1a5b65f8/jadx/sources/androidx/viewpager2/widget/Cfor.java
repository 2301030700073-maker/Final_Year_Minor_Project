package androidx.viewpager2.widget;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* renamed from: androidx.viewpager2.widget.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor extends RecyclerView.Cthrow {

    /* renamed from: do, reason: not valid java name */
    public int f8096do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinearLayoutManager f8097do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RecyclerView f8098do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewPager2.Celse f8099do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ViewPager2 f8100do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f8101do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f8102do;

    /* renamed from: for, reason: not valid java name */
    public int f8103for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f8104for;

    /* renamed from: if, reason: not valid java name */
    public int f8105if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f8106if;

    /* renamed from: new, reason: not valid java name */
    public int f8107new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f8108new;

    /* renamed from: androidx.viewpager2.widget.for$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public float f8109do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f8110do;

        /* renamed from: if, reason: not valid java name */
        public int f8111if;
    }

    public Cfor(ViewPager2 viewPager2) {
        this.f8100do = viewPager2;
        ViewPager2.Cbreak cbreak = viewPager2.f8066do;
        this.f8098do = cbreak;
        this.f8097do = (LinearLayoutManager) ((RecyclerView) cbreak).f7312do;
        this.f8101do = new Cdo();
        m4716new();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cthrow
    /* renamed from: do */
    public final void mo4457do(int i, RecyclerView recyclerView) {
        ViewPager2.Celse celse;
        ViewPager2.Celse celse2;
        int i2 = this.f8096do;
        boolean z = true;
        if (!(i2 == 1 && this.f8105if == 1) && i == 1) {
            this.f8108new = false;
            this.f8096do = 1;
            int i3 = this.f8107new;
            if (i3 != -1) {
                this.f8103for = i3;
                this.f8107new = -1;
            } else if (this.f8103for == -1) {
                this.f8103for = this.f8097do.f0();
            }
            m4715for(1);
            return;
        }
        if ((i2 == 1 || i2 == 4) && i == 2) {
            if (this.f8106if) {
                m4715for(2);
                this.f8102do = true;
                return;
            }
            return;
        }
        boolean z2 = i2 == 1 || i2 == 4;
        Cdo cdo = this.f8101do;
        if (z2 && i == 0) {
            m4717try();
            if (!this.f8106if) {
                int i4 = cdo.f8110do;
                if (i4 != -1 && (celse2 = this.f8099do) != null) {
                    celse2.mo4711if(0.0f, i4, 0);
                }
            } else if (cdo.f8111if == 0) {
                int i5 = this.f8103for;
                int i6 = cdo.f8110do;
                if (i5 != i6 && (celse = this.f8099do) != null) {
                    celse.mo4710for(i6);
                }
            } else {
                z = false;
            }
            if (z) {
                m4715for(0);
                m4716new();
            }
        }
        if (this.f8096do == 2 && i == 0 && this.f8104for) {
            m4717try();
            if (cdo.f8111if == 0) {
                int i7 = this.f8107new;
                int i8 = cdo.f8110do;
                if (i7 != i8) {
                    if (i8 == -1) {
                        i8 = 0;
                    }
                    ViewPager2.Celse celse3 = this.f8099do;
                    if (celse3 != null) {
                        celse3.mo4710for(i8);
                    }
                }
                m4715for(0);
                m4716new();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4715for(int i) {
        if ((this.f8096do == 3 && this.f8105if == 0) || this.f8105if == i) {
            return;
        }
        this.f8105if = i;
        ViewPager2.Celse celse = this.f8099do;
        if (celse != null) {
            celse.mo4709do(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        if ((r7 < 0) == (r5.f8100do.f8067do.m4388continue() == 1)) goto L17;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.Cthrow
    /* renamed from: if */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4458if(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            r5 = this;
            r6 = 1
            r5.f8106if = r6
            r5.m4717try()
            boolean r0 = r5.f8102do
            r1 = -1
            androidx.viewpager2.widget.for$do r2 = r5.f8101do
            r3 = 0
            if (r0 == 0) goto L46
            r5.f8102do = r3
            if (r8 > 0) goto L2b
            if (r8 != 0) goto L29
            if (r7 >= 0) goto L18
            r7 = 1
            goto L19
        L18:
            r7 = 0
        L19:
            androidx.viewpager2.widget.ViewPager2 r8 = r5.f8100do
            androidx.viewpager2.widget.ViewPager2$case r8 = r8.f8067do
            int r8 = r8.m4388continue()
            if (r8 != r6) goto L25
            r8 = 1
            goto L26
        L25:
            r8 = 0
        L26:
            if (r7 != r8) goto L29
            goto L2b
        L29:
            r7 = 0
            goto L2c
        L2b:
            r7 = 1
        L2c:
            if (r7 == 0) goto L36
            int r7 = r2.f8111if
            if (r7 == 0) goto L36
            int r7 = r2.f8110do
            int r7 = r7 + r6
            goto L38
        L36:
            int r7 = r2.f8110do
        L38:
            r5.f8107new = r7
            int r8 = r5.f8103for
            if (r8 == r7) goto L56
            androidx.viewpager2.widget.ViewPager2$else r8 = r5.f8099do
            if (r8 == 0) goto L56
            r8.mo4710for(r7)
            goto L56
        L46:
            int r7 = r5.f8096do
            if (r7 != 0) goto L56
            int r7 = r2.f8110do
            if (r7 != r1) goto L4f
            r7 = 0
        L4f:
            androidx.viewpager2.widget.ViewPager2$else r8 = r5.f8099do
            if (r8 == 0) goto L56
            r8.mo4710for(r7)
        L56:
            int r7 = r2.f8110do
            if (r7 != r1) goto L5b
            r7 = 0
        L5b:
            float r8 = r2.f8109do
            int r0 = r2.f8111if
            androidx.viewpager2.widget.ViewPager2$else r4 = r5.f8099do
            if (r4 == 0) goto L66
            r4.mo4711if(r8, r7, r0)
        L66:
            int r7 = r2.f8110do
            int r8 = r5.f8107new
            if (r7 == r8) goto L6e
            if (r8 != r1) goto L7c
        L6e:
            int r7 = r2.f8111if
            if (r7 != 0) goto L7c
            int r7 = r5.f8105if
            if (r7 == r6) goto L7c
            r5.m4715for(r3)
            r5.m4716new()
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.Cfor.mo4458if(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4716new() {
        this.f8096do = 0;
        this.f8105if = 0;
        Cdo cdo = this.f8101do;
        cdo.f8110do = -1;
        cdo.f8109do = 0.0f;
        cdo.f8111if = 0;
        this.f8103for = -1;
        this.f8107new = -1;
        this.f8102do = false;
        this.f8106if = false;
        this.f8108new = false;
        this.f8104for = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0123, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x011e, code lost:
    
        if (r5[r1 - 1][1] >= r6) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0152  */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4717try() {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.Cfor.m4717try():void");
    }
}
