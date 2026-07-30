package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.Cconst;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import defpackage.V1;
import java.util.List;

/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.Cclass implements RecyclerView.Creturn.Cif {

    /* renamed from: break, reason: not valid java name */
    public final boolean f7247break;

    /* renamed from: case, reason: not valid java name */
    public int f7248case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f7249case;

    /* renamed from: do, reason: not valid java name */
    public SavedState f7250do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7251do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f7252do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f7253do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnative f7254do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f7255do;

    /* renamed from: else, reason: not valid java name */
    public int f7256else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public boolean f7257else;

    /* renamed from: goto, reason: not valid java name */
    public int f7258goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public boolean f7259goto;

    /* renamed from: this, reason: not valid java name */
    public final int f7260this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public boolean f7261this;

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public boolean f7262do;

        /* renamed from: for, reason: not valid java name */
        public int f7263for;

        /* renamed from: new, reason: not valid java name */
        public int f7264new;

        /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f7263for);
            parcel.writeInt(this.f7264new);
            parcel.writeInt(this.f7262do ? 1 : 0);
        }

        public SavedState(Parcel parcel) {
            this.f7263for = parcel.readInt();
            this.f7264new = parcel.readInt();
            this.f7262do = parcel.readInt() == 1;
        }

        @SuppressLint({"UnknownNullness"})
        public SavedState(SavedState savedState) {
            this.f7263for = savedState.f7263for;
            this.f7264new = savedState.f7264new;
            this.f7262do = savedState.f7262do;
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f7265do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cnative f7266do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7267do;

        /* renamed from: if, reason: not valid java name */
        public int f7268if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f7269if;

        public Cdo() {
            m4327new();
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4324do() {
            this.f7268if = this.f7267do ? this.f7266do.mo4544else() : this.f7266do.mo4541catch();
        }

        /* renamed from: for, reason: not valid java name */
        public final void m4325for(View view, int i) {
            Cnative cnative = this.f7266do;
            int mo4542class = Integer.MIN_VALUE == cnative.f7655do ? 0 : cnative.mo4542class() - cnative.f7655do;
            if (mo4542class >= 0) {
                m4326if(view, i);
                return;
            }
            this.f7265do = i;
            if (!this.f7267do) {
                int mo4552try = this.f7266do.mo4552try(view);
                int mo4541catch = mo4552try - this.f7266do.mo4541catch();
                this.f7268if = mo4552try;
                if (mo4541catch > 0) {
                    int mo4544else = (this.f7266do.mo4544else() - Math.min(0, (this.f7266do.mo4544else() - mo4542class) - this.f7266do.mo4548if(view))) - (this.f7266do.mo4546for(view) + mo4552try);
                    if (mo4544else < 0) {
                        this.f7268if -= Math.min(mo4541catch, -mo4544else);
                        return;
                    }
                    return;
                }
                return;
            }
            int mo4544else2 = (this.f7266do.mo4544else() - mo4542class) - this.f7266do.mo4548if(view);
            this.f7268if = this.f7266do.mo4544else() - mo4544else2;
            if (mo4544else2 > 0) {
                int mo4546for = this.f7268if - this.f7266do.mo4546for(view);
                int mo4541catch2 = this.f7266do.mo4541catch();
                int min = mo4546for - (Math.min(this.f7266do.mo4552try(view) - mo4541catch2, 0) + mo4541catch2);
                if (min < 0) {
                    this.f7268if = Math.min(mo4544else2, -min) + this.f7268if;
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4326if(View view, int i) {
            if (this.f7267do) {
                int mo4548if = this.f7266do.mo4548if(view);
                Cnative cnative = this.f7266do;
                this.f7268if = (Integer.MIN_VALUE == cnative.f7655do ? 0 : cnative.mo4542class() - cnative.f7655do) + mo4548if;
            } else {
                this.f7268if = this.f7266do.mo4552try(view);
            }
            this.f7265do = i;
        }

        /* renamed from: new, reason: not valid java name */
        public final void m4327new() {
            this.f7265do = -1;
            this.f7268if = Integer.MIN_VALUE;
            this.f7267do = false;
            this.f7269if = false;
        }

        public final String toString() {
            return "AnchorInfo{mPosition=" + this.f7265do + ", mCoordinate=" + this.f7268if + ", mLayoutFromEnd=" + this.f7267do + ", mValid=" + this.f7269if + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: case, reason: not valid java name */
        public int f7270case;

        /* renamed from: do, reason: not valid java name */
        public int f7271do;

        /* renamed from: for, reason: not valid java name */
        public int f7275for;

        /* renamed from: if, reason: not valid java name */
        public int f7277if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f7278if;

        /* renamed from: new, reason: not valid java name */
        public int f7279new;

        /* renamed from: this, reason: not valid java name */
        public int f7280this;

        /* renamed from: try, reason: not valid java name */
        public int f7281try;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7273do = true;

        /* renamed from: else, reason: not valid java name */
        public int f7274else = 0;

        /* renamed from: goto, reason: not valid java name */
        public int f7276goto = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public List<RecyclerView.Cdefault> f7272do = null;

        /* renamed from: do, reason: not valid java name */
        public final void m4328do(View view) {
            int m4368do;
            int size = this.f7272do.size();
            View view2 = null;
            int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = this.f7272do.get(i2).f7398do;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.m4369for() && (m4368do = (layoutParams.m4368do() - this.f7275for) * this.f7279new) >= 0 && m4368do < i) {
                    view2 = view3;
                    if (m4368do == 0) {
                        break;
                    } else {
                        i = m4368do;
                    }
                }
            }
            if (view2 == null) {
                this.f7275for = -1;
            } else {
                this.f7275for = ((RecyclerView.LayoutParams) view2.getLayoutParams()).m4368do();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final View m4329if(RecyclerView.Cimport cimport) {
            List<RecyclerView.Cdefault> list = this.f7272do;
            if (list == null) {
                View m4436new = cimport.m4436new(this.f7275for);
                this.f7275for += this.f7279new;
                return m4436new;
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = this.f7272do.get(i).f7398do;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.m4369for() && this.f7275for == layoutParams.m4368do()) {
                    m4328do(view);
                    return view;
                }
            }
            return null;
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public int f7282do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7283do;

        /* renamed from: for, reason: not valid java name */
        public boolean f7284for;

        /* renamed from: if, reason: not valid java name */
        public boolean f7285if;
    }

    public LinearLayoutManager() {
        this(1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    public int H(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        if (this.f7248case == 1) {
            return 0;
        }
        return u0(i, cimport, cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void I(int i) {
        this.f7256else = i;
        this.f7258goto = Integer.MIN_VALUE;
        SavedState savedState = this.f7250do;
        if (savedState != null) {
            savedState.f7263for = -1;
        }
        G();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    public int J(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        if (this.f7248case == 0) {
            return 0;
        }
        return u0(i, cimport, cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final boolean Q() {
        boolean z;
        if (((RecyclerView.Cclass) this).f7379for == 1073741824 || ((RecyclerView.Cclass) this).f7381if == 1073741824) {
            return false;
        }
        int m4395throws = m4395throws();
        int i = 0;
        while (true) {
            if (i >= m4395throws) {
                z = false;
                break;
            }
            ViewGroup.LayoutParams layoutParams = m4394switch(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    public void S(RecyclerView recyclerView, int i) {
        Csuper csuper = new Csuper(recyclerView.getContext());
        ((RecyclerView.Creturn) csuper).f7426do = i;
        T(csuper);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public boolean U() {
        return this.f7250do == null && this.f7249case == this.f7261this;
    }

    public void V(RecyclerView.Cstatic cstatic, int[] iArr) {
        int i;
        int mo4542class = cstatic.f7441do != -1 ? this.f7254do.mo4542class() : 0;
        if (this.f7252do.f7281try == -1) {
            i = 0;
        } else {
            i = mo4542class;
            mo4542class = 0;
        }
        iArr[0] = mo4542class;
        iArr[1] = i;
    }

    public void W(RecyclerView.Cstatic cstatic, Cfor cfor, RecyclerView.Cclass.Cfor cfor2) {
        int i = cfor.f7275for;
        if (i < 0 || i >= cstatic.m4449if()) {
            return;
        }
        ((Cconst.Cif) cfor2).m4498do(i, Math.max(0, cfor.f7270case));
    }

    public final int X(RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0) {
            return 0;
        }
        b0();
        Cnative cnative = this.f7254do;
        boolean z = !this.f7247break;
        return Cdefault.m4500do(cstatic, cnative, e0(z), d0(z), this, this.f7247break);
    }

    public final int Y(RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0) {
            return 0;
        }
        b0();
        Cnative cnative = this.f7254do;
        boolean z = !this.f7247break;
        return Cdefault.m4502if(cstatic, cnative, e0(z), d0(z), this, this.f7247break, this.f7259goto);
    }

    public final int Z(RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0) {
            return 0;
        }
        b0();
        Cnative cnative = this.f7254do;
        boolean z = !this.f7247break;
        return Cdefault.m4501for(cstatic, cnative, e0(z), d0(z), this, this.f7247break);
    }

    public final int a0(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.f7248case == 1) ? 1 : Integer.MIN_VALUE : this.f7248case == 0 ? 1 : Integer.MIN_VALUE : this.f7248case == 1 ? -1 : Integer.MIN_VALUE : this.f7248case == 0 ? -1 : Integer.MIN_VALUE : (this.f7248case != 1 && o0()) ? -1 : 1 : (this.f7248case != 1 && o0()) ? 1 : -1;
    }

    public final void b0() {
        if (this.f7252do == null) {
            this.f7252do = new Cfor();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @android.annotation.SuppressLint({"UnknownNullness"})
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4315break(int r7, androidx.recyclerview.widget.RecyclerView.Cclass.Cfor r8) {
        /*
            r6 = this;
            androidx.recyclerview.widget.LinearLayoutManager$SavedState r0 = r6.f7250do
            r1 = 1
            r2 = -1
            r3 = 0
            if (r0 == 0) goto L13
            int r4 = r0.f7263for
            if (r4 < 0) goto Ld
            r5 = 1
            goto Le
        Ld:
            r5 = 0
        Le:
            if (r5 == 0) goto L13
            boolean r0 = r0.f7262do
            goto L22
        L13:
            r6.t0()
            boolean r0 = r6.f7259goto
            int r4 = r6.f7256else
            if (r4 != r2) goto L22
            if (r0 == 0) goto L21
            int r4 = r7 + (-1)
            goto L22
        L21:
            r4 = 0
        L22:
            if (r0 == 0) goto L25
            r1 = -1
        L25:
            r0 = 0
        L26:
            int r2 = r6.f7260this
            if (r0 >= r2) goto L38
            if (r4 < 0) goto L38
            if (r4 >= r7) goto L38
            r2 = r8
            androidx.recyclerview.widget.const$if r2 = (androidx.recyclerview.widget.Cconst.Cif) r2
            r2.m4498do(r4, r3)
            int r4 = r4 + r1
            int r0 = r0 + 1
            goto L26
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.mo4315break(int, androidx.recyclerview.widget.RecyclerView$class$for):void");
    }

    public final int c0(RecyclerView.Cimport cimport, Cfor cfor, RecyclerView.Cstatic cstatic, boolean z) {
        int i = cfor.f7277if;
        int i2 = cfor.f7270case;
        if (i2 != Integer.MIN_VALUE) {
            if (i < 0) {
                cfor.f7270case = i2 + i;
            }
            r0(cimport, cfor);
        }
        int i3 = cfor.f7277if + cfor.f7274else;
        while (true) {
            if (!cfor.f7278if && i3 <= 0) {
                break;
            }
            int i4 = cfor.f7275for;
            if (!(i4 >= 0 && i4 < cstatic.m4449if())) {
                break;
            }
            Cif cif = this.f7253do;
            cif.f7282do = 0;
            cif.f7283do = false;
            cif.f7285if = false;
            cif.f7284for = false;
            p0(cimport, cstatic, cfor, cif);
            if (!cif.f7283do) {
                int i5 = cfor.f7271do;
                int i6 = cif.f7282do;
                cfor.f7271do = (cfor.f7281try * i6) + i5;
                if (!cif.f7285if || cfor.f7272do != null || !cstatic.f7448if) {
                    cfor.f7277if -= i6;
                    i3 -= i6;
                }
                int i7 = cfor.f7270case;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + i6;
                    cfor.f7270case = i8;
                    int i9 = cfor.f7277if;
                    if (i9 < 0) {
                        cfor.f7270case = i8 + i9;
                    }
                    r0(cimport, cfor);
                }
                if (z && cif.f7284for) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - cfor.f7277if;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: case, reason: not valid java name */
    public final boolean mo4316case() {
        return this.f7248case == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    /* renamed from: catch, reason: not valid java name */
    public final int mo4317catch(RecyclerView.Cstatic cstatic) {
        return X(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    /* renamed from: class */
    public int mo4304class(RecyclerView.Cstatic cstatic) {
        return Y(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    /* renamed from: const */
    public int mo4305const(RecyclerView.Cstatic cstatic) {
        return Z(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final boolean d() {
        return true;
    }

    public final View d0(boolean z) {
        return this.f7259goto ? i0(0, m4395throws(), z) : i0(m4395throws() - 1, -1, z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Creturn.Cif
    @SuppressLint({"UnknownNullness"})
    /* renamed from: do, reason: not valid java name */
    public final PointF mo4318do(int i) {
        if (m4395throws() == 0) {
            return null;
        }
        int i2 = (i < RecyclerView.Cclass.m4380implements(m4394switch(0))) != this.f7259goto ? -1 : 1;
        return this.f7248case == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    public final View e0(boolean z) {
        return this.f7259goto ? i0(m4395throws() - 1, -1, z) : i0(0, m4395throws(), z);
    }

    public final int f0() {
        View i0 = i0(0, m4395throws(), false);
        if (i0 == null) {
            return -1;
        }
        return RecyclerView.Cclass.m4380implements(i0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    /* renamed from: final, reason: not valid java name */
    public final int mo4319final(RecyclerView.Cstatic cstatic) {
        return X(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    /* renamed from: for, reason: not valid java name */
    public final void mo4320for(String str) {
        if (this.f7250do == null) {
            super.mo4320for(str);
        }
    }

    public final int g0() {
        View i0 = i0(m4395throws() - 1, -1, false);
        if (i0 == null) {
            return -1;
        }
        return RecyclerView.Cclass.m4380implements(i0);
    }

    public final View h0(int i, int i2) {
        int i3;
        int i4;
        b0();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return m4394switch(i);
        }
        if (this.f7254do.mo4552try(m4394switch(i)) < this.f7254do.mo4541catch()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.f7248case == 0 ? ((RecyclerView.Cclass) this).f7377do.m4554do(i, i2, i3, i4) : ((RecyclerView.Cclass) this).f7382if.m4554do(i, i2, i3, i4);
    }

    public final View i0(int i, int i2, boolean z) {
        b0();
        int i3 = z ? 24579 : 320;
        return this.f7248case == 0 ? ((RecyclerView.Cclass) this).f7377do.m4554do(i, i2, i3, 320) : ((RecyclerView.Cclass) this).f7382if.m4554do(i, i2, i3, 320);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    /* renamed from: import, reason: not valid java name */
    public final View mo4321import(int i) {
        int m4395throws = m4395throws();
        if (m4395throws == 0) {
            return null;
        }
        int m4380implements = i - RecyclerView.Cclass.m4380implements(m4394switch(0));
        if (m4380implements >= 0 && m4380implements < m4395throws) {
            View m4394switch = m4394switch(m4380implements);
            if (RecyclerView.Cclass.m4380implements(m4394switch) == i) {
                return m4394switch;
            }
        }
        return super.mo4321import(i);
    }

    public View j0(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        b0();
        int m4395throws = m4395throws();
        if (z2) {
            i2 = m4395throws() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = m4395throws;
            i2 = 0;
            i3 = 1;
        }
        int m4449if = cstatic.m4449if();
        int mo4541catch = this.f7254do.mo4541catch();
        int mo4544else = this.f7254do.mo4544else();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i2 != i) {
            View m4394switch = m4394switch(i2);
            int m4380implements = RecyclerView.Cclass.m4380implements(m4394switch);
            int mo4552try = this.f7254do.mo4552try(m4394switch);
            int mo4548if = this.f7254do.mo4548if(m4394switch);
            if (m4380implements >= 0 && m4380implements < m4449if) {
                if (!((RecyclerView.LayoutParams) m4394switch.getLayoutParams()).m4369for()) {
                    boolean z3 = mo4548if <= mo4541catch && mo4552try < mo4541catch;
                    boolean z4 = mo4552try >= mo4544else && mo4548if > mo4544else;
                    if (!z3 && !z4) {
                        return m4394switch;
                    }
                    if (z) {
                        if (!z4) {
                            if (view != null) {
                            }
                            view = m4394switch;
                        }
                        view2 = m4394switch;
                    } else {
                        if (!z3) {
                            if (view != null) {
                            }
                            view = m4394switch;
                        }
                        view2 = m4394switch;
                    }
                } else if (view3 == null) {
                    view3 = m4394switch;
                }
            }
            i2 += i3;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    public final void k(RecyclerView recyclerView) {
    }

    public final int k0(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, boolean z) {
        int mo4544else;
        int mo4544else2 = this.f7254do.mo4544else() - i;
        if (mo4544else2 <= 0) {
            return 0;
        }
        int i2 = -u0(-mo4544else2, cimport, cstatic);
        int i3 = i + i2;
        if (!z || (mo4544else = this.f7254do.mo4544else() - i3) <= 0) {
            return i2;
        }
        this.f7254do.mo4550super(mo4544else);
        return mo4544else + i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    public View l(View view, int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        int a0;
        t0();
        if (m4395throws() == 0 || (a0 = a0(i)) == Integer.MIN_VALUE) {
            return null;
        }
        b0();
        x0(a0, (int) (this.f7254do.mo4542class() * 0.33333334f), false, cstatic);
        Cfor cfor = this.f7252do;
        cfor.f7270case = Integer.MIN_VALUE;
        cfor.f7273do = false;
        c0(cimport, cfor, cstatic, true);
        View h0 = a0 == -1 ? this.f7259goto ? h0(m4395throws() - 1, -1) : h0(0, m4395throws()) : this.f7259goto ? h0(0, m4395throws()) : h0(m4395throws() - 1, -1);
        View n0 = a0 == -1 ? n0() : m0();
        if (!n0.hasFocusable()) {
            return h0;
        }
        if (h0 == null) {
            return null;
        }
        return n0;
    }

    public final int l0(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, boolean z) {
        int mo4541catch;
        int mo4541catch2 = i - this.f7254do.mo4541catch();
        if (mo4541catch2 <= 0) {
            return 0;
        }
        int i2 = -u0(mo4541catch2, cimport, cstatic);
        int i3 = i + i2;
        if (!z || (mo4541catch = i3 - this.f7254do.mo4541catch()) <= 0) {
            return i2;
        }
        this.f7254do.mo4550super(-mo4541catch);
        return i2 - mo4541catch;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    public final void m(AccessibilityEvent accessibilityEvent) {
        super.m(accessibilityEvent);
        if (m4395throws() > 0) {
            accessibilityEvent.setFromIndex(f0());
            accessibilityEvent.setToIndex(g0());
        }
    }

    public final View m0() {
        return m4394switch(this.f7259goto ? 0 : m4395throws() - 1);
    }

    public final View n0() {
        return m4394switch(this.f7259goto ? m4395throws() - 1 : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    /* renamed from: native */
    public RecyclerView.LayoutParams mo4308native() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public final boolean o0() {
        return m4388continue() == 1;
    }

    public void p0(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, Cfor cfor, Cif cif) {
        int i;
        int i2;
        int i3;
        int i4;
        View m4329if = cfor.m4329if(cimport);
        if (m4329if == null) {
            cif.f7283do = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) m4329if.getLayoutParams();
        if (cfor.f7272do == null) {
            if (this.f7259goto == (cfor.f7281try == -1)) {
                m4390if(m4329if, false, -1);
            } else {
                m4390if(m4329if, false, 0);
            }
        } else {
            if (this.f7259goto == (cfor.f7281try == -1)) {
                m4390if(m4329if, true, -1);
            } else {
                m4390if(m4329if, true, 0);
            }
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) m4329if.getLayoutParams();
        Rect m4351instanceof = ((RecyclerView.Cclass) this).f7375do.m4351instanceof(m4329if);
        int i5 = m4351instanceof.left + m4351instanceof.right + 0;
        int i6 = m4351instanceof.top + m4351instanceof.bottom + 0;
        int m4378default = RecyclerView.Cclass.m4378default(mo4323try(), ((RecyclerView.Cclass) this).f7384new, ((RecyclerView.Cclass) this).f7381if, m4393protected() + m4391interface() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin + i5, ((ViewGroup.MarginLayoutParams) layoutParams2).width);
        int m4378default2 = RecyclerView.Cclass.m4378default(mo4316case(), ((RecyclerView.Cclass) this).f7386try, ((RecyclerView.Cclass) this).f7379for, m4397volatile() + m4396transient() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) layoutParams2).height);
        if (P(m4329if, m4378default, m4378default2, layoutParams2)) {
            m4329if.measure(m4378default, m4378default2);
        }
        cif.f7282do = this.f7254do.mo4546for(m4329if);
        if (this.f7248case == 1) {
            if (o0()) {
                i4 = ((RecyclerView.Cclass) this).f7384new - m4393protected();
                i = i4 - this.f7254do.mo4549new(m4329if);
            } else {
                i = m4391interface();
                i4 = this.f7254do.mo4549new(m4329if) + i;
            }
            if (cfor.f7281try == -1) {
                i2 = cfor.f7271do;
                i3 = i2 - cif.f7282do;
            } else {
                i3 = cfor.f7271do;
                i2 = cif.f7282do + i3;
            }
        } else {
            int m4396transient = m4396transient();
            int mo4549new = this.f7254do.mo4549new(m4329if) + m4396transient;
            if (cfor.f7281try == -1) {
                int i7 = cfor.f7271do;
                int i8 = i7 - cif.f7282do;
                i4 = i7;
                i2 = mo4549new;
                i = i8;
                i3 = m4396transient;
            } else {
                int i9 = cfor.f7271do;
                int i10 = cif.f7282do + i9;
                i = i9;
                i2 = mo4549new;
                i3 = m4396transient;
                i4 = i10;
            }
        }
        RecyclerView.Cclass.f(m4329if, i, i3, i4, i2);
        if (layoutParams.m4369for() || layoutParams.m4370if()) {
            cif.f7285if = true;
        }
        cif.f7284for = m4329if.hasFocusable();
    }

    public void q0(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, Cdo cdo, int i) {
    }

    public final void r0(RecyclerView.Cimport cimport, Cfor cfor) {
        if (!cfor.f7273do || cfor.f7278if) {
            return;
        }
        int i = cfor.f7270case;
        int i2 = cfor.f7276goto;
        if (cfor.f7281try == -1) {
            int m4395throws = m4395throws();
            if (i < 0) {
                return;
            }
            int mo4540case = (this.f7254do.mo4540case() - i) + i2;
            if (this.f7259goto) {
                for (int i3 = 0; i3 < m4395throws; i3++) {
                    View m4394switch = m4394switch(i3);
                    if (this.f7254do.mo4552try(m4394switch) < mo4540case || this.f7254do.mo4545final(m4394switch) < mo4540case) {
                        s0(cimport, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = m4395throws - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View m4394switch2 = m4394switch(i5);
                if (this.f7254do.mo4552try(m4394switch2) < mo4540case || this.f7254do.mo4545final(m4394switch2) < mo4540case) {
                    s0(cimport, i4, i5);
                    return;
                }
            }
            return;
        }
        if (i < 0) {
            return;
        }
        int i6 = i - i2;
        int m4395throws2 = m4395throws();
        if (!this.f7259goto) {
            for (int i7 = 0; i7 < m4395throws2; i7++) {
                View m4394switch3 = m4394switch(i7);
                if (this.f7254do.mo4548if(m4394switch3) > i6 || this.f7254do.mo4543const(m4394switch3) > i6) {
                    s0(cimport, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = m4395throws2 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View m4394switch4 = m4394switch(i9);
            if (this.f7254do.mo4548if(m4394switch4) > i6 || this.f7254do.mo4543const(m4394switch4) > i6) {
                s0(cimport, i8, i9);
                return;
            }
        }
    }

    public final void s0(RecyclerView.Cimport cimport, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                View m4394switch = m4394switch(i);
                E(i);
                cimport.m4437this(m4394switch);
                i--;
            }
            return;
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            View m4394switch2 = m4394switch(i2);
            E(i2);
            cimport.m4437this(m4394switch2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    /* renamed from: super */
    public int mo4311super(RecyclerView.Cstatic cstatic) {
        return Y(cstatic);
    }

    public final void t0() {
        if (this.f7248case == 1 || !o0()) {
            this.f7259goto = this.f7257else;
        } else {
            this.f7259goto = !this.f7257else;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    /* renamed from: this, reason: not valid java name */
    public final void mo4322this(int i, int i2, RecyclerView.Cstatic cstatic, RecyclerView.Cclass.Cfor cfor) {
        if (this.f7248case != 0) {
            i = i2;
        }
        if (m4395throws() == 0 || i == 0) {
            return;
        }
        b0();
        x0(i > 0 ? 1 : -1, Math.abs(i), true, cstatic);
        W(cstatic, this.f7252do, cfor);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    /* renamed from: throw */
    public int mo4312throw(RecyclerView.Cstatic cstatic) {
        return Z(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: try, reason: not valid java name */
    public final boolean mo4323try() {
        return this.f7248case == 0;
    }

    public final int u0(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0 || i == 0) {
            return 0;
        }
        b0();
        this.f7252do.f7273do = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        x0(i2, abs, true, cstatic);
        Cfor cfor = this.f7252do;
        int c0 = c0(cimport, cfor, cstatic, false) + cfor.f7270case;
        if (c0 < 0) {
            return 0;
        }
        if (abs > c0) {
            i = i2 * c0;
        }
        this.f7254do.mo4550super(-i);
        this.f7252do.f7280this = i;
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0233  */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @android.annotation.SuppressLint({"UnknownNullness"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void v(androidx.recyclerview.widget.RecyclerView.Cimport r18, androidx.recyclerview.widget.RecyclerView.Cstatic r19) {
        /*
            Method dump skipped, instructions count: 1105
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.v(androidx.recyclerview.widget.RecyclerView$import, androidx.recyclerview.widget.RecyclerView$static):void");
    }

    public final void v0(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(V1.m2494case("invalid orientation:", i));
        }
        mo4320for(null);
        if (i != this.f7248case || this.f7254do == null) {
            Cnative m4553do = Cnative.m4553do(this, i);
            this.f7254do = m4553do;
            this.f7251do.f7266do = m4553do;
            this.f7248case = i;
            G();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    public void w(RecyclerView.Cstatic cstatic) {
        this.f7250do = null;
        this.f7256else = -1;
        this.f7258goto = Integer.MIN_VALUE;
        this.f7251do.m4327new();
    }

    public void w0(boolean z) {
        mo4320for(null);
        if (this.f7261this == z) {
            return;
        }
        this.f7261this = z;
        G();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    public final void x(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f7250do = savedState;
            if (this.f7256else != -1) {
                savedState.f7263for = -1;
            }
            G();
        }
    }

    public final void x0(int i, int i2, boolean z, RecyclerView.Cstatic cstatic) {
        int mo4541catch;
        this.f7252do.f7278if = this.f7254do.mo4551this() == 0 && this.f7254do.mo4540case() == 0;
        this.f7252do.f7281try = i;
        int[] iArr = this.f7255do;
        iArr[0] = 0;
        iArr[1] = 0;
        V(cstatic, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        boolean z2 = i == 1;
        Cfor cfor = this.f7252do;
        int i3 = z2 ? max2 : max;
        cfor.f7274else = i3;
        if (!z2) {
            max = max2;
        }
        cfor.f7276goto = max;
        if (z2) {
            cfor.f7274else = this.f7254do.mo4547goto() + i3;
            View m0 = m0();
            Cfor cfor2 = this.f7252do;
            cfor2.f7279new = this.f7259goto ? -1 : 1;
            int m4380implements = RecyclerView.Cclass.m4380implements(m0);
            Cfor cfor3 = this.f7252do;
            cfor2.f7275for = m4380implements + cfor3.f7279new;
            cfor3.f7271do = this.f7254do.mo4548if(m0);
            mo4541catch = this.f7254do.mo4548if(m0) - this.f7254do.mo4544else();
        } else {
            View n0 = n0();
            Cfor cfor4 = this.f7252do;
            cfor4.f7274else = this.f7254do.mo4541catch() + cfor4.f7274else;
            Cfor cfor5 = this.f7252do;
            cfor5.f7279new = this.f7259goto ? 1 : -1;
            int m4380implements2 = RecyclerView.Cclass.m4380implements(n0);
            Cfor cfor6 = this.f7252do;
            cfor5.f7275for = m4380implements2 + cfor6.f7279new;
            cfor6.f7271do = this.f7254do.mo4552try(n0);
            mo4541catch = (-this.f7254do.mo4552try(n0)) + this.f7254do.mo4541catch();
        }
        Cfor cfor7 = this.f7252do;
        cfor7.f7277if = i2;
        if (z) {
            cfor7.f7277if = i2 - mo4541catch;
        }
        cfor7.f7270case = mo4541catch;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    @SuppressLint({"UnknownNullness"})
    public final Parcelable y() {
        SavedState savedState = this.f7250do;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (m4395throws() > 0) {
            b0();
            boolean z = this.f7249case ^ this.f7259goto;
            savedState2.f7262do = z;
            if (z) {
                View m0 = m0();
                savedState2.f7264new = this.f7254do.mo4544else() - this.f7254do.mo4548if(m0);
                savedState2.f7263for = RecyclerView.Cclass.m4380implements(m0);
            } else {
                View n0 = n0();
                savedState2.f7263for = RecyclerView.Cclass.m4380implements(n0);
                savedState2.f7264new = this.f7254do.mo4552try(n0) - this.f7254do.mo4541catch();
            }
        } else {
            savedState2.f7263for = -1;
        }
        return savedState2;
    }

    public final void y0(int i, int i2) {
        this.f7252do.f7277if = this.f7254do.mo4544else() - i2;
        Cfor cfor = this.f7252do;
        cfor.f7279new = this.f7259goto ? -1 : 1;
        cfor.f7275for = i;
        cfor.f7281try = 1;
        cfor.f7271do = i2;
        cfor.f7270case = Integer.MIN_VALUE;
    }

    public final void z0(int i, int i2) {
        this.f7252do.f7277if = i2 - this.f7254do.mo4541catch();
        Cfor cfor = this.f7252do;
        cfor.f7275for = i;
        cfor.f7279new = this.f7259goto ? 1 : -1;
        cfor.f7281try = -1;
        cfor.f7271do = i2;
        cfor.f7270case = Integer.MIN_VALUE;
    }

    public LinearLayoutManager(int i) {
        this.f7248case = 1;
        this.f7257else = false;
        this.f7259goto = false;
        this.f7261this = false;
        this.f7247break = true;
        this.f7256else = -1;
        this.f7258goto = Integer.MIN_VALUE;
        this.f7250do = null;
        this.f7251do = new Cdo();
        this.f7253do = new Cif();
        this.f7260this = 2;
        this.f7255do = new int[2];
        v0(i);
        mo4320for(null);
        if (this.f7257else) {
            this.f7257else = false;
            G();
        }
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f7248case = 1;
        this.f7257else = false;
        this.f7259goto = false;
        this.f7261this = false;
        this.f7247break = true;
        this.f7256else = -1;
        this.f7258goto = Integer.MIN_VALUE;
        this.f7250do = null;
        this.f7251do = new Cdo();
        this.f7253do = new Cif();
        this.f7260this = 2;
        this.f7255do = new int[2];
        RecyclerView.Cclass.Cnew m4381instanceof = RecyclerView.Cclass.m4381instanceof(context, attributeSet, i, i2);
        v0(m4381instanceof.f7390do);
        boolean z = m4381instanceof.f7391do;
        mo4320for(null);
        if (z != this.f7257else) {
            this.f7257else = z;
            G();
        }
        w0(m4381instanceof.f7393if);
    }
}
