package defpackage;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;

/* renamed from: pw, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3536pw {

    /* renamed from: do, reason: not valid java name */
    public final DataSetObservable f15013do = new DataSetObservable();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public DataSetObserver f15014do;

    /* renamed from: break */
    public Object mo166break(ViewGroup viewGroup, int i) {
        return mo6373this(viewGroup, i);
    }

    /* renamed from: case */
    public int mo167case(Object obj) {
        return -1;
    }

    /* renamed from: catch */
    public abstract boolean mo877catch(View view, Object obj);

    /* renamed from: class */
    public void mo168class() {
        synchronized (this) {
            DataSetObserver dataSetObserver = this.f15014do;
            if (dataSetObserver != null) {
                dataSetObserver.onChanged();
            }
        }
        this.f15013do.notifyChanged();
    }

    /* renamed from: const */
    public void mo6367const(DataSetObserver dataSetObserver) {
        this.f15013do.registerObserver(dataSetObserver);
    }

    @Deprecated
    /* renamed from: do */
    public void mo6368do(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    /* renamed from: else */
    public CharSequence mo1700else(int i) {
        return null;
    }

    /* renamed from: final */
    public void mo878final(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Deprecated
    /* renamed from: for */
    public void mo6369for(View view) {
    }

    /* renamed from: goto */
    public float mo6370goto(int i) {
        return 1.0f;
    }

    /* renamed from: if */
    public void mo169if(ViewGroup viewGroup, int i, Object obj) {
        mo6368do(viewGroup, i, obj);
    }

    /* renamed from: import, reason: not valid java name */
    public final void m7829import(ViewPager.Cthis cthis) {
        synchronized (this) {
            this.f15014do = cthis;
        }
    }

    @Deprecated
    /* renamed from: native */
    public void mo6371native(View view) {
    }

    /* renamed from: new */
    public void mo879new(ViewGroup viewGroup) {
        mo6369for(viewGroup);
    }

    /* renamed from: public */
    public void mo880public(ViewGroup viewGroup) {
        mo6371native(viewGroup);
    }

    /* renamed from: return */
    public void mo6372return(DataSetObserver dataSetObserver) {
        this.f15013do.unregisterObserver(dataSetObserver);
    }

    /* renamed from: super */
    public Parcelable mo881super() {
        return null;
    }

    @Deprecated
    /* renamed from: this */
    public Object mo6373this(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    @Deprecated
    /* renamed from: throw */
    public void mo6374throw(View view, int i, Object obj) {
    }

    /* renamed from: try */
    public abstract int mo171try();

    /* renamed from: while */
    public void mo882while(ViewGroup viewGroup, int i, Object obj) {
        mo6374throw(viewGroup, i, obj);
    }
}
