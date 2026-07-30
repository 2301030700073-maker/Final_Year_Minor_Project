package androidx.viewpager2.widget;

import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;

/* renamed from: androidx.viewpager2.widget.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo extends ViewPager2.Celse {

    /* renamed from: do, reason: not valid java name */
    public final ArrayList f8095do = new ArrayList(3);

    @Override // androidx.viewpager2.widget.ViewPager2.Celse
    /* renamed from: do */
    public final void mo4709do(int i) {
        try {
            Iterator it = this.f8095do.iterator();
            while (it.hasNext()) {
                ((ViewPager2.Celse) it.next()).mo4709do(i);
            }
        } catch (ConcurrentModificationException e) {
            throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.Celse
    /* renamed from: for */
    public final void mo4710for(int i) {
        try {
            Iterator it = this.f8095do.iterator();
            while (it.hasNext()) {
                ((ViewPager2.Celse) it.next()).mo4710for(i);
            }
        } catch (ConcurrentModificationException e) {
            throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.Celse
    /* renamed from: if */
    public final void mo4711if(float f, int i, int i2) {
        try {
            Iterator it = this.f8095do.iterator();
            while (it.hasNext()) {
                ((ViewPager2.Celse) it.next()).mo4711if(f, i, i2);
            }
        } catch (ConcurrentModificationException e) {
            throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e);
        }
    }
}
