package c.b.a.b.b.k;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import c.b.a.b.a.a.a.a.c.C0380t;
import c.b.a.b.a.a.a.a.c.InterfaceC0379s;
import com.android.launcher3.Launcher;
import com.android.launcher3.dragndrop.DragLayer;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class d extends b.f.b.d {

    /* renamed from: a, reason: collision with root package name */
    public int[] f2601a;

    /* renamed from: b, reason: collision with root package name */
    public Rect f2602b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f2603c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar, C0380t c0380t) {
        super(c0380t);
        this.f2603c = eVar;
        this.f2601a = new int[2];
        this.f2602b = new Rect();
    }

    @Override // b.f.b.d
    public int getVirtualViewAt(float f, float f2) {
        Iterator it = this.f2603c.f2607d.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f2599b.contains(f, f2)) {
                return cVar.f2598a;
            }
        }
        return RecyclerView.UNDEFINED_DURATION;
    }

    @Override // b.f.b.d
    public void getVisibleVirtualViews(List list) {
        Iterator it = this.f2603c.f2607d.iterator();
        while (it.hasNext()) {
            list.add(Integer.valueOf(((c) it.next()).f2598a));
        }
    }

    @Override // b.f.b.d
    public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
        if (i2 != 16) {
            return false;
        }
        Iterator it = this.f2603c.f2607d.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f2598a == i) {
                InterfaceC0379s interfaceC0379s = this.f2603c.f2604a;
                if (interfaceC0379s == null) {
                    return true;
                }
                interfaceC0379s.a(cVar.f2599b.centerX(), cVar.f2599b.centerY());
                return true;
            }
        }
        return false;
    }

    @Override // b.f.b.d
    public void onPopulateNodeForVirtualView(int i, b.e.i.E.d dVar) {
        Iterator it = this.f2603c.f2607d.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f2598a == i) {
                DragLayer dragLayer = Launcher.getLauncher(this.f2603c.e).mDragLayer;
                int[] iArr = this.f2601a;
                iArr[1] = 0;
                iArr[0] = 0;
                float descendantCoordRelativeToSelf = dragLayer.getDescendantCoordRelativeToSelf((View) this.f2603c.f2606c, iArr);
                cVar.f2599b.round(this.f2602b);
                dVar.f753a.setBoundsInParent(this.f2602b);
                Rect rect = this.f2602b;
                int[] iArr2 = this.f2601a;
                rect.left = iArr2[0] + ((int) (rect.left * descendantCoordRelativeToSelf));
                rect.right = iArr2[0] + ((int) (rect.right * descendantCoordRelativeToSelf));
                rect.top = iArr2[1] + ((int) (rect.top * descendantCoordRelativeToSelf));
                rect.bottom = iArr2[1] + ((int) (rect.bottom * descendantCoordRelativeToSelf));
                dVar.f753a.setBoundsInScreen(rect);
                dVar.f753a.setText(cVar.f2600c);
                dVar.a(b.e.i.E.b.f748d);
                return;
            }
        }
    }
}
