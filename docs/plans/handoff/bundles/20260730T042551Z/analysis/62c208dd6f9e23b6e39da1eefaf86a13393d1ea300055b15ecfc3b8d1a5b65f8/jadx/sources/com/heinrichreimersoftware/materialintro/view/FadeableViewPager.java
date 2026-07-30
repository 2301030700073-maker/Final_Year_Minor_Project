package com.heinrichreimersoftware.materialintro.view;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import defpackage.AbstractC3536pw;
import defpackage.C0398Nu;

/* loaded from: classes3.dex */
public class FadeableViewPager extends SwipeBlockableViewPager {

    /* renamed from: import, reason: not valid java name */
    public static final /* synthetic */ int f12167import = 0;

    /* renamed from: com.heinrichreimersoftware.materialintro.view.FadeableViewPager$do, reason: invalid class name */
    public interface Cdo extends ViewPager.Cgoto {
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.view.FadeableViewPager$for, reason: invalid class name */
    public class Cfor extends AbstractC3536pw {

        /* renamed from: do, reason: not valid java name */
        public final AbstractC3536pw f12168do;

        public Cfor(AbstractC3536pw abstractC3536pw) {
            this.f12168do = abstractC3536pw;
            abstractC3536pw.mo6367const(new com.heinrichreimersoftware.materialintro.view.Cdo(this));
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: break */
        public final Object mo166break(ViewGroup viewGroup, int i) {
            AbstractC3536pw abstractC3536pw = this.f12168do;
            if (i < abstractC3536pw.mo171try()) {
                return abstractC3536pw.mo166break(viewGroup, i);
            }
            return null;
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: case */
        public final int mo167case(Object obj) {
            AbstractC3536pw abstractC3536pw = this.f12168do;
            int mo167case = abstractC3536pw.mo167case(obj);
            if (mo167case < abstractC3536pw.mo171try()) {
                return mo167case;
            }
            return -2;
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: catch */
        public final boolean mo877catch(View view, Object obj) {
            return obj != null && this.f12168do.mo877catch(view, obj);
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: const, reason: not valid java name */
        public final void mo6367const(DataSetObserver dataSetObserver) {
            this.f12168do.mo6367const(dataSetObserver);
        }

        @Override // defpackage.AbstractC3536pw
        @Deprecated
        /* renamed from: do, reason: not valid java name */
        public final void mo6368do(View view, int i, Object obj) {
            AbstractC3536pw abstractC3536pw = this.f12168do;
            if (i < abstractC3536pw.mo171try()) {
                abstractC3536pw.mo6368do(view, i, obj);
            }
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: else */
        public final CharSequence mo1700else(int i) {
            AbstractC3536pw abstractC3536pw = this.f12168do;
            if (i < abstractC3536pw.mo171try()) {
                return abstractC3536pw.mo1700else(i);
            }
            return null;
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: final */
        public final void mo878final(Parcelable parcelable, ClassLoader classLoader) {
            this.f12168do.mo878final(parcelable, classLoader);
        }

        @Override // defpackage.AbstractC3536pw
        @Deprecated
        /* renamed from: for, reason: not valid java name */
        public final void mo6369for(View view) {
            this.f12168do.mo6369for(view);
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: goto, reason: not valid java name */
        public final float mo6370goto(int i) {
            AbstractC3536pw abstractC3536pw = this.f12168do;
            if (i < abstractC3536pw.mo171try()) {
                return abstractC3536pw.mo6370goto(i);
            }
            return 1.0f;
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: if */
        public final void mo169if(ViewGroup viewGroup, int i, Object obj) {
            AbstractC3536pw abstractC3536pw = this.f12168do;
            if (i < abstractC3536pw.mo171try()) {
                abstractC3536pw.mo169if(viewGroup, i, obj);
            }
        }

        @Override // defpackage.AbstractC3536pw
        @Deprecated
        /* renamed from: native, reason: not valid java name */
        public final void mo6371native(View view) {
            this.f12168do.mo6371native(view);
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: new */
        public final void mo879new(ViewGroup viewGroup) {
            this.f12168do.mo879new(viewGroup);
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: public */
        public final void mo880public(ViewGroup viewGroup) {
            this.f12168do.mo880public(viewGroup);
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: return, reason: not valid java name */
        public final void mo6372return(DataSetObserver dataSetObserver) {
            this.f12168do.mo6372return(dataSetObserver);
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: super */
        public final Parcelable mo881super() {
            return this.f12168do.mo881super();
        }

        @Override // defpackage.AbstractC3536pw
        @Deprecated
        /* renamed from: this, reason: not valid java name */
        public final Object mo6373this(View view, int i) {
            AbstractC3536pw abstractC3536pw = this.f12168do;
            if (i < abstractC3536pw.mo171try()) {
                return abstractC3536pw.mo6373this(view, i);
            }
            return null;
        }

        @Override // defpackage.AbstractC3536pw
        @Deprecated
        /* renamed from: throw, reason: not valid java name */
        public final void mo6374throw(View view, int i, Object obj) {
            AbstractC3536pw abstractC3536pw = this.f12168do;
            if (i < abstractC3536pw.mo171try()) {
                abstractC3536pw.mo6374throw(view, i, obj);
            }
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: try */
        public final int mo171try() {
            return this.f12168do.mo171try() + 1;
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: while */
        public final void mo882while(ViewGroup viewGroup, int i, Object obj) {
            AbstractC3536pw abstractC3536pw = this.f12168do;
            if (i < abstractC3536pw.mo171try()) {
                abstractC3536pw.mo882while(viewGroup, i, obj);
            }
        }
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.view.FadeableViewPager$if, reason: invalid class name */
    public class Cif implements ViewPager.Cgoto {

        /* renamed from: do, reason: not valid java name */
        public final ViewPager.Cgoto f12169do;

        public Cif(ViewPager.Cgoto cgoto) {
            this.f12169do = cgoto;
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: do */
        public final void mo4671do(float f, int i, int i2) {
            AbstractC3536pw mo4678catch;
            ViewPager.Cgoto cgoto = this.f12169do;
            boolean z = cgoto instanceof Cdo;
            FadeableViewPager fadeableViewPager = FadeableViewPager.this;
            if (z) {
                int i3 = FadeableViewPager.f12167import;
                mo4678catch = ((ViewPager) fadeableViewPager).f8021do;
            } else {
                mo4678catch = fadeableViewPager.mo4678catch();
            }
            int mo171try = mo4678catch.mo171try();
            int min = Math.min(i, mo171try - 1);
            if (i >= mo171try) {
                f = 0.0f;
            }
            if (i >= mo171try) {
                i2 = 0;
            }
            cgoto.mo4671do(f, min, i2);
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: for */
        public final void mo4672for(int i) {
            this.f12169do.mo4672for(i);
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: new */
        public final void mo1557new(int i) {
            AbstractC3536pw mo4678catch;
            ViewPager.Cgoto cgoto = this.f12169do;
            boolean z = cgoto instanceof Cdo;
            FadeableViewPager fadeableViewPager = FadeableViewPager.this;
            if (z) {
                int i2 = FadeableViewPager.f12167import;
                mo4678catch = ((ViewPager) fadeableViewPager).f8021do;
            } else {
                mo4678catch = fadeableViewPager.mo4678catch();
            }
            cgoto.mo1557new(Math.min(i, mo4678catch.mo171try() - 1));
        }
    }

    /* renamed from: com.heinrichreimersoftware.materialintro.view.FadeableViewPager$new, reason: invalid class name */
    public static class Cnew implements Cdo {
        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: for */
        public final void mo4672for(int i) {
        }
    }

    public FadeableViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.viewpager.widget.ViewPager
    /* renamed from: catch */
    public final AbstractC3536pw mo4678catch() {
        Cfor cfor = (Cfor) ((ViewPager) this).f8021do;
        if (cfor == null) {
            return null;
        }
        return cfor.f12168do;
    }

    @Override // androidx.viewpager.widget.ViewPager
    @Deprecated
    /* renamed from: continue */
    public final void mo4681continue(C0398Nu c0398Nu) {
        ((ViewPager) this).f8016do = new Cif(c0398Nu);
    }

    @Override // androidx.viewpager.widget.ViewPager
    /* renamed from: finally */
    public final void mo4687finally(AbstractC3536pw abstractC3536pw) {
        super.mo4687finally(new Cfor(abstractC3536pw));
    }

    @Override // androidx.viewpager.widget.ViewPager
    /* renamed from: if */
    public final void mo4690if(ViewPager.Cgoto cgoto) {
        super.mo4690if(new Cif(cgoto));
    }

    @Override // androidx.viewpager.widget.ViewPager
    /* renamed from: throws */
    public final void mo4703throws(ViewPager.Cgoto cgoto) {
        super.mo4703throws(new Cif(cgoto));
    }
}
