package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: androidx.recyclerview.widget.catch, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccatch extends Cextends {

    /* renamed from: do, reason: not valid java name */
    public static TimeInterpolator f7539do;

    /* renamed from: if, reason: not valid java name */
    public final ArrayList<RecyclerView.Cdefault> f7547if = new ArrayList<>();

    /* renamed from: for, reason: not valid java name */
    public final ArrayList<RecyclerView.Cdefault> f7545for = new ArrayList<>();

    /* renamed from: new, reason: not valid java name */
    public final ArrayList<Cif> f7548new = new ArrayList<>();

    /* renamed from: try, reason: not valid java name */
    public final ArrayList<Cdo> f7550try = new ArrayList<>();

    /* renamed from: case, reason: not valid java name */
    public final ArrayList<ArrayList<RecyclerView.Cdefault>> f7541case = new ArrayList<>();

    /* renamed from: else, reason: not valid java name */
    public final ArrayList<ArrayList<Cif>> f7544else = new ArrayList<>();

    /* renamed from: goto, reason: not valid java name */
    public final ArrayList<ArrayList<Cdo>> f7546goto = new ArrayList<>();

    /* renamed from: this, reason: not valid java name */
    public final ArrayList<RecyclerView.Cdefault> f7549this = new ArrayList<>();

    /* renamed from: break, reason: not valid java name */
    public final ArrayList<RecyclerView.Cdefault> f7540break = new ArrayList<>();

    /* renamed from: catch, reason: not valid java name */
    public final ArrayList<RecyclerView.Cdefault> f7542catch = new ArrayList<>();

    /* renamed from: class, reason: not valid java name */
    public final ArrayList<RecyclerView.Cdefault> f7543class = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.catch$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f7551do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public RecyclerView.Cdefault f7552do;

        /* renamed from: for, reason: not valid java name */
        public final int f7553for;

        /* renamed from: if, reason: not valid java name */
        public final int f7554if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public RecyclerView.Cdefault f7555if;

        /* renamed from: new, reason: not valid java name */
        public final int f7556new;

        public Cdo(RecyclerView.Cdefault cdefault, RecyclerView.Cdefault cdefault2, int i, int i2, int i3, int i4) {
            this.f7552do = cdefault;
            this.f7555if = cdefault2;
            this.f7551do = i;
            this.f7554if = i2;
            this.f7553for = i3;
            this.f7556new = i4;
        }

        @SuppressLint({"UnknownNullness"})
        public final String toString() {
            return "ChangeInfo{oldHolder=" + this.f7552do + ", newHolder=" + this.f7555if + ", fromX=" + this.f7551do + ", fromY=" + this.f7554if + ", toX=" + this.f7553for + ", toY=" + this.f7556new + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.catch$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final int f7557do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final RecyclerView.Cdefault f7558do;

        /* renamed from: for, reason: not valid java name */
        public final int f7559for;

        /* renamed from: if, reason: not valid java name */
        public final int f7560if;

        /* renamed from: new, reason: not valid java name */
        public final int f7561new;

        public Cif(RecyclerView.Cdefault cdefault, int i, int i2, int i3, int i4) {
            this.f7558do = cdefault;
            this.f7557do = i;
            this.f7560if = i2;
            this.f7559for = i3;
            this.f7561new = i4;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m4482try(ArrayList arrayList) {
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((RecyclerView.Cdefault) arrayList.get(size)).f7398do.animate().cancel();
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m4483break(Cdo cdo, RecyclerView.Cdefault cdefault) {
        if (cdo.f7555if == cdefault) {
            cdo.f7555if = null;
        } else {
            if (cdo.f7552do != cdefault) {
                return false;
            }
            cdo.f7552do = null;
        }
        cdefault.f7398do.setAlpha(1.0f);
        View view = cdefault.f7398do;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        m4454if(cdefault);
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4484case() {
        if (m4485catch()) {
            return;
        }
        ArrayList<RecyclerView.Cthis.Cdo> arrayList = ((RecyclerView.Cthis) this).f7455do;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).m4455do();
        }
        arrayList.clear();
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m4485catch() {
        return (this.f7545for.isEmpty() && this.f7550try.isEmpty() && this.f7548new.isEmpty() && this.f7547if.isEmpty() && this.f7540break.isEmpty() && this.f7542catch.isEmpty() && this.f7549this.isEmpty() && this.f7543class.isEmpty() && this.f7544else.isEmpty() && this.f7541case.isEmpty() && this.f7546goto.isEmpty()) ? false : true;
    }

    /* renamed from: class, reason: not valid java name */
    public final void m4486class(RecyclerView.Cdefault cdefault) {
        if (f7539do == null) {
            f7539do = new ValueAnimator().getInterpolator();
        }
        cdefault.f7398do.animate().setInterpolator(f7539do);
        m4487else(cdefault);
    }

    @SuppressLint({"UnknownNullness"})
    /* renamed from: else, reason: not valid java name */
    public final void m4487else(RecyclerView.Cdefault cdefault) {
        View view = cdefault.f7398do;
        view.animate().cancel();
        ArrayList<Cif> arrayList = this.f7548new;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (arrayList.get(size).f7558do == cdefault) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                m4454if(cdefault);
                arrayList.remove(size);
            }
        }
        m4490this(cdefault, this.f7550try);
        if (this.f7547if.remove(cdefault)) {
            view.setAlpha(1.0f);
            m4454if(cdefault);
        }
        if (this.f7545for.remove(cdefault)) {
            view.setAlpha(1.0f);
            m4454if(cdefault);
        }
        ArrayList<ArrayList<Cdo>> arrayList2 = this.f7546goto;
        int size2 = arrayList2.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            ArrayList<Cdo> arrayList3 = arrayList2.get(size2);
            m4490this(cdefault, arrayList3);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList<ArrayList<Cif>> arrayList4 = this.f7544else;
        int size3 = arrayList4.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            ArrayList<Cif> arrayList5 = arrayList4.get(size3);
            int size4 = arrayList5.size();
            while (true) {
                size4--;
                if (size4 < 0) {
                    break;
                }
                if (arrayList5.get(size4).f7558do == cdefault) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    m4454if(cdefault);
                    arrayList5.remove(size4);
                    if (arrayList5.isEmpty()) {
                        arrayList4.remove(size3);
                    }
                }
            }
        }
        ArrayList<ArrayList<RecyclerView.Cdefault>> arrayList6 = this.f7541case;
        int size5 = arrayList6.size();
        while (true) {
            size5--;
            if (size5 < 0) {
                this.f7542catch.remove(cdefault);
                this.f7549this.remove(cdefault);
                this.f7543class.remove(cdefault);
                this.f7540break.remove(cdefault);
                m4484case();
                return;
            }
            ArrayList<RecyclerView.Cdefault> arrayList7 = arrayList6.get(size5);
            if (arrayList7.remove(cdefault)) {
                view.setAlpha(1.0f);
                m4454if(cdefault);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4488goto() {
        ArrayList<Cif> arrayList = this.f7548new;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            Cif cif = arrayList.get(size);
            View view = cif.f7558do.f7398do;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            m4454if(cif.f7558do);
            arrayList.remove(size);
        }
        ArrayList<RecyclerView.Cdefault> arrayList2 = this.f7547if;
        int size2 = arrayList2.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            m4454if(arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList<RecyclerView.Cdefault> arrayList3 = this.f7545for;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.Cdefault cdefault = arrayList3.get(size3);
            cdefault.f7398do.setAlpha(1.0f);
            m4454if(cdefault);
            arrayList3.remove(size3);
        }
        ArrayList<Cdo> arrayList4 = this.f7550try;
        int size4 = arrayList4.size();
        while (true) {
            size4--;
            if (size4 < 0) {
                break;
            }
            Cdo cdo = arrayList4.get(size4);
            RecyclerView.Cdefault cdefault2 = cdo.f7552do;
            if (cdefault2 != null) {
                m4483break(cdo, cdefault2);
            }
            RecyclerView.Cdefault cdefault3 = cdo.f7555if;
            if (cdefault3 != null) {
                m4483break(cdo, cdefault3);
            }
        }
        arrayList4.clear();
        if (m4485catch()) {
            ArrayList<ArrayList<Cif>> arrayList5 = this.f7544else;
            int size5 = arrayList5.size();
            while (true) {
                size5--;
                if (size5 < 0) {
                    break;
                }
                ArrayList<Cif> arrayList6 = arrayList5.get(size5);
                int size6 = arrayList6.size();
                while (true) {
                    size6--;
                    if (size6 >= 0) {
                        Cif cif2 = arrayList6.get(size6);
                        View view2 = cif2.f7558do.f7398do;
                        view2.setTranslationY(0.0f);
                        view2.setTranslationX(0.0f);
                        m4454if(cif2.f7558do);
                        arrayList6.remove(size6);
                        if (arrayList6.isEmpty()) {
                            arrayList5.remove(arrayList6);
                        }
                    }
                }
            }
            ArrayList<ArrayList<RecyclerView.Cdefault>> arrayList7 = this.f7541case;
            int size7 = arrayList7.size();
            while (true) {
                size7--;
                if (size7 < 0) {
                    break;
                }
                ArrayList<RecyclerView.Cdefault> arrayList8 = arrayList7.get(size7);
                int size8 = arrayList8.size();
                while (true) {
                    size8--;
                    if (size8 >= 0) {
                        RecyclerView.Cdefault cdefault4 = arrayList8.get(size8);
                        cdefault4.f7398do.setAlpha(1.0f);
                        m4454if(cdefault4);
                        arrayList8.remove(size8);
                        if (arrayList8.isEmpty()) {
                            arrayList7.remove(arrayList8);
                        }
                    }
                }
            }
            ArrayList<ArrayList<Cdo>> arrayList9 = this.f7546goto;
            int size9 = arrayList9.size();
            while (true) {
                size9--;
                if (size9 < 0) {
                    break;
                }
                ArrayList<Cdo> arrayList10 = arrayList9.get(size9);
                int size10 = arrayList10.size();
                while (true) {
                    size10--;
                    if (size10 >= 0) {
                        Cdo cdo2 = arrayList10.get(size10);
                        RecyclerView.Cdefault cdefault5 = cdo2.f7552do;
                        if (cdefault5 != null) {
                            m4483break(cdo2, cdefault5);
                        }
                        RecyclerView.Cdefault cdefault6 = cdo2.f7555if;
                        if (cdefault6 != null) {
                            m4483break(cdo2, cdefault6);
                        }
                        if (arrayList10.isEmpty()) {
                            arrayList9.remove(arrayList10);
                        }
                    }
                }
            }
            m4482try(this.f7542catch);
            m4482try(this.f7540break);
            m4482try(this.f7549this);
            m4482try(this.f7543class);
            ArrayList<RecyclerView.Cthis.Cdo> arrayList11 = ((RecyclerView.Cthis) this).f7455do;
            int size11 = arrayList11.size();
            for (int i = 0; i < size11; i++) {
                arrayList11.get(i).m4455do();
            }
            arrayList11.clear();
        }
    }

    @Override // androidx.recyclerview.widget.Cextends
    @SuppressLint({"UnknownNullness"})
    /* renamed from: new, reason: not valid java name */
    public final boolean mo4489new(RecyclerView.Cdefault cdefault, int i, int i2, int i3, int i4) {
        View view = cdefault.f7398do;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) cdefault.f7398do.getTranslationY());
        m4486class(cdefault);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            m4454if(cdefault);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.f7548new.add(new Cif(cdefault, translationX, translationY, i3, i4));
        return true;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4490this(RecyclerView.Cdefault cdefault, ArrayList arrayList) {
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            Cdo cdo = (Cdo) arrayList.get(size);
            if (m4483break(cdo, cdefault) && cdo.f7552do == null && cdo.f7555if == null) {
                arrayList.remove(cdo);
            }
        }
    }
}
