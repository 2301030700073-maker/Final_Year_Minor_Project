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
import defpackage.C3385nL;
import defpackage.QK;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.Cclass implements RecyclerView.Creturn.Cif {

    /* renamed from: break, reason: not valid java name and collision with other field name */
    public final boolean f7479break;

    /* renamed from: case, reason: not valid java name */
    public int f7480case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f7481case;

    /* renamed from: catch, reason: not valid java name */
    public final int f7482catch;

    /* renamed from: do, reason: not valid java name */
    public final Rect f7483do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LazySpanLookup f7484do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SavedState f7485do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7486do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f7487do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfinal f7488do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnative f7489do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public BitSet f7490do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f7491do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor[] f7492do;

    /* renamed from: else, reason: not valid java name */
    public int f7493else;

    /* renamed from: goto, reason: not valid java name */
    public int f7495goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public boolean f7496goto;

    /* renamed from: if, reason: not valid java name */
    public Cnative f7497if;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public boolean f7499this;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public boolean f7494else = false;

    /* renamed from: this, reason: not valid java name */
    public int f7498this = -1;

    /* renamed from: break, reason: not valid java name */
    public int f7478break = Integer.MIN_VALUE;

    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: do, reason: not valid java name */
        public Cfor f7500do;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: case, reason: not valid java name */
        public int f7507case;

        /* renamed from: do, reason: not valid java name */
        public List<LazySpanLookup.FullSpanItem> f7508do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7509do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int[] f7510do;

        /* renamed from: for, reason: not valid java name */
        public int f7511for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f7512for;

        /* renamed from: if, reason: not valid java name */
        public boolean f7513if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int[] f7514if;

        /* renamed from: new, reason: not valid java name */
        public int f7515new;

        /* renamed from: try, reason: not valid java name */
        public int f7516try;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState$do, reason: invalid class name */
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
            parcel.writeInt(this.f7511for);
            parcel.writeInt(this.f7515new);
            parcel.writeInt(this.f7516try);
            if (this.f7516try > 0) {
                parcel.writeIntArray(this.f7510do);
            }
            parcel.writeInt(this.f7507case);
            if (this.f7507case > 0) {
                parcel.writeIntArray(this.f7514if);
            }
            parcel.writeInt(this.f7509do ? 1 : 0);
            parcel.writeInt(this.f7513if ? 1 : 0);
            parcel.writeInt(this.f7512for ? 1 : 0);
            parcel.writeList(this.f7508do);
        }

        public SavedState(Parcel parcel) {
            this.f7511for = parcel.readInt();
            this.f7515new = parcel.readInt();
            int readInt = parcel.readInt();
            this.f7516try = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f7510do = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f7507case = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f7514if = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f7509do = parcel.readInt() == 1;
            this.f7513if = parcel.readInt() == 1;
            this.f7512for = parcel.readInt() == 1;
            this.f7508do = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f7516try = savedState.f7516try;
            this.f7511for = savedState.f7511for;
            this.f7515new = savedState.f7515new;
            this.f7510do = savedState.f7510do;
            this.f7507case = savedState.f7507case;
            this.f7514if = savedState.f7514if;
            this.f7509do = savedState.f7509do;
            this.f7513if = savedState.f7513if;
            this.f7512for = savedState.f7512for;
            this.f7508do = savedState.f7508do;
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            StaggeredGridLayoutManager.this.W();
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$for, reason: invalid class name */
    public class Cfor {

        /* renamed from: new, reason: not valid java name */
        public final int f7523new;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<View> f7520do = new ArrayList<>();

        /* renamed from: do, reason: not valid java name */
        public int f7518do = Integer.MIN_VALUE;

        /* renamed from: if, reason: not valid java name */
        public int f7522if = Integer.MIN_VALUE;

        /* renamed from: for, reason: not valid java name */
        public int f7521for = 0;

        public Cfor(int i) {
            this.f7523new = i;
        }

        /* renamed from: goto, reason: not valid java name */
        public static LayoutParams m4472goto(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        /* renamed from: case, reason: not valid java name */
        public final int m4473case(int i) {
            int i2 = this.f7522if;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f7520do.size() == 0) {
                return i;
            }
            m4474do();
            return this.f7522if;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4474do() {
            View view = this.f7520do.get(r0.size() - 1);
            LayoutParams m4472goto = m4472goto(view);
            this.f7522if = StaggeredGridLayoutManager.this.f7489do.mo4548if(view);
            m4472goto.getClass();
        }

        /* renamed from: else, reason: not valid java name */
        public final View m4475else(int i, int i2) {
            ArrayList<View> arrayList = this.f7520do;
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            View view = null;
            if (i2 != -1) {
                int size = arrayList.size() - 1;
                while (size >= 0) {
                    View view2 = arrayList.get(size);
                    if ((staggeredGridLayoutManager.f7481case && RecyclerView.Cclass.m4380implements(view2) >= i) || ((!staggeredGridLayoutManager.f7481case && RecyclerView.Cclass.m4380implements(view2) <= i) || !view2.hasFocusable())) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = arrayList.size();
                int i3 = 0;
                while (i3 < size2) {
                    View view3 = arrayList.get(i3);
                    if ((staggeredGridLayoutManager.f7481case && RecyclerView.Cclass.m4380implements(view3) <= i) || ((!staggeredGridLayoutManager.f7481case && RecyclerView.Cclass.m4380implements(view3) >= i) || !view3.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view = view3;
                }
            }
            return view;
        }

        /* renamed from: for, reason: not valid java name */
        public final int m4476for() {
            return StaggeredGridLayoutManager.this.f7481case ? m4480try(r1.size() - 1, -1) : m4480try(0, this.f7520do.size());
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4477if() {
            this.f7520do.clear();
            this.f7518do = Integer.MIN_VALUE;
            this.f7522if = Integer.MIN_VALUE;
            this.f7521for = 0;
        }

        /* renamed from: new, reason: not valid java name */
        public final int m4478new() {
            return StaggeredGridLayoutManager.this.f7481case ? m4480try(0, this.f7520do.size()) : m4480try(r1.size() - 1, -1);
        }

        /* renamed from: this, reason: not valid java name */
        public final int m4479this(int i) {
            int i2 = this.f7518do;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            ArrayList<View> arrayList = this.f7520do;
            if (arrayList.size() == 0) {
                return i;
            }
            View view = arrayList.get(0);
            LayoutParams m4472goto = m4472goto(view);
            this.f7518do = StaggeredGridLayoutManager.this.f7489do.mo4552try(view);
            m4472goto.getClass();
            return this.f7518do;
        }

        /* renamed from: try, reason: not valid java name */
        public final int m4480try(int i, int i2) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            int mo4541catch = staggeredGridLayoutManager.f7489do.mo4541catch();
            int mo4544else = staggeredGridLayoutManager.f7489do.mo4544else();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f7520do.get(i);
                int mo4552try = staggeredGridLayoutManager.f7489do.mo4552try(view);
                int mo4548if = staggeredGridLayoutManager.f7489do.mo4548if(view);
                boolean z = mo4552try <= mo4544else;
                boolean z2 = mo4548if >= mo4541catch;
                if (z && z2 && (mo4552try < mo4541catch || mo4548if > mo4544else)) {
                    return RecyclerView.Cclass.m4380implements(view);
                }
                i += i3;
            }
            return -1;
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$if, reason: invalid class name */
    public class Cif {

        /* renamed from: do, reason: not valid java name */
        public int f7524do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7526do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int[] f7527do;

        /* renamed from: for, reason: not valid java name */
        public boolean f7528for;

        /* renamed from: if, reason: not valid java name */
        public int f7529if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f7530if;

        public Cif() {
            m4481do();
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4481do() {
            this.f7524do = -1;
            this.f7529if = Integer.MIN_VALUE;
            this.f7526do = false;
            this.f7530if = false;
            this.f7528for = false;
            int[] iArr = this.f7527do;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f7480case = -1;
        this.f7481case = false;
        LazySpanLookup lazySpanLookup = new LazySpanLookup();
        this.f7484do = lazySpanLookup;
        this.f7482catch = 2;
        this.f7483do = new Rect();
        this.f7487do = new Cif();
        this.f7479break = true;
        this.f7486do = new Cdo();
        RecyclerView.Cclass.Cnew m4381instanceof = RecyclerView.Cclass.m4381instanceof(context, attributeSet, i, i2);
        int i3 = m4381instanceof.f7390do;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        mo4320for(null);
        if (i3 != this.f7493else) {
            this.f7493else = i3;
            Cnative cnative = this.f7489do;
            this.f7489do = this.f7497if;
            this.f7497if = cnative;
            G();
        }
        int i4 = m4381instanceof.f7392if;
        mo4320for(null);
        if (i4 != this.f7480case) {
            lazySpanLookup.m4467do();
            G();
            this.f7480case = i4;
            this.f7490do = new BitSet(this.f7480case);
            this.f7492do = new Cfor[this.f7480case];
            for (int i5 = 0; i5 < this.f7480case; i5++) {
                this.f7492do[i5] = new Cfor(i5);
            }
            G();
        }
        boolean z = m4381instanceof.f7391do;
        mo4320for(null);
        SavedState savedState = this.f7485do;
        if (savedState != null && savedState.f7509do != z) {
            savedState.f7509do = z;
        }
        this.f7481case = z;
        G();
        this.f7488do = new Cfinal();
        this.f7489do = Cnative.m4553do(this, this.f7493else);
        this.f7497if = Cnative.m4553do(this, 1 - this.f7493else);
    }

    public static int y0(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final int H(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        return u0(i, cimport, cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void I(int i) {
        SavedState savedState = this.f7485do;
        if (savedState != null && savedState.f7511for != i) {
            savedState.f7510do = null;
            savedState.f7516try = 0;
            savedState.f7511for = -1;
            savedState.f7515new = -1;
        }
        this.f7498this = i;
        this.f7478break = Integer.MIN_VALUE;
        G();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final int J(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        return u0(i, cimport, cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void M(int i, int i2, Rect rect) {
        int m4379goto;
        int m4379goto2;
        int m4393protected = m4393protected() + m4391interface();
        int m4397volatile = m4397volatile() + m4396transient();
        if (this.f7493else == 1) {
            int height = rect.height() + m4397volatile;
            RecyclerView recyclerView = ((RecyclerView.Cclass) this).f7375do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            m4379goto2 = RecyclerView.Cclass.m4379goto(i2, height, recyclerView.getMinimumHeight());
            m4379goto = RecyclerView.Cclass.m4379goto(i, (this.f7495goto * this.f7480case) + m4393protected, ((RecyclerView.Cclass) this).f7375do.getMinimumWidth());
        } else {
            int width = rect.width() + m4393protected;
            RecyclerView recyclerView2 = ((RecyclerView.Cclass) this).f7375do;
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            m4379goto = RecyclerView.Cclass.m4379goto(i, width, recyclerView2.getMinimumWidth());
            m4379goto2 = RecyclerView.Cclass.m4379goto(i2, (this.f7495goto * this.f7480case) + m4397volatile, ((RecyclerView.Cclass) this).f7375do.getMinimumHeight());
        }
        ((RecyclerView.Cclass) this).f7375do.setMeasuredDimension(m4379goto, m4379goto2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void S(RecyclerView recyclerView, int i) {
        Csuper csuper = new Csuper(recyclerView.getContext());
        ((RecyclerView.Creturn) csuper).f7426do = i;
        T(csuper);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final boolean U() {
        return this.f7485do == null;
    }

    public final int V(int i) {
        if (m4395throws() == 0) {
            return this.f7494else ? 1 : -1;
        }
        return (i < f0()) != this.f7494else ? -1 : 1;
    }

    public final boolean W() {
        int f0;
        if (m4395throws() != 0 && this.f7482catch != 0 && ((RecyclerView.Cclass) this).f7383if) {
            if (this.f7494else) {
                f0 = g0();
                f0();
            } else {
                f0 = f0();
                g0();
            }
            if (f0 == 0 && k0() != null) {
                this.f7484do.m4467do();
                ((RecyclerView.Cclass) this).f7378do = true;
                G();
                return true;
            }
        }
        return false;
    }

    public final int X(RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0) {
            return 0;
        }
        Cnative cnative = this.f7489do;
        boolean z = this.f7479break;
        return Cdefault.m4500do(cstatic, cnative, c0(!z), b0(!z), this, this.f7479break);
    }

    public final int Y(RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0) {
            return 0;
        }
        Cnative cnative = this.f7489do;
        boolean z = this.f7479break;
        return Cdefault.m4502if(cstatic, cnative, c0(!z), b0(!z), this, this.f7479break, this.f7494else);
    }

    public final int Z(RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0) {
            return 0;
        }
        Cnative cnative = this.f7489do;
        boolean z = this.f7479break;
        return Cdefault.m4501for(cstatic, cnative, c0(!z), b0(!z), this, this.f7479break);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v19 */
    public final int a0(RecyclerView.Cimport cimport, Cfinal cfinal, RecyclerView.Cstatic cstatic) {
        Cfor cfor;
        ?? r8;
        int m4479this;
        int mo4546for;
        int mo4541catch;
        int mo4546for2;
        int i;
        int i2;
        int i3;
        int i4 = 1;
        this.f7490do.set(0, this.f7480case, true);
        Cfinal cfinal2 = this.f7488do;
        int i5 = cfinal2.f7631for ? cfinal.f7634new == 1 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : Integer.MIN_VALUE : cfinal.f7634new == 1 ? cfinal.f7627case + cfinal.f7628do : cfinal.f7635try - cfinal.f7628do;
        int i6 = cfinal.f7634new;
        for (int i7 = 0; i7 < this.f7480case; i7++) {
            if (!this.f7492do[i7].f7520do.isEmpty()) {
                x0(this.f7492do[i7], i6, i5);
            }
        }
        int mo4544else = this.f7494else ? this.f7489do.mo4544else() : this.f7489do.mo4541catch();
        boolean z = false;
        while (true) {
            int i8 = cfinal.f7632if;
            if (!(i8 >= 0 && i8 < cstatic.m4449if()) || (!cfinal2.f7631for && this.f7490do.isEmpty())) {
                break;
            }
            View m4436new = cimport.m4436new(cfinal.f7632if);
            cfinal.f7632if += cfinal.f7630for;
            LayoutParams layoutParams = (LayoutParams) m4436new.getLayoutParams();
            int m4368do = layoutParams.m4368do();
            LazySpanLookup lazySpanLookup = this.f7484do;
            int[] iArr = lazySpanLookup.f7502do;
            int i9 = (iArr == null || m4368do >= iArr.length) ? -1 : iArr[m4368do];
            if (i9 == -1) {
                if (o0(cfinal.f7634new)) {
                    i2 = this.f7480case - i4;
                    i = -1;
                    i3 = -1;
                } else {
                    i = this.f7480case;
                    i2 = 0;
                    i3 = 1;
                }
                Cfor cfor2 = null;
                if (cfinal.f7634new == i4) {
                    int mo4541catch2 = this.f7489do.mo4541catch();
                    int i10 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                    while (i2 != i) {
                        Cfor cfor3 = this.f7492do[i2];
                        int m4473case = cfor3.m4473case(mo4541catch2);
                        if (m4473case < i10) {
                            i10 = m4473case;
                            cfor2 = cfor3;
                        }
                        i2 += i3;
                    }
                } else {
                    int mo4544else2 = this.f7489do.mo4544else();
                    int i11 = Integer.MIN_VALUE;
                    while (i2 != i) {
                        Cfor cfor4 = this.f7492do[i2];
                        int m4479this2 = cfor4.m4479this(mo4544else2);
                        if (m4479this2 > i11) {
                            cfor2 = cfor4;
                            i11 = m4479this2;
                        }
                        i2 += i3;
                    }
                }
                cfor = cfor2;
                lazySpanLookup.m4469if(m4368do);
                lazySpanLookup.f7502do[m4368do] = cfor.f7523new;
            } else {
                cfor = this.f7492do[i9];
            }
            layoutParams.f7500do = cfor;
            if (cfinal.f7634new == 1) {
                r8 = 0;
                m4390if(m4436new, false, -1);
            } else {
                r8 = 0;
                m4390if(m4436new, false, 0);
            }
            if (this.f7493else == 1) {
                m0(m4436new, RecyclerView.Cclass.m4378default(r8, this.f7495goto, ((RecyclerView.Cclass) this).f7381if, r8, ((ViewGroup.MarginLayoutParams) layoutParams).width), RecyclerView.Cclass.m4378default(true, ((RecyclerView.Cclass) this).f7386try, ((RecyclerView.Cclass) this).f7379for, m4397volatile() + m4396transient(), ((ViewGroup.MarginLayoutParams) layoutParams).height), r8);
            } else {
                m0(m4436new, RecyclerView.Cclass.m4378default(true, ((RecyclerView.Cclass) this).f7384new, ((RecyclerView.Cclass) this).f7381if, m4393protected() + m4391interface(), ((ViewGroup.MarginLayoutParams) layoutParams).width), RecyclerView.Cclass.m4378default(false, this.f7495goto, ((RecyclerView.Cclass) this).f7379for, 0, ((ViewGroup.MarginLayoutParams) layoutParams).height), false);
            }
            if (cfinal.f7634new == 1) {
                mo4546for = cfor.m4473case(mo4544else);
                m4479this = this.f7489do.mo4546for(m4436new) + mo4546for;
            } else {
                m4479this = cfor.m4479this(mo4544else);
                mo4546for = m4479this - this.f7489do.mo4546for(m4436new);
            }
            if (cfinal.f7634new == 1) {
                Cfor cfor5 = layoutParams.f7500do;
                cfor5.getClass();
                LayoutParams layoutParams2 = (LayoutParams) m4436new.getLayoutParams();
                layoutParams2.f7500do = cfor5;
                ArrayList<View> arrayList = cfor5.f7520do;
                arrayList.add(m4436new);
                cfor5.f7522if = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    cfor5.f7518do = Integer.MIN_VALUE;
                }
                if (layoutParams2.m4369for() || layoutParams2.m4370if()) {
                    cfor5.f7521for = StaggeredGridLayoutManager.this.f7489do.mo4546for(m4436new) + cfor5.f7521for;
                }
            } else {
                Cfor cfor6 = layoutParams.f7500do;
                cfor6.getClass();
                LayoutParams layoutParams3 = (LayoutParams) m4436new.getLayoutParams();
                layoutParams3.f7500do = cfor6;
                ArrayList<View> arrayList2 = cfor6.f7520do;
                arrayList2.add(0, m4436new);
                cfor6.f7518do = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    cfor6.f7522if = Integer.MIN_VALUE;
                }
                if (layoutParams3.m4369for() || layoutParams3.m4370if()) {
                    cfor6.f7521for = StaggeredGridLayoutManager.this.f7489do.mo4546for(m4436new) + cfor6.f7521for;
                }
            }
            if (l0() && this.f7493else == 1) {
                mo4546for2 = this.f7497if.mo4544else() - (((this.f7480case - 1) - cfor.f7523new) * this.f7495goto);
                mo4541catch = mo4546for2 - this.f7497if.mo4546for(m4436new);
            } else {
                mo4541catch = this.f7497if.mo4541catch() + (cfor.f7523new * this.f7495goto);
                mo4546for2 = this.f7497if.mo4546for(m4436new) + mo4541catch;
            }
            if (this.f7493else == 1) {
                RecyclerView.Cclass.f(m4436new, mo4541catch, mo4546for, mo4546for2, m4479this);
            } else {
                RecyclerView.Cclass.f(m4436new, mo4546for, mo4541catch, m4479this, mo4546for2);
            }
            x0(cfor, cfinal2.f7634new, i5);
            q0(cimport, cfinal2);
            if (cfinal2.f7633if && m4436new.hasFocusable()) {
                this.f7490do.set(cfor.f7523new, false);
            }
            i4 = 1;
            z = true;
        }
        if (!z) {
            q0(cimport, cfinal2);
        }
        int mo4541catch3 = cfinal2.f7634new == -1 ? this.f7489do.mo4541catch() - i0(this.f7489do.mo4541catch()) : h0(this.f7489do.mo4544else()) - this.f7489do.mo4544else();
        if (mo4541catch3 > 0) {
            return Math.min(cfinal.f7628do, mo4541catch3);
        }
        return 0;
    }

    public final View b0(boolean z) {
        int mo4541catch = this.f7489do.mo4541catch();
        int mo4544else = this.f7489do.mo4544else();
        View view = null;
        for (int m4395throws = m4395throws() - 1; m4395throws >= 0; m4395throws--) {
            View m4394switch = m4394switch(m4395throws);
            int mo4552try = this.f7489do.mo4552try(m4394switch);
            int mo4548if = this.f7489do.mo4548if(m4394switch);
            if (mo4548if > mo4541catch && mo4552try < mo4544else) {
                if (mo4548if <= mo4544else || !z) {
                    return m4394switch;
                }
                if (view == null) {
                    view = m4394switch;
                }
            }
        }
        return view;
    }

    public final View c0(boolean z) {
        int mo4541catch = this.f7489do.mo4541catch();
        int mo4544else = this.f7489do.mo4544else();
        int m4395throws = m4395throws();
        View view = null;
        for (int i = 0; i < m4395throws; i++) {
            View m4394switch = m4394switch(i);
            int mo4552try = this.f7489do.mo4552try(m4394switch);
            if (this.f7489do.mo4548if(m4394switch) > mo4541catch && mo4552try < mo4544else) {
                if (mo4552try >= mo4541catch || !z) {
                    return m4394switch;
                }
                if (view == null) {
                    view = m4394switch;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: case */
    public final boolean mo4316case() {
        return this.f7493else == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: catch */
    public final int mo4317catch(RecyclerView.Cstatic cstatic) {
        return X(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: class */
    public final int mo4304class(RecyclerView.Cstatic cstatic) {
        return Y(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: const */
    public final int mo4305const(RecyclerView.Cstatic cstatic) {
        return Z(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final boolean d() {
        return this.f7482catch != 0;
    }

    public final void d0(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, boolean z) {
        int mo4544else;
        int h0 = h0(Integer.MIN_VALUE);
        if (h0 != Integer.MIN_VALUE && (mo4544else = this.f7489do.mo4544else() - h0) > 0) {
            int i = mo4544else - (-u0(-mo4544else, cimport, cstatic));
            if (!z || i <= 0) {
                return;
            }
            this.f7489do.mo4550super(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Creturn.Cif
    /* renamed from: do */
    public final PointF mo4318do(int i) {
        int V = V(i);
        PointF pointF = new PointF();
        if (V == 0) {
            return null;
        }
        if (this.f7493else == 0) {
            pointF.x = V;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = V;
        }
        return pointF;
    }

    public final void e0(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, boolean z) {
        int mo4541catch;
        int i0 = i0(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (i0 != Integer.MAX_VALUE && (mo4541catch = i0 - this.f7489do.mo4541catch()) > 0) {
            int u0 = mo4541catch - u0(mo4541catch, cimport, cstatic);
            if (!z || u0 <= 0) {
                return;
            }
            this.f7489do.mo4550super(-u0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: else */
    public final boolean mo4306else(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final int f0() {
        if (m4395throws() == 0) {
            return 0;
        }
        return RecyclerView.Cclass.m4380implements(m4394switch(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: final */
    public final int mo4319final(RecyclerView.Cstatic cstatic) {
        return X(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: for */
    public final void mo4320for(String str) {
        if (this.f7485do == null) {
            super.mo4320for(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void g(int i) {
        super.g(i);
        for (int i2 = 0; i2 < this.f7480case; i2++) {
            Cfor cfor = this.f7492do[i2];
            int i3 = cfor.f7518do;
            if (i3 != Integer.MIN_VALUE) {
                cfor.f7518do = i3 + i;
            }
            int i4 = cfor.f7522if;
            if (i4 != Integer.MIN_VALUE) {
                cfor.f7522if = i4 + i;
            }
        }
    }

    public final int g0() {
        int m4395throws = m4395throws();
        if (m4395throws == 0) {
            return 0;
        }
        return RecyclerView.Cclass.m4380implements(m4394switch(m4395throws - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void h(int i) {
        super.h(i);
        for (int i2 = 0; i2 < this.f7480case; i2++) {
            Cfor cfor = this.f7492do[i2];
            int i3 = cfor.f7518do;
            if (i3 != Integer.MIN_VALUE) {
                cfor.f7518do = i3 + i;
            }
            int i4 = cfor.f7522if;
            if (i4 != Integer.MIN_VALUE) {
                cfor.f7522if = i4 + i;
            }
        }
    }

    public final int h0(int i) {
        int m4473case = this.f7492do[0].m4473case(i);
        for (int i2 = 1; i2 < this.f7480case; i2++) {
            int m4473case2 = this.f7492do[i2].m4473case(i);
            if (m4473case2 > m4473case) {
                m4473case = m4473case2;
            }
        }
        return m4473case;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void i() {
        this.f7484do.m4467do();
        for (int i = 0; i < this.f7480case; i++) {
            this.f7492do[i].m4477if();
        }
    }

    public final int i0(int i) {
        int m4479this = this.f7492do[0].m4479this(i);
        for (int i2 = 1; i2 < this.f7480case; i2++) {
            int m4479this2 = this.f7492do[i2].m4479this(i);
            if (m4479this2 < m4479this) {
                m4479this = m4479this2;
            }
        }
        return m4479this;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j0(int r8, int r9, int r10) {
        /*
            r7 = this;
            boolean r0 = r7.f7494else
            if (r0 == 0) goto L9
            int r0 = r7.g0()
            goto Ld
        L9:
            int r0 = r7.f0()
        Ld:
            r1 = 8
            if (r10 != r1) goto L1a
            if (r8 >= r9) goto L16
            int r2 = r9 + 1
            goto L1c
        L16:
            int r2 = r8 + 1
            r3 = r9
            goto L1d
        L1a:
            int r2 = r8 + r9
        L1c:
            r3 = r8
        L1d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r7.f7484do
            r4.m4468for(r3)
            r5 = 1
            if (r10 == r5) goto L36
            r6 = 2
            if (r10 == r6) goto L32
            if (r10 == r1) goto L2b
            goto L39
        L2b:
            r4.m4471try(r8, r5)
            r4.m4470new(r9, r5)
            goto L39
        L32:
            r4.m4471try(r8, r9)
            goto L39
        L36:
            r4.m4470new(r8, r9)
        L39:
            if (r2 > r0) goto L3c
            return
        L3c:
            boolean r8 = r7.f7494else
            if (r8 == 0) goto L45
            int r8 = r7.f0()
            goto L49
        L45:
            int r8 = r7.g0()
        L49:
            if (r3 > r8) goto L4e
            r7.G()
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.j0(int, int, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void k(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = ((RecyclerView.Cclass) this).f7375do;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.f7486do);
        }
        for (int i = 0; i < this.f7480case; i++) {
            this.f7492do[i].m4477if();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d1, code lost:
    
        if (r10 == r11) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e7, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e5, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e3, code lost:
    
        if (r10 == r11) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View k0() {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.k0():android.view.View");
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x004a, code lost:
    
        if (r8.f7493else == 1) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x004f, code lost:
    
        if (r8.f7493else == 0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x005e, code lost:
    
        if (l0() == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x006a, code lost:
    
        if (l0() == false) goto L54;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View l(android.view.View r9, int r10, androidx.recyclerview.widget.RecyclerView.Cimport r11, androidx.recyclerview.widget.RecyclerView.Cstatic r12) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.l(android.view.View, int, androidx.recyclerview.widget.RecyclerView$import, androidx.recyclerview.widget.RecyclerView$static):android.view.View");
    }

    public final boolean l0() {
        return m4388continue() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void m(AccessibilityEvent accessibilityEvent) {
        super.m(accessibilityEvent);
        if (m4395throws() > 0) {
            View c0 = c0(false);
            View b0 = b0(false);
            if (c0 == null || b0 == null) {
                return;
            }
            int m4380implements = RecyclerView.Cclass.m4380implements(c0);
            int m4380implements2 = RecyclerView.Cclass.m4380implements(b0);
            if (m4380implements < m4380implements2) {
                accessibilityEvent.setFromIndex(m4380implements);
                accessibilityEvent.setToIndex(m4380implements2);
            } else {
                accessibilityEvent.setFromIndex(m4380implements2);
                accessibilityEvent.setToIndex(m4380implements);
            }
        }
    }

    public final void m0(View view, int i, int i2, boolean z) {
        Rect rect = this.f7483do;
        m4392new(rect, view);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int y0 = y0(i, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int y02 = y0(i2, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect.bottom);
        if (P(view, y0, y02, layoutParams)) {
            view.measure(y0, y02);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:261:0x040c, code lost:
    
        if (W() != false) goto L254;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n0(androidx.recyclerview.widget.RecyclerView.Cimport r17, androidx.recyclerview.widget.RecyclerView.Cstatic r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 1066
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.n0(androidx.recyclerview.widget.RecyclerView$import, androidx.recyclerview.widget.RecyclerView$static, boolean):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: native */
    public final RecyclerView.LayoutParams mo4308native() {
        return this.f7493else == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    public final boolean o0(int i) {
        if (this.f7493else == 0) {
            return (i == -1) != this.f7494else;
        }
        return ((i == -1) == this.f7494else) == l0();
    }

    public final void p0(int i, RecyclerView.Cstatic cstatic) {
        int f0;
        int i2;
        if (i > 0) {
            f0 = g0();
            i2 = 1;
        } else {
            f0 = f0();
            i2 = -1;
        }
        Cfinal cfinal = this.f7488do;
        cfinal.f7629do = true;
        w0(f0, cstatic);
        v0(i2);
        cfinal.f7632if = f0 + cfinal.f7630for;
        cfinal.f7628do = Math.abs(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: public */
    public final RecyclerView.LayoutParams mo4309public(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void q(int i, int i2) {
        j0(i, i2, 1);
    }

    public final void q0(RecyclerView.Cimport cimport, Cfinal cfinal) {
        if (!cfinal.f7629do || cfinal.f7631for) {
            return;
        }
        if (cfinal.f7628do == 0) {
            if (cfinal.f7634new == -1) {
                r0(cfinal.f7627case, cimport);
                return;
            } else {
                s0(cfinal.f7635try, cimport);
                return;
            }
        }
        int i = 1;
        if (cfinal.f7634new == -1) {
            int i2 = cfinal.f7635try;
            int m4479this = this.f7492do[0].m4479this(i2);
            while (i < this.f7480case) {
                int m4479this2 = this.f7492do[i].m4479this(i2);
                if (m4479this2 > m4479this) {
                    m4479this = m4479this2;
                }
                i++;
            }
            int i3 = i2 - m4479this;
            r0(i3 < 0 ? cfinal.f7627case : cfinal.f7627case - Math.min(i3, cfinal.f7628do), cimport);
            return;
        }
        int i4 = cfinal.f7627case;
        int m4473case = this.f7492do[0].m4473case(i4);
        while (i < this.f7480case) {
            int m4473case2 = this.f7492do[i].m4473case(i4);
            if (m4473case2 < m4473case) {
                m4473case = m4473case2;
            }
            i++;
        }
        int i5 = m4473case - cfinal.f7627case;
        s0(i5 < 0 ? cfinal.f7635try : Math.min(i5, cfinal.f7628do) + cfinal.f7635try, cimport);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void r() {
        this.f7484do.m4467do();
        G();
    }

    public final void r0(int i, RecyclerView.Cimport cimport) {
        for (int m4395throws = m4395throws() - 1; m4395throws >= 0; m4395throws--) {
            View m4394switch = m4394switch(m4395throws);
            if (this.f7489do.mo4552try(m4394switch) < i || this.f7489do.mo4545final(m4394switch) < i) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) m4394switch.getLayoutParams();
            layoutParams.getClass();
            if (layoutParams.f7500do.f7520do.size() == 1) {
                return;
            }
            Cfor cfor = layoutParams.f7500do;
            ArrayList<View> arrayList = cfor.f7520do;
            int size = arrayList.size();
            View remove = arrayList.remove(size - 1);
            LayoutParams m4472goto = Cfor.m4472goto(remove);
            m4472goto.f7500do = null;
            if (m4472goto.m4369for() || m4472goto.m4370if()) {
                cfor.f7521for -= StaggeredGridLayoutManager.this.f7489do.mo4546for(remove);
            }
            if (size == 1) {
                cfor.f7518do = Integer.MIN_VALUE;
            }
            cfor.f7522if = Integer.MIN_VALUE;
            D(m4394switch, cimport);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: return */
    public final RecyclerView.LayoutParams mo4310return(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void s(int i, int i2) {
        j0(i, i2, 8);
    }

    public final void s0(int i, RecyclerView.Cimport cimport) {
        while (m4395throws() > 0) {
            View m4394switch = m4394switch(0);
            if (this.f7489do.mo4548if(m4394switch) > i || this.f7489do.mo4543const(m4394switch) > i) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) m4394switch.getLayoutParams();
            layoutParams.getClass();
            if (layoutParams.f7500do.f7520do.size() == 1) {
                return;
            }
            Cfor cfor = layoutParams.f7500do;
            ArrayList<View> arrayList = cfor.f7520do;
            View remove = arrayList.remove(0);
            LayoutParams m4472goto = Cfor.m4472goto(remove);
            m4472goto.f7500do = null;
            if (arrayList.size() == 0) {
                cfor.f7522if = Integer.MIN_VALUE;
            }
            if (m4472goto.m4369for() || m4472goto.m4370if()) {
                cfor.f7521for -= StaggeredGridLayoutManager.this.f7489do.mo4546for(remove);
            }
            cfor.f7518do = Integer.MIN_VALUE;
            D(m4394switch, cimport);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: super */
    public final int mo4311super(RecyclerView.Cstatic cstatic) {
        return Y(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void t(int i, int i2) {
        j0(i, i2, 2);
    }

    public final void t0() {
        if (this.f7493else == 1 || !l0()) {
            this.f7494else = this.f7481case;
        } else {
            this.f7494else = !this.f7481case;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: this */
    public final void mo4322this(int i, int i2, RecyclerView.Cstatic cstatic, RecyclerView.Cclass.Cfor cfor) {
        Cfinal cfinal;
        int m4473case;
        int i3;
        if (this.f7493else != 0) {
            i = i2;
        }
        if (m4395throws() == 0 || i == 0) {
            return;
        }
        p0(i, cstatic);
        int[] iArr = this.f7491do;
        if (iArr == null || iArr.length < this.f7480case) {
            this.f7491do = new int[this.f7480case];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = this.f7480case;
            cfinal = this.f7488do;
            if (i4 >= i6) {
                break;
            }
            if (cfinal.f7630for == -1) {
                m4473case = cfinal.f7635try;
                i3 = this.f7492do[i4].m4479this(m4473case);
            } else {
                m4473case = this.f7492do[i4].m4473case(cfinal.f7627case);
                i3 = cfinal.f7627case;
            }
            int i7 = m4473case - i3;
            if (i7 >= 0) {
                this.f7491do[i5] = i7;
                i5++;
            }
            i4++;
        }
        Arrays.sort(this.f7491do, 0, i5);
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = cfinal.f7632if;
            if (!(i9 >= 0 && i9 < cstatic.m4449if())) {
                return;
            }
            ((Cconst.Cif) cfor).m4498do(cfinal.f7632if, this.f7491do[i8]);
            cfinal.f7632if += cfinal.f7630for;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: throw */
    public final int mo4312throw(RecyclerView.Cstatic cstatic) {
        return Z(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: try */
    public final boolean mo4323try() {
        return this.f7493else == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void u(int i, int i2) {
        j0(i, i2, 4);
    }

    public final int u0(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0 || i == 0) {
            return 0;
        }
        p0(i, cstatic);
        Cfinal cfinal = this.f7488do;
        int a0 = a0(cimport, cfinal, cstatic);
        if (cfinal.f7628do >= a0) {
            i = i < 0 ? -a0 : a0;
        }
        this.f7489do.mo4550super(-i);
        this.f7496goto = this.f7494else;
        cfinal.f7628do = 0;
        q0(cimport, cfinal);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void v(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        n0(cimport, cstatic, true);
    }

    public final void v0(int i) {
        Cfinal cfinal = this.f7488do;
        cfinal.f7634new = i;
        cfinal.f7630for = this.f7494else != (i == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void w(RecyclerView.Cstatic cstatic) {
        this.f7498this = -1;
        this.f7478break = Integer.MIN_VALUE;
        this.f7485do = null;
        this.f7487do.m4481do();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w0(int r5, androidx.recyclerview.widget.RecyclerView.Cstatic r6) {
        /*
            r4 = this;
            androidx.recyclerview.widget.final r0 = r4.f7488do
            r1 = 0
            r0.f7628do = r1
            r0.f7632if = r5
            androidx.recyclerview.widget.RecyclerView$return r2 = r4.f7374do
            r3 = 1
            if (r2 == 0) goto L12
            boolean r2 = r2.f7432if
            if (r2 == 0) goto L12
            r2 = 1
            goto L13
        L12:
            r2 = 0
        L13:
            if (r2 == 0) goto L33
            int r6 = r6.f7441do
            r2 = -1
            if (r6 == r2) goto L33
            boolean r2 = r4.f7494else
            if (r6 >= r5) goto L20
            r5 = 1
            goto L21
        L20:
            r5 = 0
        L21:
            if (r2 != r5) goto L2a
            androidx.recyclerview.widget.native r5 = r4.f7489do
            int r5 = r5.mo4542class()
            goto L34
        L2a:
            androidx.recyclerview.widget.native r5 = r4.f7489do
            int r5 = r5.mo4542class()
            r6 = r5
            r5 = 0
            goto L35
        L33:
            r5 = 0
        L34:
            r6 = 0
        L35:
            androidx.recyclerview.widget.RecyclerView r2 = r4.f7375do
            if (r2 == 0) goto L3f
            boolean r2 = r2.f7333do
            if (r2 == 0) goto L3f
            r2 = 1
            goto L40
        L3f:
            r2 = 0
        L40:
            if (r2 == 0) goto L55
            androidx.recyclerview.widget.native r2 = r4.f7489do
            int r2 = r2.mo4541catch()
            int r2 = r2 - r6
            r0.f7635try = r2
            androidx.recyclerview.widget.native r6 = r4.f7489do
            int r6 = r6.mo4544else()
            int r6 = r6 + r5
            r0.f7627case = r6
            goto L61
        L55:
            androidx.recyclerview.widget.native r2 = r4.f7489do
            int r2 = r2.mo4540case()
            int r2 = r2 + r5
            r0.f7627case = r2
            int r5 = -r6
            r0.f7635try = r5
        L61:
            r0.f7633if = r1
            r0.f7629do = r3
            androidx.recyclerview.widget.native r5 = r4.f7489do
            int r5 = r5.mo4551this()
            if (r5 != 0) goto L76
            androidx.recyclerview.widget.native r5 = r4.f7489do
            int r5 = r5.mo4540case()
            if (r5 != 0) goto L76
            r1 = 1
        L76:
            r0.f7631for = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.w0(int, androidx.recyclerview.widget.RecyclerView$static):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void x(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f7485do = savedState;
            if (this.f7498this != -1) {
                savedState.f7510do = null;
                savedState.f7516try = 0;
                savedState.f7511for = -1;
                savedState.f7515new = -1;
                savedState.f7510do = null;
                savedState.f7516try = 0;
                savedState.f7507case = 0;
                savedState.f7514if = null;
                savedState.f7508do = null;
            }
            G();
        }
    }

    public final void x0(Cfor cfor, int i, int i2) {
        int i3 = cfor.f7521for;
        int i4 = cfor.f7523new;
        if (i != -1) {
            int i5 = cfor.f7522if;
            if (i5 == Integer.MIN_VALUE) {
                cfor.m4474do();
                i5 = cfor.f7522if;
            }
            if (i5 - i3 >= i2) {
                this.f7490do.set(i4, false);
                return;
            }
            return;
        }
        int i6 = cfor.f7518do;
        if (i6 == Integer.MIN_VALUE) {
            View view = cfor.f7520do.get(0);
            LayoutParams m4472goto = Cfor.m4472goto(view);
            cfor.f7518do = StaggeredGridLayoutManager.this.f7489do.mo4552try(view);
            m4472goto.getClass();
            i6 = cfor.f7518do;
        }
        if (i6 + i3 <= i2) {
            this.f7490do.set(i4, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final Parcelable y() {
        int m4479this;
        int mo4541catch;
        int[] iArr;
        SavedState savedState = this.f7485do;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.f7509do = this.f7481case;
        savedState2.f7513if = this.f7496goto;
        savedState2.f7512for = this.f7499this;
        LazySpanLookup lazySpanLookup = this.f7484do;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f7502do) == null) {
            savedState2.f7507case = 0;
        } else {
            savedState2.f7514if = iArr;
            savedState2.f7507case = iArr.length;
            savedState2.f7508do = lazySpanLookup.f7501do;
        }
        if (m4395throws() > 0) {
            savedState2.f7511for = this.f7496goto ? g0() : f0();
            View b0 = this.f7494else ? b0(true) : c0(true);
            savedState2.f7515new = b0 != null ? RecyclerView.Cclass.m4380implements(b0) : -1;
            int i = this.f7480case;
            savedState2.f7516try = i;
            savedState2.f7510do = new int[i];
            for (int i2 = 0; i2 < this.f7480case; i2++) {
                if (this.f7496goto) {
                    m4479this = this.f7492do[i2].m4473case(Integer.MIN_VALUE);
                    if (m4479this != Integer.MIN_VALUE) {
                        mo4541catch = this.f7489do.mo4544else();
                        m4479this -= mo4541catch;
                        savedState2.f7510do[i2] = m4479this;
                    } else {
                        savedState2.f7510do[i2] = m4479this;
                    }
                } else {
                    m4479this = this.f7492do[i2].m4479this(Integer.MIN_VALUE);
                    if (m4479this != Integer.MIN_VALUE) {
                        mo4541catch = this.f7489do.mo4541catch();
                        m4479this -= mo4541catch;
                        savedState2.f7510do[i2] = m4479this;
                    } else {
                        savedState2.f7510do[i2] = m4479this;
                    }
                }
            }
        } else {
            savedState2.f7511for = -1;
            savedState2.f7515new = -1;
            savedState2.f7516try = 0;
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void z(int i) {
        if (i == 0) {
            W();
        }
    }

    public static class LazySpanLookup {

        /* renamed from: do, reason: not valid java name */
        public List<FullSpanItem> f7501do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int[] f7502do;

        /* renamed from: do, reason: not valid java name */
        public final void m4467do() {
            int[] iArr = this.f7502do;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f7501do = null;
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x006b  */
        /* renamed from: for, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int m4468for(int r6) {
            /*
                r5 = this;
                int[] r0 = r5.f7502do
                r1 = -1
                if (r0 != 0) goto L6
                return r1
            L6:
                int r0 = r0.length
                if (r6 < r0) goto La
                return r1
            La:
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r5.f7501do
                if (r0 != 0) goto Lf
                goto L5e
            Lf:
                r2 = 0
                if (r0 != 0) goto L13
                goto L2b
            L13:
                int r0 = r0.size()
                int r0 = r0 + r1
            L18:
                if (r0 < 0) goto L2b
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r3 = r5.f7501do
                java.lang.Object r3 = r3.get(r0)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r3 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r3
                int r4 = r3.f7505for
                if (r4 != r6) goto L28
                r2 = r3
                goto L2b
            L28:
                int r0 = r0 + (-1)
                goto L18
            L2b:
                if (r2 == 0) goto L32
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r5.f7501do
                r0.remove(r2)
            L32:
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r5.f7501do
                int r0 = r0.size()
                r2 = 0
            L39:
                if (r2 >= r0) goto L4b
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r3 = r5.f7501do
                java.lang.Object r3 = r3.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r3 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r3
                int r3 = r3.f7505for
                if (r3 < r6) goto L48
                goto L4c
            L48:
                int r2 = r2 + 1
                goto L39
            L4b:
                r2 = -1
            L4c:
                if (r2 == r1) goto L5e
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r5.f7501do
                java.lang.Object r0 = r0.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r0
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r3 = r5.f7501do
                r3.remove(r2)
                int r0 = r0.f7505for
                goto L5f
            L5e:
                r0 = -1
            L5f:
                if (r0 != r1) goto L6b
                int[] r0 = r5.f7502do
                int r2 = r0.length
                java.util.Arrays.fill(r0, r6, r2, r1)
                int[] r6 = r5.f7502do
                int r6 = r6.length
                return r6
            L6b:
                int r0 = r0 + 1
                int[] r2 = r5.f7502do
                int r2 = r2.length
                int r0 = java.lang.Math.min(r0, r2)
                int[] r2 = r5.f7502do
                java.util.Arrays.fill(r2, r6, r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.m4468for(int):int");
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4469if(int i) {
            int[] iArr = this.f7502do;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f7502do = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int length = iArr.length;
                while (length <= i) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.f7502do = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f7502do;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final void m4470new(int i, int i2) {
            int[] iArr = this.f7502do;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m4469if(i3);
            int[] iArr2 = this.f7502do;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f7502do, i, i3, -1);
            List<FullSpanItem> list = this.f7501do;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f7501do.get(size);
                int i4 = fullSpanItem.f7505for;
                if (i4 >= i) {
                    fullSpanItem.f7505for = i4 + i2;
                }
            }
        }

        /* renamed from: try, reason: not valid java name */
        public final void m4471try(int i, int i2) {
            int[] iArr = this.f7502do;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m4469if(i3);
            int[] iArr2 = this.f7502do;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f7502do;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            List<FullSpanItem> list = this.f7501do;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f7501do.get(size);
                int i4 = fullSpanItem.f7505for;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.f7501do.remove(size);
                    } else {
                        fullSpanItem.f7505for = i4 - i2;
                    }
                }
            }
        }

        @SuppressLint({"BanParcelableUsage"})
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Cdo();

            /* renamed from: do, reason: not valid java name */
            public boolean f7503do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public int[] f7504do;

            /* renamed from: for, reason: not valid java name */
            public int f7505for;

            /* renamed from: new, reason: not valid java name */
            public int f7506new;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$do, reason: invalid class name */
            public class Cdo implements Parcelable.Creator<FullSpanItem> {
                @Override // android.os.Parcelable.Creator
                public final FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public final FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }

            public FullSpanItem(Parcel parcel) {
                this.f7505for = parcel.readInt();
                this.f7506new = parcel.readInt();
                this.f7503do = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.f7504do = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final String toString() {
                return "FullSpanItem{mPosition=" + this.f7505for + ", mGapDir=" + this.f7506new + ", mHasUnwantedGapAfter=" + this.f7503do + ", mGapPerSpan=" + Arrays.toString(this.f7504do) + '}';
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f7505for);
                parcel.writeInt(this.f7506new);
                parcel.writeInt(this.f7503do ? 1 : 0);
                int[] iArr = this.f7504do;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f7504do);
                }
            }

            public FullSpanItem() {
            }
        }
    }
}
